Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.CellEditorHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicTreeUI.CellEditorHandler

All Implemented Interfaces:
:   `EventListener`, `CellEditorListener`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.CellEditorHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [CellEditorListener](../../event/CellEditorListener.md "interface in javax.swing.event")

Listener responsible for getting cell editing events and updating
the tree accordingly.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CellEditorHandler()`

  Constructs a `CellEditorHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `editingCanceled(ChangeEvent e)`

  Messaged when editing has been canceled in the tree.

  `void`

  `editingStopped(ChangeEvent e)`

  Messaged when editing has stopped in the tree.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CellEditorHandler

    public CellEditorHandler()

    Constructs a `CellEditorHandler`.
* ## Method Details

  + ### editingStopped

    public void editingStopped([ChangeEvent](../../event/ChangeEvent.md "class in javax.swing.event") e)

    Messaged when editing has stopped in the tree.

    Specified by:
    :   `editingStopped` in interface `CellEditorListener`

    Parameters:
    :   `e` - the `ChangeEvent` containing the source of the event
  + ### editingCanceled

    public void editingCanceled([ChangeEvent](../../event/ChangeEvent.md "class in javax.swing.event") e)

    Messaged when editing has been canceled in the tree.

    Specified by:
    :   `editingCanceled` in interface `CellEditorListener`

    Parameters:
    :   `e` - the `ChangeEvent` containing the source of the event