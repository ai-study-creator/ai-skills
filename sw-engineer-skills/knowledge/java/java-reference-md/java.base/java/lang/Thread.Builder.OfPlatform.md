Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface Thread.Builder.OfPlatform

All Superinterfaces:
:   `Thread.Builder`

Enclosing interface:
:   `Thread.Builder`

---

public static sealed interface Thread.Builder.OfPlatform
extends [Thread.Builder](Thread.Builder.md "interface in java.lang")

A builder for creating a platform [`Thread`](Thread.md "class in java.lang") or [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent")
that creates platform threads.

Unless otherwise specified, passing a null argument to a method in
this interface causes a `NullPointerException` to be thrown.

Since:
:   21

See Also:
:   * [`Thread.ofPlatform()`](Thread.md#ofPlatform())

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.[Thread.Builder](Thread.Builder.md "interface in java.lang")

  `Thread.Builder.OfPlatform, Thread.Builder.OfVirtual`
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default Thread.Builder.OfPlatform`

  `daemon()`

  Sets the daemon status to `true`.

  `Thread.Builder.OfPlatform`

  `daemon(boolean on)`

  Sets the daemon status.

  `Thread.Builder.OfPlatform`

  `group(ThreadGroup group)`

  Sets the thread group.

  `Thread.Builder.OfPlatform`

  `inheritInheritableThreadLocals(boolean inherit)`

  Sets whether the thread inherits the initial values of [inheritable-thread-local](InheritableThreadLocal.md "class in java.lang") variables from the
  constructing thread.

  `Thread.Builder.OfPlatform`

  `name(String name)`

  Sets the thread name.

  `Thread.Builder.OfPlatform`

  `name(String prefix,
  long start)`

  Sets the thread name to be the concatenation of a string prefix and
  the string representation of a counter value.

  `Thread.Builder.OfPlatform`

  `priority(int priority)`

  Sets the thread priority.

  `Thread.Builder.OfPlatform`

  `stackSize(long stackSize)`

  Sets the desired stack size.

  `Thread.Builder.OfPlatform`

  `uncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh)`

  Sets the uncaught exception handler.

  ### Methods inherited from interface java.lang.[Thread.Builder](Thread.Builder.md "interface in java.lang")

  `factory, start, unstarted`

* ## Method Details

  + ### name

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") name([String](String.md "class in java.lang") name)

    Description copied from interface: `Thread.Builder`

    Sets the thread name.

    Specified by:
    :   `name` in interface `Thread.Builder`

    Parameters:
    :   `name` - thread name

    Returns:
    :   this builder
  + ### name

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") name([String](String.md "class in java.lang") prefix,
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

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") inheritInheritableThreadLocals(boolean inherit)

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

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") uncaughtExceptionHandler([Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang") ueh)

    Description copied from interface: `Thread.Builder`

    Sets the uncaught exception handler.

    Specified by:
    :   `uncaughtExceptionHandler` in interface `Thread.Builder`

    Parameters:
    :   `ueh` - uncaught exception handler

    Returns:
    :   this builder
  + ### group

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") group([ThreadGroup](ThreadGroup.md "class in java.lang") group)

    Sets the thread group.

    Parameters:
    :   `group` - the thread group

    Returns:
    :   this builder
  + ### daemon

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") daemon(boolean on)

    Sets the daemon status.

    Parameters:
    :   `on` - `true` to create daemon threads

    Returns:
    :   this builder
  + ### daemon

    default [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") daemon()

    Sets the daemon status to `true`.

    Returns:
    :   this builder
  + ### priority

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") priority(int priority)

    Sets the thread priority.

    Parameters:
    :   `priority` - priority

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the priority is less than
        [`Thread.MIN_PRIORITY`](Thread.md#MIN_PRIORITY) or greater than [`Thread.MAX_PRIORITY`](Thread.md#MAX_PRIORITY)
  + ### stackSize

    [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") stackSize(long stackSize)

    Sets the desired stack size.

    The stack size is the approximate number of bytes of address space
    that the Java virtual machine is to allocate for the thread's stack. The
    effect is highly platform dependent and the Java virtual machine is free
    to treat the `stackSize` parameter as a "suggestion". If the value
    is unreasonably low for the platform then a platform specific minimum
    may be used. If the value is unreasonably high then a platform specific
    maximum may be used. A value of zero is always ignored.

    Parameters:
    :   `stackSize` - the desired stack size

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the stack size is negative