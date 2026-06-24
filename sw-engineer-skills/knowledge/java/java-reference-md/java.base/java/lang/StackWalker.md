Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class StackWalker

[java.lang.Object](Object.md "class in java.lang")

java.lang.StackWalker

---

public final class StackWalker
extends [Object](Object.md "class in java.lang")

A stack walker.

The [`walk`](#walk(java.util.function.Function)) method opens a sequential stream
of [`StackFrame`](StackWalker.StackFrame.md "interface in java.lang")s for the current thread and then applies
the given function to walk the `StackFrame` stream.
The stream reports stack frame elements in order, from the top most frame
that represents the execution point at which the stack was generated to
the bottom most frame.
The `StackFrame` stream is closed when the `walk` method returns.
If an attempt is made to reuse the closed stream,
`IllegalStateException` will be thrown.

The [*stack walking options*](StackWalker.Option.md "enum class in java.lang") of a
`StackWalker` determines the information of
[`StackFrame`](StackWalker.StackFrame.md "interface in java.lang") objects to be returned.
By default, stack frames of the reflection API and implementation
classes are [hidden](StackWalker.Option.md#SHOW_HIDDEN_FRAMES)
and `StackFrame`s have the class name and method name
available but not the [`Class reference`](StackWalker.StackFrame.md#getDeclaringClass()).

`StackWalker` is thread-safe. Multiple threads can share
a single `StackWalker` object to traverse its own stack.
A permission check is performed when a `StackWalker` is created,
according to the options it requests.
No further permission check is done at stack walking time.

Since:
:   9

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `StackWalker.Option`

  Stack walker option to configure the [stack frame](StackWalker.StackFrame.md "interface in java.lang")
  information obtained by a `StackWalker`.

  `static interface`

  `StackWalker.StackFrame`

  A `StackFrame` object represents a method invocation returned by
  [`StackWalker`](StackWalker.md "class in java.lang").
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `forEach(Consumer<? super StackWalker.StackFrame> action)`

  Performs the given action on each element of `StackFrame` stream
  of the current thread, traversing from the top frame of the stack,
  which is the method calling this `forEach` method.

  `Class<?>`

  `getCallerClass()`

  Gets the `Class` object of the caller who invoked the method
  that invoked `getCallerClass`.

  `static StackWalker`

  `getInstance()`

  Returns a `StackWalker` instance.

  `static StackWalker`

  `getInstance(StackWalker.Option option)`

  Returns a `StackWalker` instance with the given option specifying
  the stack frame information it can access.

  `static StackWalker`

  `getInstance(Set<StackWalker.Option> options)`

  Returns a `StackWalker` instance with the given `options` specifying
  the stack frame information it can access.

  `static StackWalker`

  `getInstance(Set<StackWalker.Option> options,
  int estimateDepth)`

  Returns a `StackWalker` instance with the given `options` specifying
  the stack frame information it can access.

  `<T> T`

  `walk(Function<? super Stream<StackWalker.StackFrame>,? extends T> function)`

  Applies the given function to the stream of `StackFrame`s
  for the current thread, traversing from the top frame of the stack,
  which is the method calling this `walk` method.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getInstance

    public static [StackWalker](StackWalker.md "class in java.lang") getInstance()

    Returns a `StackWalker` instance.

    This `StackWalker` is configured to skip all
    [hidden frames](StackWalker.Option.md#SHOW_HIDDEN_FRAMES) and
    no [class reference](StackWalker.Option.md#RETAIN_CLASS_REFERENCE) is retained.

    Returns:
    :   a `StackWalker` configured to skip all
        [hidden frames](StackWalker.Option.md#SHOW_HIDDEN_FRAMES) and
        no [class reference](StackWalker.Option.md#RETAIN_CLASS_REFERENCE) is retained.
  + ### getInstance

    public static [StackWalker](StackWalker.md "class in java.lang") getInstance([StackWalker.Option](StackWalker.Option.md "enum class in java.lang") option)

    Returns a `StackWalker` instance with the given option specifying
    the stack frame information it can access.

    If a security manager is present and the given `option` is
    [`Option.RETAIN_CLASS_REFERENCE`](StackWalker.Option.md#RETAIN_CLASS_REFERENCE),
    it calls its [`checkPermission`](SecurityManager.md#checkPermission(java.security.Permission))
    method for `RuntimePermission("getStackWalkerWithClassReference")`.

    Parameters:
    :   `option` - [`stack walking option`](StackWalker.Option.md "enum class in java.lang")

    Returns:
    :   a `StackWalker` configured with the given option

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method denies access.
  + ### getInstance

    public static [StackWalker](StackWalker.md "class in java.lang") getInstance([Set](../util/Set.md "interface in java.util")<[StackWalker.Option](StackWalker.Option.md "enum class in java.lang")> options)

    Returns a `StackWalker` instance with the given `options` specifying
    the stack frame information it can access. If the given `options`
    is empty, this `StackWalker` is configured to skip all
    [hidden frames](StackWalker.Option.md#SHOW_HIDDEN_FRAMES) and no
    [class reference](StackWalker.Option.md#RETAIN_CLASS_REFERENCE) is retained.

    If a security manager is present and the given `options` contains
    [`Option.RETAIN_CLASS_REFERENCE`](StackWalker.Option.md#RETAIN_CLASS_REFERENCE),
    it calls its [`checkPermission`](SecurityManager.md#checkPermission(java.security.Permission))
    method for `RuntimePermission("getStackWalkerWithClassReference")`.

    Parameters:
    :   `options` - [`stack walking option`](StackWalker.Option.md "enum class in java.lang")

    Returns:
    :   a `StackWalker` configured with the given options

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method denies access.
  + ### getInstance

    public static [StackWalker](StackWalker.md "class in java.lang") getInstance([Set](../util/Set.md "interface in java.util")<[StackWalker.Option](StackWalker.Option.md "enum class in java.lang")> options,
    int estimateDepth)

    Returns a `StackWalker` instance with the given `options` specifying
    the stack frame information it can access. If the given `options`
    is empty, this `StackWalker` is configured to skip all
    [hidden frames](StackWalker.Option.md#SHOW_HIDDEN_FRAMES) and no
    [class reference](StackWalker.Option.md#RETAIN_CLASS_REFERENCE) is retained.

    If a security manager is present and the given `options` contains
    [`Option.RETAIN_CLASS_REFERENCE`](StackWalker.Option.md#RETAIN_CLASS_REFERENCE),
    it calls its [`checkPermission`](SecurityManager.md#checkPermission(java.security.Permission))
    method for `RuntimePermission("getStackWalkerWithClassReference")`.

    The `estimateDepth` specifies the estimate number of stack frames
    this `StackWalker` will traverse that the `StackWalker` could
    use as a hint for the buffer size.

    Parameters:
    :   `options` - [`stack walking options`](StackWalker.Option.md "enum class in java.lang")
    :   `estimateDepth` - Estimate number of stack frames to be traversed.

    Returns:
    :   a `StackWalker` configured with the given options

    Throws:
    :   `IllegalArgumentException` - if `estimateDepth <= 0`
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method denies access.
  + ### walk

    public <T> T walk([Function](../util/function/Function.md "interface in java.util.function")<? super [Stream](../util/stream/Stream.md "interface in java.util.stream")<[StackWalker.StackFrame](StackWalker.StackFrame.md "interface in java.lang")>,? extends T> function)

    Applies the given function to the stream of `StackFrame`s
    for the current thread, traversing from the top frame of the stack,
    which is the method calling this `walk` method.

    The `StackFrame` stream will be closed when
    this method returns. When a closed `Stream<StackFrame>` object
    is reused, `IllegalStateException` will be thrown.

    Type Parameters:
    :   `T` - The type of the result of applying the function to the
        stream of [stack frame](StackWalker.StackFrame.md "interface in java.lang").

    Parameters:
    :   `function` - a function that takes a stream of
        [stack frames](StackWalker.StackFrame.md "interface in java.lang") and returns a result.

    Returns:
    :   the result of applying the function to the stream of
        [stack frame](StackWalker.StackFrame.md "interface in java.lang").
  + ### forEach

    public void forEach([Consumer](../util/function/Consumer.md "interface in java.util.function")<? super [StackWalker.StackFrame](StackWalker.StackFrame.md "interface in java.lang")> action)

    Performs the given action on each element of `StackFrame` stream
    of the current thread, traversing from the top frame of the stack,
    which is the method calling this `forEach` method.

    This method is equivalent to calling
    > `walk(s -> { s.forEach(action); return null; });`

    Parameters:
    :   `action` - an action to be performed on each `StackFrame`
        of the stack of the current thread
  + ### getCallerClass

    public [Class](Class.md "class in java.lang")<?> getCallerClass()

    Gets the `Class` object of the caller who invoked the method
    that invoked `getCallerClass`.

    This method filters [reflection
    frames](StackWalker.Option.md#SHOW_REFLECT_FRAMES), [`MethodHandle`](invoke/MethodHandle.md "class in java.lang.invoke"), and
    [hidden frames](StackWalker.Option.md#SHOW_HIDDEN_FRAMES) regardless of the
    [`SHOW_REFLECT_FRAMES`](StackWalker.Option.md#SHOW_REFLECT_FRAMES)
    and [`SHOW_HIDDEN_FRAMES`](StackWalker.Option.md#SHOW_HIDDEN_FRAMES) options
    this `StackWalker` has been configured with.

    This method should be called when a caller frame is present. If
    it is called from the bottom most frame on the stack,
    `IllegalCallerException` will be thrown.

    This method throws `UnsupportedOperationException`
    if this `StackWalker` is not configured with the
    [`RETAIN_CLASS_REFERENCE`](StackWalker.Option.md#RETAIN_CLASS_REFERENCE) option.

    Returns:
    :   `Class` object of the caller's caller invoking this method.

    Throws:
    :   `UnsupportedOperationException` - if this `StackWalker`
        is not configured with [`Option.RETAIN_CLASS_REFERENCE`](StackWalker.Option.md#RETAIN_CLASS_REFERENCE).
    :   `IllegalCallerException` - if there is no caller frame, i.e.
        when this `getCallerClass` method is called from a method
        which is the last frame on the stack.