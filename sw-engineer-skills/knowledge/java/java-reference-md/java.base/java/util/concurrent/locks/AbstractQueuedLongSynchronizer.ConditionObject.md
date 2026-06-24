Module [java.base](../../../../module-summary.md)

Package [java.util.concurrent.locks](package-summary.md)

# Class AbstractQueuedLongSynchronizer.ConditionObject

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject

All Implemented Interfaces:
:   `Serializable`, `Condition`

Enclosing class:
:   `AbstractQueuedLongSynchronizer`

---

public class AbstractQueuedLongSynchronizer.ConditionObject
extends [Object](../../../lang/Object.md "class in java.lang")
implements [Condition](Condition.md "interface in java.util.concurrent.locks"), [Serializable](../../../io/Serializable.md "interface in java.io")

Condition implementation for a [`AbstractQueuedLongSynchronizer`](AbstractQueuedLongSynchronizer.md "class in java.util.concurrent.locks")
serving as the basis of a [`Lock`](Lock.md "interface in java.util.concurrent.locks") implementation.

Method documentation for this class describes mechanics,
not behavioral specifications from the point of view of Lock
and Condition users. Exported versions of this class will in
general need to be accompanied by documentation describing
condition semantics that rely on those of the associated
`AbstractQueuedLongSynchronizer`.

This class is Serializable, but all fields are transient,
so deserialized conditions have no waiters.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConditionObject()`

  Creates a new `ConditionObject` instance.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final void`

  `await()`

  Implements interruptible condition wait.

  `final boolean`

  `await(long time,
  TimeUnit unit)`

  Implements timed condition wait.

  `final long`

  `awaitNanos(long nanosTimeout)`

  Implements timed condition wait.

  `final void`

  `awaitUninterruptibly()`

  Implements uninterruptible condition wait.

  `final boolean`

  `awaitUntil(Date deadline)`

  Implements absolute timed condition wait.

  `protected final Collection<Thread>`

  `getWaitingThreads()`

  Returns a collection containing those threads that may be
  waiting on this Condition.

  `protected final int`

  `getWaitQueueLength()`

  Returns an estimate of the number of threads waiting on
  this condition.

  `protected final boolean`

  `hasWaiters()`

  Queries whether any threads are waiting on this condition.

  `final void`

  `signal()`

  Moves the longest-waiting thread, if one exists, from the
  wait queue for this condition to the wait queue for the
  owning lock.

  `final void`

  `signalAll()`

  Moves all threads from the wait queue for this condition to
  the wait queue for the owning lock.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ConditionObject

    public ConditionObject()

    Creates a new `ConditionObject` instance.
