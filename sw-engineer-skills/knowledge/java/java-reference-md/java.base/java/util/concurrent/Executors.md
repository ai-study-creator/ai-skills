Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class Executors

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.Executors

---

public class Executors
extends [Object](../../lang/Object.md "class in java.lang")

Factory and utility methods for [`Executor`](Executor.md "interface in java.util.concurrent"), [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent"), [`ScheduledExecutorService`](ScheduledExecutorService.md "interface in java.util.concurrent"), [`ThreadFactory`](ThreadFactory.md "interface in java.util.concurrent"), and [`Callable`](Callable.md "interface in java.util.concurrent") classes defined in this
package. This class supports the following kinds of methods:

* Methods that create and return an [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent")
  set up with commonly useful configuration settings.* Methods that create and return a [`ScheduledExecutorService`](ScheduledExecutorService.md "interface in java.util.concurrent")
    set up with commonly useful configuration settings.* Methods that create and return a "wrapped" ExecutorService, that
      disables reconfiguration by making implementation-specific methods
      inaccessible.* Methods that create and return a [`ThreadFactory`](ThreadFactory.md "interface in java.util.concurrent")
        that sets newly created threads to a known state.* Methods that create and return a [`Callable`](Callable.md "interface in java.util.concurrent")
          out of other closure-like forms, so they can be used
          in execution methods requiring `Callable`.

Since:
:   1.5

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static Callable<Object>`

  `callable(Runnable task)`

  Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
  called, runs the given task and returns `null`.

  `static <T> Callable<T>`

  `callable(Runnable task,
  T result)`

  Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
  called, runs the given task and returns the given result.

  `static Callable<Object>`

  `callable(PrivilegedAction<?> action)`

  Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
  called, runs the given privileged action and returns its result.

  `static Callable<Object>`

  `callable(PrivilegedExceptionAction<?> action)`

  Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
  called, runs the given privileged exception action and returns
  its result.

  `static ThreadFactory`

  `defaultThreadFactory()`

  Returns a default thread factory used to create new threads.

  `static ExecutorService`

  `newCachedThreadPool()`

  Creates a thread pool that creates new threads as needed, but
  will reuse previously constructed threads when they are
  available.

  `static ExecutorService`

  `newCachedThreadPool(ThreadFactory threadFactory)`

  Creates a thread pool that creates new threads as needed, but
  will reuse previously constructed threads when they are
  available, and uses the provided
  ThreadFactory to create new threads when needed.

  `static ExecutorService`

  `newFixedThreadPool(int nThreads)`

  Creates a thread pool that reuses a fixed number of threads
  operating off a shared unbounded queue.

  `static ExecutorService`

  `newFixedThreadPool(int nThreads,
  ThreadFactory threadFactory)`

  Creates a thread pool that reuses a fixed number of threads
  operating off a shared unbounded queue, using the provided
  ThreadFactory to create new threads when needed.

  `static ScheduledExecutorService`

  `newScheduledThreadPool(int corePoolSize)`

  Creates a thread pool that can schedule commands to run after a
  given delay, or to execute periodically.

  `static ScheduledExecutorService`

  `newScheduledThreadPool(int corePoolSize,
  ThreadFactory threadFactory)`

  Creates a thread pool that can schedule commands to run after a
  given delay, or to execute periodically.

  `static ExecutorService`

  `newSingleThreadExecutor()`

  Creates an Executor that uses a single worker thread operating
  off an unbounded queue.

  `static ExecutorService`

  `newSingleThreadExecutor(ThreadFactory threadFactory)`

  Creates an Executor that uses a single worker thread operating
  off an unbounded queue, and uses the provided ThreadFactory to
  create a new thread when needed.

  `static ScheduledExecutorService`

  `newSingleThreadScheduledExecutor()`

  Creates a single-threaded executor that can schedule commands
  to run after a given delay, or to execute periodically.

  `static ScheduledExecutorService`

  `newSingleThreadScheduledExecutor(ThreadFactory threadFactory)`

  Creates a single-threaded executor that can schedule commands
  to run after a given delay, or to execute periodically.

  `static ExecutorService`

  `newThreadPerTaskExecutor(ThreadFactory threadFactory)`

  Creates an Executor that starts a new Thread for each task.

  `static ExecutorService`

  `newVirtualThreadPerTaskExecutor()`

  Creates an Executor that starts a new virtual Thread for each task.

  `static ExecutorService`

  `newWorkStealingPool()`

  Creates a work-stealing thread pool using the number of
  [available processors](../../lang/Runtime.md#availableProcessors())
  as its target parallelism level.

  `static ExecutorService`

  `newWorkStealingPool(int parallelism)`

  Creates a thread pool that maintains enough threads to support
  the given parallelism level, and may use multiple queues to
  reduce contention.

  `static <T> Callable<T>`

  `privilegedCallable(Callable<T> callable)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method is only useful in conjunction with
  [the Security Manager](../../lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.

  `static <T> Callable<T>`

  `privilegedCallableUsingCurrentClassLoader(Callable<T> callable)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method is only useful in conjunction with
  [the Security Manager](../../lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.

  `static ThreadFactory`

  `privilegedThreadFactory()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method is only useful in conjunction with
  [the Security Manager](../../lang/SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.

  `static ExecutorService`

  `unconfigurableExecutorService(ExecutorService executor)`

  Returns an object that delegates all defined [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") methods to the given executor, but not any
  other methods that might otherwise be accessible using
  casts.

  `static ScheduledExecutorService`

  `unconfigurableScheduledExecutorService(ScheduledExecutorService executor)`

  Returns an object that delegates all defined [`ScheduledExecutorService`](ScheduledExecutorService.md "interface in java.util.concurrent") methods to the given executor, but
  not any other methods that might otherwise be accessible using
  casts.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### newFixedThreadPool

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newFixedThreadPool(int nThreads)

    Creates a thread pool that reuses a fixed number of threads
    operating off a shared unbounded queue. At any point, at most
    `nThreads` threads will be active processing tasks.
    If additional tasks are submitted when all threads are active,
    they will wait in the queue until a thread is available.
    If any thread terminates due to a failure during execution
    prior to shutdown, a new one will take its place if needed to
    execute subsequent tasks. The threads in the pool will exist
    until it is explicitly [`shutdown`](ExecutorService.md#shutdown()).

    Parameters:
    :   `nThreads` - the number of threads in the pool

    Returns:
    :   the newly created thread pool

    Throws:
    :   `IllegalArgumentException` - if `nThreads <= 0`
  + ### newWorkStealingPool

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newWorkStealingPool(int parallelism)

    Creates a thread pool that maintains enough threads to support
    the given parallelism level, and may use multiple queues to
    reduce contention. The parallelism level corresponds to the
    maximum number of threads actively engaged in, or available to
    engage in, task processing. The actual number of threads may
    grow and shrink dynamically. A work-stealing pool makes no
    guarantees about the order in which submitted tasks are
    executed.

    Parameters:
    :   `parallelism` - the targeted parallelism level

    Returns:
    :   the newly created thread pool

    Throws:
    :   `IllegalArgumentException` - if `parallelism <= 0`

    Since:
    :   1.8
  + ### newWorkStealingPool

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newWorkStealingPool()

    Creates a work-stealing thread pool using the number of
    [available processors](../../lang/Runtime.md#availableProcessors())
    as its target parallelism level.

    Returns:
    :   the newly created thread pool

    Since:
    :   1.8

    See Also:
    :   - [`newWorkStealingPool(int)`](#newWorkStealingPool(int))
  + ### newFixedThreadPool

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newFixedThreadPool(int nThreads,
    [ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") threadFactory)

    Creates a thread pool that reuses a fixed number of threads
    operating off a shared unbounded queue, using the provided
    ThreadFactory to create new threads when needed. At any point,
    at most `nThreads` threads will be active processing
    tasks. If additional tasks are submitted when all threads are
    active, they will wait in the queue until a thread is
    available. If any thread terminates due to a failure during
    execution prior to shutdown, a new one will take its place if
    needed to execute subsequent tasks. The threads in the pool will
    exist until it is explicitly [`shutdown`](ExecutorService.md#shutdown()).

    Parameters:
    :   `nThreads` - the number of threads in the pool
    :   `threadFactory` - the factory to use when creating new threads

    Returns:
    :   the newly created thread pool

    Throws:
    :   `NullPointerException` - if threadFactory is null
    :   `IllegalArgumentException` - if `nThreads <= 0`
  + ### newSingleThreadExecutor

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newSingleThreadExecutor()

    Creates an Executor that uses a single worker thread operating
    off an unbounded queue. (Note however that if this single
    thread terminates due to a failure during execution prior to
    shutdown, a new one will take its place if needed to execute
    subsequent tasks.) Tasks are guaranteed to execute
    sequentially, and no more than one task will be active at any
    given time. Unlike the otherwise equivalent
    `newFixedThreadPool(1)` the returned executor is
    guaranteed not to be reconfigurable to use additional threads.

    Returns:
    :   the newly created single-threaded Executor
  + ### newSingleThreadExecutor

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newSingleThreadExecutor([ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") threadFactory)

    Creates an Executor that uses a single worker thread operating
    off an unbounded queue, and uses the provided ThreadFactory to
    create a new thread when needed. Unlike the otherwise
    equivalent `newFixedThreadPool(1, threadFactory)` the
    returned executor is guaranteed not to be reconfigurable to use
    additional threads.

    Parameters:
    :   `threadFactory` - the factory to use when creating new threads

    Returns:
    :   the newly created single-threaded Executor

    Throws:
    :   `NullPointerException` - if threadFactory is null
  + ### newCachedThreadPool

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newCachedThreadPool()

    Creates a thread pool that creates new threads as needed, but
    will reuse previously constructed threads when they are
    available. These pools will typically improve the performance
    of programs that execute many short-lived asynchronous tasks.
    Calls to `execute` will reuse previously constructed
    threads if available. If no existing thread is available, a new
    thread will be created and added to the pool. Threads that have
    not been used for sixty seconds are terminated and removed from
    the cache. Thus, a pool that remains idle for long enough will
    not consume any resources. Note that pools with similar
    properties but different details (for example, timeout parameters)
    may be created using [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent") constructors.

    Returns:
    :   the newly created thread pool
  + ### newCachedThreadPool

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newCachedThreadPool([ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") threadFactory)

    Creates a thread pool that creates new threads as needed, but
    will reuse previously constructed threads when they are
    available, and uses the provided
    ThreadFactory to create new threads when needed.

    Parameters:
    :   `threadFactory` - the factory to use when creating new threads

    Returns:
    :   the newly created thread pool

    Throws:
    :   `NullPointerException` - if threadFactory is null
  + ### newThreadPerTaskExecutor

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newThreadPerTaskExecutor([ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") threadFactory)

    Creates an Executor that starts a new Thread for each task.
    The number of threads created by the Executor is unbounded.

    Invoking [`cancel(true)`](Future.md#cancel(boolean)) on a [`Future`](Future.md "interface in java.util.concurrent") representing the pending result of a task submitted to
    the Executor will [`interrupt`](../../lang/Thread.md#interrupt()) the thread
    executing the task.

    Parameters:
    :   `threadFactory` - the factory to use when creating new threads

    Returns:
    :   a new executor that creates a new Thread for each task

    Throws:
    :   `NullPointerException` - if threadFactory is null

    Since:
    :   21
  + ### newVirtualThreadPerTaskExecutor

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") newVirtualThreadPerTaskExecutor()

    Creates an Executor that starts a new virtual Thread for each task.
    The number of threads created by the Executor is unbounded.

    This method is equivalent to invoking
    [`newThreadPerTaskExecutor(ThreadFactory)`](#newThreadPerTaskExecutor(java.util.concurrent.ThreadFactory)) with a thread factory
    that creates virtual threads.

    Returns:
    :   a new executor that creates a new virtual Thread for each task

    Since:
    :   21
  + ### newSingleThreadScheduledExecutor

    public static [ScheduledExecutorService](ScheduledExecutorService.md "interface in java.util.concurrent") newSingleThreadScheduledExecutor()

    Creates a single-threaded executor that can schedule commands
    to run after a given delay, or to execute periodically.
    (Note however that if this single
    thread terminates due to a failure during execution prior to
    shutdown, a new one will take its place if needed to execute
    subsequent tasks.) Tasks are guaranteed to execute
    sequentially, and no more than one task will be active at any
    given time. Unlike the otherwise equivalent
    `newScheduledThreadPool(1)` the returned executor is
    guaranteed not to be reconfigurable to use additional threads.

    Returns:
    :   the newly created scheduled executor
  + ### newSingleThreadScheduledExecutor

    public static [ScheduledExecutorService](ScheduledExecutorService.md "interface in java.util.concurrent") newSingleThreadScheduledExecutor([ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") threadFactory)

    Creates a single-threaded executor that can schedule commands
    to run after a given delay, or to execute periodically. (Note
    however that if this single thread terminates due to a failure
    during execution prior to shutdown, a new one will take its
    place if needed to execute subsequent tasks.) Tasks are
    guaranteed to execute sequentially, and no more than one task
    will be active at any given time. Unlike the otherwise
    equivalent `newScheduledThreadPool(1, threadFactory)`
    the returned executor is guaranteed not to be reconfigurable to
    use additional threads.

    Parameters:
    :   `threadFactory` - the factory to use when creating new threads

    Returns:
    :   the newly created scheduled executor

    Throws:
    :   `NullPointerException` - if threadFactory is null
  + ### newScheduledThreadPool

    public static [ScheduledExecutorService](ScheduledExecutorService.md "interface in java.util.concurrent") newScheduledThreadPool(int corePoolSize)

    Creates a thread pool that can schedule commands to run after a
    given delay, or to execute periodically.

    Parameters:
    :   `corePoolSize` - the number of threads to keep in the pool,
        even if they are idle

    Returns:
    :   the newly created scheduled thread pool

    Throws:
    :   `IllegalArgumentException` - if `corePoolSize < 0`
  + ### newScheduledThreadPool

    public static [ScheduledExecutorService](ScheduledExecutorService.md "interface in java.util.concurrent") newScheduledThreadPool(int corePoolSize,
    [ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") threadFactory)

    Creates a thread pool that can schedule commands to run after a
    given delay, or to execute periodically.

    Parameters:
    :   `corePoolSize` - the number of threads to keep in the pool,
        even if they are idle
    :   `threadFactory` - the factory to use when the executor
        creates a new thread

    Returns:
    :   the newly created scheduled thread pool

    Throws:
    :   `IllegalArgumentException` - if `corePoolSize < 0`
    :   `NullPointerException` - if threadFactory is null
  + ### unconfigurableExecutorService

    public static [ExecutorService](ExecutorService.md "interface in java.util.concurrent") unconfigurableExecutorService([ExecutorService](ExecutorService.md "interface in java.util.concurrent") executor)

    Returns an object that delegates all defined [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") methods to the given executor, but not any
    other methods that might otherwise be accessible using
    casts. This provides a way to safely "freeze" configuration and
    disallow tuning of a given concrete implementation.

    Parameters:
    :   `executor` - the underlying implementation

    Returns:
    :   an `ExecutorService` instance

    Throws:
    :   `NullPointerException` - if executor null
  + ### unconfigurableScheduledExecutorService

    public static [ScheduledExecutorService](ScheduledExecutorService.md "interface in java.util.concurrent") unconfigurableScheduledExecutorService([ScheduledExecutorService](ScheduledExecutorService.md "interface in java.util.concurrent") executor)

    Returns an object that delegates all defined [`ScheduledExecutorService`](ScheduledExecutorService.md "interface in java.util.concurrent") methods to the given executor, but
    not any other methods that might otherwise be accessible using
    casts. This provides a way to safely "freeze" configuration and
    disallow tuning of a given concrete implementation.

    Parameters:
    :   `executor` - the underlying implementation

    Returns:
    :   a `ScheduledExecutorService` instance

    Throws:
    :   `NullPointerException` - if executor null
  + ### defaultThreadFactory

    public static [ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") defaultThreadFactory()

    Returns a default thread factory used to create new threads.
    This factory creates all new threads used by an Executor in the
    same [`ThreadGroup`](../../lang/ThreadGroup.md "class in java.lang"). If there is a [`SecurityManager`](../../lang/SecurityManager.md "class in java.lang"), it uses the group of [`System.getSecurityManager()`](../../lang/System.md#getSecurityManager()), else the group of the thread
    invoking this `defaultThreadFactory` method. Each new
    thread is created as a non-daemon thread with priority set to
    the smaller of `Thread.NORM_PRIORITY` and the maximum
    priority permitted in the thread group. New threads have names
    accessible via [`Thread.getName()`](../../lang/Thread.md#getName()) of
    *pool-N-thread-M*, where *N* is the sequence
    number of this factory, and *M* is the sequence number
    of the thread created by this factory.

    Returns:
    :   a thread factory
  + ### privilegedThreadFactory

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")([since](../../lang/Deprecated.md#since())="17",
    [forRemoval](../../lang/Deprecated.md#forRemoval())=true)
    public static [ThreadFactory](ThreadFactory.md "interface in java.util.concurrent") privilegedThreadFactory()

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method is only useful in conjunction with
    [the Security Manager](../../lang/SecurityManager.md "class in java.lang"), which is
    deprecated and subject to removal in a future release.
    Consequently, this method is also deprecated and subject to
    removal. There is no replacement for the Security Manager or this
    method.

    Returns a thread factory used to create new threads that
    have the same permissions as the current thread.
    This factory creates threads with the same settings as [`defaultThreadFactory()`](#defaultThreadFactory()), additionally setting the
    AccessControlContext and contextClassLoader of new threads to
    be the same as the thread invoking this
    `privilegedThreadFactory` method. A new
    `privilegedThreadFactory` can be created within an
    [`AccessController.doPrivileged`](../../security/AccessController.md#doPrivileged(java.security.PrivilegedAction))
    action setting the current thread's access control context to
    create threads with the selected permission settings holding
    within that action.

    Note that while tasks running within such threads will have
    the same access control and class loader settings as the
    current thread, they need not have the same [`ThreadLocal`](../../lang/ThreadLocal.md "class in java.lang") or [`InheritableThreadLocal`](../../lang/InheritableThreadLocal.md "class in java.lang") values. If necessary,
    particular values of thread locals can be set or reset before
    any task runs in [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent") subclasses using
    [`ThreadPoolExecutor.beforeExecute(Thread, Runnable)`](ThreadPoolExecutor.md#beforeExecute(java.lang.Thread,java.lang.Runnable)).
    Also, if it is necessary to initialize worker threads to have
    the same InheritableThreadLocal settings as some other
    designated thread, you can create a custom ThreadFactory in
    which that thread waits for and services requests to create
    others that will inherit its values.

    Returns:
    :   a thread factory

    Throws:
    :   `AccessControlException` - if the current access control
        context does not have permission to both get and set context
        class loader
  + ### callable

    public static <T> [Callable](Callable.md "interface in java.util.concurrent")<T> callable([Runnable](../../lang/Runnable.md "interface in java.lang") task,
    T result)

    Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
    called, runs the given task and returns the given result. This
    can be useful when applying methods requiring a
    `Callable` to an otherwise resultless action.

    Type Parameters:
    :   `T` - the type of the result

    Parameters:
    :   `task` - the task to run
    :   `result` - the result to return

    Returns:
    :   a callable object

    Throws:
    :   `NullPointerException` - if task null
  + ### callable

    public static [Callable](Callable.md "interface in java.util.concurrent")<[Object](../../lang/Object.md "class in java.lang")> callable([Runnable](../../lang/Runnable.md "interface in java.lang") task)

    Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
    called, runs the given task and returns `null`.

    Parameters:
    :   `task` - the task to run

    Returns:
    :   a callable object

    Throws:
    :   `NullPointerException` - if task null
  + ### callable

    public static [Callable](Callable.md "interface in java.util.concurrent")<[Object](../../lang/Object.md "class in java.lang")> callable([PrivilegedAction](../../security/PrivilegedAction.md "interface in java.security")<?> action)

    Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
    called, runs the given privileged action and returns its result.

    Parameters:
    :   `action` - the privileged action to run

    Returns:
    :   a callable object

    Throws:
    :   `NullPointerException` - if action null
  + ### callable

    public static [Callable](Callable.md "interface in java.util.concurrent")<[Object](../../lang/Object.md "class in java.lang")> callable([PrivilegedExceptionAction](../../security/PrivilegedExceptionAction.md "interface in java.security")<?> action)

    Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that, when
    called, runs the given privileged exception action and returns
    its result.

    Parameters:
    :   `action` - the privileged exception action to run

    Returns:
    :   a callable object

    Throws:
    :   `NullPointerException` - if action null
  + ### privilegedCallable

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")([since](../../lang/Deprecated.md#since())="17",
    [forRemoval](../../lang/Deprecated.md#forRemoval())=true)
    public static <T> [Callable](Callable.md "interface in java.util.concurrent")<T> privilegedCallable([Callable](Callable.md "interface in java.util.concurrent")<T> callable)

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method is only useful in conjunction with
    [the Security Manager](../../lang/SecurityManager.md "class in java.lang"), which is
    deprecated and subject to removal in a future release.
    Consequently, this method is also deprecated and subject to
    removal. There is no replacement for the Security Manager or this
    method.

    Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that will, when called,
    execute the given `callable` under the current access
    control context. This method should normally be invoked within
    an [`AccessController.doPrivileged`](../../security/AccessController.md#doPrivileged(java.security.PrivilegedAction))
    action to create callables that will, if possible, execute
    under the selected permission settings holding within that
    action; or if not possible, throw an associated [`AccessControlException`](../../security/AccessControlException.md "class in java.security").

    Type Parameters:
    :   `T` - the type of the callable's result

    Parameters:
    :   `callable` - the underlying task

    Returns:
    :   a callable object

    Throws:
    :   `NullPointerException` - if callable null
  + ### privilegedCallableUsingCurrentClassLoader

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")([since](../../lang/Deprecated.md#since())="17",
    [forRemoval](../../lang/Deprecated.md#forRemoval())=true)
    public static <T> [Callable](Callable.md "interface in java.util.concurrent")<T> privilegedCallableUsingCurrentClassLoader([Callable](Callable.md "interface in java.util.concurrent")<T> callable)

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method is only useful in conjunction with
    [the Security Manager](../../lang/SecurityManager.md "class in java.lang"), which is
    deprecated and subject to removal in a future release.
    Consequently, this method is also deprecated and subject to
    removal. There is no replacement for the Security Manager or this
    method.

    Returns a [`Callable`](Callable.md "interface in java.util.concurrent") object that will, when called,
    execute the given `callable` under the current access
    control context, with the current context class loader as the
    context class loader. This method should normally be invoked
    within an
    [`AccessController.doPrivileged`](../../security/AccessController.md#doPrivileged(java.security.PrivilegedAction))
    action to create callables that will, if possible, execute
    under the selected permission settings holding within that
    action; or if not possible, throw an associated [`AccessControlException`](../../security/AccessControlException.md "class in java.security").

    Type Parameters:
    :   `T` - the type of the callable's result

    Parameters:
    :   `callable` - the underlying task

    Returns:
    :   a callable object

    Throws:
    :   `NullPointerException` - if callable null
    :   `AccessControlException` - if the current access control
        context does not have permission to both set and get context
        class loader