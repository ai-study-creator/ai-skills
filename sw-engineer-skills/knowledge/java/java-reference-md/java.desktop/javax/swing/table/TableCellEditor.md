Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Interface TableCellEditor

All Superinterfaces:
:   `CellEditor`

All Known Implementing Classes:
:   `DefaultCellEditor`

---

public interface TableCellEditor
extends [CellEditor](../CellEditor.md "interface in javax.swing")

This interface must be implemented to provide an editor of cell values
for a `JTable`.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getTableCellEditorComponent(JTable table,
  Object value,
  boolean isSelected,
  int row,
  int column)`

  Sets an initial `value` for the editor.

  ### Methods inherited from interface javax.swing.[CellEditor](../CellEditor.md "interface in javax.swing")

  `addCellEditorListener, cancelCellEditing, getCellEditorValue, isCellEditable, removeCellEditorListener, shouldSelectCell, stopCellEditing`

* ## Method Details

  + ### getTableCellEditorComponent

    [Component](../../../java/awt/Component.md "class in java.awt") getTableCellEditorComponent([JTable](../JTable.md "class in javax.swing") table,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value,
    boolean isSelected,
    int row,
    int column)

    Sets an initial `value` for the editor. This will cause
    the editor to `stopEditing` and lose any partially
    edited value if the editor is editing when this method is called.

    Returns the component that should be added to the client's
    `Component` hierarchy. Once installed in the client's
    hierarchy this component will then be able to draw and receive
    user input.

    Parameters:
    :   `table` - the `JTable` that is asking the
        editor to edit; can be `null`
    :   `value` - the value of the cell to be edited; it is
        up to the specific editor to interpret
        and draw the value. For example, if value is
        the string "true", it could be rendered as a
        string or it could be rendered as a check
        box that is checked. `null`
        is a valid value
    :   `isSelected` - true if the cell is to be rendered with
        highlighting
    :   `row` - the row of the cell being edited
    :   `column` - the column of the cell being edited

    Returns:
    :   the component for editing