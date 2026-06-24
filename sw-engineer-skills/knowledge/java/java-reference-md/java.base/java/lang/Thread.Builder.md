Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface Thread.Builder

All Known Subinterfaces:
:   `Thread.Builder.OfPlatform`, `Thread.Builder.OfVirtual`

Enclosing class:
:   `Thread`

---

public static sealed interface Thread.Builder
permits [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang"), [Thread.Builder.OfVirtual](Thread.Builder.OfVirtual.md "interface in java.lang")

A builder for [`Thread`](Thread.md "class in java.lang") and [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") objects.

`Builder` defines methods to set `Thread` properties such
as the thread [`name`](#name(java.lang.String)). This includes properties that would
otherwise be [inherited](Thread.md#inheritance). Once set, a
`Thread` or `ThreadFactory` is created with the following methods:

* The [unstarted](#unstarted(java.lang.Runnable)) method creates a new
  *unstarted* `Thread` to run a task. The `Thread`'s
  [`start`](Thread.md#start()) method must be invoked to schedule the
  thread to execute.* The [start](#start(java.lang.Runnable)) method creates a new `Thread` to run a task and schedules the thread to execute.* The [factory](#factory()) method creates a `ThreadFactory`.

A `Thread.Builder` is not thread safe. The `ThreadFactory`
returned by the builder's `factory()` method is thread safe.

Unless otherwise specified, passing a null argument to a method in
this interface causes a `NullPointerException` to be thrown.

Since:
:   21

See Also:
:   * [`Thread.ofPlatform()`](Thread.md#ofPlatform())
    * [`Thread.ofVirtual()`](Thread.md#ofVirtual())

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `Thread.Builder.OfPlatform`

  A builder for creating a platform [`Thread`](Thread.md "class in java.lang") or [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent")
  that creates platform threads.

  `static interface`

  `Thread.Builder.OfVirtual`

  A builder for creating a virtual [`Thread`](Thread.md "class in java.lang") or [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent")
  that creates virtual threads.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ThreadFactory`

  `factory()`

  Returns a `ThreadFactory` to create threads from the current
  state of the builder.

  `Thread.Builder`

  `inheritInheritableThreadLocals(boolean inherit)`

  Sets whether the thread inherits the initial values of [inheritable-thread-local](InheritableThreadLocal.md "class in java.lang") variables from the
  constructing thread.

  `Thread.Builder`

  `name(String name)`

  Sets the thread name.

  `Thread.Builder`

  `name(String prefix,
  long start)`

  Sets the thread name to be the concatenation of a string prefix and
  the string representation of a counter value.

  `Thread`

  `start(Runnable task)`

  Creates a new `Thread` from the current state of the builder and
  schedules it to execute.

  `Thread.Builder`

  `uncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh)`

  Sets the uncaught exception handler.

  `Thread`

  `unstarted(Runnable task)`

  Creates a new `Thread` from the current state of the builder to
  run the given task.

* ## Method Details

  + ### name

    [Thread.Builder](Thread.Builder.md "interface in java.lang") name([String](String.md "class in java.lang") name)

    Sets the thread name.

    Parameters:
    :   `name` - thread name

    Returns:
    :   this builder
  + ### name

    [Thread.Builder](Thread.Builder.md "interface in java.lang") name([String](String.md "class in java.lang") prefix,
    long start)

    Sets the thread name to be the concatenation of a string prefix and
    the string representation of a counter value. The counter's initial
    value is `start`. It is incremented after a `Thread` is
    created with this builder so that the next thread is named with
    the new counter value. A `ThreadFactory` created with this
    builder is seeded with the current value of the counter. The `ThreadFactory` increments its copy of the counter after [`newThread`](../util/concurrent/ThreadFactory.md#newThread(java.lang.Runnable)) is used to create a
    `Thread`.

    Parameters:
    :   `prefix` - thread name prefix
    :   `start` - the starting value of the counter

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if start is negative
  + ### inheritInheritableThreadLocals

    [Thread.Builder](Thread.Builder.md "interface in java.lang") inheritInheritableThreadLocals(boolean inherit)

    Sets whether the thread inherits the initial values of [inheritable-thread-local](InheritableThreadLocal.md "class in java.lang") variables from the
    constructing thread. The default is to inherit.

    Parameters:
    :   `inherit` - `true` to inherit, `false` to not inherit

    Returns:
    :   this builder
  + ### uncaughtExceptionHandler

    [Thread.Builder](Thread.Builder.md "interface in java.lang") uncaughtExceptionHandler([Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang") ueh)

    Sets the uncaught exception handler.

    Parameters:
    :   `ueh` - uncaught exception handler

    Returns:
    :   this builder
  + ### unstarted

    [Thread](Thread.md "class in java.lang") unstarted([Runnable](Runnable.md "interface in java.lang") task)

    Creates a new `Thread` from the current state of the builder to
    run the given task. The `Thread`'s [`start`](Thread.md#start())
    method must be invoked to schedule the thread to execute.

    Parameters:
    :   `task` - the object to run when the thread executes

    Returns:
    :   a new unstarted Thread

    Throws:
    :   `SecurityException` - if denied by the security manager
        (See [Interaction with
        security manager when creating platform threads](Thread.md#ofplatform-security))

    See Also:
    :   - [Inheritance when creating threads](Thread.md#inheritance)
  + ### start

    [Thread](Thread.md "class in java.lang") start([Runnable](Runnable.md "interface in java.lang") task)

    Creates a new `Thread` from the current state of the builder and
    schedules it to execute.

    Parameters:
    :   `task` - the object to run when the thread executes

    Returns:
    :   a new started Thread

    Throws:
    :   `SecurityException` - if denied by the security manager
        (See [Interaction with
        security manager when creating platform threads](Thread.md#ofplatform-security))

    See Also:
    :   - [Inheritance when creating threads](Thread.md#inheritance)
  + ### factory

    [ThreadFactory](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") factory()

    Returns a `ThreadFactory` to create threads from the current
    state of the builder. The returned thread factory is safe for use by
    multiple concurrent threads.

    Returns:
    :   a thread factory to create threads