* ## Method Details

  + ### signal

    public final void signal()

    Moves the longest-waiting thread, if one exists, from the
    wait queue for this condition to the wait queue for the
    owning lock.

    Specified by:
    :   `signal` in interface `Condition`

    Throws:
    :   `IllegalMonitorStateException` - if [`AbstractQueuedLongSynchronizer.isHeldExclusively()`](AbstractQueuedLongSynchronizer.md#isHeldExclusively())
        returns `false`
  + ### signalAll

    public final void signalAll()

    Moves all threads from the wait queue for this condition to
    the wait queue for the owning lock.

    Specified by:
    :   `signalAll` in interface `Condition`

    Throws:
    :   `IllegalMonitorStateException` - if [`AbstractQueuedLongSynchronizer.isHeldExclusively()`](AbstractQueuedLongSynchronizer.md#isHeldExclusively())
        returns `false`
  + ### awaitUninterruptibly

    public final void awaitUninterruptibly()

    Implements uninterruptible condition wait.
    1. Save lock state returned by [`AbstractQueuedLongSynchronizer.getState()`](AbstractQueuedLongSynchronizer.md#getState()).+ Invoke [`AbstractQueuedLongSynchronizer.release(long)`](AbstractQueuedLongSynchronizer.md#release(long)) with saved state as argument,
         throwing IllegalMonitorStateException if it fails.+ Block until signalled.+ Reacquire by invoking specialized version of
             `AbstractQueuedLongSynchronizer.acquire(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.Node, long, boolean, boolean, boolean, long)` with saved state as argument.

    Specified by:
    :   `awaitUninterruptibly` in interface `Condition`
  + ### await

    public final void await()
    throws [InterruptedException](../../../lang/InterruptedException.md "class in java.lang")

    Implements interruptible condition wait.
    1. If current thread is interrupted, throw InterruptedException.+ Save lock state returned by [`AbstractQueuedLongSynchronizer.getState()`](AbstractQueuedLongSynchronizer.md#getState()).+ Invoke [`AbstractQueuedLongSynchronizer.release(long)`](AbstractQueuedLongSynchronizer.md#release(long)) with saved state as argument,
           throwing IllegalMonitorStateException if it fails.+ Block until signalled or interrupted.+ Reacquire by invoking specialized version of
               `AbstractQueuedLongSynchronizer.acquire(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.Node, long, boolean, boolean, boolean, long)` with saved state as argument.+ If interrupted while blocked in step 4, throw InterruptedException.

    Specified by:
    :   `await` in interface `Condition`

    Throws:
    :   `InterruptedException` - if the current thread is interrupted
        (and interruption of thread suspension is supported)
  + ### awaitNanos

    public final long awaitNanos(long nanosTimeout)
    throws [InterruptedException](../../../lang/InterruptedException.md "class in java.lang")

    Implements timed condition wait.
    1. If current thread is interrupted, throw InterruptedException.+ Save lock state returned by [`AbstractQueuedLongSynchronizer.getState()`](AbstractQueuedLongSynchronizer.md#getState()).+ Invoke [`AbstractQueuedLongSynchronizer.release(long)`](AbstractQueuedLongSynchronizer.md#release(long)) with saved state as argument,
           throwing IllegalMonitorStateException if it fails.+ Block until signalled, interrupted, or timed out.+ Reacquire by invoking specialized version of
               `AbstractQueuedLongSynchronizer.acquire(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.Node, long, boolean, boolean, boolean, long)` with saved state as argument.+ If interrupted while blocked in step 4, throw InterruptedException.

    Specified by:
    :   `awaitNanos` in interface `Condition`

    Parameters:
    :   `nanosTimeout` - the maximum time to wait, in nanoseconds

    Returns:
    :   an estimate of the `nanosTimeout` value minus
        the time spent waiting upon return from this method.
        A positive value may be used as the argument to a
        subsequent call to this method to finish waiting out
        the desired time. A value less than or equal to zero
        indicates that no time remains.

    Throws:
    :   `InterruptedException` - if the current thread is interrupted
        (and interruption of thread suspension is supported)
  + ### awaitUntil

    public final boolean awaitUntil([Date](../../Date.md "class in java.util") deadline)
    throws [InterruptedException](../../../lang/InterruptedException.md "class in java.lang")

    Implements absolute timed condition wait.
    1. If current thread is interrupted, throw InterruptedException.+ Save lock state returned by [`AbstractQueuedLongSynchronizer.getState()`](AbstractQueuedLongSynchronizer.md#getState()).+ Invoke [`AbstractQueuedLongSynchronizer.release(long)`](AbstractQueuedLongSynchronizer.md#release(long)) with saved state as argument,
           throwing IllegalMonitorStateException if it fails.+ Block until signalled, interrupted, or timed out.+ Reacquire by invoking specialized version of
               `AbstractQueuedLongSynchronizer.acquire(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.Node, long, boolean, boolean, boolean, long)` with saved state as argument.+ If interrupted while blocked in step 4, throw InterruptedException.+ If timed out while blocked in step 4, return false, else true.

    Specified by:
    :   `awaitUntil` in interface `Condition`

    Parameters:
    :   `deadline` - the absolute time to wait until

    Returns:
    :   `false` if the deadline has elapsed upon return, else
        `true`

    Throws:
    :   `InterruptedException` - if the current thread is interrupted
        (and interruption of thread suspension is supported)
  + ### await

    public final boolean await(long time,
    [TimeUnit](../TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../../lang/InterruptedException.md "class in java.lang")

    Implements timed condition wait.
    1. If current thread is interrupted, throw InterruptedException.+ Save lock state returned by [`AbstractQueuedLongSynchronizer.getState()`](AbstractQueuedLongSynchronizer.md#getState()).+ Invoke [`AbstractQueuedLongSynchronizer.release(long)`](AbstractQueuedLongSynchronizer.md#release(long)) with saved state as argument,
           throwing IllegalMonitorStateException if it fails.+ Block until signalled, interrupted, or timed out.+ Reacquire by invoking specialized version of
               `AbstractQueuedLongSynchronizer.acquire(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.Node, long, boolean, boolean, boolean, long)` with saved state as argument.+ If interrupted while blocked in step 4, throw InterruptedException.+ If timed out while blocked in step 4, return false, else true.

    Specified by:
    :   `await` in interface `Condition`

    Parameters:
    :   `time` - the maximum time to wait
    :   `unit` - the time unit of the `time` argument

    Returns:
    :   `false` if the waiting time detectably elapsed
        before return from the method, else `true`

    Throws:
    :   `InterruptedException` - if the current thread is interrupted
        (and interruption of thread suspension is supported)
  + ### hasWaiters

    protected final boolean hasWaiters()

    Queries whether any threads are waiting on this condition.
    Implements [`AbstractQueuedLongSynchronizer.hasWaiters(ConditionObject)`](AbstractQueuedLongSynchronizer.md#hasWaiters(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject)).

    Returns:
    :   `true` if there are any waiting threads

    Throws:
    :   `IllegalMonitorStateException` - if [`AbstractQueuedLongSynchronizer.isHeldExclusively()`](AbstractQueuedLongSynchronizer.md#isHeldExclusively())
        returns `false`
  + ### getWaitQueueLength

    protected final int getWaitQueueLength()

    Returns an estimate of the number of threads waiting on
    this condition.
    Implements [`AbstractQueuedLongSynchronizer.getWaitQueueLength(ConditionObject)`](AbstractQueuedLongSynchronizer.md#getWaitQueueLength(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject)).

    Returns:
    :   the estimated number of waiting threads

    Throws:
    :   `IllegalMonitorStateException` - if [`AbstractQueuedLongSynchronizer.isHeldExclusively()`](AbstractQueuedLongSynchronizer.md#isHeldExclusively())
        returns `false`
  + ### getWaitingThreads

    protected final [Collection](../../Collection.md "interface in java.util")<[Thread](../../../lang/Thread.md "class in java.lang")> getWaitingThreads()

    Returns a collection containing those threads that may be
    waiting on this Condition.
    Implements [`AbstractQueuedLongSynchronizer.getWaitingThreads(ConditionObject)`](AbstractQueuedLongSynchronizer.md#getWaitingThreads(java.util.concurrent.locks.AbstractQueuedLongSynchronizer.ConditionObject)).

    Returns:
    :   the collection of threads

    Throws:
    :   `IllegalMonitorStateException` - if [`AbstractQueuedLongSynchronizer.isHeldExclusively()`](AbstractQueuedLongSynchronizer.md#isHeldExclusively())
        returns `false`