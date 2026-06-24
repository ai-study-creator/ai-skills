Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Enum Class ProcessBuilder.Redirect.Type

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Enum](Enum.md "class in java.lang")<[ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang")>

java.lang.ProcessBuilder.Redirect.Type

All Implemented Interfaces:
:   `Serializable`, `Comparable<ProcessBuilder.Redirect.Type>`, `Constable`

Enclosing class:
:   `ProcessBuilder.Redirect`

---

public static enum ProcessBuilder.Redirect.Type
extends [Enum](Enum.md "class in java.lang")<[ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang")>

The type of a [`ProcessBuilder.Redirect`](ProcessBuilder.Redirect.md "class in java.lang").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `APPEND`

  The type of redirects returned from
  [`Redirect.appendTo(File)`](ProcessBuilder.Redirect.md#appendTo(java.io.File)).

  `INHERIT`

  The type of [`Redirect.INHERIT`](ProcessBuilder.Redirect.md#INHERIT).

  `PIPE`

  The type of [`Redirect.PIPE`](ProcessBuilder.Redirect.md#PIPE).

  `READ`

  The type of redirects returned from
  [`Redirect.from(File)`](ProcessBuilder.Redirect.md#from(java.io.File)).

  `WRITE`

  The type of redirects returned from
  [`Redirect.to(File)`](ProcessBuilder.Redirect.md#to(java.io.File)).
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ProcessBuilder.Redirect.Type`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ProcessBuilder.Redirect.Type[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PIPE

    public static final [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang") PIPE

    The type of [`Redirect.PIPE`](ProcessBuilder.Redirect.md#PIPE).
  + ### INHERIT

    public static final [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang") INHERIT

    The type of [`Redirect.INHERIT`](ProcessBuilder.Redirect.md#INHERIT).
  + ### READ

    public static final [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang") READ

    The type of redirects returned from
    [`Redirect.from(File)`](ProcessBuilder.Redirect.md#from(java.io.File)).
  + ### WRITE

    public static final [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang") WRITE

    The type of redirects returned from
    [`Redirect.to(File)`](ProcessBuilder.Redirect.md#to(java.io.File)).
  + ### APPEND

    public static final [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang") APPEND

    The type of redirects returned from
    [`Redirect.appendTo(File)`](ProcessBuilder.Redirect.md#appendTo(java.io.File)).
* ## Method Details

  + ### values

    public static [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ProcessBuilder.Redirect.Type](ProcessBuilder.Redirect.Type.md "enum class in java.lang") valueOf([String](String.md "class in java.lang") name)

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