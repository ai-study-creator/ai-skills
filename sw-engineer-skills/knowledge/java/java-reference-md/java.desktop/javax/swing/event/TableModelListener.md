Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface TableModelListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `JTable`, `JTable.AccessibleJTable`

---

public interface TableModelListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

TableModelListener defines the interface for an object that listens
to changes in a TableModel.

See Also:
:   * [`TableModel`](../table/TableModel.md "interface in javax.swing.table")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `tableChanged(TableModelEvent e)`

  This fine grain notification tells listeners the exact range
  of cells, rows, or columns that changed.

* ## Method Details

  + ### tableChanged

    void tableChanged([TableModelEvent](TableModelEvent.md "class in javax.swing.event") e)

    This fine grain notification tells listeners the exact range
    of cells, rows, or columns that changed.

    Parameters:
    :   `e` - a `TableModelEvent` to notify listener that a table model
        has changed