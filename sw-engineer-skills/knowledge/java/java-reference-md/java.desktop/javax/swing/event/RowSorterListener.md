Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface RowSorterListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `JTable`

---

public interface RowSorterListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

`RowSorterListener`s are notified of changes to a
`RowSorter`.

Since:
:   1.6

See Also:
:   * [`RowSorter`](../RowSorter.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `sorterChanged(RowSorterEvent e)`

  Notification that the `RowSorter` has changed.

* ## Method Details

  + ### sorterChanged

    void sorterChanged([RowSorterEvent](RowSorterEvent.md "class in javax.swing.event") e)

    Notification that the `RowSorter` has changed. The event
    describes the scope of the change.

    Parameters:
    :   `e` - the event, will not be null