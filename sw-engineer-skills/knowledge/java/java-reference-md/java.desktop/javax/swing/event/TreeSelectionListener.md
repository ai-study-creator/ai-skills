Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface TreeSelectionListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BasicTreeUI.TreeSelectionHandler`, `DefaultTreeCellEditor`, `JTree.AccessibleJTree`, `JTree.TreeSelectionRedirector`

---

public interface TreeSelectionListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener that's notified when the selection in a TreeSelectionModel
changes.
For more information and examples see
[How to Write a Tree Selection Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/treeselectionlistener.html),
a section in *The Java Tutorial.*

See Also:
:   * [`TreeSelectionModel`](../tree/TreeSelectionModel.md "interface in javax.swing.tree")
    * [`JTree`](../JTree.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `valueChanged(TreeSelectionEvent e)`

  Called whenever the value of the selection changes.

* ## Method Details

  + ### valueChanged

    void valueChanged([TreeSelectionEvent](TreeSelectionEvent.md "class in javax.swing.event") e)

    Called whenever the value of the selection changes.

    Parameters:
    :   `e` - the event that characterizes the change.