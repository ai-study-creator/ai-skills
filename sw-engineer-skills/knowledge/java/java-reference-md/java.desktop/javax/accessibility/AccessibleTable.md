Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleTable

All Known Subinterfaces:
:   `AccessibleExtendedTable`

All Known Implementing Classes:
:   `JTable.AccessibleJTable`

---

public interface AccessibleTable

Class `AccessibleTable` describes a user-interface component that
presents data in a two-dimensional table format.

Since:
:   1.3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Accessible`

  `getAccessibleAt(int r,
  int c)`

  Returns the `Accessible` at a specified row and column in the
  table.

  `Accessible`

  `getAccessibleCaption()`

  Returns the caption for the table.

  `int`

  `getAccessibleColumnCount()`

  Returns the number of columns in the table.

  `Accessible`

  `getAccessibleColumnDescription(int c)`

  Returns the description text of the specified column in the table.

  `int`

  `getAccessibleColumnExtentAt(int r,
  int c)`

  Returns the number of columns occupied by the `Accessible` at a
  specified row and column in the table.

  `AccessibleTable`

  `getAccessibleColumnHeader()`

  Returns the column headers as an `AccessibleTable`.

  `int`

  `getAccessibleRowCount()`

  Returns the number of rows in the table.

  `Accessible`

  `getAccessibleRowDescription(int r)`

  Returns the description of the specified row in the table.

  `int`

  `getAccessibleRowExtentAt(int r,
  int c)`

  Returns the number of rows occupied by the `Accessible` at a
  specified row and column in the table.

  `AccessibleTable`

  `getAccessibleRowHeader()`

  Returns the row headers as an `AccessibleTable`.

  `Accessible`

  `getAccessibleSummary()`

  Returns the summary description of the table.

  `int[]`

  `getSelectedAccessibleColumns()`

  Returns the selected columns in a table.

  `int[]`

  `getSelectedAccessibleRows()`

  Returns the selected rows in a table.

  `boolean`

  `isAccessibleColumnSelected(int c)`

  Returns a boolean value indicating whether the specified column is
  selected.

  `boolean`

  `isAccessibleRowSelected(int r)`

  Returns a boolean value indicating whether the specified row is selected.

  `boolean`

  `isAccessibleSelected(int r,
  int c)`

  Returns a boolean value indicating whether the accessible at a specified
  row and column is selected.

  `void`

  `setAccessibleCaption(Accessible a)`

  Sets the caption for the table.

  `void`

  `setAccessibleColumnDescription(int c,
  Accessible a)`

  Sets the description text of the specified column in the table.

  `void`

  `setAccessibleColumnHeader(AccessibleTable table)`

  Sets the column headers.

  `void`

  `setAccessibleRowDescription(int r,
  Accessible a)`

  Sets the description text of the specified row of the table.

  `void`

  `setAccessibleRowHeader(AccessibleTable table)`

  Sets the row headers.

  `void`

  `setAccessibleSummary(Accessible a)`

  Sets the summary description of the table.

* ## Method Details

  + ### getAccessibleCaption

    [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleCaption()

    Returns the caption for the table.

    Returns:
    :   the caption for the table
  + ### setAccessibleCaption

    void setAccessibleCaption([Accessible](Accessible.md "interface in javax.accessibility") a)

    Sets the caption for the table.

    Parameters:
    :   `a` - the caption for the table
  + ### getAccessibleSummary

    [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleSummary()

    Returns the summary description of the table.

    Returns:
    :   the summary description of the table
  + ### setAccessibleSummary

    void setAccessibleSummary([Accessible](Accessible.md "interface in javax.accessibility") a)

    Sets the summary description of the table.

    Parameters:
    :   `a` - the summary description of the table
  + ### getAccessibleRowCount

    int getAccessibleRowCount()

    Returns the number of rows in the table.

    Returns:
    :   the number of rows in the table
  + ### getAccessibleColumnCount

    int getAccessibleColumnCount()

    Returns the number of columns in the table.

    Returns:
    :   the number of columns in the table
  + ### getAccessibleAt

    [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleAt(int r,
    int c)

    Returns the `Accessible` at a specified row and column in the
    table.

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the `Accessible` at the specified row and column
  + ### getAccessibleRowExtentAt

    int getAccessibleRowExtentAt(int r,
    int c)

    Returns the number of rows occupied by the `Accessible` at a
    specified row and column in the table.

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the number of rows occupied by the `Accessible` at a given
        specified (row, column)
  + ### getAccessibleColumnExtentAt

    int getAccessibleColumnExtentAt(int r,
    int c)

    Returns the number of columns occupied by the `Accessible` at a
    specified row and column in the table.

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the number of columns occupied by the `Accessible` at a
        given specified row and column
  + ### getAccessibleRowHeader

    [AccessibleTable](AccessibleTable.md "interface in javax.accessibility") getAccessibleRowHeader()

    Returns the row headers as an `AccessibleTable`.

    Returns:
    :   an `AccessibleTable` representing the row headers
  + ### setAccessibleRowHeader

    void setAccessibleRowHeader([AccessibleTable](AccessibleTable.md "interface in javax.accessibility") table)

    Sets the row headers.

    Parameters:
    :   `table` - an `AccessibleTable` representing the row headers
  + ### getAccessibleColumnHeader

    [AccessibleTable](AccessibleTable.md "interface in javax.accessibility") getAccessibleColumnHeader()

    Returns the column headers as an `AccessibleTable`.

    Returns:
    :   an `AccessibleTable` representing the column headers
  + ### setAccessibleColumnHeader

    void setAccessibleColumnHeader([AccessibleTable](AccessibleTable.md "interface in javax.accessibility") table)

    Sets the column headers.

    Parameters:
    :   `table` - an `AccessibleTable` representing the column headers
  + ### getAccessibleRowDescription

    [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleRowDescription(int r)

    Returns the description of the specified row in the table.

    Parameters:
    :   `r` - zero-based row of the table

    Returns:
    :   the description of the row
  + ### setAccessibleRowDescription

    void setAccessibleRowDescription(int r,
    [Accessible](Accessible.md "interface in javax.accessibility") a)

    Sets the description text of the specified row of the table.

    Parameters:
    :   `r` - zero-based row of the table
    :   `a` - the description of the row
  + ### getAccessibleColumnDescription

    [Accessible](Accessible.md "interface in javax.accessibility") getAccessibleColumnDescription(int c)

    Returns the description text of the specified column in the table.

    Parameters:
    :   `c` - zero-based column of the table

    Returns:
    :   the text description of the column
  + ### setAccessibleColumnDescription

    void setAccessibleColumnDescription(int c,
    [Accessible](Accessible.md "interface in javax.accessibility") a)

    Sets the description text of the specified column in the table.

    Parameters:
    :   `c` - zero-based column of the table
    :   `a` - the text description of the column
  + ### isAccessibleSelected

    boolean isAccessibleSelected(int r,
    int c)

    Returns a boolean value indicating whether the accessible at a specified
    row and column is selected.

    Parameters:
    :   `r` - zero-based row of the table
    :   `c` - zero-based column of the table

    Returns:
    :   the boolean value `true` if the accessible at the row and
        column is selected. Otherwise, the boolean value `false`
  + ### isAccessibleRowSelected

    boolean isAccessibleRowSelected(int r)

    Returns a boolean value indicating whether the specified row is selected.

    Parameters:
    :   `r` - zero-based row of the table

    Returns:
    :   the boolean value `true` if the specified row is selected.
        Otherwise, `false`.
  + ### isAccessibleColumnSelected

    boolean isAccessibleColumnSelected(int c)

    Returns a boolean value indicating whether the specified column is
    selected.

    Parameters:
    :   `c` - zero-based column of the table

    Returns:
    :   the boolean value `true` if the specified column is
        selected. Otherwise, `false`.
  + ### getSelectedAccessibleRows

    int[] getSelectedAccessibleRows()

    Returns the selected rows in a table.

    Returns:
    :   an array of selected rows where each element is a zero-based row
        of the table
  + ### getSelectedAccessibleColumns

    int[] getSelectedAccessibleColumns()

    Returns the selected columns in a table.

    Returns:
    :   an array of selected columns where each element is a zero-based
        column of the table