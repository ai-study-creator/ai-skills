Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface TreeWillExpandListener

All Superinterfaces:
:   `EventListener`

---

public interface TreeWillExpandListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener that's notified when a tree expands or collapses
a node.
For further information and examples see
[How to Write a Tree-Will-Expand Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/treewillexpandlistener.html),
a section in *The Java Tutorial.*

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `treeWillCollapse(TreeExpansionEvent event)`

  Invoked whenever a node in the tree is about to be collapsed.

  `void`

  `treeWillExpand(TreeExpansionEvent event)`

  Invoked whenever a node in the tree is about to be expanded.

* ## Method Details

  + ### treeWillExpand

    void treeWillExpand([TreeExpansionEvent](TreeExpansionEvent.md "class in javax.swing.event") event)
    throws [ExpandVetoException](../tree/ExpandVetoException.md "class in javax.swing.tree")

    Invoked whenever a node in the tree is about to be expanded.

    Parameters:
    :   `event` - a `TreeExpansionEvent` containing a `TreePath`
        object for the node

    Throws:
    :   `ExpandVetoException` - to signify expansion has been canceled
  + ### treeWillCollapse

    void treeWillCollapse([TreeExpansionEvent](TreeExpansionEvent.md "class in javax.swing.event") event)
    throws [ExpandVetoException](../tree/ExpandVetoException.md "class in javax.swing.tree")

    Invoked whenever a node in the tree is about to be collapsed.

    Parameters:
    :   `event` - a `TreeExpansionEvent` containing a `TreePath`
        object for the node

    Throws:
    :   `ExpandVetoException` - to signify collapse has been canceled