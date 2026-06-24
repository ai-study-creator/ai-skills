Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Enum Class SortOrder

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[SortOrder](SortOrder.md "enum class in javax.swing")>

javax.swing.SortOrder

All Implemented Interfaces:
:   `Serializable`, `Comparable<SortOrder>`, `Constable`

---

public enum SortOrder
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[SortOrder](SortOrder.md "enum class in javax.swing")>

SortOrder is an enumeration of the possible sort orderings.

Since:
:   1.6

See Also:
:   * [`RowSorter`](RowSorter.md "class in javax.swing")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ASCENDING`

  Enumeration value indicating the items are sorted in increasing order.

  `DESCENDING`

  Enumeration value indicating the items are sorted in decreasing order.

  `UNSORTED`

  Enumeration value indicating the items are unordered.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static SortOrder`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static SortOrder[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ASCENDING

    public static final [SortOrder](SortOrder.md "enum class in javax.swing") ASCENDING

    Enumeration value indicating the items are sorted in increasing order.
    For example, the set `1, 4, 0` sorted in
    `ASCENDING` order is `0, 1, 4`.
  + ### DESCENDING

    public static final [SortOrder](SortOrder.md "enum class in javax.swing") DESCENDING

    Enumeration value indicating the items are sorted in decreasing order.
    For example, the set `1, 4, 0` sorted in
    `DESCENDING` order is `4, 1, 0`.
  + ### UNSORTED

    public static final [SortOrder](SortOrder.md "enum class in javax.swing") UNSORTED

    Enumeration value indicating the items are unordered.
    For example, the set `1, 4, 0` in
    `UNSORTED` order is `1, 4, 0`.
* ## Method Details

  + ### values

    public static [SortOrder](SortOrder.md "enum class in javax.swing")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [SortOrder](SortOrder.md "enum class in javax.swing") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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