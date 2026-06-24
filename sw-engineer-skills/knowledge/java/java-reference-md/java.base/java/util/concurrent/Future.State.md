Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Enum Class Future.State

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[Future.State](Future.State.md "enum class in java.util.concurrent")>

java.util.concurrent.Future.State

All Implemented Interfaces:
:   `Serializable`, `Comparable<Future.State>`, `Constable`

Enclosing interface:
:   `Future<V>`

---

public static enum Future.State
extends [Enum](../../lang/Enum.md "class in java.lang")<[Future.State](Future.State.md "enum class in java.util.concurrent")>

Represents the computation state.

Since:
:   19

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CANCELLED`

  The task was cancelled.

  `FAILED`

  The task completed with an exception.

  `RUNNING`

  The task has not completed.

  `SUCCESS`

  The task completed with a result.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Future.State`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Future.State[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### RUNNING

    public static final [Future.State](Future.State.md "enum class in java.util.concurrent") RUNNING

    The task has not completed.
  + ### SUCCESS

    public static final [Future.State](Future.State.md "enum class in java.util.concurrent") SUCCESS

    The task completed with a result.

    See Also:
    :   - [`Future.resultNow()`](Future.md#resultNow())
  + ### FAILED

    public static final [Future.State](Future.State.md "enum class in java.util.concurrent") FAILED

    The task completed with an exception.

    See Also:
    :   - [`Future.exceptionNow()`](Future.md#exceptionNow())
  + ### CANCELLED

    public static final [Future.State](Future.State.md "enum class in java.util.concurrent") CANCELLED

    The task was cancelled.

    See Also:
    :   - [`Future.cancel(boolean)`](Future.md#cancel(boolean))
* ## Method Details

  + ### values

    public static [Future.State](Future.State.md "enum class in java.util.concurrent")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Future.State](Future.State.md "enum class in java.util.concurrent") valueOf([String](../../lang/String.md "class in java.lang") name)

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