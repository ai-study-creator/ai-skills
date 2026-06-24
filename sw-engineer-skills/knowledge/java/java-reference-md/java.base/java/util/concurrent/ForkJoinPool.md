Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ForkJoinPool

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.concurrent.AbstractExecutorService](AbstractExecutorService.md "class in java.util.concurrent")

java.util.concurrent.ForkJoinPool

All Implemented Interfaces:
:   `AutoCloseable`, `Executor`, `ExecutorService`

---

public class ForkJoinPool
extends [AbstractExecutorService](AbstractExecutorService.md "class in java.util.concurrent")

An [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") for running [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent")s.
A `ForkJoinPool` provides the entry point for submissions
from non-`ForkJoinTask` clients, as well as management and
monitoring operations.

A `ForkJoinPool` differs from other kinds of [`ExecutorService`](ExecutorService.md "interface in java.util.concurrent") mainly by virtue of employing
*work-stealing*: all threads in the pool attempt to find and
execute tasks submitted to the pool and/or created by other active
tasks (eventually blocking waiting for work if none exist). This
enables efficient processing when most tasks spawn other subtasks
(as do most `ForkJoinTask`s), as well as when many small
tasks are submitted to the pool from external clients. Especially
when setting *asyncMode* to true in constructors, `ForkJoinPool`s may also be appropriate for use with event-style
tasks that are never joined. All worker threads are initialized
with [`Thread.isDaemon()`](../../lang/Thread.md#isDaemon()) set `true`.

A static [`commonPool()`](#commonPool()) is available and appropriate for
most applications. The common pool is used by any ForkJoinTask that
is not explicitly submitted to a specified pool. Using the common
pool normally reduces resource usage (its threads are slowly
reclaimed during periods of non-use, and reinstated upon subsequent
use).

For applications that require separate or custom pools, a `ForkJoinPool` may be constructed with a given target parallelism
level; by default, equal to the number of available processors.
The pool attempts to maintain enough active (or available) threads
by dynamically adding, suspending, or resuming internal worker
threads, even if some tasks are stalled waiting to join others.
However, no such adjustments are guaranteed in the face of blocked
I/O or other unmanaged synchronization. The nested [`ForkJoinPool.ManagedBlocker`](ForkJoinPool.ManagedBlocker.md "interface in java.util.concurrent") interface enables extension of the kinds of
synchronization accommodated. The default policies may be
overridden using a constructor with parameters corresponding to
those documented in class [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent").

In addition to execution and lifecycle control methods, this
class provides status check methods (for example
[`getStealCount()`](#getStealCount())) that are intended to aid in developing,
tuning, and monitoring fork/join applications. Also, method
[`toString()`](#toString()) returns indications of pool state in a
convenient form for informal monitoring.

As is the case with other ExecutorServices, there are three
main task execution methods summarized in the following table.
These are designed to be used primarily by clients not already
engaged in fork/join computations in the current pool. The main
forms of these methods accept instances of `ForkJoinTask`,
but overloaded forms also allow mixed execution of plain `Runnable`- or `Callable`- based activities as well. However,
tasks that are already executing in a pool should normally instead
use the within-computation forms listed in the table unless using
async event-style tasks that are not usually joined, in which case
there is little difference among choice of methods.

Summary of task execution methods

|  | Call from non-fork/join clients | Call from within fork/join computations |
| Arrange async execution | [`execute(ForkJoinTask)`](#execute(java.util.concurrent.ForkJoinTask)) | [`ForkJoinTask.fork()`](ForkJoinTask.md#fork()) |
| Await and obtain result | [`invoke(ForkJoinTask)`](#invoke(java.util.concurrent.ForkJoinTask)) | [`ForkJoinTask.invoke()`](ForkJoinTask.md#invoke()) |
| Arrange exec and obtain Future | [`submit(ForkJoinTask)`](#submit(java.util.concurrent.ForkJoinTask)) | [`ForkJoinTask.fork()`](ForkJoinTask.md#fork()) (ForkJoinTasks *are* Futures) |

The parameters used to construct the common pool may be controlled by
setting the following [system properties](../../lang/System.md#getProperty(java.lang.String)):

* `java.util.concurrent.ForkJoinPool.common.parallelism`
  - the parallelism level, a non-negative integer* `java.util.concurrent.ForkJoinPool.common.threadFactory`
    - the class name of a [`ForkJoinPool.ForkJoinWorkerThreadFactory`](ForkJoinPool.ForkJoinWorkerThreadFactory.md "interface in java.util.concurrent").
    The [system class loader](../../lang/ClassLoader.md#getSystemClassLoader())
    is used to load this class.* `java.util.concurrent.ForkJoinPool.common.exceptionHandler`
      - the class name of a [`Thread.UncaughtExceptionHandler`](../../lang/Thread.UncaughtExceptionHandler.md "interface in java.lang").
      The [system class loader](../../lang/ClassLoader.md#getSystemClassLoader())
      is used to load this class.* `java.util.concurrent.ForkJoinPool.common.maximumSpares`
        - the maximum number of allowed extra threads to maintain target
        parallelism (default 256).

If no thread factory is supplied via a system property, then the
common pool uses a factory that uses the system class loader as the
[thread context class loader](../../lang/Thread.md#getContextClassLoader()).
In addition, if a [`SecurityManager`](../../lang/SecurityManager.md "class in java.lang") is present, then
the common pool uses a factory supplying threads that have no
[`Permissions`](../../security/Permissions.md "class in java.security") enabled, and are not guaranteed to preserve
the values of [`ThreadLocal`](../../lang/ThreadLocal.md "class in java.lang") variables across tasks.
Upon any error in establishing these settings, default parameters
are used. It is possible to disable or limit the use of threads in
the common pool by setting the parallelism property to zero, and/or
using a factory that may return `null`. However doing so may
cause unjoined tasks to never be executed.

Since:
:   1.7

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `ForkJoinPool.ForkJoinWorkerThreadFactory`

  Factory for creating new [`ForkJoinWorkerThread`](ForkJoinWorkerThread.md "class in java.util.concurrent")s.

  `static interface`

  `ForkJoinPool.ManagedBlocker`

  Interface for extending managed parallelism for tasks running
  in [`ForkJoinPool`](ForkJoinPool.md "class in java.util.concurrent")s.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ForkJoinPool.ForkJoinWorkerThreadFactory`

  `defaultForkJoinWorkerThreadFactory`

  Creates a new ForkJoinWorkerThread.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ForkJoinPool()`

  Creates a `ForkJoinPool` with parallelism equal to [`Runtime.availableProcessors()`](../../lang/Runtime.md#availableProcessors()), using defaults for all
  other parameters (see [`ForkJoinPool(int, ForkJoinWorkerThreadFactory, UncaughtExceptionHandler, boolean, int, int, int, Predicate, long, TimeUnit)`](#%3Cinit%3E(int,java.util.concurrent.ForkJoinPool.ForkJoinWorkerThreadFactory,java.lang.Thread.UncaughtExceptionHandler,boolean,int,int,int,java.util.function.Predicate,long,java.util.concurrent.TimeUnit))).

  `ForkJoinPool(int parallelism)`

  Creates a `ForkJoinPool` with the indicated parallelism
  level, using defaults for all other parameters (see [`ForkJoinPool(int, ForkJoinWorkerThreadFactory, UncaughtExceptionHandler, boolean, int, int, int, Predicate, long, TimeUnit)`](#%3Cinit%3E(int,java.util.concurrent.ForkJoinPool.ForkJoinWorkerThreadFactory,java.lang.Thread.UncaughtExceptionHandler,boolean,int,int,int,java.util.function.Predicate,long,java.util.concurrent.TimeUnit))).

  `ForkJoinPool(int parallelism,
  ForkJoinPool.ForkJoinWorkerThreadFactory factory,
  Thread.UncaughtExceptionHandler handler,
  boolean asyncMode)`

  Creates a `ForkJoinPool` with the given parameters (using
  defaults for others -- see [`ForkJoinPool(int, ForkJoinWorkerThreadFactory, UncaughtExceptionHandler, boolean, int, int, int, Predicate, long, TimeUnit)`](#%3Cinit%3E(int,java.util.concurrent.ForkJoinPool.ForkJoinWorkerThreadFactory,java.lang.Thread.UncaughtExceptionHandler,boolean,int,int,int,java.util.function.Predicate,long,java.util.concurrent.TimeUnit))).

  `ForkJoinPool(int parallelism,
  ForkJoinPool.ForkJoinWorkerThreadFactory factory,
  Thread.UncaughtExceptionHandler handler,
  boolean asyncMode,
  int corePoolSize,
  int maximumPoolSize,
  int minimumRunnable,
  Predicate<? super ForkJoinPool> saturate,
  long keepAliveTime,
  TimeUnit unit)`

  Creates a `ForkJoinPool` with the given parameters.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `awaitQuiescence(long timeout,
  TimeUnit unit)`

  If called by a ForkJoinTask operating in this pool, equivalent
  in effect to [`ForkJoinTask.helpQuiesce()`](ForkJoinTask.md#helpQuiesce()).

  `boolean`

  `awaitTermination(long timeout,
  TimeUnit unit)`

  Blocks until all tasks have completed execution after a
  shutdown request, or the timeout occurs, or the current thread
  is interrupted, whichever happens first.

  `void`

  `close()`

  Unless this is the [`commonPool()`](#commonPool()), initiates an orderly
  shutdown in which previously submitted tasks are executed, but
  no new tasks will be accepted, and waits until all tasks have
  completed execution and the executor has terminated.

  `static ForkJoinPool`

  `commonPool()`

  Returns the common pool instance.

  `protected int`

  `drainTasksTo(Collection<? super ForkJoinTask<?>> c)`

  Removes all available unexecuted submitted and forked tasks
  from scheduling queues and adds them to the given collection,
  without altering their execution status.

  `void`

  `execute(Runnable task)`

  Executes the given command at some time in the future.

  `void`

  `execute(ForkJoinTask<?> task)`

  Arranges for (asynchronous) execution of the given task.

  `<T> ForkJoinTask<T>`

  `externalSubmit(ForkJoinTask<T> task)`

  Submits the given task as if submitted from a non-`ForkJoinTask`
  client.

  `int`

  `getActiveThreadCount()`

  Returns an estimate of the number of threads that are currently
  stealing or executing tasks.

  `boolean`

  `getAsyncMode()`

  Returns `true` if this pool uses local first-in-first-out
  scheduling mode for forked tasks that are never joined.

  `static int`

  `getCommonPoolParallelism()`

  Returns the targeted parallelism level of the common pool.

  `ForkJoinPool.ForkJoinWorkerThreadFactory`

  `getFactory()`

  Returns the factory used for constructing new workers.

  `int`

  `getParallelism()`

  Returns the targeted parallelism level of this pool.

  `int`

  `getPoolSize()`

  Returns the number of worker threads that have started but not
  yet terminated.

  `int`

  `getQueuedSubmissionCount()`

  Returns an estimate of the number of tasks submitted to this
  pool that have not yet begun executing.

  `long`

  `getQueuedTaskCount()`

  Returns an estimate of the total number of tasks currently held
  in queues by worker threads (but not including tasks submitted
  to the pool that have not begun executing).

  `int`

  `getRunningThreadCount()`

  Returns an estimate of the number of worker threads that are
  not blocked waiting to join tasks or for other managed
  synchronization.

  `long`

  `getStealCount()`

  Returns an estimate of the total number of completed tasks that
  were executed by a thread other than their submitter.

  `Thread.UncaughtExceptionHandler`

  `getUncaughtExceptionHandler()`

  Returns the handler for internal worker threads that terminate
  due to unrecoverable errors encountered while executing tasks.

  `boolean`

  `hasQueuedSubmissions()`

  Returns `true` if there are any tasks submitted to this
  pool that have not yet begun executing.

  `<T> T`

  `invoke(ForkJoinTask<T> task)`

  Performs the given task, returning its result upon completion.

  `<T> List<Future<T>>`

  `invokeAll(Collection<? extends Callable<T>> tasks)`

  Executes the given tasks, returning a list of Futures holding
  their status and results when all complete.

  `<T> List<Future<T>>`

  `invokeAll(Collection<? extends Callable<T>> tasks,
  long timeout,
  TimeUnit unit)`

  Executes the given tasks, returning a list of Futures holding
  their status and results
  when all complete or the timeout expires, whichever happens first.

  `<T> T`

  `invokeAny(Collection<? extends Callable<T>> tasks)`

  Executes the given tasks, returning the result
  of one that has completed successfully (i.e., without throwing
  an exception), if any do.

  `<T> T`

  `invokeAny(Collection<? extends Callable<T>> tasks,
  long timeout,
  TimeUnit unit)`

  Executes the given tasks, returning the result
  of one that has completed successfully (i.e., without throwing
  an exception), if any do before the given timeout elapses.

  `boolean`

  `isQuiescent()`

  Returns `true` if all worker threads are currently idle.

  `boolean`

  `isShutdown()`

  Returns `true` if this pool has been shut down.

  `boolean`

  `isTerminated()`

  Returns `true` if all tasks have completed following shut down.

  `boolean`

  `isTerminating()`

  Returns `true` if the process of termination has
  commenced but not yet completed.

  `<T> ForkJoinTask<T>`

  `lazySubmit(ForkJoinTask<T> task)`

  Submits the given task without guaranteeing that it will
  eventually execute in the absence of available active threads.

  `static void`

  `managedBlock(ForkJoinPool.ManagedBlocker blocker)`

  Runs the given possibly blocking task.

  `protected <T> RunnableFuture<T>`

  `newTaskFor(Runnable runnable,
  T value)`

  Returns a `RunnableFuture` for the given runnable and default
  value.

  `protected <T> RunnableFuture<T>`

  `newTaskFor(Callable<T> callable)`

  Returns a `RunnableFuture` for the given callable task.

  `protected ForkJoinTask<?>`

  `pollSubmission()`

  Removes and returns the next unexecuted submission if one is
  available.

  `int`

  `setParallelism(int size)`

  Changes the target parallelism of this pool, controlling the
  future creation, use, and termination of worker threads.

  `void`

  `shutdown()`

  Possibly initiates an orderly shutdown in which previously
  submitted tasks are executed, but no new tasks will be
  accepted.

  `List<Runnable>`

  `shutdownNow()`

  Possibly attempts to cancel and/or stop all tasks, and reject
  all subsequently submitted tasks.

  `ForkJoinTask<?>`

  `submit(Runnable task)`

  Submits a Runnable task for execution and returns a Future
  representing that task.

  `<T> ForkJoinTask<T>`

  `submit(Runnable task,
  T result)`

  Submits a Runnable task for execution and returns a Future
  representing that task.

  `<T> ForkJoinTask<T>`

  `submit(Callable<T> task)`

  Submits a value-returning task for execution and returns a
  Future representing the pending results of the task.

  `<T> ForkJoinTask<T>`

  `submit(ForkJoinTask<T> task)`

  Submits a ForkJoinTask for execution.

  `String`

  `toString()`

  Returns a string identifying this pool, as well as its state,
  including indications of run state, parallelism level, and
  worker and task counts.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### defaultForkJoinWorkerThreadFactory

    public static final [ForkJoinPool.ForkJoinWorkerThreadFactory](ForkJoinPool.ForkJoinWorkerThreadFactory.md "interface in java.util.concurrent") defaultForkJoinWorkerThreadFactory

    Creates a new ForkJoinWorkerThread. This factory is used unless
    overridden in ForkJoinPool constructors.
* ## Constructor Details

  + ### ForkJoinPool

    public ForkJoinPool()

    Creates a `ForkJoinPool` with parallelism equal to [`Runtime.availableProcessors()`](../../lang/Runtime.md#availableProcessors()), using defaults for all
    other parameters (see [`ForkJoinPool(int, ForkJoinWorkerThreadFactory, UncaughtExceptionHandler, boolean, int, int, int, Predicate, long, TimeUnit)`](#%3Cinit%3E(int,java.util.concurrent.ForkJoinPool.ForkJoinWorkerThreadFactory,java.lang.Thread.UncaughtExceptionHandler,boolean,int,int,int,java.util.function.Predicate,long,java.util.concurrent.TimeUnit))).

    Throws:
    :   `SecurityException` - if a security manager exists and
        the caller is not permitted to modify threads
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`
  + ### ForkJoinPool

    public ForkJoinPool(int parallelism)

    Creates a `ForkJoinPool` with the indicated parallelism
    level, using defaults for all other parameters (see [`ForkJoinPool(int, ForkJoinWorkerThreadFactory, UncaughtExceptionHandler, boolean, int, int, int, Predicate, long, TimeUnit)`](#%3Cinit%3E(int,java.util.concurrent.ForkJoinPool.ForkJoinWorkerThreadFactory,java.lang.Thread.UncaughtExceptionHandler,boolean,int,int,int,java.util.function.Predicate,long,java.util.concurrent.TimeUnit))).

    Parameters:
    :   `parallelism` - the parallelism level

    Throws:
    :   `IllegalArgumentException` - if parallelism less than or
        equal to zero, or greater than implementation limit
    :   `SecurityException` - if a security manager exists and
        the caller is not permitted to modify threads
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`
  + ### ForkJoinPool

    public ForkJoinPool(int parallelism,
    [ForkJoinPool.ForkJoinWorkerThreadFactory](ForkJoinPool.ForkJoinWorkerThreadFactory.md "interface in java.util.concurrent") factory,
    [Thread.UncaughtExceptionHandler](../../lang/Thread.UncaughtExceptionHandler.md "interface in java.lang") handler,
    boolean asyncMode)

    Creates a `ForkJoinPool` with the given parameters (using
    defaults for others -- see [`ForkJoinPool(int, ForkJoinWorkerThreadFactory, UncaughtExceptionHandler, boolean, int, int, int, Predicate, long, TimeUnit)`](#%3Cinit%3E(int,java.util.concurrent.ForkJoinPool.ForkJoinWorkerThreadFactory,java.lang.Thread.UncaughtExceptionHandler,boolean,int,int,int,java.util.function.Predicate,long,java.util.concurrent.TimeUnit))).

    Parameters:
    :   `parallelism` - the parallelism level. For default value,
        use [`Runtime.availableProcessors()`](../../lang/Runtime.md#availableProcessors()).
    :   `factory` - the factory for creating new threads. For default value,
        use [`defaultForkJoinWorkerThreadFactory`](#defaultForkJoinWorkerThreadFactory).
    :   `handler` - the handler for internal worker threads that
        terminate due to unrecoverable errors encountered while executing
        tasks. For default value, use `null`.
    :   `asyncMode` - if true,
        establishes local first-in-first-out scheduling mode for forked
        tasks that are never joined. This mode may be more appropriate
        than default locally stack-based mode in applications in which
        worker threads only process event-style asynchronous tasks.
        For default value, use `false`.

    Throws:
    :   `IllegalArgumentException` - if parallelism less than or
        equal to zero, or greater than implementation limit
    :   `NullPointerException` - if the factory is null
    :   `SecurityException` - if a security manager exists and
        the caller is not permitted to modify threads
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`
  + ### ForkJoinPool

    public ForkJoinPool(int parallelism,
    [ForkJoinPool.ForkJoinWorkerThreadFactory](ForkJoinPool.ForkJoinWorkerThreadFactory.md "interface in java.util.concurrent") factory,
    [Thread.UncaughtExceptionHandler](../../lang/Thread.UncaughtExceptionHandler.md "interface in java.lang") handler,
    boolean asyncMode,
    int corePoolSize,
    int maximumPoolSize,
    int minimumRunnable,
    [Predicate](../function/Predicate.md "interface in java.util.function")<? super [ForkJoinPool](ForkJoinPool.md "class in java.util.concurrent")> saturate,
    long keepAliveTime,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)

    Creates a `ForkJoinPool` with the given parameters.

    Parameters:
    :   `parallelism` - the parallelism level. For default value,
        use [`Runtime.availableProcessors()`](../../lang/Runtime.md#availableProcessors()).
    :   `factory` - the factory for creating new threads. For
        default value, use [`defaultForkJoinWorkerThreadFactory`](#defaultForkJoinWorkerThreadFactory).
    :   `handler` - the handler for internal worker threads that
        terminate due to unrecoverable errors encountered while
        executing tasks. For default value, use `null`.
    :   `asyncMode` - if true, establishes local first-in-first-out
        scheduling mode for forked tasks that are never joined. This
        mode may be more appropriate than default locally stack-based
        mode in applications in which worker threads only process
        event-style asynchronous tasks. For default value, use `false`.
    :   `corePoolSize` - the number of threads to keep in the pool
        (unless timed out after an elapsed keep-alive). Normally (and
        by default) this is the same value as the parallelism level,
        but may be set to a larger value to reduce dynamic overhead if
        tasks regularly block. Using a smaller value (for example
        `0`) has the same effect as the default.
    :   `maximumPoolSize` - the maximum number of threads allowed.
        When the maximum is reached, attempts to replace blocked
        threads fail. (However, because creation and termination of
        different threads may overlap, and may be managed by the given
        thread factory, this value may be transiently exceeded.) To
        arrange the same value as is used by default for the common
        pool, use `256` plus the `parallelism` level. (By
        default, the common pool allows a maximum of 256 spare
        threads.) Using a value (for example `Integer.MAX_VALUE`) larger than the implementation's total
        thread limit has the same effect as using this limit (which is
        the default).
    :   `minimumRunnable` - the minimum allowed number of core
        threads not blocked by a join or [`ForkJoinPool.ManagedBlocker`](ForkJoinPool.ManagedBlocker.md "interface in java.util.concurrent"). To
        ensure progress, when too few unblocked threads exist and
        unexecuted tasks may exist, new threads are constructed, up to
        the given maximumPoolSize. For the default value, use `1`, that ensures liveness. A larger value might improve
        throughput in the presence of blocked activities, but might
        not, due to increased overhead. A value of zero may be
        acceptable when submitted tasks cannot have dependencies
        requiring additional threads.
    :   `saturate` - if non-null, a predicate invoked upon attempts
        to create more than the maximum total allowed threads. By
        default, when a thread is about to block on a join or [`ForkJoinPool.ManagedBlocker`](ForkJoinPool.ManagedBlocker.md "interface in java.util.concurrent"), but cannot be replaced because the
        maximumPoolSize would be exceeded, a [`RejectedExecutionException`](RejectedExecutionException.md "class in java.util.concurrent") is thrown. But if this predicate
        returns `true`, then no exception is thrown, so the pool
        continues to operate with fewer than the target number of
        runnable threads, which might not ensure progress.
    :   `keepAliveTime` - the elapsed time since last use before
        a thread is terminated (and then later replaced if needed).
        For the default value, use `60, TimeUnit.SECONDS`.
    :   `unit` - the time unit for the `keepAliveTime` argument

    Throws:
    :   `IllegalArgumentException` - if parallelism is less than or
        equal to zero, or is greater than implementation limit,
        or if maximumPoolSize is less than parallelism,
        of if the keepAliveTime is less than or equal to zero.
    :   `NullPointerException` - if the factory is null
    :   `SecurityException` - if a security manager exists and
        the caller is not permitted to modify threads
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`

    Since:
    :   9
* ## Method Details

  + ### commonPool

    public static [ForkJoinPool](ForkJoinPool.md "class in java.util.concurrent") commonPool()

    Returns the common pool instance. This pool is statically
    constructed; its run state is unaffected by attempts to [`shutdown()`](#shutdown()) or [`shutdownNow()`](#shutdownNow()). However this pool and any
    ongoing processing are automatically terminated upon program
    [`System.exit(int)`](../../lang/System.md#exit(int)). Any program that relies on asynchronous
    task processing to complete before program termination should
    invoke `commonPool().`[`awaitQuiescence`](#awaitQuiescence(long,java.util.concurrent.TimeUnit)),
    before exit.

    Returns:
    :   the common pool instance

    Since:
    :   1.8
  + ### invoke

    public <T> T invoke([ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> task)

    Performs the given task, returning its result upon completion.
    If the computation encounters an unchecked Exception or Error,
    it is rethrown as the outcome of this invocation. Rethrown
    exceptions behave in the same way as regular exceptions, but,
    when possible, contain stack traces (as displayed for example
    using `ex.printStackTrace()`) of both the current thread
    as well as the thread actually encountering the exception;
    minimally only the latter.

    Type Parameters:
    :   `T` - the type of the task's result

    Parameters:
    :   `task` - the task

    Returns:
    :   the task's result

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution
  + ### execute

    public void execute([ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<?> task)

    Arranges for (asynchronous) execution of the given task.

    Parameters:
    :   `task` - the task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution
  + ### execute

    public void execute([Runnable](../../lang/Runnable.md "interface in java.lang") task)

    Description copied from interface: `Executor`

    Executes the given command at some time in the future. The command
    may execute in a new thread, in a pooled thread, or in the calling
    thread, at the discretion of the `Executor` implementation.

    Parameters:
    :   `task` - the runnable task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution
  + ### submit

    public <T> [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> submit([ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> task)

    Submits a ForkJoinTask for execution.

    Type Parameters:
    :   `T` - the type of the task's result

    Parameters:
    :   `task` - the task to submit

    Returns:
    :   the task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution
  + ### submit

    public <T> [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> submit([Callable](Callable.md "interface in java.util.concurrent")<T> task)

    Description copied from interface: `ExecutorService`

    Submits a value-returning task for execution and returns a
    Future representing the pending results of the task. The
    Future's `get` method will return the task's result upon
    successful completion.

    If you would like to immediately block waiting
    for a task, you can use constructions of the form
    `result = exec.submit(aCallable).get();`

    Note: The [`Executors`](Executors.md "class in java.util.concurrent") class includes a set of methods
    that can convert some other common closure-like objects,
    for example, [`PrivilegedAction`](../../security/PrivilegedAction.md "interface in java.security") to
    [`Callable`](Callable.md "interface in java.util.concurrent") form so they can be submitted.

    Specified by:
    :   `submit` in interface `ExecutorService`

    Overrides:
    :   `submit` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the task's result

    Parameters:
    :   `task` - the task to submit

    Returns:
    :   a Future representing pending completion of the task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution
  + ### submit

    public <T> [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> submit([Runnable](../../lang/Runnable.md "interface in java.lang") task,
    T result)

    Description copied from interface: `ExecutorService`

    Submits a Runnable task for execution and returns a Future
    representing that task. The Future's `get` method will
    return the given result upon successful completion.

    Specified by:
    :   `submit` in interface `ExecutorService`

    Overrides:
    :   `submit` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the result

    Parameters:
    :   `task` - the task to submit
    :   `result` - the result to return

    Returns:
    :   a Future representing pending completion of the task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution
  + ### submit

    public [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<?> submit([Runnable](../../lang/Runnable.md "interface in java.lang") task)

    Description copied from interface: `ExecutorService`

    Submits a Runnable task for execution and returns a Future
    representing that task. The Future's `get` method will
    return `null` upon *successful* completion.

    Specified by:
    :   `submit` in interface `ExecutorService`

    Overrides:
    :   `submit` in class `AbstractExecutorService`

    Parameters:
    :   `task` - the task to submit

    Returns:
    :   a Future representing pending completion of the task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution
  + ### externalSubmit

    public <T> [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> externalSubmit([ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> task)

    Submits the given task as if submitted from a non-`ForkJoinTask`
    client. The task is added to a scheduling queue for submissions to the
    pool even when called from a thread in the pool.

    Type Parameters:
    :   `T` - the type of the task's result

    Parameters:
    :   `task` - the task to submit

    Returns:
    :   the task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution

    Since:
    :   20
  + ### lazySubmit

    public <T> [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> lazySubmit([ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<T> task)

    Submits the given task without guaranteeing that it will
    eventually execute in the absence of available active threads.
    In some contexts, this method may reduce contention and
    overhead by relying on context-specific knowledge that existing
    threads (possibly including the calling thread if operating in
    this pool) will eventually be available to execute the task.

    Type Parameters:
    :   `T` - the type of the task's result

    Parameters:
    :   `task` - the task

    Returns:
    :   the task

    Throws:
    :   `NullPointerException` - if the task is null
    :   `RejectedExecutionException` - if the task cannot be
        scheduled for execution

    Since:
    :   19
  + ### setParallelism

    public int setParallelism(int size)

    Changes the target parallelism of this pool, controlling the
    future creation, use, and termination of worker threads.
    Applications include contexts in which the number of available
    processors changes over time.

    Parameters:
    :   `size` - the target parallelism level

    Returns:
    :   the previous parallelism level.

    Throws:
    :   `IllegalArgumentException` - if size is less than 1 or
        greater than the maximum supported by this pool.
    :   `UnsupportedOperationException` - this is the[`commonPool()`](#commonPool()) and parallelism level was set by System
        property `java.util.concurrent.ForkJoinPool.common.parallelism`.
    :   `SecurityException` - if a security manager exists and
        the caller is not permitted to modify threads
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`

    Since:
    :   19
  + ### invokeAll

    public <T> [List](../List.md "interface in java.util")<[Future](Future.md "interface in java.util.concurrent")<T>> invokeAll([Collection](../Collection.md "interface in java.util")<? extends [Callable](Callable.md "interface in java.util.concurrent")<T>> tasks)

    Description copied from interface: `ExecutorService`

    Executes the given tasks, returning a list of Futures holding
    their status and results when all complete.
    [`Future.isDone()`](Future.md#isDone()) is `true` for each
    element of the returned list.
    Note that a *completed* task could have
    terminated either normally or by throwing an exception.
    The results of this method are undefined if the given
    collection is modified while this operation is in progress.

    Specified by:
    :   `invokeAll` in interface `ExecutorService`

    Overrides:
    :   `invokeAll` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the values returned from the tasks

    Parameters:
    :   `tasks` - the collection of tasks

    Returns:
    :   a list of Futures representing the tasks, in the same
        sequential order as produced by the iterator for the
        given task list, each of which has completed

    Throws:
    :   `NullPointerException` - if tasks or any of its elements are `null`
    :   `RejectedExecutionException` - if any task cannot be
        scheduled for execution
  + ### invokeAll

    public <T> [List](../List.md "interface in java.util")<[Future](Future.md "interface in java.util.concurrent")<T>> invokeAll([Collection](../Collection.md "interface in java.util")<? extends [Callable](Callable.md "interface in java.util.concurrent")<T>> tasks,
    long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Description copied from interface: `ExecutorService`

    Executes the given tasks, returning a list of Futures holding
    their status and results
    when all complete or the timeout expires, whichever happens first.
    [`Future.isDone()`](Future.md#isDone()) is `true` for each
    element of the returned list.
    Upon return, tasks that have not completed are cancelled.
    Note that a *completed* task could have
    terminated either normally or by throwing an exception.
    The results of this method are undefined if the given
    collection is modified while this operation is in progress.

    Specified by:
    :   `invokeAll` in interface `ExecutorService`

    Overrides:
    :   `invokeAll` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the values returned from the tasks

    Parameters:
    :   `tasks` - the collection of tasks
    :   `timeout` - the maximum time to wait
    :   `unit` - the time unit of the timeout argument

    Returns:
    :   a list of Futures representing the tasks, in the same
        sequential order as produced by the iterator for the
        given task list. If the operation did not time out,
        each task will have completed. If it did time out, some
        of these tasks will not have completed.

    Throws:
    :   `InterruptedException` - if interrupted while waiting, in
        which case unfinished tasks are cancelled
  + ### invokeAny

    public <T> T invokeAny([Collection](../Collection.md "interface in java.util")<? extends [Callable](Callable.md "interface in java.util.concurrent")<T>> tasks)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang"),
    [ExecutionException](ExecutionException.md "class in java.util.concurrent")

    Description copied from interface: `ExecutorService`

    Executes the given tasks, returning the result
    of one that has completed successfully (i.e., without throwing
    an exception), if any do. Upon normal or exceptional return,
    tasks that have not completed are cancelled.
    The results of this method are undefined if the given
    collection is modified while this operation is in progress.

    Specified by:
    :   `invokeAny` in interface `ExecutorService`

    Overrides:
    :   `invokeAny` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the values returned from the tasks

    Parameters:
    :   `tasks` - the collection of tasks

    Returns:
    :   the result returned by one of the tasks

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ExecutionException` - if no task successfully completes
  + ### invokeAny

    public <T> T invokeAny([Collection](../Collection.md "interface in java.util")<? extends [Callable](Callable.md "interface in java.util.concurrent")<T>> tasks,
    long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang"),
    [ExecutionException](ExecutionException.md "class in java.util.concurrent"),
    [TimeoutException](TimeoutException.md "class in java.util.concurrent")

    Description copied from interface: `ExecutorService`

    Executes the given tasks, returning the result
    of one that has completed successfully (i.e., without throwing
    an exception), if any do before the given timeout elapses.
    Upon normal or exceptional return, tasks that have not
    completed are cancelled.
    The results of this method are undefined if the given
    collection is modified while this operation is in progress.

    Specified by:
    :   `invokeAny` in interface `ExecutorService`

    Overrides:
    :   `invokeAny` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the values returned from the tasks

    Parameters:
    :   `tasks` - the collection of tasks
    :   `timeout` - the maximum time to wait
    :   `unit` - the time unit of the timeout argument

    Returns:
    :   the result returned by one of the tasks

    Throws:
    :   `InterruptedException` - if interrupted while waiting
    :   `ExecutionException` - if no task successfully completes
    :   `TimeoutException` - if the given timeout elapses before
        any task successfully completes
  + ### getFactory

    public [ForkJoinPool.ForkJoinWorkerThreadFactory](ForkJoinPool.ForkJoinWorkerThreadFactory.md "interface in java.util.concurrent") getFactory()

    Returns the factory used for constructing new workers.

    Returns:
    :   the factory used for constructing new workers
  + ### getUncaughtExceptionHandler

    public [Thread.UncaughtExceptionHandler](../../lang/Thread.UncaughtExceptionHandler.md "interface in java.lang") getUncaughtExceptionHandler()

    Returns the handler for internal worker threads that terminate
    due to unrecoverable errors encountered while executing tasks.

    Returns:
    :   the handler, or `null` if none
  + ### getParallelism

    public int getParallelism()

    Returns the targeted parallelism level of this pool.

    Returns:
    :   the targeted parallelism level of this pool
  + ### getCommonPoolParallelism

    public static int getCommonPoolParallelism()

    Returns the targeted parallelism level of the common pool.

    Returns:
    :   the targeted parallelism level of the common pool

    Since:
    :   1.8
  + ### getPoolSize

    public int getPoolSize()

    Returns the number of worker threads that have started but not
    yet terminated. The result returned by this method may differ
    from [`getParallelism()`](#getParallelism()) when threads are created to
    maintain parallelism when others are cooperatively blocked.

    Returns:
    :   the number of worker threads
  + ### getAsyncMode

    public boolean getAsyncMode()

    Returns `true` if this pool uses local first-in-first-out
    scheduling mode for forked tasks that are never joined.

    Returns:
    :   `true` if this pool uses async mode
  + ### getRunningThreadCount

    public int getRunningThreadCount()

    Returns an estimate of the number of worker threads that are
    not blocked waiting to join tasks or for other managed
    synchronization. This method may overestimate the
    number of running threads.

    Returns:
    :   the number of worker threads
  + ### getActiveThreadCount

    public int getActiveThreadCount()

    Returns an estimate of the number of threads that are currently
    stealing or executing tasks. This method may overestimate the
    number of active threads.

    Returns:
    :   the number of active threads
  + ### isQuiescent

    public boolean isQuiescent()

    Returns `true` if all worker threads are currently idle.
    An idle worker is one that cannot obtain a task to execute
    because none are available to steal from other threads, and
    there are no pending submissions to the pool. This method is
    conservative; it might not return `true` immediately upon
    idleness of all threads, but will eventually become true if
    threads remain inactive.

    Returns:
    :   `true` if all threads are currently idle
  + ### getStealCount

    public long getStealCount()

    Returns an estimate of the total number of completed tasks that
    were executed by a thread other than their submitter. The
    reported value underestimates the actual total number of steals
    when the pool is not quiescent. This value may be useful for
    monitoring and tuning fork/join programs: in general, steal
    counts should be high enough to keep threads busy, but low
    enough to avoid overhead and contention across threads.

    Returns:
    :   the number of steals
  + ### getQueuedTaskCount

    public long getQueuedTaskCount()

    Returns an estimate of the total number of tasks currently held
    in queues by worker threads (but not including tasks submitted
    to the pool that have not begun executing). This value is only
    an approximation, obtained by iterating across all threads in
    the pool. This method may be useful for tuning task
    granularities.

    Returns:
    :   the number of queued tasks

    See Also:
    :   - [`ForkJoinWorkerThread.getQueuedTaskCount()`](ForkJoinWorkerThread.md#getQueuedTaskCount())
  + ### getQueuedSubmissionCount

    public int getQueuedSubmissionCount()

    Returns an estimate of the number of tasks submitted to this
    pool that have not yet begun executing. This method may take
    time proportional to the number of submissions.

    Returns:
    :   the number of queued submissions
  + ### hasQueuedSubmissions

    public boolean hasQueuedSubmissions()

    Returns `true` if there are any tasks submitted to this
    pool that have not yet begun executing.

    Returns:
    :   `true` if there are any queued submissions
  + ### pollSubmission

    protected [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<?> pollSubmission()

    Removes and returns the next unexecuted submission if one is
    available. This method may be useful in extensions to this
    class that re-assign work in systems with multiple pools.

    Returns:
    :   the next submission, or `null` if none
  + ### drainTasksTo

    protected int drainTasksTo([Collection](../Collection.md "interface in java.util")<? super [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<?>> c)

    Removes all available unexecuted submitted and forked tasks
    from scheduling queues and adds them to the given collection,
    without altering their execution status. These may include
    artificially generated or wrapped tasks. This method is
    designed to be invoked only when the pool is known to be
    quiescent. Invocations at other times may not remove all
    tasks. A failure encountered while attempting to add elements
    to collection `c` may result in elements being in
    neither, either or both collections when the associated
    exception is thrown. The behavior of this operation is
    undefined if the specified collection is modified while the
    operation is in progress.

    Parameters:
    :   `c` - the collection to transfer elements into

    Returns:
    :   the number of elements transferred
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string identifying this pool, as well as its state,
    including indications of run state, parallelism level, and
    worker and task counts.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string identifying this pool, as well as its state
  + ### shutdown

    public void shutdown()

    Possibly initiates an orderly shutdown in which previously
    submitted tasks are executed, but no new tasks will be
    accepted. Invocation has no effect on execution state if this
    is the [`commonPool()`](#commonPool()), and no additional effect if
    already shut down. Tasks that are in the process of being
    submitted concurrently during the course of this method may or
    may not be rejected.

    Throws:
    :   `SecurityException` - if a security manager exists and
        the caller is not permitted to modify threads
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`
  + ### shutdownNow

    public [List](../List.md "interface in java.util")<[Runnable](../../lang/Runnable.md "interface in java.lang")> shutdownNow()

    Possibly attempts to cancel and/or stop all tasks, and reject
    all subsequently submitted tasks. Invocation has no effect on
    execution state if this is the [`commonPool()`](#commonPool()), and no
    additional effect if already shut down. Otherwise, tasks that
    are in the process of being submitted or executed concurrently
    during the course of this method may or may not be
    rejected. This method cancels both existing and unexecuted
    tasks, in order to permit termination in the presence of task
    dependencies. So the method always returns an empty list
    (unlike the case for some other Executors).

    Returns:
    :   an empty list

    Throws:
    :   `SecurityException` - if a security manager exists and
        the caller is not permitted to modify threads
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`
  + ### isTerminated

    public boolean isTerminated()

    Returns `true` if all tasks have completed following shut down.

    Returns:
    :   `true` if all tasks have completed following shut down
  + ### isTerminating

    public boolean isTerminating()

    Returns `true` if the process of termination has
    commenced but not yet completed. This method may be useful for
    debugging. A return of `true` reported a sufficient
    period after shutdown may indicate that submitted tasks have
    ignored or suppressed interruption, or are waiting for I/O,
    causing this executor not to properly terminate. (See the
    advisory notes for class [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent") stating that
    tasks should not normally entail blocking operations. But if
    they do, they must abort them on interrupt.)

    Returns:
    :   `true` if terminating but not yet terminated
  + ### isShutdown

    public boolean isShutdown()

    Returns `true` if this pool has been shut down.

    Returns:
    :   `true` if this pool has been shut down
  + ### awaitTermination

    public boolean awaitTermination(long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Blocks until all tasks have completed execution after a
    shutdown request, or the timeout occurs, or the current thread
    is interrupted, whichever happens first. Because the [`commonPool()`](#commonPool()) never terminates until program shutdown, when
    applied to the common pool, this method is equivalent to [`awaitQuiescence(long, TimeUnit)`](#awaitQuiescence(long,java.util.concurrent.TimeUnit)) but always returns `false`.

    Parameters:
    :   `timeout` - the maximum time to wait
    :   `unit` - the time unit of the timeout argument

    Returns:
    :   `true` if this executor terminated and
        `false` if the timeout elapsed before termination

    Throws:
    :   `InterruptedException` - if interrupted while waiting
  + ### awaitQuiescence

    public boolean awaitQuiescence(long timeout,
    [TimeUnit](TimeUnit.md "enum class in java.util.concurrent") unit)

    If called by a ForkJoinTask operating in this pool, equivalent
    in effect to [`ForkJoinTask.helpQuiesce()`](ForkJoinTask.md#helpQuiesce()). Otherwise,
    waits and/or attempts to assist performing tasks until this
    pool [`isQuiescent()`](#isQuiescent()) or the indicated timeout elapses.

    Parameters:
    :   `timeout` - the maximum time to wait
    :   `unit` - the time unit of the timeout argument

    Returns:
    :   `true` if quiescent; `false` if the
        timeout elapsed.
  + ### close

    public void close()

    Unless this is the [`commonPool()`](#commonPool()), initiates an orderly
    shutdown in which previously submitted tasks are executed, but
    no new tasks will be accepted, and waits until all tasks have
    completed execution and the executor has terminated.

    If already terminated, or this is the [`commonPool()`](#commonPool()), this method has no effect on execution, and
    does not wait. Otherwise, if interrupted while waiting, this
    method stops all executing tasks as if by invoking [`shutdownNow()`](#shutdownNow()). It then continues to wait until all actively
    executing tasks have completed. Tasks that were awaiting
    execution are not executed. The interrupt status will be
    re-asserted before this method returns.

    Throws:
    :   `SecurityException` - if a security manager exists and
        shutting down this ExecutorService may manipulate
        threads that the caller is not permitted to modify
        because it does not hold [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("modifyThread")`,
        or the security manager's `checkAccess` method
        denies access.

    Since:
    :   19
  + ### managedBlock

    public static void managedBlock([ForkJoinPool.ManagedBlocker](ForkJoinPool.ManagedBlocker.md "interface in java.util.concurrent") blocker)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Runs the given possibly blocking task. When [running in a ForkJoinPool](ForkJoinTask.md#inForkJoinPool()), this
    method possibly arranges for a spare thread to be activated if
    necessary to ensure sufficient parallelism while the current
    thread is blocked in [`blocker.block()`](ForkJoinPool.ManagedBlocker.md#block()).

    This method repeatedly calls `blocker.isReleasable()` and
    `blocker.block()` until either method returns `true`.
    Every call to `blocker.block()` is preceded by a call to
    `blocker.isReleasable()` that returned `false`.

    If not running in a ForkJoinPool, this method is
    behaviorally equivalent to

    ```
     while (!blocker.isReleasable())
       if (blocker.block())
         break;
    ```

    If running in a ForkJoinPool, the pool may first be expanded to
    ensure sufficient parallelism available during the call to
    `blocker.block()`.

    Parameters:
    :   `blocker` - the blocker task

    Throws:
    :   `InterruptedException` - if `blocker.block()` did so
  + ### newTaskFor

    protected <T> [RunnableFuture](RunnableFuture.md "interface in java.util.concurrent")<T> newTaskFor([Runnable](../../lang/Runnable.md "interface in java.lang") runnable,
    T value)

    Description copied from class: `AbstractExecutorService`

    Returns a `RunnableFuture` for the given runnable and default
    value.

    Overrides:
    :   `newTaskFor` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the given value

    Parameters:
    :   `runnable` - the runnable task being wrapped
    :   `value` - the default value for the returned future

    Returns:
    :   a `RunnableFuture` which, when run, will run the
        underlying runnable and which, as a `Future`, will yield
        the given value as its result and provide for cancellation of
        the underlying task
  + ### newTaskFor

    protected <T> [RunnableFuture](RunnableFuture.md "interface in java.util.concurrent")<T> newTaskFor([Callable](Callable.md "interface in java.util.concurrent")<T> callable)

    Description copied from class: `AbstractExecutorService`

    Returns a `RunnableFuture` for the given callable task.

    Overrides:
    :   `newTaskFor` in class `AbstractExecutorService`

    Type Parameters:
    :   `T` - the type of the callable's result

    Parameters:
    :   `callable` - the callable task being wrapped

    Returns:
    :   a `RunnableFuture` which, when run, will call the
        underlying callable and which, as a `Future`, will yield
        the callable's result as its result and provide for
        cancellation of the underlying task