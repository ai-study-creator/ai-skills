Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Enum Class StructuredTaskScope.Subtask.State

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)>

java.util.concurrent.StructuredTaskScope.Subtask.State

All Implemented Interfaces:
:   `Serializable`, `Comparable<StructuredTaskScope.Subtask.StatePREVIEW>`, `Constable`

Enclosing interface:
:   `StructuredTaskScope.SubtaskPREVIEW<T>`

---

public static enum StructuredTaskScope.Subtask.State
extends [Enum](../../lang/Enum.md "class in java.lang")<[StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)>

`State` is a preview API of the Java platform.

Programs can only use `State` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

Represents the state of a subtask.

Since:
:   21

See Also:
:   * [`StructuredTaskScope.Subtask.state()`](StructuredTaskScope.Subtask.md#state())[PREVIEW](StructuredTaskScope.Subtask.md#preview-java.util.concurrent.StructuredTaskScope.Subtask)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `FAILED`

  The subtask failed with an exception.

  `SUCCESS`

  The subtask completed successfully with a result.

  `UNAVAILABLE`

  The subtask result or exception is not available.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static StructuredTaskScope.Subtask.StatePREVIEW`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static StructuredTaskScope.Subtask.StatePREVIEW[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### UNAVAILABLE

    public static final [StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) UNAVAILABLE

    The subtask result or exception is not available. This state indicates that
    the subtask was forked but has not completed, it completed after the task
    scope was [shut down](StructuredTaskScope.md#shutdown())[PREVIEW](StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope), or it was forked after the
    task scope was shut down.
  + ### SUCCESS

    public static final [StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) SUCCESS

    The subtask completed successfully with a result. The [`Subtask.get()`](StructuredTaskScope.Subtask.md#get())[PREVIEW](StructuredTaskScope.Subtask.md#preview-java.util.concurrent.StructuredTaskScope.Subtask) method can be used to obtain the result. This is a terminal
    state.
  + ### FAILED

    public static final [StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) FAILED

    The subtask failed with an exception. The [`Subtask.exception()`](StructuredTaskScope.Subtask.md#exception())[PREVIEW](StructuredTaskScope.Subtask.md#preview-java.util.concurrent.StructuredTaskScope.Subtask) method can be used to obtain the exception. This is a
    terminal state.
* ## Method Details

  + ### values

    public static [StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.Subtask.State)[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [StructuredTaskScope.Subtask.State](StructuredTaskScope.Subtask.State.md "enum class in java.util.concurrent")[PREVIEW](#preview-java.util.concurrent.StructuredTaskScope.Subtask.State) valueOf([String](../../lang/String.md "class in java.lang") name)

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