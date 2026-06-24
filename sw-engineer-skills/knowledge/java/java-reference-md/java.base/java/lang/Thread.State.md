Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Enum Class Thread.State

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Enum](Enum.md "class in java.lang")<[Thread.State](Thread.State.md "enum class in java.lang")>

java.lang.Thread.State

All Implemented Interfaces:
:   `Serializable`, `Comparable<Thread.State>`, `Constable`

Enclosing class:
:   `Thread`

---

public static enum Thread.State
extends [Enum](Enum.md "class in java.lang")<[Thread.State](Thread.State.md "enum class in java.lang")>

A thread state. A thread can be in one of the following states:

* [`NEW`](#NEW)  
  A thread that has not yet started is in this state.
* [`RUNNABLE`](#RUNNABLE)  
  A thread executing in the Java virtual machine is in this state.
* [`BLOCKED`](#BLOCKED)  
  A thread that is blocked waiting for a monitor lock
  is in this state.
* [`WAITING`](#WAITING)  
  A thread that is waiting indefinitely for another thread to
  perform a particular action is in this state.
* [`TIMED_WAITING`](#TIMED_WAITING)  
  A thread that is waiting for another thread to perform an action
  for up to a specified waiting time is in this state.
* [`TERMINATED`](#TERMINATED)  
  A thread that has exited is in this state.

A thread can be in only one state at a given point in time.
These states are virtual machine states which do not reflect
any operating system thread states.

Since:
:   1.5

See Also:
:   * [`Thread.getState()`](Thread.md#getState())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `BLOCKED`

  Thread state for a thread blocked waiting for a monitor lock.

  `NEW`

  Thread state for a thread which has not yet started.

  `RUNNABLE`

  Thread state for a runnable thread.

  `TERMINATED`

  Thread state for a terminated thread.

  `TIMED_WAITING`

  Thread state for a waiting thread with a specified waiting time.

  `WAITING`

  Thread state for a waiting thread.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Thread.State`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Thread.State[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NEW

    public static final [Thread.State](Thread.State.md "enum class in java.lang") NEW

    Thread state for a thread which has not yet started.
  + ### RUNNABLE

    public static final [Thread.State](Thread.State.md "enum class in java.lang") RUNNABLE

    Thread state for a runnable thread. A thread in the runnable
    state is executing in the Java virtual machine but it may
    be waiting for other resources from the operating system
    such as processor.
  + ### BLOCKED

    public static final [Thread.State](Thread.State.md "enum class in java.lang") BLOCKED

    Thread state for a thread blocked waiting for a monitor lock.
    A thread in the blocked state is waiting for a monitor lock
    to enter a synchronized block/method or
    reenter a synchronized block/method after calling
    [`Object.wait`](Object.md#wait()).
  + ### WAITING

    public static final [Thread.State](Thread.State.md "enum class in java.lang") WAITING

    Thread state for a waiting thread.
    A thread is in the waiting state due to calling one of the
    following methods:
    - [`Object.wait`](Object.md#wait()) with no timeout
    - [`Thread.join`](Thread.md#join()) with no timeout
    - [`LockSupport.park`](../util/concurrent/locks/LockSupport.md#park())

    A thread in the waiting state is waiting for another thread to
    perform a particular action.
    For example, a thread that has called `Object.wait()`
    on an object is waiting for another thread to call
    `Object.notify()` or `Object.notifyAll()` on
    that object. A thread that has called `Thread.join()`
    is waiting for a specified thread to terminate.
  + ### TIMED\_WAITING

    public static final [Thread.State](Thread.State.md "enum class in java.lang") TIMED\_WAITING

    Thread state for a waiting thread with a specified waiting time.
    A thread is in the timed waiting state due to calling one of
    the following methods with a specified positive waiting time:
    - [`Thread.sleep`](Thread.md#sleep(long))
    - [`Object.wait`](Object.md#wait(long)) with timeout
    - [`Thread.join`](Thread.md#join(long)) with timeout
    - [`LockSupport.parkNanos`](../util/concurrent/locks/LockSupport.md#parkNanos(java.lang.Object,long))
    - [`LockSupport.parkUntil`](../util/concurrent/locks/LockSupport.md#parkUntil(java.lang.Object,long))
  + ### TERMINATED

    public static final [Thread.State](Thread.State.md "enum class in java.lang") TERMINATED

    Thread state for a terminated thread.
    The thread has completed execution.
* ## Method Details

  + ### values

    public static [Thread.State](Thread.State.md "enum class in java.lang")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Thread.State](Thread.State.md "enum class in java.lang") valueOf([String](String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null