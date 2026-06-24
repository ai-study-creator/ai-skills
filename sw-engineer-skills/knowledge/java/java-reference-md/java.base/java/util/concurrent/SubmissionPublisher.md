Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class SubmissionPublisher<T>

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.SubmissionPublisher<T>

Type Parameters:
:   `T` - the published item type

All Implemented Interfaces:
:   `AutoCloseable`, `Flow.Publisher<T>`

---

public class SubmissionPublisher<T>
extends [Object](../../lang/Object.md "class in java.lang")
implements [Flow.Publisher](Flow.Publisher.md "interface in java.util.concurrent")<T>, [AutoCloseable](../../lang/AutoCloseable.md "interface in java.lang")

A [`Flow.Publisher`](Flow.Publisher.md "interface in java.util.concurrent") that asynchronously issues submitted
(non-null) items to current subscribers until it is closed. Each
current subscriber receives newly submitted items in the same order
unless drops or exceptions are encountered. Using a
SubmissionPublisher allows item generators to act as compliant  [reactive-streams](http://www.reactive-streams.org/)
Publishers relying on drop handling and/or blocking for flow
control.

A SubmissionPublisher uses the [`Executor`](Executor.md "interface in java.util.concurrent") supplied in its
constructor for delivery to subscribers. The best choice of
Executor depends on expected usage. If the generator(s) of
submitted items run in separate threads, and the number of
subscribers can be estimated, consider using a [`Executors.newFixedThreadPool(int)`](Executors.md#newFixedThreadPool(int)). Otherwise consider using the
default, normally the [`ForkJoinPool.commonPool()`](ForkJoinPool.md#commonPool()).

Buffering allows producers and consumers to transiently operate
at different rates. Each subscriber uses an independent buffer.
Buffers are created upon first use and expanded as needed up to the
given maximum. (The enforced capacity may be rounded up to the
nearest power of two and/or bounded by the largest value supported
by this implementation.) Invocations of [`request`](Flow.Subscription.md#request(long)) do not directly result in
buffer expansion, but risk saturation if unfilled requests exceed
the maximum capacity. The default value of [`Flow.defaultBufferSize()`](Flow.md#defaultBufferSize()) may provide a useful starting point for
choosing a capacity based on expected rates, resources, and usages.

A single SubmissionPublisher may be shared among multiple
sources. Actions in a source thread prior to publishing an item or
issuing a signal [*happen-before*](package-summary.md#MemoryVisibility) actions subsequent to the corresponding
access by each subscriber. But reported estimates of lag and demand
are designed for use in monitoring, not for synchronization
control, and may reflect stale or inaccurate views of progress.

Publication methods support different policies about what to do
when buffers are saturated. Method [`submit`](#submit(T))
blocks until resources are available. This is simplest, but least
responsive. The `offer` methods may drop items (either
immediately or with bounded timeout), but provide an opportunity to
interpose a handler and then retry.

If any Subscriber method throws an exception, its subscription
is cancelled. If a handler is supplied as a constructor argument,
it is invoked before cancellation upon an exception in method
[`onNext`](Flow.Subscriber.md#onNext(T)), but exceptions in methods
[`onSubscribe`](Flow.Subscriber.md#onSubscribe(java.util.concurrent.Flow.Subscription)),
[`onError`](Flow.Subscriber.md#onError(java.lang.Throwable)) and
[`onComplete`](Flow.Subscriber.md#onComplete()) are not recorded or
handled before cancellation. If the supplied Executor throws
[`RejectedExecutionException`](RejectedExecutionException.md "class in java.util.concurrent") (or any other RuntimeException
or Error) when attempting to execute a task, or a drop handler
throws an exception when processing a dropped item, then the
exception is rethrown. In these cases, not all subscribers will
have been issued the published item. It is usually good practice to
[`closeExceptionally`](#closeExceptionally(java.lang.Throwable)) in these cases.

Method [`consume(Consumer)`](#consume(java.util.function.Consumer)) simplifies support for a
common case in which the only action of a subscriber is to request
and process all items using a supplied function.

This class may also serve as a convenient base for subclasses
that generate items, and use the methods in this class to publish
them. For example here is a class that periodically publishes the
items generated from a supplier. (In practice you might add methods
to independently start and stop generation, to share Executors
among publishers, and so on, or use a SubmissionPublisher as a
component rather than a superclass.)

```
 class PeriodicPublisher<T> extends SubmissionPublisher<T> {
   final ScheduledFuture<?> periodicTask;
   final ScheduledExecutorService scheduler;
   PeriodicPublisher(Executor executor, int maxBufferCapacity,
                     Supplier<? extends T> supplier,
                     long period, TimeUnit unit) {
     super(executor, maxBufferCapacity);
     scheduler = new ScheduledThreadPoolExecutor(1);
     periodicTask = scheduler.scheduleAtFixedRate(
       () -> submit(supplier.get()), 0, period, unit);
   }
   public void close() {
     periodicTask.cancel(false);
     scheduler.shutdown();
     super.close();
   }
 }
```

Here is an example of a [`Flow.Processor`](Flow.Processor.md "interface in java.util.concurrent") implementation.
It uses single-step requests to its publisher for simplicity of
illustration. A more adaptive version could monitor flow using the
lag estimate returned from `submit`, along with other utility
methods.

```
 class TransformProcessor<S,T> extends SubmissionPublisher<T>
   implements Flow.Processor<S,T> {
   final Function<? super S, ? extends T> function;
   Flow.Subscription subscription;
   TransformProcessor(Executor executor, int maxBufferCapacity,
                      Function<? super S, ? extends T> function) {
     super(executor, maxBufferCapacity);
     this.function = function;
   }
   public void onSubscribe(Flow.Subscription subscription) {
     (this.subscription = subscription).request(1);
   }
   public void onNext(S item) {
     subscription.request(1);
     submit(function.apply(item));
   }
   public void onError(Throwable ex) { closeExceptionally(ex); }
   public void onComplete() { close(); }
 }
```

Since:
:   9

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SubmissionPublisher()`

  Creates a new SubmissionPublisher using the [`ForkJoinPool.commonPool()`](ForkJoinPool.md#commonPool()) for async delivery to subscribers
  (unless it does not support a parallelism level of at least two,
  in which case, a new Thread is created to run each task), with
  maximum buffer capacity of [`Flow.defaultBufferSize()`](Flow.md#defaultBufferSize()), and no
  handler for Subscriber exceptions in method [`onNext`](Flow.Subscriber.md#onNext(T)).

  `SubmissionPublisher(Executor executor,
  int maxBufferCapacity)`

  Creates a new SubmissionPublisher using the given Executor for
  async delivery to subscribers, with the given maximum buffer size
  for each subscriber, and no handler for Subscriber exceptions in
  method [`onNext`](Flow.Subscriber.md#onNext(T)).

  `SubmissionPublisher(Executor executor,
  int maxBufferCapacity,
  BiConsumer<? super Flow.Subscriber<? super T>,? super Throwable> handler)`

  Creates a new SubmissionPublisher using the given Executor for
  async delivery to subscribers, with the given maximum buffer size
  for each subscriber, and, if non-null, the given handler invoked
  when any Subscriber throws an exception in method [`onNext`](Flow.Subscriber.md#onNext(T)).
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Unless already closed, issues [`onComplete`](Flow.Subscriber.md#onComplete()) signals to current
  subscribers, and disallows subsequent attempts to publish.

  `void`

  `closeExceptionally(Throwable error)`

  Unless already closed, issues [`onError`](Flow.Subscriber.md#onError(java.lang.Throwable)) signals to current
  subscribers with the given error, and disallows subsequent
  attempts to publish.

  `CompletableFuture<Void>`

  `consume(Consumer<? super T> consumer)`

  Processes all published items using the given Consumer function.

  `int`

  `estimateMaximumLag()`

  Returns an estimate of the maximum number of items produced but
  not yet consumed among all current subscribers.

  `long`

  `estimateMinimumDemand()`

  Returns an estimate of the minimum number of items requested
  (via [`request`](Flow.Subscription.md#request(long))) but not
  yet produced, among all current subscribers.

  `Throwable`

  `getClosedException()`

  Returns the exception associated with [`closeExceptionally`](#closeExceptionally(java.lang.Throwable)), or null if
  not closed or if closed normally.

  `Executor`

  `getExecutor()`

  Returns the Executor used for asynchronous delivery.

  `int`

  `getMaxBufferCapacity()`

  Returns the maximum per-subscriber buffer capacity.

  `int`

  `getNumberOfSubscribers()`

  Returns the number of current subscribers.

  `List<Flow.Subscriber<? super T>>`

  `getSubscribers()`

  Returns a list of current subscribers for monitoring and
  tracking purposes, not for invoking [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent")
  methods on the subscribers.

  `boolean`

  `hasSubscribers()`

  Returns true if this publisher has any subscribers.

  `boolean`

  `isClosed()`

  Returns true if this publisher is not accepting submissions.

  `boolean`

  `isSubscribed(Flow.Subscriber<? super T> subscriber)`

  Returns true if the given Subscriber is currently subscribed.

  `int`

  `offer(T item,
  long timeout,
  TimeUnit unit,
  BiPredicate<Flow.Subscriber<? super T>,? super T> onDrop)`

  Publishes the given item, if possible, to each current subscriber
  by asynchronously invoking its [`onNext`](Flow.Subscriber.md#onNext(T)) method, blocking while
  resources for any subscription are unavailable, up to the
  specified timeout or until the caller thread is interrupted, at
  which point the given handler (if non-null) is invoked, and if it
  returns true, retried once.

  `int`

  `offer(T item,
  BiPredicate<Flow.Subscriber<? super T>,? super T> onDrop)`

  Publishes the given item, if possible, to each current subscriber
  by asynchronously invoking its [`onNext`](Flow.Subscriber.md#onNext(T)) method.

  `int`

  `submit(T item)`

  Publishes the given item to each current subscriber by
  asynchronously invoking its [`onNext`](Flow.Subscriber.md#onNext(T)) method, blocking uninterruptibly while resources for any
  subscriber are unavailable.

  `void`

  `subscribe(Flow.Subscriber<? super T> subscriber)`

  Adds the given Subscriber unless already subscribed.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SubmissionPublisher

    public SubmissionPublisher([Executor](Executor.md "interface in java.util.concurrent") executor,
    int maxBufferCapacity,
    [BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")>,? super [Throwable](../../lang/Throwable.md "class in java.lang")> handler)

    Creates a new SubmissionPublisher using the given Executor for
    async delivery to subscribers, with the given maximum buffer size
    for each subscriber, and, if non-null, the given handler invoked
    when any Subscriber throws an exception in method [`onNext`](Flow.Subscriber.md#onNext(T)).

    Parameters:
    :   `executor` - the executor to use for async delivery,
        supporting creation of at least one independent thread
    :   `maxBufferCapacity` - the maximum capacity for each
        subscriber's buffer (the enforced capacity may be rounded up to
        the nearest power of two and/or bounded by the largest value
        supported by this implementation; method [`getMaxBufferCapacity()`](#getMaxBufferCapacity())
        returns the actual value)
    :   `handler` - if non-null, procedure to invoke upon exception
        thrown in method `onNext`

    Throws:
    :   `NullPointerException` - if executor is null
    :   `IllegalArgumentException` - if maxBufferCapacity not
        positive
  + ### SubmissionPublisher

    public SubmissionPublisher([Executor](Executor.md "interface in java.util.concurrent") executor,
    int maxBufferCapacity)

    Creates a new SubmissionPublisher using the given Executor for
    async delivery to subscribers, with the given maximum buffer size
    for each subscriber, and no handler for Subscriber exceptions in
    method [`onNext`](Flow.Subscriber.md#onNext(T)).

    Parameters:
    :   `executor` - the executor to use for async delivery,
        supporting creation of at least one independent thread
    :   `maxBufferCapacity` - the maximum capacity for each
        subscriber's buffer (the enforced capacity may be rounded up to
        the nearest power of two and/or bounded by the largest value
        supported by this implementation; method [`getMaxBufferCapacity()`](#getMaxBufferCapacity())
        returns the actual value)

    Throws:
    :   `NullPointerException` - if executor is null
    :   `IllegalArgumentException` - if maxBufferCapacity not
        positive
  + ### SubmissionPublisher

    public SubmissionPublisher()

    Creates a new SubmissionPublisher using the [`ForkJoinPool.commonPool()`](ForkJoinPool.md#commonPool()) for async delivery to subscribers
    (unless it does not support a parallelism level of at least two,
    in which case, a new Thread is created to run each task), with
    maximum buffer capacity of [`Flow.defaultBufferSize()`](Flow.md#defaultBufferSize()), and no
    handler for Subscriber exceptions in method [`onNext`](Flow.Subscriber.md#onNext(T)).
* ## Method Details

  + ### subscribe

    public void subscribe([Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")> subscriber)

    Adds the given Subscriber unless already subscribed. If already
    subscribed, the Subscriber's [`onError`](Flow.Subscriber.md#onError(java.lang.Throwable)) method is invoked on
    the existing subscription with an [`IllegalStateException`](../../lang/IllegalStateException.md "class in java.lang").
    Otherwise, upon success, the Subscriber's [`onSubscribe`](Flow.Subscriber.md#onSubscribe(java.util.concurrent.Flow.Subscription)) method is invoked
    asynchronously with a new [`Flow.Subscription`](Flow.Subscription.md "interface in java.util.concurrent"). If [`onSubscribe`](Flow.Subscriber.md#onSubscribe(java.util.concurrent.Flow.Subscription)) throws an exception, the
    subscription is cancelled. Otherwise, if this SubmissionPublisher
    was closed exceptionally, then the subscriber's [`onError`](Flow.Subscriber.md#onError(java.lang.Throwable)) method is invoked with the
    corresponding exception, or if closed without exception, the
    subscriber's [`onComplete`](Flow.Subscriber.md#onComplete())
    method is invoked. Subscribers may enable receiving items by
    invoking the [`request`](Flow.Subscription.md#request(long))
    method of the new Subscription, and may unsubscribe by invoking
    its [`cancel`](Flow.Subscription.md#cancel()) method.

    Specified by:
    :   `subscribe` in interface `Flow.Publisher<T>`

    Parameters:
    :   `subscriber` - the subscriber

    Throws:
    :   `NullPointerException` - if subscriber is null
  + ### submit

    public int submit([T](SubmissionPublisher.md "type parameter in SubmissionPublisher") item)

    Publishes the given item to each current subscriber by
    asynchronously invoking its [`onNext`](Flow.Subscriber.md#onNext(T)) method, blocking uninterruptibly while resources for any
    subscriber are unavailable. This method returns an estimate of
    the maximum lag (number of items submitted but not yet consumed)
    among all current subscribers. This value is at least one
    (accounting for this submitted item) if there are any
    subscribers, else zero.

    If the Executor for this publisher throws a
    RejectedExecutionException (or any other RuntimeException or
    Error) when attempting to asynchronously notify subscribers,
    then this exception is rethrown, in which case not all
    subscribers will have been issued this item.

    Parameters:
    :   `item` - the (non-null) item to publish

    Returns:
    :   the estimated maximum lag among subscribers

    Throws:
    :   `IllegalStateException` - if closed
    :   `NullPointerException` - if item is null
    :   `RejectedExecutionException` - if thrown by Executor
  + ### offer

    public int offer([T](SubmissionPublisher.md "type parameter in SubmissionPublisher") item,
    [BiPredicate](../function/BiPredicate.md "interface in java.util.function")<[Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")>,? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")> onDrop)

    Publishes the given item, if possible, to each current subscriber
    by asynchronously invoking its [`onNext`](Flow.Subscriber.md#onNext(T)) method. The item may be
    dropped by one or more subscribers if resource limits are
    exceeded, in which case the given handler (if non-null) is
    invoked, and if it returns true, retried once. Other calls to
    methods in this class by other threads are blocked while the
    handler is invoked. Unless recovery is assured, options are
    usually limited to logging the error and/or issuing an [`onError`](Flow.Subscriber.md#onError(java.lang.Throwable)) signal to the
    subscriber.

    This method returns a status indicator: If negative, it
    represents the (negative) number of drops (failed attempts to
    issue the item to a subscriber). Otherwise it is an estimate of
    the maximum lag (number of items submitted but not yet
    consumed) among all current subscribers. This value is at least
    one (accounting for this submitted item) if there are any
    subscribers, else zero.

    If the Executor for this publisher throws a
    RejectedExecutionException (or any other RuntimeException or
    Error) when attempting to asynchronously notify subscribers, or
    the drop handler throws an exception when processing a dropped
    item, then this exception is rethrown.

    Parameters:
    :   `item` - the (non-null) item to publish
    :   `onDrop` - if non-null, the handler invoked upon a drop to a
        subscriber, with arguments of the subscriber and item; if it
        returns true, an offer is re-attempted (once)

    Returns:
    :   if negative, the (negative) number of drops; otherwise
        an estimate of maximum lag

    Throws:
    :   `IllegalStateException` - if closed
    :   `NullPointerException` - if item is null
    :   `RejectedExecutionException` - if thrown by Executor
  + ### offer

    public int offer([T](SubmissionPublisher.md "type parameter in SubmissionPublisher") item,
    long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit,
    [BiPredicate](../function/BiPredicate.md "interface in java.util.function")<[Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")>,? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")> onDrop)

    Publishes the given item, if possible, to each current subscriber
    by asynchronously invoking its [`onNext`](Flow.Subscriber.md#onNext(T)) method, blocking while
    resources for any subscription are unavailable, up to the
    specified timeout or until the caller thread is interrupted, at
    which point the given handler (if non-null) is invoked, and if it
    returns true, retried once. (The drop handler may distinguish
    timeouts from interrupts by checking whether the current thread
    is interrupted.) Other calls to methods in this class by other
    threads are blocked while the handler is invoked. Unless
    recovery is assured, options are usually limited to logging the
    error and/or issuing an [`onError`](Flow.Subscriber.md#onError(java.lang.Throwable)) signal to the subscriber.

    This method returns a status indicator: If negative, it
    represents the (negative) number of drops (failed attempts to
    issue the item to a subscriber). Otherwise it is an estimate of
    the maximum lag (number of items submitted but not yet
    consumed) among all current subscribers. This value is at least
    one (accounting for this submitted item) if there are any
    subscribers, else zero.

    If the Executor for this publisher throws a
    RejectedExecutionException (or any other RuntimeException or
    Error) when attempting to asynchronously notify subscribers, or
    the drop handler throws an exception when processing a dropped
    item, then this exception is rethrown.

    Parameters:
    :   `item` - the (non-null) item to publish
    :   `timeout` - how long to wait for resources for any subscriber
        before giving up, in units of `unit`
    :   `unit` - a `TimeUnit` determining how to interpret the
        `timeout` parameter
    :   `onDrop` - if non-null, the handler invoked upon a drop to a
        subscriber, with arguments of the subscriber and item; if it
        returns true, an offer is re-attempted (once)

    Returns:
    :   if negative, the (negative) number of drops; otherwise
        an estimate of maximum lag

    Throws:
    :   `IllegalStateException` - if closed
    :   `NullPointerException` - if item is null
    :   `RejectedExecutionException` - if thrown by Executor
  + ### close

    public void close()

    Unless already closed, issues [`onComplete`](Flow.Subscriber.md#onComplete()) signals to current
    subscribers, and disallows subsequent attempts to publish.
    Upon return, this method does *NOT* guarantee that all
    subscribers have yet completed.

    Specified by:
    :   `close` in interface `AutoCloseable`
  + ### closeExceptionally

    public void closeExceptionally([Throwable](../../lang/Throwable.md "class in java.lang") error)

    Unless already closed, issues [`onError`](Flow.Subscriber.md#onError(java.lang.Throwable)) signals to current
    subscribers with the given error, and disallows subsequent
    attempts to publish. Future subscribers also receive the given
    error. Upon return, this method does *NOT* guarantee
    that all subscribers have yet completed.

    Parameters:
    :   `error` - the `onError` argument sent to subscribers

    Throws:
    :   `NullPointerException` - if error is null
  + ### isClosed

    public boolean isClosed()

    Returns true if this publisher is not accepting submissions.

    Returns:
    :   true if closed
  + ### getClosedException

    public [Throwable](../../lang/Throwable.md "class in java.lang") getClosedException()

    Returns the exception associated with [`closeExceptionally`](#closeExceptionally(java.lang.Throwable)), or null if
    not closed or if closed normally.

    Returns:
    :   the exception, or null if none
  + ### hasSubscribers

    public boolean hasSubscribers()

    Returns true if this publisher has any subscribers.

    Returns:
    :   true if this publisher has any subscribers
  + ### getNumberOfSubscribers

    public int getNumberOfSubscribers()

    Returns the number of current subscribers.

    Returns:
    :   the number of current subscribers
  + ### getExecutor

    public [Executor](Executor.md "interface in java.util.concurrent") getExecutor()

    Returns the Executor used for asynchronous delivery.

    Returns:
    :   the Executor used for asynchronous delivery
  + ### getMaxBufferCapacity

    public int getMaxBufferCapacity()

    Returns the maximum per-subscriber buffer capacity.

    Returns:
    :   the maximum per-subscriber buffer capacity
  + ### getSubscribers

    public [List](../List.md "interface in java.util")<[Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")>> getSubscribers()

    Returns a list of current subscribers for monitoring and
    tracking purposes, not for invoking [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent")
    methods on the subscribers.

    Returns:
    :   list of current subscribers
  + ### isSubscribed

    public boolean isSubscribed([Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")> subscriber)

    Returns true if the given Subscriber is currently subscribed.

    Parameters:
    :   `subscriber` - the subscriber

    Returns:
    :   true if currently subscribed

    Throws:
    :   `NullPointerException` - if subscriber is null
  + ### estimateMinimumDemand

    public long estimateMinimumDemand()

    Returns an estimate of the minimum number of items requested
    (via [`request`](Flow.Subscription.md#request(long))) but not
    yet produced, among all current subscribers.

    Returns:
    :   the estimate, or zero if no subscribers
  + ### estimateMaximumLag

    public int estimateMaximumLag()

    Returns an estimate of the maximum number of items produced but
    not yet consumed among all current subscribers.

    Returns:
    :   the estimate
  + ### consume

    public [CompletableFuture](CompletableFuture.md "class in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> consume([Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](SubmissionPublisher.md "type parameter in SubmissionPublisher")> consumer)

    Processes all published items using the given Consumer function.
    Returns a CompletableFuture that is completed normally when this
    publisher signals [`onComplete`](Flow.Subscriber.md#onComplete()), or completed exceptionally upon any error, or an
    exception is thrown by the Consumer, or the returned
    CompletableFuture is cancelled, in which case no further items
    are processed.

    Parameters:
    :   `consumer` - the function applied to each onNext item

    Returns:
    :   a CompletableFuture that is completed normally
        when the publisher signals onComplete, and exceptionally
        upon any error or cancellation

    Throws:
    :   `NullPointerException` - if consumer is null