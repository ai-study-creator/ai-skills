Module [java.desktop](../../../module-summary.md)

Package [javax.swing.tree](package-summary.md)

# Interface TreeCellRenderer

All Known Implementing Classes:
:   `DefaultTreeCellRenderer`

---

public interface TreeCellRenderer

Defines the requirements for an object that displays a tree node.
See [How to Use Trees](https://docs.oracle.com/javase/tutorial/uiswing/components/tree.html)
in *The Java Tutorial*
for an example of implementing a tree cell renderer
that displays custom icons.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Component`

  `getTreeCellRendererComponent(JTree tree,
  Object value,
  boolean selected,
  boolean expanded,
  boolean leaf,
  int row,
  boolean hasFocus)`

  Sets the value of the current tree cell to `value`.

* ## Method Details

  + ### getTreeCellRendererComponent

    [Component](../../../java/awt/Component.md "class in java.awt") getTreeCellRendererComponent([JTree](../JTree.md "class in javax.swing") tree,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value,
    boolean selected,
    boolean expanded,
    boolean leaf,
    int row,
    boolean hasFocus)

    Sets the value of the current tree cell to `value`.
    If `selected` is true, the cell will be drawn as if
    selected. If `expanded` is true the node is currently
    expanded and if `leaf` is true the node represents a
    leaf and if `hasFocus` is true the node currently has
    focus. `tree` is the `JTree` the receiver is being
    configured for. Returns the `Component` that the renderer
    uses to draw the value.

    The `TreeCellRenderer` is also responsible for rendering the
    the cell representing the tree's current DnD drop location if
    it has one. If this renderer cares about rendering
    the DnD drop location, it should query the tree directly to
    see if the given row represents the drop location:

    ```
         JTree.DropLocation dropLocation = tree.getDropLocation();
         if (dropLocation != null
                 && dropLocation.getChildIndex() == -1
                 && tree.getRowForPath(dropLocation.getPath()) == row) {

             // this row represents the current drop location
             // so render it specially, perhaps with a different color
         }
    ```

    Parameters:
    :   `tree` - the receiver is being configured for
    :   `value` - the value to render
    :   `selected` - whether node is selected
    :   `expanded` - whether node is expanded
    :   `leaf` - whether node is a lead node
    :   `row` - row index
    :   `hasFocus` - whether node has focus

    Returns:
    :   the `Component` that the renderer uses to draw the value