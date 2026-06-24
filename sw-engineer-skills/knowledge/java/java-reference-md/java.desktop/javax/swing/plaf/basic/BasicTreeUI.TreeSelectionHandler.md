Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.TreeSelectionHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicTreeUI.TreeSelectionHandler

All Implemented Interfaces:
:   `EventListener`, `TreeSelectionListener`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.TreeSelectionHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [TreeSelectionListener](../../event/TreeSelectionListener.md "interface in javax.swing.event")

Listens for changes in the selection model and updates the display
accordingly.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TreeSelectionHandler()`

  Constructs a `TreeSelectionHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `valueChanged(TreeSelectionEvent event)`

  Messaged when the selection changes in the tree we're displaying
  for.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TreeSelectionHandler

    public TreeSelectionHandler()

    Constructs a `TreeSelectionHandler`.
* ## Method Details

  + ### valueChanged

    public void valueChanged([TreeSelectionEvent](../../event/TreeSelectionEvent.md "class in javax.swing.event") event)

    Messaged when the selection changes in the tree we're displaying
    for. Stops editing, messages super and displays the changed paths.

    Specified by:
    :   `valueChanged` in interface `TreeSelectionListener`

    Parameters:
    :   `event` - the event that characterizes the change.