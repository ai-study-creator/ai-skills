Module [java.base](../../../module-summary.md)

Package [java.lang.ref](package-summary.md)

# Class Cleaner

[java.lang.Object](../Object.md "class in java.lang")

java.lang.ref.Cleaner

---

public final class Cleaner
extends [Object](../Object.md "class in java.lang")

`Cleaner` manages a set of object references and corresponding cleaning actions.

Cleaning actions are [`registered`](#register(java.lang.Object,java.lang.Runnable))
to run after the cleaner is notified that the object has become
phantom reachable.
The cleaner uses [`PhantomReference`](PhantomReference.md "class in java.lang.ref") and [`ReferenceQueue`](ReferenceQueue.md "class in java.lang.ref") to be
notified when the [reachability](package-summary.md#reachability)
changes.

Each cleaner operates independently, managing the pending cleaning actions
and handling threading and termination when the cleaner is no longer in use.
Registering an object reference and corresponding cleaning action returns
a [`Cleanable`](Cleaner.Cleanable.md "interface in java.lang.ref"). The most efficient use is to explicitly invoke
the [`clean`](Cleaner.Cleanable.md#clean()) method when the object is closed or
no longer needed.
The cleaning action is a [`Runnable`](../Runnable.md "interface in java.lang") to be invoked at most once when
the object has become phantom reachable unless it has already been explicitly cleaned.
Note that the cleaning action must not refer to the object being registered.
If so, the object will not become phantom reachable and the cleaning action
will not be invoked automatically.

The execution of the cleaning action is performed
by a thread associated with the cleaner.
All exceptions thrown by the cleaning action are ignored.
The cleaner and other cleaning actions are not affected by
exceptions in a cleaning action.
The thread runs until all registered cleaning actions have
completed and the cleaner itself is reclaimed by the garbage collector.

The behavior of cleaners during [`System.exit`](../System.md#exit(int))
is implementation specific. No guarantees are made relating
to whether cleaning actions are invoked or not.

Unless otherwise noted, passing a `null` argument to a constructor or
method in this class will cause a
[`NullPointerException`](../NullPointerException.md "class in java.lang") to be thrown.

Since:
:   9

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `Cleaner.Cleanable`

  `Cleanable` represents an object and a
  cleaning action registered in a `Cleaner`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Cleaner`

  `create()`

  Returns a new `Cleaner`.

  `static Cleaner`

  `create(ThreadFactory threadFactory)`

  Returns a new `Cleaner` using a `Thread` from the `ThreadFactory`.

  `Cleaner.Cleanable`

  `register(Object obj,
  Runnable action)`

  Registers an object and a cleaning action to run when the object
  becomes phantom reachable.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### create

    public static [Cleaner](Cleaner.md "class in java.lang.ref") create()

    Returns a new `Cleaner`.

    The cleaner creates a [`daemon thread`](../Thread.md#setDaemon(boolean))
    to process the phantom reachable objects and to invoke cleaning actions.
    The [context class loader](../Thread.md#getContextClassLoader())
    of the thread is set to the
    [`system class loader`](../ClassLoader.md#getSystemClassLoader()).
    The thread has no permissions, enforced only if a
    [`SecurityManager is set`](../System.md#setSecurityManager(java.lang.SecurityManager)).

    The cleaner terminates when it is phantom reachable and all of the
    registered cleaning actions are complete.

    Returns:
    :   a new `Cleaner`

    Throws:
    :   `SecurityException` - if the current thread is not allowed to
        create or start the thread.
  + ### create

    public static [Cleaner](Cleaner.md "class in java.lang.ref") create([ThreadFactory](../../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") threadFactory)

    Returns a new `Cleaner` using a `Thread` from the `ThreadFactory`.

    A thread from the thread factory's [`newThread`](../../util/concurrent/ThreadFactory.md#newThread(java.lang.Runnable))
    method is set to be a [`daemon thread`](../Thread.md#setDaemon(boolean))
    and started to process phantom reachable objects and invoke cleaning actions.
    On each call the [`thread factory`](../../util/concurrent/ThreadFactory.md#newThread(java.lang.Runnable))
    must provide a Thread that is suitable for performing the cleaning actions.

    The cleaner terminates when it is phantom reachable and all of the
    registered cleaning actions are complete.

    Parameters:
    :   `threadFactory` - a `ThreadFactory` to return a new `Thread`
        to process cleaning actions

    Returns:
    :   a new `Cleaner`

    Throws:
    :   `IllegalThreadStateException` - if the thread from the thread
        factory was [`not a new thread`](../Thread.State.md#NEW).
    :   `SecurityException` - if the current thread is not allowed to
        create or start the thread.
  + ### register

    public [Cleaner.Cleanable](Cleaner.Cleanable.md "interface in java.lang.ref") register([Object](../Object.md "class in java.lang") obj,
    [Runnable](../Runnable.md "interface in java.lang") action)

    Registers an object and a cleaning action to run when the object
    becomes phantom reachable.
    Refer to the [API Note](#compatible-cleaners) above for
    cautions about the behavior of cleaning actions.

    Parameters:
    :   `obj` - the object to monitor
    :   `action` - a `Runnable` to invoke when the object becomes phantom reachable

    Returns:
    :   a `Cleanable` instance