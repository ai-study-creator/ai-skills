Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class Flow

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.Flow

---

public final class Flow
extends [Object](../../lang/Object.md "class in java.lang")

Interrelated interfaces and static methods for establishing
flow-controlled components in which [`Publishers`](Flow.Publisher.md "interface in java.util.concurrent")
produce items consumed by one or more [`Subscribers`](Flow.Subscriber.md "interface in java.util.concurrent"), each managed by a [`Subscription`](Flow.Subscription.md "interface in java.util.concurrent").

These interfaces correspond to the  [reactive-streams](http://www.reactive-streams.org/)
specification. They apply in both concurrent and distributed
asynchronous settings: All (seven) methods are defined in `void` "one-way" message style. Communication relies on a simple form
of flow control (method [`Flow.Subscription.request(long)`](Flow.Subscription.md#request(long))) that can be
used to avoid resource management problems that may otherwise occur
in "push" based systems.

**Examples.** A [`Flow.Publisher`](Flow.Publisher.md "interface in java.util.concurrent") usually defines its own
[`Flow.Subscription`](Flow.Subscription.md "interface in java.util.concurrent") implementation; constructing one in method
`subscribe` and issuing it to the calling [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent"). It publishes items to the subscriber asynchronously,
normally using an [`Executor`](Executor.md "interface in java.util.concurrent"). For example, here is a very
simple publisher that only issues (when requested) a single `TRUE` item to a single subscriber. Because the subscriber receives
only a single item, this class does not use buffering and ordering
control required in most implementations (for example [`SubmissionPublisher`](SubmissionPublisher.md "class in java.util.concurrent")).

```
 class OneShotPublisher implements Publisher<Boolean> {
   private final ExecutorService executor = ForkJoinPool.commonPool(); // daemon-based
   private boolean subscribed; // true after first subscribe
   public synchronized void subscribe(Subscriber<? super Boolean> subscriber) {
     if (subscribed)
       subscriber.onError(new IllegalStateException()); // only one allowed
     else {
       subscribed = true;
       subscriber.onSubscribe(new OneShotSubscription(subscriber, executor));
     }
   }
   static class OneShotSubscription implements Subscription {
     private final Subscriber<? super Boolean> subscriber;
     private final ExecutorService executor;
     private Future<?> future; // to allow cancellation
     private boolean completed;
     OneShotSubscription(Subscriber<? super Boolean> subscriber,
                         ExecutorService executor) {
       this.subscriber = subscriber;
       this.executor = executor;
     }
     public synchronized void request(long n) {
       if (!completed) {
         completed = true;
         if (n <= 0) {
           IllegalArgumentException ex = new IllegalArgumentException();
           executor.execute(() -> subscriber.onError(ex));
         } else {
           future = executor.submit(() -> {
             subscriber.onNext(Boolean.TRUE);
             subscriber.onComplete();
           });
         }
       }
     }
     public synchronized void cancel() {
       completed = true;
       if (future != null) future.cancel(false);
     }
   }
 }
```

A [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent") arranges that items be requested and
processed. Items (invocations of [`Flow.Subscriber.onNext(T)`](Flow.Subscriber.md#onNext(T))) are
not issued unless requested, but multiple items may be requested.
Many Subscriber implementations can arrange this in the style of
the following example, where a buffer size of 1 single-steps, and
larger sizes usually allow for more efficient overlapped processing
with less communication; for example with a value of 64, this keeps
total outstanding requests between 32 and 64.
Because Subscriber method invocations for a given [`Flow.Subscription`](Flow.Subscription.md "interface in java.util.concurrent") are strictly ordered, there is no need for these
methods to use locks or volatiles unless a Subscriber maintains
multiple Subscriptions (in which case it is better to instead
define multiple Subscribers, each with its own Subscription).

```
 class SampleSubscriber<T> implements Subscriber<T> {
   final Consumer<? super T> consumer;
   Subscription subscription;
   final long bufferSize;
   long count;
   SampleSubscriber(long bufferSize, Consumer<? super T> consumer) {
     this.bufferSize = bufferSize;
     this.consumer = consumer;
   }
   public void onSubscribe(Subscription subscription) {
     long initialRequestSize = bufferSize;
     count = bufferSize - bufferSize / 2; // re-request when half consumed
     (this.subscription = subscription).request(initialRequestSize);
   }
   public void onNext(T item) {
     if (--count <= 0)
       subscription.request(count = bufferSize - bufferSize / 2);
     consumer.accept(item);
   }
   public void onError(Throwable ex) { ex.printStackTrace(); }
   public void onComplete() {}
 }
```

The default value of [`defaultBufferSize()`](#defaultBufferSize()) may provide a
useful starting point for choosing request sizes and capacities in
Flow components based on expected rates, resources, and usages.
Or, when flow control is never needed, a subscriber may initially
request an effectively unbounded number of items, as in:

```
 class UnboundedSubscriber<T> implements Subscriber<T> {
   public void onSubscribe(Subscription subscription) {
     subscription.request(Long.MAX_VALUE); // effectively unbounded
   }
   public void onNext(T item) { use(item); }
   public void onError(Throwable ex) { ex.printStackTrace(); }
   public void onComplete() {}
   void use(T item) { ... }
 }
```

Since:
:   9

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `Flow.Processor<T,R>`

  A component that acts as both a Subscriber and Publisher.

  `static interface`

  `Flow.Publisher<T>`

  A producer of items (and related control messages) received by
  Subscribers.

  `static interface`

  `Flow.Subscriber<T>`

  A receiver of messages.

  `static interface`

  `Flow.Subscription`

  Message control linking a [`Flow.Publisher`](Flow.Publisher.md "interface in java.util.concurrent") and [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent").
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static int`

  `defaultBufferSize()`

  Returns a default value for Publisher or Subscriber buffering,
  that may be used in the absence of other constraints.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### defaultBufferSize

    public static int defaultBufferSize()

    Returns a default value for Publisher or Subscriber buffering,
    that may be used in the absence of other constraints.

    Returns:
    :   the buffer size value