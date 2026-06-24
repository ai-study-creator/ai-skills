Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface Thread.Builder.OfVirtual

All Superinterfaces:
:   `Thread.Builder`

Enclosing interface:
:   `Thread.Builder`

---

public static sealed interface Thread.Builder.OfVirtual
extends [Thread.Builder](Thread.Builder.md "interface in java.lang")

A builder for creating a virtual [`Thread`](Thread.md "class in java.lang") or [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent")
that creates virtual threads.

Unless otherwise specified, passing a null argument to a method in
this interface causes a `NullPointerException` to be thrown.

Since:
:   21

See Also:
:   * [`Thread.ofVirtual()`](Thread.md#ofVirtual())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.[Thread.Builder](Thread.Builder.md "interface in java.lang")

  `Thread.Builder.OfPlatform, Thread.Builder.OfVirtual`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Thread.Builder.OfVirtual`

  `inheritInheritableThreadLocals(boolean inherit)`

  Sets whether the thread inherits the initial values of [inheritable-thread-local](InheritableThreadLocal.md "class in java.lang") variables from the
  constructing thread.

  `Thread.Builder.OfVirtual`

  `name(String name)`

  Sets the thread name.

  `Thread.Builder.OfVirtual`

  `name(String prefix,
  long start)`

  Sets the thread name to be the concatenation of a string prefix and
  the string representation of a counter value.

  `Thread.Builder.OfVirtual`

  `uncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh)`

  Sets the uncaught exception handler.

  ### Methods inherited from interface java.lang.[Thread.Builder](Thread.Builder.md "interface in java.lang")

  `factory, start, unstarted`

* ## Method Details

  + ### name

    [Thread.Builder.OfVirtual](Thread.Builder.OfVirtual.md "interface in java.lang") name([String](String.md "class in java.lang") name)

    Description copied from interface: `Thread.Builder`

    Sets the thread name.

    Specified by:
    :   `name` in interface `Thread.Builder`

    Parameters:
    :   `name` - thread name

    Returns:
    :   this builder
  + ### name

    [Thread.Builder.OfVirtual](Thread.Builder.OfVirtual.md "interface in java.lang") name([String](String.md "class in java.lang") prefix,
    long start)

    Description copied from interface: `Thread.Builder`

    Sets the thread name to be the concatenation of a string prefix and
    the string representation of a counter value. The counter's initial
    value is `start`. It is incremented after a `Thread` is
    created with this builder so that the next thread is named with
    the new counter value. A `ThreadFactory` created with this
    builder is seeded with the current value of the counter. The `ThreadFactory` increments its copy of the counter after [`newThread`](../util/concurrent/ThreadFactory.md#newThread(java.lang.Runnable)) is used to create a
    `Thread`.

    Specified by:
    :   `name` in interface `Thread.Builder`

    Parameters:
    :   `prefix` - thread name prefix
    :   `start` - the starting value of the counter

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if start is negative
  + ### inheritInheritableThreadLocals

    [Thread.Builder.OfVirtual](Thread.Builder.OfVirtual.md "interface in java.lang") inheritInheritableThreadLocals(boolean inherit)

    Description copied from interface: `Thread.Builder`

    Sets whether the thread inherits the initial values of [inheritable-thread-local](InheritableThreadLocal.md "class in java.lang") variables from the
    constructing thread. The default is to inherit.

    Specified by:
    :   `inheritInheritableThreadLocals` in interface `Thread.Builder`

    Parameters:
    :   `inherit` - `true` to inherit, `false` to not inherit

    Returns:
    :   this builder
  + ### uncaughtExceptionHandler

    [Thread.Builder.OfVirtual](Thread.Builder.OfVirtual.md "interface in java.lang") uncaughtExceptionHandler([Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang") ueh)

    Description copied from interface: `Thread.Builder`

    Sets the uncaught exception handler.

    Specified by:
    :   `uncaughtExceptionHandler` in interface `Thread.Builder`

    Parameters:
    :   `ueh` - uncaught exception handler

    Returns:
    :   this builder