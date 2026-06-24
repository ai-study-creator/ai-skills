Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface TreeExpansionListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BasicTreeUI.TreeExpansionHandler`, `JTree.AccessibleJTree`

---

public interface TreeExpansionListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener that's notified when a tree expands or collapses
a node.
For further documentation and examples see
[How to Write a Tree Expansion Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/treeexpansionlistener.html),
a section in *The Java Tutorial.*

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `treeCollapsed(TreeExpansionEvent event)`

  Called whenever an item in the tree has been collapsed.

  `void`

  `treeExpanded(TreeExpansionEvent event)`

  Called whenever an item in the tree has been expanded.

* ## Method Details

  + ### treeExpanded

    void treeExpanded([TreeExpansionEvent](TreeExpansionEvent.md "class in javax.swing.event") event)

    Called whenever an item in the tree has been expanded.

    Parameters:
    :   `event` - a `TreeExpansionEvent` containing a `TreePath`
        object for the expanded node
  + ### treeCollapsed

    void treeCollapsed([TreeExpansionEvent](TreeExpansionEvent.md "class in javax.swing.event") event)

    Called whenever an item in the tree has been collapsed.

    Parameters:
    :   `event` - a `TreeExpansionEvent` containing a `TreePath`
        object for the collapsed node