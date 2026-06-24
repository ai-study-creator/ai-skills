Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Interface TableModel

All Known Implementing Classes:
:   `AbstractTableModel`, `DefaultTableModel`

---

public interface TableModel

The `TableModel` interface specifies the methods the
`JTable` will use to interrogate a tabular data model.

The `JTable` can be set up to display any data
model which implements the
`TableModel` interface with a couple of lines of code:

```
      TableModel myData = new MyTableModel();
      JTable table = new JTable(myData);
```

For further documentation, see [Creating a Table Model](https://docs.oracle.com/javase/tutorial/uiswing/components/table.html#data)
in *The Java Tutorial*.

See Also:
:   * [`JTable`](../JTable.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTableModelListener(TableModelListener l)`

  Adds a listener to the list that is notified each time a change
  to the data model occurs.

  `Class<?>`

  `getColumnClass(int columnIndex)`

  Returns the most specific superclass for all the cell values
  in the column.

  `int`

  `getColumnCount()`

  Returns the number of columns in the model.

  `String`

  `getColumnName(int columnIndex)`

  Returns the name of the column at `columnIndex`.

  `int`

  `getRowCount()`

  Returns the number of rows in the model.

  `Object`

  `getValueAt(int rowIndex,
  int columnIndex)`

  Returns the value for the cell at `columnIndex` and
  `rowIndex`.

  `boolean`

  `isCellEditable(int rowIndex,
  int columnIndex)`

  Returns true if the cell at `rowIndex` and
  `columnIndex`
  is editable.

  `void`

  `removeTableModelListener(TableModelListener l)`

  Removes a listener from the list that is notified each time a
  change to the data model occurs.

  `void`

  `setValueAt(Object aValue,
  int rowIndex,
  int columnIndex)`

  Sets the value in the cell at `columnIndex` and
  `rowIndex` to `aValue`.

* ## Method Details

  + ### getRowCount

    int getRowCount()

    Returns the number of rows in the model. A
    `JTable` uses this method to determine how many rows it
    should display. This method should be quick, as it
    is called frequently during rendering.

    Returns:
    :   the number of rows in the model

    See Also:
    :   - [`getColumnCount()`](#getColumnCount())
  + ### getColumnCount

    int getColumnCount()

    Returns the number of columns in the model. A
    `JTable` uses this method to determine how many columns it
    should create and display by default.

    Returns:
    :   the number of columns in the model

    See Also:
    :   - [`getRowCount()`](#getRowCount())
  + ### getColumnName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getColumnName(int columnIndex)

    Returns the name of the column at `columnIndex`. This is used
    to initialize the table's column header name. Note: this name does
    not need to be unique; two columns in a table can have the same name.

    Parameters:
    :   `columnIndex` - the index of the column

    Returns:
    :   the name of the column
  + ### getColumnClass

    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> getColumnClass(int columnIndex)

    Returns the most specific superclass for all the cell values
    in the column. This is used by the `JTable` to set up a
    default renderer and editor for the column.

    Parameters:
    :   `columnIndex` - the index of the column

    Returns:
    :   the common ancestor class of the object values in the model.
  + ### isCellEditable

    boolean isCellEditable(int rowIndex,
    int columnIndex)

    Returns true if the cell at `rowIndex` and
    `columnIndex`
    is editable. Otherwise, `setValueAt` on the cell will not
    change the value of that cell.

    Parameters:
    :   `rowIndex` - the row whose value to be queried
    :   `columnIndex` - the column whose value to be queried

    Returns:
    :   true if the cell is editable

    See Also:
    :   - [`setValueAt(java.lang.Object, int, int)`](#setValueAt(java.lang.Object,int,int))
  + ### getValueAt

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getValueAt(int rowIndex,
    int columnIndex)

    Returns the value for the cell at `columnIndex` and
    `rowIndex`.

    Parameters:
    :   `rowIndex` - the row whose value is to be queried
    :   `columnIndex` - the column whose value is to be queried

    Returns:
    :   the value Object at the specified cell
  + ### setValueAt

    void setValueAt([Object](../../../../java.base/java/lang/Object.md "class in java.lang") aValue,
    int rowIndex,
    int columnIndex)

    Sets the value in the cell at `columnIndex` and
    `rowIndex` to `aValue`.

    Parameters:
    :   `aValue` - the new value
    :   `rowIndex` - the row whose value is to be changed
    :   `columnIndex` - the column whose value is to be changed

    See Also:
    :   - [`getValueAt(int, int)`](#getValueAt(int,int))
        - [`isCellEditable(int, int)`](#isCellEditable(int,int))
  + ### addTableModelListener

    void addTableModelListener([TableModelListener](../event/TableModelListener.md "interface in javax.swing.event") l)

    Adds a listener to the list that is notified each time a change
    to the data model occurs.

    Parameters:
    :   `l` - the TableModelListener
  + ### removeTableModelListener

    void removeTableModelListener([TableModelListener](../event/TableModelListener.md "interface in javax.swing.event") l)

    Removes a listener from the list that is notified each time a
    change to the data model occurs.

    Parameters:
    :   `l` - the TableModelListener