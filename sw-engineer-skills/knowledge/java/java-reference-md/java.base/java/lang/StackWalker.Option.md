Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Enum Class StackWalker.Option

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Enum](Enum.md "class in java.lang")<[StackWalker.Option](StackWalker.Option.md "enum class in java.lang")>

java.lang.StackWalker.Option

All Implemented Interfaces:
:   `Serializable`, `Comparable<StackWalker.Option>`, `Constable`

Enclosing class:
:   `StackWalker`

---

public static enum StackWalker.Option
extends [Enum](Enum.md "class in java.lang")<[StackWalker.Option](StackWalker.Option.md "enum class in java.lang")>

Stack walker option to configure the [stack frame](StackWalker.StackFrame.md "interface in java.lang")
information obtained by a `StackWalker`.

Since:
:   9

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `RETAIN_CLASS_REFERENCE`

  Retains `Class` object in `StackFrame`s
  walked by this `StackWalker`.

  `SHOW_HIDDEN_FRAMES`

  Shows all hidden frames.

  `SHOW_REFLECT_FRAMES`

  Shows all reflection frames.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static StackWalker.Option`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static StackWalker.Option[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### RETAIN\_CLASS\_REFERENCE

    public static final [StackWalker.Option](StackWalker.Option.md "enum class in java.lang") RETAIN\_CLASS\_REFERENCE

    Retains `Class` object in `StackFrame`s
    walked by this `StackWalker`.

    A `StackWalker` configured with this option will support
    [`StackWalker.getCallerClass()`](StackWalker.md#getCallerClass()) and
    [`StackFrame.getDeclaringClass()`](StackWalker.StackFrame.md#getDeclaringClass()).
  + ### SHOW\_REFLECT\_FRAMES

    public static final [StackWalker.Option](StackWalker.Option.md "enum class in java.lang") SHOW\_REFLECT\_FRAMES

    Shows all reflection frames.

    By default, reflection frames are hidden. A `StackWalker`
    configured with this `SHOW_REFLECT_FRAMES` option
    will show all reflection frames that
    include [`Method.invoke(java.lang.Object, java.lang.Object...)`](reflect/Method.md#invoke(java.lang.Object,java.lang.Object...)) and
    [`Constructor.newInstance(Object...)`](reflect/Constructor.md#newInstance(java.lang.Object...))
    and their reflection implementation classes.

    The [`SHOW_HIDDEN_FRAMES`](#SHOW_HIDDEN_FRAMES) option can also be used to show all
    reflection frames and it will also show other hidden frames that
    are implementation-specific.
  + ### SHOW\_HIDDEN\_FRAMES

    public static final [StackWalker.Option](StackWalker.Option.md "enum class in java.lang") SHOW\_HIDDEN\_FRAMES

    Shows all hidden frames.

    A Java Virtual Machine implementation may hide implementation
    specific frames in addition to [reflection frames](#SHOW_REFLECT_FRAMES). A `StackWalker` with this `SHOW_HIDDEN_FRAMES`
    option will show all hidden frames (including reflection frames).
* ## Method Details

  + ### values

    public static [StackWalker.Option](StackWalker.Option.md "enum class in java.lang")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [StackWalker.Option](StackWalker.Option.md "enum class in java.lang") valueOf([String](String.md "class in java.lang") name)

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