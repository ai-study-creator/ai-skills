Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Enum Class RowFilter.ComparisonType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing")>

javax.swing.RowFilter.ComparisonType

All Implemented Interfaces:
:   `Serializable`, `Comparable<RowFilter.ComparisonType>`, `Constable`

Enclosing class:
:   `RowFilter<M,I>`

---

public static enum RowFilter.ComparisonType
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing")>

Enumeration of the possible comparison values supported by
some of the default `RowFilter`s.

Since:
:   1.6

See Also:
:   * [`RowFilter`](RowFilter.md "class in javax.swing")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `AFTER`

  Indicates that entries with a value after the supplied
  value should be included.

  `BEFORE`

  Indicates that entries with a value before the supplied
  value should be included.

  `EQUAL`

  Indicates that entries with a value equal to the supplied
  value should be included.

  `NOT_EQUAL`

  Indicates that entries with a value not equal to the supplied
  value should be included.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static RowFilter.ComparisonType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static RowFilter.ComparisonType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### BEFORE

    public static final [RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing") BEFORE

    Indicates that entries with a value before the supplied
    value should be included.
  + ### AFTER

    public static final [RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing") AFTER

    Indicates that entries with a value after the supplied
    value should be included.
  + ### EQUAL

    public static final [RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing") EQUAL

    Indicates that entries with a value equal to the supplied
    value should be included.
  + ### NOT\_EQUAL

    public static final [RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing") NOT\_EQUAL

    Indicates that entries with a value not equal to the supplied
    value should be included.
* ## Method Details

  + ### values

    public static [RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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