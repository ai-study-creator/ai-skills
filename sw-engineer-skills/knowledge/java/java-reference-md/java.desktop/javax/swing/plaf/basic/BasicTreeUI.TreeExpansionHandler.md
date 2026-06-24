Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.TreeExpansionHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicTreeUI.TreeExpansionHandler

All Implemented Interfaces:
:   `EventListener`, `TreeExpansionListener`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.TreeExpansionHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [TreeExpansionListener](../../event/TreeExpansionListener.md "interface in javax.swing.event")

Updates the TreeState in response to nodes expanding/collapsing.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TreeExpansionHandler()`

  Constructs a `TreeExpansionHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `treeCollapsed(TreeExpansionEvent event)`

  Called whenever an item in the tree has been collapsed.

  `void`

  `treeExpanded(TreeExpansionEvent event)`

  Called whenever an item in the tree has been expanded.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TreeExpansionHandler

    public TreeExpansionHandler()

    Constructs a `TreeExpansionHandler`.
* ## Method Details

  + ### treeExpanded

    public void treeExpanded([TreeExpansionEvent](../../event/TreeExpansionEvent.md "class in javax.swing.event") event)

    Called whenever an item in the tree has been expanded.

    Specified by:
    :   `treeExpanded` in interface `TreeExpansionListener`

    Parameters:
    :   `event` - a `TreeExpansionEvent` containing a `TreePath`
        object for the expanded node
  + ### treeCollapsed

    public void treeCollapsed([TreeExpansionEvent](../../event/TreeExpansionEvent.md "class in javax.swing.event") event)

    Called whenever an item in the tree has been collapsed.

    Specified by:
    :   `treeCollapsed` in interface `TreeExpansionListener`

    Parameters:
    :   `event` - a `TreeExpansionEvent` containing a `TreePath`
        object for the collapsed node