Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTable.AccessibleJTable.AccessibleJTableModelChange

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JTable.AccessibleJTable.AccessibleJTableModelChange

All Implemented Interfaces:
:   `AccessibleTableModelChange`

Enclosing class:
:   `JTable.AccessibleJTable`

---

protected class JTable.AccessibleJTable.AccessibleJTableModelChange
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [AccessibleTableModelChange](../accessibility/AccessibleTableModelChange.md "interface in javax.accessibility")

Describes a change in the accessible table model.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `firstColumn`

  The first column

  `protected int`

  `firstRow`

  The first row

  `protected int`

  `lastColumn`

  The last column

  `protected int`

  `lastRow`

  The last row

  `protected int`

  `type`

  The type

  ### Fields inherited from interface javax.accessibility.[AccessibleTableModelChange](../accessibility/AccessibleTableModelChange.md "interface in javax.accessibility")

  `DELETE, INSERT, UPDATE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleJTableModelChange(int type,
  int firstRow,
  int lastRow,
  int firstColumn,
  int lastColumn)`

  Constructs an `AccessibleJTableModelChange`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getFirstColumn()`

  Returns the first column.

  `int`

  `getFirstRow()`

  Returns the first row.

  `int`

  `getLastColumn()`

  Returns the last column.

  `int`

  `getLastRow()`

  Returns the last row.

  `int`

  `getType()`

  Returns the type.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### type

    protected int type

    The type
  + ### firstRow

    protected int firstRow

    The first row
  + ### lastRow

    protected int lastRow

    The last row
  + ### firstColumn

    protected int firstColumn

    The first column
  + ### lastColumn

    protected int lastColumn

    The last column
* ## Constructor Details

  + ### AccessibleJTableModelChange

    protected AccessibleJTableModelChange(int type,
    int firstRow,
    int lastRow,
    int firstColumn,
    int lastColumn)

    Constructs an `AccessibleJTableModelChange`.

    Parameters:
    :   `type` - the type
    :   `firstRow` - the first row
    :   `lastRow` - the last row
    :   `firstColumn` - the first column
    :   `lastColumn` - the last column
* ## Method Details

  + ### getType

    public int getType()

    Returns the type.

    Specified by:
    :   `getType` in interface `AccessibleTableModelChange`

    Returns:
    :   the type

    See Also:
    :   - [`AccessibleTableModelChange.INSERT`](../accessibility/AccessibleTableModelChange.md#INSERT)
        - [`AccessibleTableModelChange.UPDATE`](../accessibility/AccessibleTableModelChange.md#UPDATE)
        - [`AccessibleTableModelChange.DELETE`](../accessibility/AccessibleTableModelChange.md#DELETE)
  + ### getFirstRow

    public int getFirstRow()

    Returns the first row.

    Specified by:
    :   `getFirstRow` in interface `AccessibleTableModelChange`

    Returns:
    :   the first row
  + ### getLastRow

    public int getLastRow()

    Returns the last row.

    Specified by:
    :   `getLastRow` in interface `AccessibleTableModelChange`

    Returns:
    :   the last row
  + ### getFirstColumn

    public int getFirstColumn()

    Returns the first column.

    Specified by:
    :   `getFirstColumn` in interface `AccessibleTableModelChange`

    Returns:
    :   the first column
  + ### getLastColumn

    public int getLastColumn()

    Returns the last column.

    Specified by:
    :   `getLastColumn` in interface `AccessibleTableModelChange`

    Returns:
    :   the last column