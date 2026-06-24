Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboPopup.ListDataHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicComboPopup.ListDataHandler

All Implemented Interfaces:
:   `EventListener`, `ListDataListener`

Enclosing class:
:   `BasicComboPopup`

---

public class BasicComboPopup.ListDataHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ListDataListener](../../event/ListDataListener.md "interface in javax.swing.event")

As of 1.4, this class is now obsolete, doesn't do anything, and
is only included for backwards API compatibility. Do not call or
override.

The functionality has been migrated into `ItemHandler`.

See Also:
:   * [`BasicComboPopup.createItemListener()`](BasicComboPopup.md#createItemListener())

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ListDataHandler()`

  Constructs a `ListDataHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ListDataHandler

    public ListDataHandler()

    Constructs a `ListDataHandler`.
* ## Method Details

  + ### contentsChanged

    public void contentsChanged([ListDataEvent](../../event/ListDataEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ListDataListener`

    Sent when the contents of the list has changed in a way
    that's too complex to characterize with the previous
    methods. For example, this is sent when an item has been
    replaced. Index0 and index1 bracket the change.

    Specified by:
    :   `contentsChanged` in interface `ListDataListener`

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information
  + ### intervalAdded

    public void intervalAdded([ListDataEvent](../../event/ListDataEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ListDataListener`

    Sent after the indices in the index0,index1
    interval have been inserted in the data model.
    The new interval includes both index0 and index1.

    Specified by:
    :   `intervalAdded` in interface `ListDataListener`

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information
  + ### intervalRemoved

    public void intervalRemoved([ListDataEvent](../../event/ListDataEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ListDataListener`

    Sent after the indices in the index0,index1 interval
    have been removed from the data model. The interval
    includes both index0 and index1.

    Specified by:
    :   `intervalRemoved` in interface `ListDataListener`

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information