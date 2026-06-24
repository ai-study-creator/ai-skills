Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface ListSelectionListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BasicComboPopup.ListSelectionHandler`, `BasicFileChooserUI.SelectionListener`, `BasicListUI.ListSelectionHandler`, `DefaultTableColumnModel`, `JList.AccessibleJList`, `JTable`, `JTable.AccessibleJTable`

---

public interface ListSelectionListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener that's notified when a lists selection value
changes.

See Also:
:   * [`ListSelectionModel`](../ListSelectionModel.md "interface in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `valueChanged(ListSelectionEvent e)`

  Called whenever the value of the selection changes.

* ## Method Details

  + ### valueChanged

    void valueChanged([ListSelectionEvent](ListSelectionEvent.md "class in javax.swing.event") e)

    Called whenever the value of the selection changes.

    Parameters:
    :   `e` - the event that characterizes the change.