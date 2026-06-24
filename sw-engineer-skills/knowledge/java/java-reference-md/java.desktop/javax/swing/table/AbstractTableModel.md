Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Class AbstractTableModel

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.table.AbstractTableModel

All Implemented Interfaces:
:   `Serializable`, `TableModel`

Direct Known Subclasses:
:   `DefaultTableModel`

---

public abstract class AbstractTableModel
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [TableModel](TableModel.md "interface in javax.swing.table"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This abstract class provides default implementations for most of
the methods in the `TableModel` interface. It takes care of
the management of listeners and provides some conveniences for generating
`TableModelEvents` and dispatching them to the listeners.
To create a concrete `TableModel` as a subclass of
`AbstractTableModel` you need only provide implementations
for the following three methods:

```
  public int getRowCount();
  public int getColumnCount();
  public Object getValueAt(int row, int column);
```

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected EventListenerList`

  `listenerList`

  List of listeners
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractTableModel()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTableModelListener(TableModelListener l)`

  Adds a listener to the list that's notified each time a change
  to the data model occurs.

  `int`

  `findColumn(String columnName)`

  Returns a column given its name.

  `void`

  `fireTableCellUpdated(int row,
  int column)`

  Notifies all listeners that the value of the cell at
  `[row, column]` has been updated.

  `void`

  `fireTableChanged(TableModelEvent e)`

  Forwards the given notification event to all
  `TableModelListeners` that registered
  themselves as listeners for this table model.

  `void`

  `fireTableDataChanged()`

  Notifies all listeners that all cell values in the table's
  rows may have changed.

  `void`

  `fireTableRowsDeleted(int firstRow,
  int lastRow)`

  Notifies all listeners that rows in the range
  `[firstRow, lastRow]`, inclusive, have been deleted.

  `void`

  `fireTableRowsInserted(int firstRow,
  int lastRow)`

  Notifies all listeners that rows in the range
  `[firstRow, lastRow]`, inclusive, have been inserted.

  `void`

  `fireTableRowsUpdated(int firstRow,
  int lastRow)`

  Notifies all listeners that rows in the range
  `[firstRow, lastRow]`, inclusive, have been updated.

  `void`

  `fireTableStructureChanged()`

  Notifies all listeners that the table's structure has changed.

  `Class<?>`

  `getColumnClass(int columnIndex)`

  Returns `Object.class` regardless of `columnIndex`.

  `String`

  `getColumnName(int column)`

  Returns a default name for the column using spreadsheet conventions:
  A, B, C, ...

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered
  as `FooListener`s
  upon this `AbstractTableModel`.

  `TableModelListener[]`

  `getTableModelListeners()`

  Returns an array of all the table model listeners
  registered on this model.

  `boolean`

  `isCellEditable(int rowIndex,
  int columnIndex)`

  Returns false.

  `void`

  `removeTableModelListener(TableModelListener l)`

  Removes a listener from the list that's notified each time a
  change to the data model occurs.

  `void`

  `setValueAt(Object aValue,
  int rowIndex,
  int columnIndex)`

  This empty implementation is provided so users don't have to implement
  this method if their data model is not editable.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.table.[TableModel](TableModel.md "interface in javax.swing.table")

  `getColumnCount, getRowCount, getValueAt`

* ## Field Details

  + ### listenerList

    protected [EventListenerList](../event/EventListenerList.md "class in javax.swing.event") listenerList

    List of listeners
* ## Constructor Details

  + ### AbstractTableModel

    protected AbstractTableModel()

    Constructor for subclasses to call.
* ## Method Details

  + ### getColumnName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getColumnName(int column)

    Returns a default name for the column using spreadsheet conventions:
    A, B, C, ... Z, AA, AB, etc. If `column` cannot be found,
    returns an empty string.

    Specified by:
    :   `getColumnName` in interface `TableModel`

    Parameters:
    :   `column` - the column being queried

    Returns:
    :   a string containing the default name of `column`
  + ### findColumn

    public int findColumn([String](../../../../java.base/java/lang/String.md "class in java.lang") columnName)

    Returns a column given its name.
    Implementation is naive so this should be overridden if
    this method is to be called often. This method is not
    in the `TableModel` interface and is not used by the
    `JTable`.

    Parameters:
    :   `columnName` - string containing name of column to be located

    Returns:
    :   the column with `columnName`, or -1 if not found
  + ### getColumnClass

    public [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getColumnClass(int columnIndex)

    Returns `Object.class` regardless of `columnIndex`.

    Specified by:
    :   `getColumnClass` in interface `TableModel`

    Parameters:
    :   `columnIndex` - the column being queried

    Returns:
    :   the Object.class
  + ### isCellEditable

    public boolean isCellEditable(int rowIndex,
    int columnIndex)

    Returns false. This is the default implementation for all cells.

    Specified by:
    :   `isCellEditable` in interface `TableModel`

    Parameters:
    :   `rowIndex` - the row being queried
    :   `columnIndex` - the column being queried

    Returns:
    :   false

    See Also:
    :   - [`TableModel.setValueAt(java.lang.Object, int, int)`](TableModel.md#setValueAt(java.lang.Object,int,int))
  + ### setValueAt

    public void setValueAt([Object](../../../../java.base/java/lang/Object.md "class in java.lang") aValue,
    int rowIndex,
    int columnIndex)

    This empty implementation is provided so users don't have to implement
    this method if their data model is not editable.

    Specified by:
    :   `setValueAt` in interface `TableModel`

    Parameters:
    :   `aValue` - value to assign to cell
    :   `rowIndex` - row of cell
    :   `columnIndex` - column of cell

    See Also:
    :   - [`TableModel.getValueAt(int, int)`](TableModel.md#getValueAt(int,int))
        - [`TableModel.isCellEditable(int, int)`](TableModel.md#isCellEditable(int,int))
  + ### addTableModelListener

    public void addTableModelListener([TableModelListener](../event/TableModelListener.md "interface in javax.swing.event") l)

    Adds a listener to the list that's notified each time a change
    to the data model occurs.

    Specified by:
    :   `addTableModelListener` in interface `TableModel`

    Parameters:
    :   `l` - the TableModelListener
  + ### removeTableModelListener

    public void removeTableModelListener([TableModelListener](../event/TableModelListener.md "interface in javax.swing.event") l)

    Removes a listener from the list that's notified each time a
    change to the data model occurs.

    Specified by:
    :   `removeTableModelListener` in interface `TableModel`

    Parameters:
    :   `l` - the TableModelListener
  + ### getTableModelListeners

    public [TableModelListener](../event/TableModelListener.md "interface in javax.swing.event")[] getTableModelListeners()

    Returns an array of all the table model listeners
    registered on this model.

    Returns:
    :   all of this model's `TableModelListener`s
        or an empty
        array if no table model listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addTableModelListener(javax.swing.event.TableModelListener)`](#addTableModelListener(javax.swing.event.TableModelListener))
        - [`removeTableModelListener(javax.swing.event.TableModelListener)`](#removeTableModelListener(javax.swing.event.TableModelListener))
  + ### fireTableDataChanged

    public void fireTableDataChanged()

    Notifies all listeners that all cell values in the table's
    rows may have changed. The number of rows may also have changed
    and the `JTable` should redraw the
    table from scratch. The structure of the table (as in the order of the
    columns) is assumed to be the same.

    See Also:
    :   - [`TableModelEvent`](../event/TableModelEvent.md "class in javax.swing.event")
        - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
        - [`JTable.tableChanged(TableModelEvent)`](../JTable.md#tableChanged(javax.swing.event.TableModelEvent))
  + ### fireTableStructureChanged

    public void fireTableStructureChanged()

    Notifies all listeners that the table's structure has changed.
    The number of columns in the table, and the names and types of
    the new columns may be different from the previous state.
    If the `JTable` receives this event and its
    `autoCreateColumnsFromModel`
    flag is set it discards any table columns that it had and reallocates
    default columns in the order they appear in the model. This is the
    same as calling `setModel(TableModel)` on the
    `JTable`.

    See Also:
    :   - [`TableModelEvent`](../event/TableModelEvent.md "class in javax.swing.event")
        - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### fireTableRowsInserted

    public void fireTableRowsInserted(int firstRow,
    int lastRow)

    Notifies all listeners that rows in the range
    `[firstRow, lastRow]`, inclusive, have been inserted.

    Parameters:
    :   `firstRow` - the first row
    :   `lastRow` - the last row

    See Also:
    :   - [`TableModelEvent`](../event/TableModelEvent.md "class in javax.swing.event")
        - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### fireTableRowsUpdated

    public void fireTableRowsUpdated(int firstRow,
    int lastRow)

    Notifies all listeners that rows in the range
    `[firstRow, lastRow]`, inclusive, have been updated.

    Parameters:
    :   `firstRow` - the first row
    :   `lastRow` - the last row

    See Also:
    :   - [`TableModelEvent`](../event/TableModelEvent.md "class in javax.swing.event")
        - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### fireTableRowsDeleted

    public void fireTableRowsDeleted(int firstRow,
    int lastRow)

    Notifies all listeners that rows in the range
    `[firstRow, lastRow]`, inclusive, have been deleted.

    Parameters:
    :   `firstRow` - the first row
    :   `lastRow` - the last row

    See Also:
    :   - [`TableModelEvent`](../event/TableModelEvent.md "class in javax.swing.event")
        - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### fireTableCellUpdated

    public void fireTableCellUpdated(int row,
    int column)

    Notifies all listeners that the value of the cell at
    `[row, column]` has been updated.

    Parameters:
    :   `row` - row of cell which has been updated
    :   `column` - column of cell which has been updated

    See Also:
    :   - [`TableModelEvent`](../event/TableModelEvent.md "class in javax.swing.event")
        - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### fireTableChanged

    public void fireTableChanged([TableModelEvent](../event/TableModelEvent.md "class in javax.swing.event") e)

    Forwards the given notification event to all
    `TableModelListeners` that registered
    themselves as listeners for this table model.

    Parameters:
    :   `e` - the event to be forwarded

    See Also:
    :   - [`addTableModelListener(javax.swing.event.TableModelListener)`](#addTableModelListener(javax.swing.event.TableModelListener))
        - [`TableModelEvent`](../event/TableModelEvent.md "class in javax.swing.event")
        - [`EventListenerList`](../event/EventListenerList.md "class in javax.swing.event")
  + ### getListeners

    public <T extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered
    as `FooListener`s
    upon this `AbstractTableModel`.
    `FooListener`s are registered using the
    `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal,
    such as
    `FooListener.class`.
    For example, you can query a
    model `m`
    for its table model listeners with the following code:

    ```
    TableModelListener[] tmls = (TableModelListener[])(m.getListeners(TableModelListener.class));
    ```

    If no such listeners exist, this method returns an empty array.

    Type Parameters:
    :   `T` - the listener type

    Parameters:
    :   `listenerType` - the type of listeners requested

    Returns:
    :   an array of all objects registered as
        `FooListener`s on this component,
        or an empty array if no such
        listeners have been added

    Throws:
    :   `ClassCastException` - if `listenerType`
        doesn't specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.3

    See Also:
    :   - [`getTableModelListeners()`](#getTableModelListeners())