Module [java.base](../../../../module-summary.md)

Package [java.util.concurrent.locks](package-summary.md)

# Class ReentrantReadWriteLock.WriteLock

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock

All Implemented Interfaces:
:   `Serializable`, `Lock`

Enclosing class:
:   `ReentrantReadWriteLock`

---

public static class ReentrantReadWriteLock.WriteLock
extends [Object](../../../lang/Object.md "class in java.lang")
implements [Lock](Lock.md "interface in java.util.concurrent.locks"), [Serializable](../../../io/Serializable.md "interface in java.io")

The lock returned by method [`ReentrantReadWriteLock.writeLock()`](ReentrantReadWriteLock.md#writeLock()).

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `WriteLock(ReentrantReadWriteLock lock)`

  Constructor for use by subclasses.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getHoldCount()`

  Queries the number of holds on this write lock by the current
  thread.

  `boolean`

  `isHeldByCurrentThread()`

  Queries if this write lock is held by the current thread.

  `void`

  `lock()`

  Acquires the write lock.

  `void`

  `lockInterruptibly()`

  Acquires the write lock unless the current thread is
  [interrupted](../../../lang/Thread.md#interrupt()).

  `Condition`

  `newCondition()`

  Returns a [`Condition`](Condition.md "interface in java.util.concurrent.locks") instance for use with this
  [`Lock`](Lock.md "interface in java.util.concurrent.locks") instance.

  `String`

  `toString()`

  Returns a string identifying this lock, as well as its lock
  state.

  `boolean`

  `tryLock()`

  Acquires the write lock only if it is not held by another thread
  at the time of invocation.

  `boolean`

  `tryLock(long timeout,
  TimeUnit unit)`

  Acquires the write lock if it is not held by another thread
  within the given waiting time and the current thread has
  not been [interrupted](../../../lang/Thread.md#interrupt()).

  `void`

  `unlock()`

  Attempts to release this lock.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### WriteLock

    protected WriteLock([ReentrantReadWriteLock](ReentrantReadWriteLock.md "class in java.util.concurrent.locks") lock)

    Constructor for use by subclasses.

    Parameters:
    :   `lock` - the outer lock object

    Throws:
    :   `NullPointerException` - if the lock is null
* ## Method Details

  + ### lock

    public void lock()

    Acquires the write lock.

    Acquires the write lock if neither the read nor write lock
    are held by another thread
    and returns immediately, setting the write lock hold count to
    one.

    If the current thread already holds the write lock then the
    hold count is incremented by one and the method returns
    immediately.

    If the lock is held by another thread then the current
    thread becomes disabled for thread scheduling purposes and
    lies dormant until the write lock has been acquired, at which
    time the write lock hold count is set to one.

    Specified by:
    :   `lock` in interface `Lock`
  + ### lockInterruptibly

    public void lockInterruptibly()
    throws [InterruptedException](../../../lang/InterruptedException.md "class in java.lang")

    Acquires the write lock unless the current thread is
    [interrupted](../../../lang/Thread.md#interrupt()).

    Acquires the write lock if neither the read nor write lock
    are held by another thread
    and returns immediately, setting the write lock hold count to
    one.

    If the current thread already holds this lock then the
    hold count is incremented by one and the method returns
    immediately.

    If the lock is held by another thread then the current
    thread becomes disabled for thread scheduling purposes and
    lies dormant until one of two things happens:
    - The write lock is acquired by the current thread; or- Some other thread [interrupts](../../../lang/Thread.md#interrupt())
        the current thread.

    If the write lock is acquired by the current thread then the
    lock hold count is set to one.

    If the current thread:
    - has its interrupted status set on entry to this method;
      or- is [interrupted](../../../lang/Thread.md#interrupt()) while
        acquiring the write lock,then [`InterruptedException`](../../../lang/InterruptedException.md "class in java.lang") is thrown and the current
    thread's interrupted status is cleared.

    In this implementation, as this method is an explicit
    interruption point, preference is given to responding to
    the interrupt over normal or reentrant acquisition of the
    lock.

    Specified by:
    :   `lockInterruptibly` in interface `Lock`

    Throws:
    :   `InterruptedException` - if the current thread is interrupted
  + ### tryLock

    public boolean tryLock()

    Acquires the write lock only if it is not held by another thread
    at the time of invocation.

    Acquires the write lock if neither the read nor write lock
    are held by another thread
    and returns immediately with the value `true`,
    setting the write lock hold count to one. Even when this lock has
    been set to use a fair ordering policy, a call to
    `tryLock()` *will* immediately acquire the
    lock if it is available, whether or not other threads are
    currently waiting for the write lock. This "barging"
    behavior can be useful in certain circumstances, even
    though it breaks fairness. If you want to honor the
    fairness setting for this lock, then use [`tryLock(0, TimeUnit.SECONDS)`](#tryLock(long,java.util.concurrent.TimeUnit))
    which is almost equivalent (it also detects interruption).

    If the current thread already holds this lock then the
    hold count is incremented by one and the method returns
    `true`.

    If the lock is held by another thread then this method
    will return immediately with the value `false`.

    Specified by:
    :   `tryLock` in interface `Lock`

    Returns:
    :   `true` if the lock was free and was acquired
        by the current thread, or the write lock was already held
        by the current thread; and `false` otherwise.
  + ### tryLock

    public boolean tryLock(long timeout,
    [TimeUnit](../TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../../lang/InterruptedException.md "class in java.lang")

    Acquires the write lock if it is not held by another thread
    within the given waiting time and the current thread has
    not been [interrupted](../../../lang/Thread.md#interrupt()).

    Acquires the write lock if neither the read nor write lock
    are held by another thread
    and returns immediately with the value `true`,
    setting the write lock hold count to one. If this lock has been
    set to use a fair ordering policy then an available lock
    *will not* be acquired if any other threads are
    waiting for the write lock. This is in contrast to the [`tryLock()`](#tryLock()) method. If you want a timed `tryLock`
    that does permit barging on a fair lock then combine the
    timed and un-timed forms together:

    ```
     if (lock.tryLock() ||
         lock.tryLock(timeout, unit)) {
       ...
     }
    ```

    If the current thread already holds this lock then the
    hold count is incremented by one and the method returns
    `true`.

    If the lock is held by another thread then the current
    thread becomes disabled for thread scheduling purposes and
    lies dormant until one of three things happens:
    - The write lock is acquired by the current thread; or- Some other thread [interrupts](../../../lang/Thread.md#interrupt())
        the current thread; or- The specified waiting time elapses

    If the write lock is acquired then the value `true` is
    returned and the write lock hold count is set to one.

    If the current thread:
    - has its interrupted status set on entry to this method;
      or- is [interrupted](../../../lang/Thread.md#interrupt()) while
        acquiring the write lock,then [`InterruptedException`](../../../lang/InterruptedException.md "class in java.lang") is thrown and the current
    thread's interrupted status is cleared.

    If the specified waiting time elapses then the value
    `false` is returned. If the time is less than or
    equal to zero, the method will not wait at all.

    In this implementation, as this method is an explicit
    interruption point, preference is given to responding to
    the interrupt over normal or reentrant acquisition of the
    lock, and over reporting the elapse of the waiting time.

    Specified by:
    :   `tryLock` in interface `Lock`

    Parameters:
    :   `timeout` - the time to wait for the write lock
    :   `unit` - the time unit of the timeout argument

    Returns:
    :   `true` if the lock was free and was acquired
        by the current thread, or the write lock was already held by the
        current thread; and `false` if the waiting time
        elapsed before the lock could be acquired.

    Throws:
    :   `InterruptedException` - if the current thread is interrupted
    :   `NullPointerException` - if the time unit is null
  + ### unlock

    public void unlock()

    Attempts to release this lock.

    If the current thread is the holder of this lock then
    the hold count is decremented. If the hold count is now
    zero then the lock is released. If the current thread is
    not the holder of this lock then [`IllegalMonitorStateException`](../../../lang/IllegalMonitorStateException.md "class in java.lang") is thrown.

    Specified by:
    :   `unlock` in interface `Lock`

    Throws:
    :   `IllegalMonitorStateException` - if the current thread does not
        hold this lock
  + ### newCondition

    public [Condition](Condition.md "interface in java.util.concurrent.locks") newCondition()

    Returns a [`Condition`](Condition.md "interface in java.util.concurrent.locks") instance for use with this
    [`Lock`](Lock.md "interface in java.util.concurrent.locks") instance.

    The returned [`Condition`](Condition.md "interface in java.util.concurrent.locks") instance supports the same
    usages as do the [`Object`](../../../lang/Object.md "class in java.lang") monitor methods ([`wait`](../../../lang/Object.md#wait()), [`notify`](../../../lang/Object.md#notify()), and [`notifyAll`](../../../lang/Object.md#notifyAll())) when used with the built-in
    monitor lock.
    - If this write lock is not held when any [`Condition`](Condition.md "interface in java.util.concurrent.locks") method is called then an [`IllegalMonitorStateException`](../../../lang/IllegalMonitorStateException.md "class in java.lang") is thrown. (Read locks are
      held independently of write locks, so are not checked or
      affected. However it is essentially always an error to
      invoke a condition waiting method when the current thread
      has also acquired read locks, since other threads that
      could unblock it will not be able to acquire the write
      lock.)- When the condition [waiting](Condition.md#await())
        methods are called the write lock is released and, before
        they return, the write lock is reacquired and the lock hold
        count restored to what it was when the method was called.- If a thread is [interrupted](../../../lang/Thread.md#interrupt()) while
          waiting then the wait will terminate, an [`InterruptedException`](../../../lang/InterruptedException.md "class in java.lang") will be thrown, and the thread's
          interrupted status will be cleared.- Waiting threads are signalled in FIFO order.- The ordering of lock reacquisition for threads returning
              from waiting methods is the same as for threads initially
              acquiring the lock, which is in the default case not specified,
              but for *fair* locks favors those threads that have been
              waiting the longest.

    Specified by:
    :   `newCondition` in interface `Lock`

    Returns:
    :   the Condition object
  + ### toString

    public [String](../../../lang/String.md "class in java.lang") toString()

    Returns a string identifying this lock, as well as its lock
    state. The state, in brackets includes either the String
    `"Unlocked"` or the String `"Locked by"`
    followed by the [name](../../../lang/Thread.md#getName()) of the owning thread.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string identifying this lock, as well as its lock state
  + ### isHeldByCurrentThread

    public boolean isHeldByCurrentThread()

    Queries if this write lock is held by the current thread.
    Identical in effect to [`ReentrantReadWriteLock.isWriteLockedByCurrentThread()`](ReentrantReadWriteLock.md#isWriteLockedByCurrentThread()).

    Returns:
    :   `true` if the current thread holds this lock and
        `false` otherwise

    Since:
    :   1.6
  + ### getHoldCount

    public int getHoldCount()

    Queries the number of holds on this write lock by the current
    thread. A thread has a hold on a lock for each lock action
    that is not matched by an unlock action. Identical in effect
    to [`ReentrantReadWriteLock.getWriteHoldCount()`](ReentrantReadWriteLock.md#getWriteHoldCount()).

    Returns:
    :   the number of holds on this lock by the current thread,
        or zero if this lock is not held by the current thread

    Since:
    :   1.6