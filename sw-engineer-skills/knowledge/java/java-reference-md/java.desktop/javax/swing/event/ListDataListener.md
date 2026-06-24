Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface ListDataListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BasicComboBoxUI.ListDataHandler`, `BasicComboPopup.ListDataHandler`, `BasicListUI.ListDataHandler`, `JComboBox`, `JList.AccessibleJList`

---

public interface ListDataListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

ListDataListener

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `contentsChanged(ListDataEvent e)`

  Sent when the contents of the list has changed in a way
  that's too complex to characterize with the previous
  methods.

  `void`

  `intervalAdded(ListDataEvent e)`

  Sent after the indices in the index0,index1
  interval have been inserted in the data model.

  `void`

  `intervalRemoved(ListDataEvent e)`

  Sent after the indices in the index0,index1 interval
  have been removed from the data model.

* ## Method Details

  + ### intervalAdded

    void intervalAdded([ListDataEvent](ListDataEvent.md "class in javax.swing.event") e)

    Sent after the indices in the index0,index1
    interval have been inserted in the data model.
    The new interval includes both index0 and index1.

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information
  + ### intervalRemoved

    void intervalRemoved([ListDataEvent](ListDataEvent.md "class in javax.swing.event") e)

    Sent after the indices in the index0,index1 interval
    have been removed from the data model. The interval
    includes both index0 and index1.

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information
  + ### contentsChanged

    void contentsChanged([ListDataEvent](ListDataEvent.md "class in javax.swing.event") e)

    Sent when the contents of the list has changed in a way
    that's too complex to characterize with the previous
    methods. For example, this is sent when an item has been
    replaced. Index0 and index1 bracket the change.

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information