Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTable.DropLocation

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing")

javax.swing.JTable.DropLocation

Enclosing class:
:   `JTable`

---

public static final class JTable.DropLocation
extends [TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing")

A subclass of `TransferHandler.DropLocation` representing
a drop location for a `JTable`.

Since:
:   1.6

See Also:
:   * [`JTable.getDropLocation()`](JTable.md#getDropLocation())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getColumn()`

  Returns the column index where a dropped item should be placed in the
  table.

  `int`

  `getRow()`

  Returns the row index where a dropped item should be placed in the
  table.

  `boolean`

  `isInsertColumn()`

  Returns whether or not this location represents an insert
  of a column.

  `boolean`

  `isInsertRow()`

  Returns whether or not this location represents an insert
  of a row.

  `String`

  `toString()`

  Returns a string representation of this drop location.

  ### Methods inherited from class javax.swing.[TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing")

  `getDropPoint`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getRow

    public int getRow()

    Returns the row index where a dropped item should be placed in the
    table. Interpretation of the value depends on the return of
    `isInsertRow()`. If that method returns
    `true` this value indicates the index where a new
    row should be inserted. Otherwise, it represents the value
    of an existing row on which the data was dropped. This index is
    in terms of the view.

    `-1` indicates that the drop occurred over empty space,
    and no row could be calculated.

    Returns:
    :   the drop row
  + ### getColumn

    public int getColumn()

    Returns the column index where a dropped item should be placed in the
    table. Interpretation of the value depends on the return of
    `isInsertColumn()`. If that method returns
    `true` this value indicates the index where a new
    column should be inserted. Otherwise, it represents the value
    of an existing column on which the data was dropped. This index is
    in terms of the view.

    `-1` indicates that the drop occurred over empty space,
    and no column could be calculated.

    Returns:
    :   the drop row
  + ### isInsertRow

    public boolean isInsertRow()

    Returns whether or not this location represents an insert
    of a row.

    Returns:
    :   whether or not this is an insert row
  + ### isInsertColumn

    public boolean isInsertColumn()

    Returns whether or not this location represents an insert
    of a column.

    Returns:
    :   whether or not this is an insert column
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this drop location.
    This method is intended to be used for debugging purposes,
    and the content and format of the returned string may vary
    between implementations.

    Overrides:
    :   `toString` in class `TransferHandler.DropLocation`

    Returns:
    :   a string representation of this drop location