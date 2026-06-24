Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Enum Class DropMode

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[DropMode](DropMode.md "enum class in javax.swing")>

javax.swing.DropMode

All Implemented Interfaces:
:   `Serializable`, `Comparable<DropMode>`, `Constable`

---

public enum DropMode
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[DropMode](DropMode.md "enum class in javax.swing")>

Drop modes, used to determine the method by which a component
tracks and indicates a drop location during drag and drop.

Since:
:   1.6

See Also:
:   * [`JTable.setDropMode(javax.swing.DropMode)`](JTable.md#setDropMode(javax.swing.DropMode))
    * [`JList.setDropMode(javax.swing.DropMode)`](JList.md#setDropMode(javax.swing.DropMode))
    * [`JTree.setDropMode(javax.swing.DropMode)`](JTree.md#setDropMode(javax.swing.DropMode))
    * [`JTextComponent.setDropMode(javax.swing.DropMode)`](text/JTextComponent.md#setDropMode(javax.swing.DropMode))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `INSERT`

  The drop location should be tracked in terms of the position
  where new data should be inserted.

  `INSERT_COLS`

  The drop location should be tracked in terms of the column index
  where new columns should be inserted to accommodate the dropped
  data.

  `INSERT_ROWS`

  The drop location should be tracked in terms of the row index
  where new rows should be inserted to accommodate the dropped
  data.

  `ON`

  The drop location should be tracked in terms of the index of
  existing items.

  `ON_OR_INSERT`

  This mode is a combination of `ON`
  and `INSERT`, specifying that data can be
  dropped on existing items, or in insert locations
  as specified by `INSERT`.

  `ON_OR_INSERT_COLS`

  This mode is a combination of `ON`
  and `INSERT_COLS`, specifying that data can be
  dropped on existing items, or as insert columns
  as specified by `INSERT_COLS`.

  `ON_OR_INSERT_ROWS`

  This mode is a combination of `ON`
  and `INSERT_ROWS`, specifying that data can be
  dropped on existing items, or as insert rows
  as specified by `INSERT_ROWS`.

  `USE_SELECTION`

  A component's own internal selection mechanism (or caret for text
  components) should be used to track the drop location.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static DropMode`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static DropMode[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### USE\_SELECTION

    public static final [DropMode](DropMode.md "enum class in javax.swing") USE\_SELECTION

    A component's own internal selection mechanism (or caret for text
    components) should be used to track the drop location.
  + ### ON

    public static final [DropMode](DropMode.md "enum class in javax.swing") ON

    The drop location should be tracked in terms of the index of
    existing items. Useful for dropping on items in tables, lists,
    and trees.
  + ### INSERT

    public static final [DropMode](DropMode.md "enum class in javax.swing") INSERT

    The drop location should be tracked in terms of the position
    where new data should be inserted. For components that manage
    a list of items (list and tree for example), the drop location
    should indicate the index where new data should be inserted.
    For text components the location should represent a position
    between characters. For components that manage tabular data
    (table for example), the drop location should indicate
    where to insert new rows, columns, or both, to accommodate
    the dropped data.
  + ### INSERT\_ROWS

    public static final [DropMode](DropMode.md "enum class in javax.swing") INSERT\_ROWS

    The drop location should be tracked in terms of the row index
    where new rows should be inserted to accommodate the dropped
    data. This is useful for components that manage tabular data.
  + ### INSERT\_COLS

    public static final [DropMode](DropMode.md "enum class in javax.swing") INSERT\_COLS

    The drop location should be tracked in terms of the column index
    where new columns should be inserted to accommodate the dropped
    data. This is useful for components that manage tabular data.
  + ### ON\_OR\_INSERT

    public static final [DropMode](DropMode.md "enum class in javax.swing") ON\_OR\_INSERT

    This mode is a combination of `ON`
    and `INSERT`, specifying that data can be
    dropped on existing items, or in insert locations
    as specified by `INSERT`.
  + ### ON\_OR\_INSERT\_ROWS

    public static final [DropMode](DropMode.md "enum class in javax.swing") ON\_OR\_INSERT\_ROWS

    This mode is a combination of `ON`
    and `INSERT_ROWS`, specifying that data can be
    dropped on existing items, or as insert rows
    as specified by `INSERT_ROWS`.
  + ### ON\_OR\_INSERT\_COLS

    public static final [DropMode](DropMode.md "enum class in javax.swing") ON\_OR\_INSERT\_COLS

    This mode is a combination of `ON`
    and `INSERT_COLS`, specifying that data can be
    dropped on existing items, or as insert columns
    as specified by `INSERT_COLS`.
* ## Method Details

  + ### values

    public static [DropMode](DropMode.md "enum class in javax.swing")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [DropMode](DropMode.md "enum class in javax.swing") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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