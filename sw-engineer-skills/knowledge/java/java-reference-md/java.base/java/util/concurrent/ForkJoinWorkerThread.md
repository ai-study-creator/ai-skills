Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ForkJoinWorkerThread

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Thread](../../lang/Thread.md "class in java.lang")

java.util.concurrent.ForkJoinWorkerThread

All Implemented Interfaces:
:   `Runnable`

---

public class ForkJoinWorkerThread
extends [Thread](../../lang/Thread.md "class in java.lang")

A thread managed by a [`ForkJoinPool`](ForkJoinPool.md "class in java.util.concurrent"), which executes
[`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent")s.
This class is subclassable solely for the sake of adding
functionality -- there are no overridable methods dealing with
scheduling or execution. However, you can override initialization
and termination methods surrounding the main task processing loop.
If you do create such a subclass, you will also need to supply a
custom [`ForkJoinPool.ForkJoinWorkerThreadFactory`](ForkJoinPool.ForkJoinWorkerThreadFactory.md "interface in java.util.concurrent") to
[use it](ForkJoinPool.md#%3Cinit%3E(int,java.util.concurrent.ForkJoinPool.ForkJoinWorkerThreadFactory,java.lang.Thread.UncaughtExceptionHandler,boolean,int,int,int,java.util.function.Predicate,long,java.util.concurrent.TimeUnit)) in a `ForkJoinPool`.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Thread](../../lang/Thread.md "class in java.lang")

  `Thread.Builder, Thread.State, Thread.UncaughtExceptionHandler`
* ## Field Summary

  ### Fields inherited from class java.lang.[Thread](../../lang/Thread.md "class in java.lang")

  `MAX_PRIORITY, MIN_PRIORITY, NORM_PRIORITY`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ForkJoinWorkerThread(ThreadGroup group,
  ForkJoinPool pool,
  boolean preserveThreadLocals)`

  Creates a ForkJoinWorkerThread operating in the given thread group and
  pool, and with the given policy for preserving ThreadLocals.

  `protected`

  `ForkJoinWorkerThread(ForkJoinPool pool)`

  Creates a ForkJoinWorkerThread operating in the given pool.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ForkJoinPool`

  `getPool()`

  Returns the pool hosting this thread.

  `int`

  `getPoolIndex()`

  Returns the unique index number of this thread in its pool.

  `int`

  `getQueuedTaskCount()`

  Returns a (non-negative) estimate of the number of tasks in the
  thread's queue.

  `protected void`

  `onStart()`

  Initializes internal state after construction but before
  processing any tasks.

  `protected void`

  `onTermination(Throwable exception)`

  Performs cleanup associated with termination of this worker
  thread.

  `void`

  `run()`

  This method is required to be public, but should never be
  called explicitly.

  ### Methods inherited from class java.lang.[Thread](../../lang/Thread.md "class in java.lang")

  `activeCount, checkAccess, clone, countStackFrames, currentThread, dumpStack, enumerate, getAllStackTraces, getContextClassLoader, getDefaultUncaughtExceptionHandler, getId, getName, getPriority, getStackTrace, getState, getThreadGroup, getUncaughtExceptionHandler, holdsLock, interrupt, interrupted, isAlive, isDaemon, isInterrupted, isVirtual, join, join, join, join, ofPlatform, ofVirtual, onSpinWait, resume, setContextClassLoader, setDaemon, setDefaultUncaughtExceptionHandler, setName, setPriority, setUncaughtExceptionHandler, sleep, sleep, sleep, start, startVirtualThread, stop, suspend, threadId, toString, yield`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ForkJoinWorkerThread

    protected ForkJoinWorkerThread([ThreadGroup](../../lang/ThreadGroup.md "class in java.lang") group,
    [ForkJoinPool](ForkJoinPool.md "class in java.util.concurrent") pool,
    boolean preserveThreadLocals)

    Creates a ForkJoinWorkerThread operating in the given thread group and
    pool, and with the given policy for preserving ThreadLocals.

    Parameters:
    :   `group` - if non-null, the thread group for this
        thread. Otherwise, the thread group is chosen by the security
        manager if present, else set to the current thread's thread
        group.
    :   `pool` - the pool this thread works in
    :   `preserveThreadLocals` - if true, always preserve the values of
        ThreadLocal variables across tasks; otherwise they may be cleared.

    Throws:
    :   `NullPointerException` - if pool is null

    Since:
    :   19
  + ### ForkJoinWorkerThread

    protected ForkJoinWorkerThread([ForkJoinPool](ForkJoinPool.md "class in java.util.concurrent") pool)

    Creates a ForkJoinWorkerThread operating in the given pool.

    Parameters:
    :   `pool` - the pool this thread works in

    Throws:
    :   `NullPointerException` - if pool is null
* ## Method Details

  + ### getPool

    public [ForkJoinPool](ForkJoinPool.md "class in java.util.concurrent") getPool()

    Returns the pool hosting this thread.

    Returns:
    :   the pool
  + ### getPoolIndex

    public int getPoolIndex()

    Returns the unique index number of this thread in its pool.
    The returned value ranges from zero to the maximum number of
    threads (minus one) that may exist in the pool, and does not
    change during the lifetime of the thread. This method may be
    useful for applications that track status or collect results
    per-worker-thread rather than per-task.

    Returns:
    :   the index number
  + ### getQueuedTaskCount

    public int getQueuedTaskCount()

    Returns a (non-negative) estimate of the number of tasks in the
    thread's queue.

    Returns:
    :   a (non-negative) estimate of the number of tasks in the
        thread's queue

    Since:
    :   20

    See Also:
    :   - [`ForkJoinPool.getQueuedTaskCount()`](ForkJoinPool.md#getQueuedTaskCount())
  + ### onStart

    protected void onStart()

    Initializes internal state after construction but before
    processing any tasks. If you override this method, you must
    invoke `super.onStart()` at the beginning of the method.
    Initialization requires care: Most fields must have legal
    default values, to ensure that attempted accesses from other
    threads work correctly even before this thread starts
    processing tasks.
  + ### onTermination

    protected void onTermination([Throwable](../../lang/Throwable.md "class in java.lang") exception)

    Performs cleanup associated with termination of this worker
    thread. If you override this method, you must invoke
    `super.onTermination` at the end of the overridden method.

    Parameters:
    :   `exception` - the exception causing this thread to abort due
        to an unrecoverable error, or `null` if completed normally
  + ### run

    public void run()

    This method is required to be public, but should never be
    called explicitly. It performs the main run loop to execute
    [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent")s.

    Specified by:
    :   `run` in interface `Runnable`

    Overrides:
    :   `run` in class `Thread`