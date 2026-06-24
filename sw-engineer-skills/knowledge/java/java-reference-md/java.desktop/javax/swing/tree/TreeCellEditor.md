Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Interface TreeCellEditor

All Superinterfaces:
:   `CellEditor`

All Known Implementing Classes:
:   `DefaultCellEditor`, `DefaultTreeCellEditor`

---

public interface TreeCellEditor
extends [CellEditor](../CellEditor.md "interface in javax.swing")

Adds to CellEditor the extensions necessary to configure an editor
in a tree.

See Also:
:   * [`JTree`](../JTree.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getTreeCellEditorComponent(JTree tree,
  Object value,
  boolean isSelected,
  boolean expanded,
  boolean leaf,
  int row)`

  Sets an initial *value* for the editor.

  ### Methods inherited from interface javax.swing.[CellEditor](../CellEditor.md "interface in javax.swing")

  `addCellEditorListener, cancelCellEditing, getCellEditorValue, isCellEditable, removeCellEditorListener, shouldSelectCell, stopCellEditing`

* ## Method Details

  + ### getTreeCellEditorComponent

    [Component](../../../java/awt/Component.md "class in java.awt") getTreeCellEditorComponent([JTree](../JTree.md "class in javax.swing") tree,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value,
    boolean isSelected,
    boolean expanded,
    boolean leaf,
    int row)

    Sets an initial *value* for the editor. This will cause
    the editor to stopEditing and lose any partially edited value
    if the editor is editing when this method is called.

    Returns the component that should be added to the client's
    Component hierarchy. Once installed in the client's hierarchy
    this component will then be able to draw and receive user input.

    Parameters:
    :   `tree` - the JTree that is asking the editor to edit;
        this parameter can be null
    :   `value` - the value of the cell to be edited
    :   `isSelected` - true if the cell is to be rendered with
        selection highlighting
    :   `expanded` - true if the node is expanded
    :   `leaf` - true if the node is a leaf node
    :   `row` - the row index of the node being edited

    Returns:
    :   the component for editing