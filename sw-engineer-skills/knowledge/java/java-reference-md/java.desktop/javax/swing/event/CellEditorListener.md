Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface CellEditorListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BasicTreeUI.CellEditorHandler`, `JTable`, `JTable.AccessibleJTable`

---

public interface CellEditorListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

CellEditorListener defines the interface for an object that listens
to changes in a CellEditor

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `editingCanceled(ChangeEvent e)`

  This tells the listeners the editor has canceled editing

  `void`

  `editingStopped(ChangeEvent e)`

  This tells the listeners the editor has ended editing

* ## Method Details

  + ### editingStopped

    void editingStopped([ChangeEvent](ChangeEvent.md "class in javax.swing.event") e)

    This tells the listeners the editor has ended editing

    Parameters:
    :   `e` - the `ChangeEvent` containing the source of the event
  + ### editingCanceled

    void editingCanceled([ChangeEvent](ChangeEvent.md "class in javax.swing.event") e)

    This tells the listeners the editor has canceled editing

    Parameters:
    :   `e` - the `ChangeEvent` containing the source of the event