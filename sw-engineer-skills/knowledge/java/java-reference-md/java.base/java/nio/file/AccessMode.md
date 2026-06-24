Module [java.base](../../../module-summary.md)

Package [java.nio.file](package-summary.md)

# Enum Class AccessMode

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[AccessMode](AccessMode.md "enum class in java.nio.file")>

java.nio.file.AccessMode

All Implemented Interfaces:
:   `Serializable`, `Comparable<AccessMode>`, `Constable`

---

public enum AccessMode
extends [Enum](../../lang/Enum.md "class in java.lang")<[AccessMode](AccessMode.md "enum class in java.nio.file")>

Defines access modes used to test the accessibility of a file.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `EXECUTE`

  Test execute access.

  `READ`

  Test read access.

  `WRITE`

  Test write access.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AccessMode`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static AccessMode[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### READ

    public static final [AccessMode](AccessMode.md "enum class in java.nio.file") READ

    Test read access.
  + ### WRITE

    public static final [AccessMode](AccessMode.md "enum class in java.nio.file") WRITE

    Test write access.
  + ### EXECUTE

    public static final [AccessMode](AccessMode.md "enum class in java.nio.file") EXECUTE

    Test execute access.
* ## Method Details

  + ### values

    public static [AccessMode](AccessMode.md "enum class in java.nio.file")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [AccessMode](AccessMode.md "enum class in java.nio.file") valueOf([String](../../lang/String.md "class in java.lang") name)

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