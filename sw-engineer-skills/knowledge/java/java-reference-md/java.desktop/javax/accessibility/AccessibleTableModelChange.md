Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleTableModelChange

All Known Implementing Classes:
:   `JTable.AccessibleJTable.AccessibleJTableModelChange`

---

public interface AccessibleTableModelChange

The `AccessibleTableModelChange` interface describes a change to the
table model. The attributes of the model change can be obtained by the
following methods:

* `public int getType();`* `public int getFirstRow();`* `public int getLastRow();`* `public int getFirstColumn();`* `public int getLastColumn();`

The model change type returned by getType() will be one of:

* `INSERT` - one or more rows and/or columns have been inserted* `UPDATE` - some of the table data has changed* `DELETE` - one or more rows and/or columns have been deleted

The affected area of the table can be determined by the other four methods
which specify ranges of rows and columns

Since:
:   1.3

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.getAccessibleTable()`](AccessibleContext.md#getAccessibleTable())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DELETE`

  Identifies the deletion of rows and/or columns.

  `static final int`

  `INSERT`

  Identifies the insertion of new rows and/or columns.

  `static final int`

  `UPDATE`

  Identifies a change to existing data.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getFirstColumn()`

  Returns the first column that changed.

  `int`

  `getFirstRow()`

  Returns the first row that changed.

  `int`

  `getLastColumn()`

  Returns the last column that changed.

  `int`

  `getLastRow()`

  Returns the last row that changed.

  `int`

  `getType()`

  Returns the type of event.

* ## Field Details

  + ### INSERT

    static final int INSERT

    Identifies the insertion of new rows and/or columns.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleTableModelChange.INSERT)
  + ### UPDATE

    static final int UPDATE

    Identifies a change to existing data.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleTableModelChange.UPDATE)
  + ### DELETE

    static final int DELETE

    Identifies the deletion of rows and/or columns.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleTableModelChange.DELETE)
* ## Method Details

  + ### getType

    int getType()

    Returns the type of event.

    Returns:
    :   the type of event

    See Also:
    :   - [`INSERT`](#INSERT)
        - [`UPDATE`](#UPDATE)
        - [`DELETE`](#DELETE)
  + ### getFirstRow

    int getFirstRow()

    Returns the first row that changed.

    Returns:
    :   the first row that changed
  + ### getLastRow

    int getLastRow()

    Returns the last row that changed.

    Returns:
    :   the last row that changed
  + ### getFirstColumn

    int getFirstColumn()

    Returns the first column that changed.

    Returns:
    :   the first column that changed
  + ### getLastColumn

    int getLastColumn()

    Returns the last column that changed.

    Returns:
    :   the last column that changed