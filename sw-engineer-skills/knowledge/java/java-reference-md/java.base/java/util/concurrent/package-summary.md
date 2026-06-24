Module [java.base](../../../module-summary.md)

# Package java.util.concurrent

---

package java.util.concurrent

Utility classes commonly useful in concurrent programming. This
package includes a few small standardized extensible frameworks, as
well as some classes that provide useful functionality and are
otherwise tedious or difficult to implement. Here are brief
descriptions of the main components. See also the
[`java.util.concurrent.locks`](locks/package-summary.md) and
[`java.util.concurrent.atomic`](atomic/package-summary.md) packages.

## Executors

**Interfaces.**
[`Executor`](Executor.md "interface in java.util.concurrent") is a simple standardized
interface for defining custom thread-like subsystems, including
thread pools, asynchronous I/O, and lightweight task frameworks.
Depending on which concrete Executor class is being used, tasks may
execute in a newly created thread, an existing task-execution thread,
or the thread calling [`execute`](Executor.md#execute(java.lang.Runnable)), and may execute sequentially or concurrently.
[`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") provides a more
complete asynchronous task execution framework. An
ExecutorService manages queuing and scheduling of tasks,
and allows controlled shutdown.
The [`ScheduledExecutorService`](ScheduledExecutorService.md "interface in java.util.concurrent")
subinterface and associated interfaces add support for
delayed and periodic task execution. ExecutorServices
provide methods arranging asynchronous execution of any
function expressed as [`Callable`](Callable.md "interface in java.util.concurrent"),
the result-bearing analog of [`Runnable`](../../lang/Runnable.md "interface in java.lang").
A [`Future`](Future.md "interface in java.util.concurrent") returns the results of
a function, allows determination of whether execution has
completed, and provides a means to cancel execution.
A [`RunnableFuture`](RunnableFuture.md "interface in java.util.concurrent") is a `Future`
that possesses a `run` method that upon execution,
sets its results.

**Implementations.**
Classes [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent") and
[`ScheduledThreadPoolExecutor`](ScheduledThreadPoolExecutor.md "class in java.util.concurrent")
provide tunable, flexible thread pools.
The [`Executors`](Executors.md "class in java.util.concurrent") class provides
factory methods for the most common kinds and configurations
of Executors, as well as a few utility methods for using
them. Other utilities based on `Executors` include the
concrete class [`FutureTask`](FutureTask.md "class in java.util.concurrent")
providing a common extensible implementation of Futures, and
[`ExecutorCompletionService`](ExecutorCompletionService.md "class in java.util.concurrent"), that
assists in coordinating the processing of groups of
asynchronous tasks.

Class [`ForkJoinPool`](ForkJoinPool.md "class in java.util.concurrent") provides an
Executor primarily designed for processing instances of [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent") and its subclasses. These
classes employ a work-stealing scheduler that attains high
throughput for tasks conforming to restrictions that often hold in
computation-intensive parallel processing.

## Queues

The [`ConcurrentLinkedQueue`](ConcurrentLinkedQueue.md "class in java.util.concurrent") class
supplies an efficient scalable thread-safe non-blocking FIFO queue.
The [`ConcurrentLinkedDeque`](ConcurrentLinkedDeque.md "class in java.util.concurrent") class is
similar, but additionally supports the [`Deque`](../Deque.md "interface in java.util")
interface.

Five implementations in `java.util.concurrent` support
the extended [`BlockingQueue`](BlockingQueue.md "interface in java.util.concurrent")
interface, that defines blocking versions of put and take:
[`LinkedBlockingQueue`](LinkedBlockingQueue.md "class in java.util.concurrent"),
[`ArrayBlockingQueue`](ArrayBlockingQueue.md "class in java.util.concurrent"),
[`SynchronousQueue`](SynchronousQueue.md "class in java.util.concurrent"),
[`PriorityBlockingQueue`](PriorityBlockingQueue.md "class in java.util.concurrent"), and
[`DelayQueue`](DelayQueue.md "class in java.util.concurrent").
The different classes cover the most common usage contexts
for producer-consumer, messaging, parallel tasking, and
related concurrent designs.

Extended interface [`TransferQueue`](TransferQueue.md "interface in java.util.concurrent"),
and implementation [`LinkedTransferQueue`](LinkedTransferQueue.md "class in java.util.concurrent")
introduce a synchronous `transfer` method (along with related
features) in which a producer may optionally block awaiting its
consumer.

The [`BlockingDeque`](BlockingDeque.md "interface in java.util.concurrent") interface
extends `BlockingQueue` to support both FIFO and LIFO
(stack-based) operations.
Class [`LinkedBlockingDeque`](LinkedBlockingDeque.md "class in java.util.concurrent")
provides an implementation.

## Timing

The [`TimeUnit`](TimeUnit.md "enum class in java.util.concurrent") class provides
multiple granularities (including nanoseconds) for
specifying and controlling time-out based operations. Most
classes in the package contain operations based on time-outs
in addition to indefinite waits. In all cases that
time-outs are used, the time-out specifies the minimum time
that the method should wait before indicating that it
timed-out. Implementations make a "best effort"
to detect time-outs as soon as possible after they occur.
However, an indefinite amount of time may elapse between a
time-out being detected and a thread actually executing
again after that time-out. All methods that accept timeout
parameters treat values less than or equal to zero to mean
not to wait at all. To wait "forever", you can use a value
of `Long.MAX_VALUE`.

## Synchronizers

Five classes aid common special-purpose synchronization idioms.

* [`Semaphore`](Semaphore.md "class in java.util.concurrent") is a classic concurrency tool.* [`CountDownLatch`](CountDownLatch.md "class in java.util.concurrent") is a very simple yet
    very common utility for blocking until a given number of signals,
    events, or conditions hold.* A [`CyclicBarrier`](CyclicBarrier.md "class in java.util.concurrent") is a resettable
      multiway synchronization point useful in some styles of parallel
      programming.* A [`Phaser`](Phaser.md "class in java.util.concurrent") provides
        a more flexible form of barrier that may be used to control phased
        computation among multiple threads.* An [`Exchanger`](Exchanger.md "class in java.util.concurrent") allows two threads to
          exchange objects at a rendezvous point, and is useful in several
          pipeline designs.

## Concurrent Collections

Besides Queues, this package supplies Collection implementations
designed for use in multithreaded contexts:
[`ConcurrentHashMap`](ConcurrentHashMap.md "class in java.util.concurrent"),
[`ConcurrentSkipListMap`](ConcurrentSkipListMap.md "class in java.util.concurrent"),
[`ConcurrentSkipListSet`](ConcurrentSkipListSet.md "class in java.util.concurrent"),
[`CopyOnWriteArrayList`](CopyOnWriteArrayList.md "class in java.util.concurrent"), and
[`CopyOnWriteArraySet`](CopyOnWriteArraySet.md "class in java.util.concurrent").
When many threads are expected to access a given collection, a
`ConcurrentHashMap` is normally preferable to a synchronized
`HashMap`, and a `ConcurrentSkipListMap` is normally
preferable to a synchronized `TreeMap`.
A `CopyOnWriteArrayList` is preferable to a synchronized
`ArrayList` when the expected number of reads and traversals
greatly outnumber the number of updates to a list.

The "Concurrent" prefix used with some classes in this package
is a shorthand indicating several differences from similar
"synchronized" classes. For example `java.util.Hashtable` and
`Collections.synchronizedMap(new HashMap())` are
synchronized. But [`ConcurrentHashMap`](ConcurrentHashMap.md "class in java.util.concurrent") is "concurrent". A
concurrent collection is thread-safe, but not governed by a
single exclusion lock. In the particular case of
ConcurrentHashMap, it safely permits any number of
concurrent reads as well as a large number of concurrent
writes. "Synchronized" classes can be useful when you need
to prevent all access to a collection via a single lock, at
the expense of poorer scalability. In other cases in which
multiple threads are expected to access a common collection,
"concurrent" versions are normally preferable. And
unsynchronized collections are preferable when either
collections are unshared, or are accessible only when
holding other locks.

Most concurrent Collection implementations
(including most Queues) also differ from the usual `java.util`
conventions in that their [Iterators](../Iterator.md "interface in java.util")
and [Spliterators](../Spliterator.md "interface in java.util") provide
*weakly consistent* rather than fast-fail traversal:

* they may proceed concurrently with other operations* they will never throw [`ConcurrentModificationException`](../ConcurrentModificationException.md "class in java.util")* they are guaranteed to traverse elements as they existed upon
      construction exactly once, and may (but are not guaranteed to)
      reflect any modifications subsequent to construction.

## Memory Consistency Properties

Chapter 17 of
The Java Language Specification defines the
*happens-before* relation on memory operations such as reads and
writes of shared variables. The results of a write by one thread are
guaranteed to be visible to a read by another thread only if the write
operation *happens-before* the read operation. The
`synchronized` and `volatile` constructs, as well as the
`Thread.start()` and `Thread.join()` methods, can form
*happens-before* relationships. In particular:

* Each action in a thread *happens-before* every action in that
  thread that comes later in the program's order.* An unlock (`synchronized` block or method exit) of a
    monitor *happens-before* every subsequent lock (`synchronized`
    block or method entry) of that same monitor. And because
    the *happens-before* relation is transitive, all actions
    of a thread prior to unlocking *happen-before* all actions
    subsequent to any thread locking that monitor.* A write to a `volatile` field *happens-before* every
      subsequent read of that same field. Writes and reads of
      `volatile` fields have similar memory consistency effects
      as entering and exiting monitors, but do *not* entail
      mutual exclusion locking.* A call to `start` on a thread *happens-before* any
        action in the started thread.* All actions in a thread *happen-before* any other thread
          successfully returns from a `join` on that thread.

The methods of all classes in `java.util.concurrent` and its
subpackages extend these guarantees to higher-level
synchronization. In particular:

* Actions in a thread prior to placing an object into any concurrent
  collection *happen-before* actions subsequent to the access or
  removal of that element from the collection in another thread.* Actions in a thread prior to the submission of a `Runnable`
    to an `Executor` *happen-before* its execution begins.
    Similarly for `Callables` submitted to an `ExecutorService`.* Actions taken by the asynchronous computation represented by a
      `Future` *happen-before* actions subsequent to the
      retrieval of the result via `Future.get()` in another thread.* Actions prior to "releasing" synchronizer methods such as
        `Lock.unlock`, `Semaphore.release`, and
        `CountDownLatch.countDown` *happen-before* actions
        subsequent to a successful "acquiring" method such as
        `Lock.lock`, `Semaphore.acquire`,
        `Condition.await`, and `CountDownLatch.await` on the
        same synchronizer object in another thread.* For each pair of threads that successfully exchange objects via
          an `Exchanger`, actions prior to the `exchange()`
          in each thread *happen-before* those subsequent to the
          corresponding `exchange()` in another thread.* Actions prior to calling `CyclicBarrier.await` and
            `Phaser.awaitAdvance` (as well as its variants)
            *happen-before* actions performed by the barrier action, and
            actions performed by the barrier action *happen-before* actions
            subsequent to a successful return from the corresponding `await`
            in other threads.

Since:
:   1.5

* Related Packages

  Package

  Description

  [java.util](../package-summary.md)

  Contains the collections framework, some internationalization support classes,
  a service loader, properties, random number generation, string parsing
  and scanning classes, base64 encoding and decoding, a bit array, and
  several miscellaneous utility classes.

  [java.util.concurrent.atomic](atomic/package-summary.md)

  A small toolkit of classes that support lock-free thread-safe
  programming on single variables.

  [java.util.concurrent.locks](locks/package-summary.md)

  Interfaces and classes providing a framework for locking and waiting
  for conditions that is distinct from built-in synchronization and
  monitors.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [AbstractExecutorService](AbstractExecutorService.md "class in java.util.concurrent")

  Provides default implementations of [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent")
  execution methods.

  [ArrayBlockingQueue](ArrayBlockingQueue.md "class in java.util.concurrent")<E>

  A bounded [blocking queue](BlockingQueue.md "interface in java.util.concurrent") backed by an
  array.

  [BlockingDeque](BlockingDeque.md "interface in java.util.concurrent")<E>

  A [`Deque`](../Deque.md "interface in java.util") that additionally supports blocking operations that wait
  for the deque to become non-empty when retrieving an element, and wait for
  space to become available in the deque when storing an element.

  [BlockingQueue](BlockingQueue.md "interface in java.util.concurrent")<E>

  A [`Queue`](../Queue.md "interface in java.util") that additionally supports operations that wait for
  the queue to become non-empty when retrieving an element, and wait
  for space to become available in the queue when storing an element.

  [BrokenBarrierException](BrokenBarrierException.md "class in java.util.concurrent")

  Exception thrown when a thread tries to wait upon a barrier that is
  in a broken state, or which enters the broken state while the thread
  is waiting.

  [Callable](Callable.md "interface in java.util.concurrent")<V>

  A task that returns a result and may throw an exception.

  [CancellationException](CancellationException.md "class in java.util.concurrent")

  Exception indicating that the result of a value-producing task,
  such as a [`FutureTask`](FutureTask.md "class in java.util.concurrent"), cannot be retrieved because the task
  was cancelled.

  [CompletableFuture](CompletableFuture.md "class in java.util.concurrent")<T>

  A [`Future`](Future.md "interface in java.util.concurrent") that may be explicitly completed (setting its
  value and status), and may be used as a [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent"),
  supporting dependent functions and actions that trigger upon its
  completion.

  [CompletableFuture.AsynchronousCompletionTask](CompletableFuture.AsynchronousCompletionTask.md "interface in java.util.concurrent")

  A marker interface identifying asynchronous tasks produced by
  `async` methods.

  [CompletionException](CompletionException.md "class in java.util.concurrent")

  Exception thrown when an error or other exception is encountered
  in the course of completing a result or task.

  [CompletionService](CompletionService.md "interface in java.util.concurrent")<V>

  A service that decouples the production of new asynchronous tasks
  from the consumption of the results of completed tasks.

  [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<T>

  A stage of a possibly asynchronous computation, that performs an
  action or computes a value when another CompletionStage completes.

  [ConcurrentHashMap](ConcurrentHashMap.md "class in java.util.concurrent")<K,V>

  A hash table supporting full concurrency of retrievals and
  high expected concurrency for updates.

  [ConcurrentHashMap.KeySetView](ConcurrentHashMap.KeySetView.md "class in java.util.concurrent")<K,V>

  A view of a ConcurrentHashMap as a [`Set`](../Set.md "interface in java.util") of keys, in
  which additions may optionally be enabled by mapping to a
  common value.

  [ConcurrentLinkedDeque](ConcurrentLinkedDeque.md "class in java.util.concurrent")<E>

  An unbounded concurrent [deque](../Deque.md "interface in java.util") based on linked nodes.

  [ConcurrentLinkedQueue](ConcurrentLinkedQueue.md "class in java.util.concurrent")<E>

  An unbounded thread-safe [queue](../Queue.md "interface in java.util") based on linked nodes.

  [ConcurrentMap](ConcurrentMap.md "interface in java.util.concurrent")<K,V>

  A [`Map`](../Map.md "interface in java.util") providing thread safety and atomicity guarantees.

  [ConcurrentNavigableMap](ConcurrentNavigableMap.md "interface in java.util.concurrent")<K,V>

  A [`ConcurrentMap`](ConcurrentMap.md "interface in java.util.concurrent") supporting [`NavigableMap`](../NavigableMap.md "interface in java.util") operations,
  and recursively so for its navigable sub-maps.

  [ConcurrentSkipListMap](ConcurrentSkipListMap.md "class in java.util.concurrent")<K,V>

  A scalable concurrent [`ConcurrentNavigableMap`](ConcurrentNavigableMap.md "interface in java.util.concurrent") implementation.

  [ConcurrentSkipListSet](ConcurrentSkipListSet.md "class in java.util.concurrent")<E>

  A scalable concurrent [`NavigableSet`](../NavigableSet.md "interface in java.util") implementation based on
  a [`ConcurrentSkipListMap`](ConcurrentSkipListMap.md "class in java.util.concurrent").

  [CopyOnWriteArrayList](CopyOnWriteArrayList.md "class in java.util.concurrent")<E>

  A thread-safe variant of [`ArrayList`](../ArrayList.md "class in java.util") in which all mutative
  operations (`add`, `set`, and so on) are implemented by
  making a fresh copy of the underlying array.

  [CopyOnWriteArraySet](CopyOnWriteArraySet.md "class in java.util.concurrent")<E>

  A [`Set`](../Set.md "interface in java.util") that uses an internal [`CopyOnWriteArrayList`](CopyOnWriteArrayList.md "class in java.util.concurrent")
  for all of its operations.

  [CountDownLatch](CountDownLatch.md "class in java.util.concurrent")

  A synchronization aid that allows one or more threads to wait until
  a set of operations being performed in other threads completes.

  [CountedCompleter](CountedCompleter.md "class in java.util.concurrent")<T>

  A [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent") with a completion action performed when
  triggered and there are no remaining pending actions.

  [CyclicBarrier](CyclicBarrier.md "class in java.util.concurrent")

  A synchronization aid that allows a set of threads to all wait for
  each other to reach a common barrier point.

  [Delayed](Delayed.md "interface in java.util.concurrent")

  A mix-in style interface for marking objects that should be
  acted upon after a given delay.

  [DelayQueue](DelayQueue.md "class in java.util.concurrent")<E extends [Delayed](Delayed.md "interface in java.util.concurrent")>

  An unbounded [blocking queue](BlockingQueue.md "interface in java.util.concurrent") of [`Delayed`](Delayed.md "interface in java.util.concurrent")
  elements, in which an element generally becomes eligible for removal when its
  delay has expired.

  [Exchanger](Exchanger.md "class in java.util.concurrent")<V>

  A synchronization point at which threads can pair and swap elements
  within pairs.

  [ExecutionException](ExecutionException.md "class in java.util.concurrent")

  Exception thrown when attempting to retrieve the result of a task
  that aborted by throwing an exception.

  [Executor](Executor.md "interface in java.util.concurrent")

  An object that executes submitted [`Runnable`](../../lang/Runnable.md "interface in java.lang") tasks.

  [ExecutorCompletionService](ExecutorCompletionService.md "class in java.util.concurrent")<V>

  A [`CompletionService`](CompletionService.md "interface in java.util.concurrent") that uses a supplied [`Executor`](Executor.md "interface in java.util.concurrent")
  to execute tasks.

  [Executors](Executors.md "class in java.util.concurrent")

  Factory and utility methods for [`Executor`](Executor.md "interface in java.util.concurrent"), [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent"), [`ScheduledExecutorService`](ScheduledExecutorService.md "interface in java.util.concurrent"), [`ThreadFactory`](ThreadFactory.md "interface in java.util.concurrent"), and [`Callable`](Callable.md "interface in java.util.concurrent") classes defined in this
  package.

  [ExecutorService](ExecutorService.md "interface in java.util.concurrent")

  An [`Executor`](Executor.md "interface in java.util.concurrent") that provides methods to manage termination and
  methods that can produce a [`Future`](Future.md "interface in java.util.concurrent") for tracking progress of
  one or more asynchronous tasks.

  [Flow](Flow.md "class in java.util.concurrent")

  Interrelated interfaces and static methods for establishing
  flow-controlled components in which [`Publishers`](Flow.Publisher.md "interface in java.util.concurrent")
  produce items consumed by one or more [`Subscribers`](Flow.Subscriber.md "interface in java.util.concurrent"), each managed by a [`Subscription`](Flow.Subscription.md "interface in java.util.concurrent").

  [Flow.Processor](Flow.Processor.md "interface in java.util.concurrent")<T,R>

  A component that acts as both a Subscriber and Publisher.

  [Flow.Publisher](Flow.Publisher.md "interface in java.util.concurrent")<T>

  A producer of items (and related control messages) received by
  Subscribers.

  [Flow.Subscriber](Flow.Subscriber.md "interface in java.util.concurrent")<T>

  A receiver of messages.

  [Flow.Subscription](Flow.Subscription.md "interface in java.util.concurrent")

  Message control linking a [`Flow.Publisher`](Flow.Publisher.md "interface in java.util.concurrent") and [`Flow.Subscriber`](Flow.Subscriber.md "interface in java.util.concurrent").

  [ForkJoinPool](ForkJoinPool.md "class in java.util.concurrent")

  An [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") for running [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent")s.

  [ForkJoinPool.ForkJoinWorkerThreadFactory](ForkJoinPool.ForkJoinWorkerThreadFactory.md "interface in java.util.concurrent")

  Factory for creating new [`ForkJoinWorkerThread`](ForkJoinWorkerThread.md "class in java.util.concurrent")s.

  [ForkJoinPool.ManagedBlocker](ForkJoinPool.ManagedBlocker.md "interface in java.util.concurrent")

  Interface for extending managed parallelism for tasks running
  in [`ForkJoinPool`](ForkJoinPool.md "class in java.util.concurrent")s.

  [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<V>

  Abstract base class for tasks that run within a [`ForkJoinPool`](ForkJoinPool.md "class in java.util.concurrent").

  [ForkJoinWorkerThread](ForkJoinWorkerThread.md "class in java.util.concurrent")

  A thread managed by a [`ForkJoinPool`](ForkJoinPool.md "class in java.util.concurrent"), which executes
  [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent")s.

  [Future](Future.md "interface in java.util.concurrent")<V>

  A `Future` represents the result of an asynchronous
  computation.

  [Future.State](Future.State.md "enum class in java.util.concurrent")

  Represents the computation state.

  [FutureTask](FutureTask.md "class in java.util.concurrent")<V>

  A cancellable asynchronous computation.

  [LinkedBlockingDeque](LinkedBlockingDeque.md "class in java.util.concurrent")<E>

  An optionally-bounded [blocking deque](BlockingDeque.md "interface in java.util.concurrent") based on
  linked nodes.

  [LinkedBlockingQueue](LinkedBlockingQueue.md "class in java.util.concurrent")<E>

  An optionally-bounded [blocking queue](BlockingQueue.md "interface in java.util.concurrent") based on
  linked nodes.

  [LinkedTransferQueue](LinkedTransferQueue.md "class in java.util.concurrent")<E>

  An unbounded [`TransferQueue`](TransferQueue.md "interface in java.util.concurrent") based on linked nodes.

  [Phaser](Phaser.md "class in java.util.concurrent")

  A reusable synchronization barrier, similar in functionality to
  [`CyclicBarrier`](CyclicBarrier.md "class in java.util.concurrent") and [`CountDownLatch`](CountDownLatch.md "class in java.util.concurrent") but supporting
  more flexible usage.

  [PriorityBlockingQueue](PriorityBlockingQueue.md "class in java.util.concurrent")<E>

  An unbounded [blocking queue](BlockingQueue.md "interface in java.util.concurrent") that uses
  the same ordering rules as class [`PriorityQueue`](../PriorityQueue.md "class in java.util") and supplies
  blocking retrieval operations.

  [RecursiveAction](RecursiveAction.md "class in java.util.concurrent")

  A recursive resultless [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent").

  [RecursiveTask](RecursiveTask.md "class in java.util.concurrent")<V>

  A recursive result-bearing [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent").

  [RejectedExecutionException](RejectedExecutionException.md "class in java.util.concurrent")

  Exception thrown by an [`Executor`](Executor.md "interface in java.util.concurrent") when a task cannot be
  accepted for execution.

  [RejectedExecutionHandler](RejectedExecutionHandler.md "interface in java.util.concurrent")

  A handler for tasks that cannot be executed by a [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent").

  [RunnableFuture](RunnableFuture.md "interface in java.util.concurrent")<V>

  A [`Future`](Future.md "interface in java.util.concurrent") that is [`Runnable`](../../lang/Runnable.md "interface in java.lang").

  [RunnableScheduledFuture](RunnableScheduledFuture.md "interface in java.util.concurrent")<V>

  A [`ScheduledFuture`](ScheduledFuture.md "interface in java.util.concurrent") that is [`Runnable`](../../lang/Runnable.md "interface in java.lang").

  [ScheduledExecutorService](ScheduledExecutorService.md "interface in java.util.concurrent")

  An [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") that can schedule commands to run after a given
  delay, or to execute periodically.

  [ScheduledFuture](ScheduledFuture.md "interface in java.util.concurrent")<V>

  A delayed result-bearing action that can be cancelled.

  [ScheduledThreadPoolExecutor](ScheduledThreadPoolExecutor.md "class in java.util.concurrent")

  A [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent") that can additionally schedule
  commands to run after a given delay, or to execute periodically.

  [Semaphore](Semaphore.md "class in java.util.concurrent")

  A counting semaphore.

  [StructuredTaskScope](StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)<T>

  Preview.

  A basic API for *structured concurrency*.

  [StructuredTaskScope.ShutdownOnFailure](StructuredTaskScope.ShutdownOnFailure.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.ShutdownOnFailure.md#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnFailure)

  Preview.

  A `StructuredTaskScope` that captures the exception of the first subtask to
  [fail](StructuredTaskScope.Subtask.State.md#FAILED)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  [StructuredTaskScope.ShutdownOnSuccess](StructuredTaskScope.ShutdownOnSuccess.md "class in java.util.concurrent")[PREVIEW](StructuredTaskScope.ShutdownOnSuccess.md#preview-java.util.concurrent.StructuredTaskScope.ShutdownOnSuccess)<T>

  Preview.

  A `StructuredTaskScope` that captures the result of the first subtask to
  complete [successfully](StructuredTaskScope.Subtask.State.md#SUCCESS)[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State).

  [StructuredTaskScope.Subtask](StructuredTaskScope.Subtask.md "interface in java.util.concurrent")[PREVIEW](StructuredTaskScope.Subtask.md#preview-java.util.concurrent.StructuredTaskScope.Subtask)<T>

  Preview.

  Represents a subtask forked with [`StructuredTaskScope.fork(Callable)`](StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope).

  [StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](StructuredTaskScope.Subtask.State.md#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)

  Preview.

  Represents the state of a subtask.

  [StructureViolationException](StructureViolationException.md "class in java.util.concurrent")[PREVIEW](StructureViolationException.md#preview-java.util.concurrent.StructureViolationException)

  Preview.

  Thrown when a structure violation is detected.

  [SubmissionPublisher](SubmissionPublisher.md "class in java.util.concurrent")<T>

  A [`Flow.Publisher`](Flow.Publisher.md "interface in java.util.concurrent") that asynchronously issues submitted
  (non-null) items to current subscribers until it is closed.

  [SynchronousQueue](SynchronousQueue.md "class in java.util.concurrent")<E>

  A [blocking queue](BlockingQueue.md "interface in java.util.concurrent") in which each insert
  operation must wait for a corresponding remove operation by another
  thread, and vice versa.

  [ThreadFactory](ThreadFactory.md "interface in java.util.concurrent")

  An object that creates new threads on demand.

  [ThreadLocalRandom](ThreadLocalRandom.md "class in java.util.concurrent")

  A random number generator (with period 264) isolated
  to the current thread.

  [ThreadPoolExecutor](ThreadPoolExecutor.md "class in java.util.concurrent")

  An [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") that executes each submitted task using
  one of possibly several pooled threads, normally configured
  using [`Executors`](Executors.md "class in java.util.concurrent") factory methods.

  [ThreadPoolExecutor.AbortPolicy](ThreadPoolExecutor.AbortPolicy.md "class in java.util.concurrent")

  A handler for rejected tasks that throws a
  [`RejectedExecutionException`](RejectedExecutionException.md "class in java.util.concurrent").

  [ThreadPoolExecutor.CallerRunsPolicy](ThreadPoolExecutor.CallerRunsPolicy.md "class in java.util.concurrent")

  A handler for rejected tasks that runs the rejected task
  directly in the calling thread of the `execute` method,
  unless the executor has been shut down, in which case the task
  is discarded.

  [ThreadPoolExecutor.DiscardOldestPolicy](ThreadPoolExecutor.DiscardOldestPolicy.md "class in java.util.concurrent")

  A handler for rejected tasks that discards the oldest unhandled
  request and then retries `execute`, unless the executor
  is shut down, in which case the task is discarded.

  [ThreadPoolExecutor.DiscardPolicy](ThreadPoolExecutor.DiscardPolicy.md "class in java.util.concurrent")

  A handler for rejected tasks that silently discards the
  rejected task.

  [TimeoutException](TimeoutException.md "class in java.util.concurrent")

  Exception thrown when a blocking operation times out.

  [TimeUnit](TimeUnit.md "enum class in java.util.concurrent")

  A `TimeUnit` represents time durations at a given unit of
  granularity and provides utility methods to convert across units,
  and to perform timing and delay operations in these units.

  [TransferQueue](TransferQueue.md "interface in java.util.concurrent")<E>

  A [`BlockingQueue`](BlockingQueue.md "interface in java.util.concurrent") in which producers may wait for consumers
  to receive elements.