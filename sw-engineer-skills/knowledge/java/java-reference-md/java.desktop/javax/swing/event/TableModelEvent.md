Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class TableModelEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.TableModelEvent

All Implemented Interfaces:
:   `Serializable`

---

public class TableModelEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

TableModelEvent is used to notify listeners that a table model
has changed. The model event describes changes to a TableModel
and all references to rows and columns are in the coordinate
system of the model.
Depending on the parameters used in the constructors, the TableModelevent
can be used to specify the following types of changes:

```
 TableModelEvent(source);              //  The data, ie. all rows changed
 TableModelEvent(source, HEADER_ROW);  //  Structure change, reallocate TableColumns
 TableModelEvent(source, 1);           //  Row 1 changed
 TableModelEvent(source, 3, 6);        //  Rows 3 to 6 inclusive changed
 TableModelEvent(source, 2, 2, 6);     //  Cell at (2, 6) changed
 TableModelEvent(source, 3, 6, ALL_COLUMNS, INSERT); // Rows (3, 6) were inserted
 TableModelEvent(source, 3, 6, ALL_COLUMNS, DELETE); // Rows (3, 6) were deleted
```

It is possible to use other combinations of the parameters, not all of them
are meaningful. By subclassing, you can add other information, for example:
whether the event WILL happen or DID happen. This makes the specification
of rows in DELETE events more useful but has not been included in
the swing package as the JTable only needs post-event notification.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`TableModel`](../table/TableModel.md "interface in javax.swing.table")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ALL_COLUMNS`

  Specifies all columns in a row or rows.

  `protected int`

  `column`

  The column for the event.

  `static final int`

  `DELETE`

  Identifies the removal of rows or columns.

  `protected int`

  `firstRow`

  The first row that has changed.

  `static final int`

  `HEADER_ROW`

  Identifies the header row.

  `static final int`

  `INSERT`

  Identifies the addition of new rows or columns.

  `protected int`

  `lastRow`

  The last row that has changed.

  `protected int`

  `type`

  The type of the event.

  `static final int`

  `UPDATE`

  Identifies a change to existing data.

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TableModelEvent(TableModel source)`

  All row data in the table has changed, listeners should discard any state
  that was based on the rows and requery the `TableModel`
  to get the new row count and all the appropriate values.

  `TableModelEvent(TableModel source,
  int row)`

  This row of data has been updated.

  `TableModelEvent(TableModel source,
  int firstRow,
  int lastRow)`

  The data in rows [*firstRow*, *lastRow*] have been updated.

  `TableModelEvent(TableModel source,
  int firstRow,
  int lastRow,
  int column)`

  The cells in column *column* in the range
  [*firstRow*, *lastRow*] have been updated.

  `TableModelEvent(TableModel source,
  int firstRow,
  int lastRow,
  int column,
  int type)`

  The cells from (firstRow, column) to (lastRow, column) have been changed.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getColumn()`

  Returns the column for the event.

  `int`

  `getFirstRow()`

  Returns the first row that changed.

  `int`

  `getLastRow()`

  Returns the last row that changed.

  `int`

  `getType()`

  Returns the type of event - one of: INSERT, UPDATE and DELETE.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### INSERT

    public static final int INSERT

    Identifies the addition of new rows or columns.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.TableModelEvent.INSERT)
  + ### UPDATE

    public static final int UPDATE

    Identifies a change to existing data.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.TableModelEvent.UPDATE)
  + ### DELETE

    public static final int DELETE

    Identifies the removal of rows or columns.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.TableModelEvent.DELETE)
  + ### HEADER\_ROW

    public static final int HEADER\_ROW

    Identifies the header row.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.TableModelEvent.HEADER_ROW)
  + ### ALL\_COLUMNS

    public static final int ALL\_COLUMNS

    Specifies all columns in a row or rows.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.TableModelEvent.ALL_COLUMNS)
  + ### type

    protected int type

    The type of the event.
  + ### firstRow

    protected int firstRow

    The first row that has changed.
  + ### lastRow

    protected int lastRow

    The last row that has changed.
  + ### column

    protected int column

    The column for the event.
* ## Constructor Details

  + ### TableModelEvent

    public TableModelEvent([TableModel](../table/TableModel.md "interface in javax.swing.table") source)

    All row data in the table has changed, listeners should discard any state
    that was based on the rows and requery the `TableModel`
    to get the new row count and all the appropriate values.
    The `JTable` will repaint the entire visible region on
    receiving this event, querying the model for the cell values that are visible.
    The structure of the table ie, the column names, types and order
    have not changed.

    Parameters:
    :   `source` - the `TableModel` affected by this event
  + ### TableModelEvent

    public TableModelEvent([TableModel](../table/TableModel.md "interface in javax.swing.table") source,
    int row)

    This row of data has been updated.
    To denote the arrival of a completely new table with a different structure
    use `HEADER_ROW` as the value for the `row`.
    When the `JTable` receives this event and its
    `autoCreateColumnsFromModel`
    flag is set it discards any TableColumns that it had and reallocates
    default ones in the order they appear in the model. This is the
    same as calling `setModel(TableModel)` on the `JTable`.

    Parameters:
    :   `source` - the `TableModel` affected by this event
    :   `row` - the row which has been updated
  + ### TableModelEvent

    public TableModelEvent([TableModel](../table/TableModel.md "interface in javax.swing.table") source,
    int firstRow,
    int lastRow)

    The data in rows [*firstRow*, *lastRow*] have been updated.

    Parameters:
    :   `source` - the `TableModel` affected by this event
    :   `firstRow` - the first row affected by this event
    :   `lastRow` - the last row affected by this event
  + ### TableModelEvent

    public TableModelEvent([TableModel](../table/TableModel.md "interface in javax.swing.table") source,
    int firstRow,
    int lastRow,
    int column)

    The cells in column *column* in the range
    [*firstRow*, *lastRow*] have been updated.

    Parameters:
    :   `source` - the `TableModel` affected by this event
    :   `firstRow` - the first row affected by this event
    :   `lastRow` - the last row affected by this event
    :   `column` - the column index of cells changed; `ALL_COLUMNS`
        signifies all cells in the specified range of rows are changed.
  + ### TableModelEvent

    public TableModelEvent([TableModel](../table/TableModel.md "interface in javax.swing.table") source,
    int firstRow,
    int lastRow,
    int column,
    int type)

    The cells from (firstRow, column) to (lastRow, column) have been changed.
    The *column* refers to the column index of the cell in the model's
    coordinate system. When *column* is ALL\_COLUMNS, all cells in the
    specified range of rows are considered changed.

    The *type* should be one of: INSERT, UPDATE and DELETE.

    Parameters:
    :   `source` - the `TableModel` affected by this event
    :   `firstRow` - the first row affected by this event
    :   `lastRow` - the last row affected by this event
    :   `column` - the column index of cells changed; `ALL_COLUMNS`
        signifies all cells in the specified range of rows are changed.
    :   `type` - the type of change signified by this even, `INSERT`,
        `DELETE`  or `UPDATE`
* ## Method Details

  + ### getFirstRow

    public int getFirstRow()

    Returns the first row that changed. HEADER\_ROW means the meta data,
    ie. names, types and order of the columns.

    Returns:
    :   an integer signifying the first row changed
  + ### getLastRow

    public int getLastRow()

    Returns the last row that changed.

    Returns:
    :   an integer signifying the last row changed
  + ### getColumn

    public int getColumn()

    Returns the column for the event. If the return
    value is ALL\_COLUMNS; it means every column in the specified
    rows changed.

    Returns:
    :   an integer signifying which column is affected by this event
  + ### getType

    public int getType()

    Returns the type of event - one of: INSERT, UPDATE and DELETE.

    Returns:
    :   the type of change to a table model, an `INSERT` or
        `DELETE`  of row(s) or column(s) or `UPDATE`
        to data