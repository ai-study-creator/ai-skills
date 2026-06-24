Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Enum Class RowSorterEvent.Type

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event")>

javax.swing.event.RowSorterEvent.Type

All Implemented Interfaces:
:   `Serializable`, `Comparable<RowSorterEvent.Type>`, `Constable`

Enclosing class:
:   `RowSorterEvent`

---

public static enum RowSorterEvent.Type
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event")>

Enumeration of the types of `RowSorterEvent`s.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `SORT_ORDER_CHANGED`

  Indicates the sort order has changed.

  `SORTED`

  Indicates the contents have been newly sorted or
  transformed in some way.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static RowSorterEvent.Type`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static RowSorterEvent.Type[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SORT\_ORDER\_CHANGED

    public static final [RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event") SORT\_ORDER\_CHANGED

    Indicates the sort order has changed.
  + ### SORTED

    public static final [RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event") SORTED

    Indicates the contents have been newly sorted or
    transformed in some way.
* ## Method Details

  + ### values

    public static [RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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