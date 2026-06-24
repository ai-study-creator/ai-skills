Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface TableColumnModelListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `JTable`, `JTable.AccessibleJTable`, `JTableHeader`

---

public interface TableColumnModelListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

TableColumnModelListener defines the interface for an object that listens
to changes in a TableColumnModel.

See Also:
:   * [`TableColumnModelEvent`](TableColumnModelEvent.md "class in javax.swing.event")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `columnAdded(TableColumnModelEvent e)`

  Tells listeners that a column was added to the model.

  `void`

  `columnMarginChanged(ChangeEvent e)`

  Tells listeners that a column was moved due to a margin change.

  `void`

  `columnMoved(TableColumnModelEvent e)`

  Tells listeners that a column was repositioned.

  `void`

  `columnRemoved(TableColumnModelEvent e)`

  Tells listeners that a column was removed from the model.

  `void`

  `columnSelectionChanged(ListSelectionEvent e)`

  Tells listeners that the selection model of the
  TableColumnModel changed.

* ## Method Details

  + ### columnAdded

    void columnAdded([TableColumnModelEvent](TableColumnModelEvent.md "class in javax.swing.event") e)

    Tells listeners that a column was added to the model.

    Parameters:
    :   `e` - a `TableColumnModelEvent`
  + ### columnRemoved

    void columnRemoved([TableColumnModelEvent](TableColumnModelEvent.md "class in javax.swing.event") e)

    Tells listeners that a column was removed from the model.

    Parameters:
    :   `e` - a `TableColumnModelEvent`
  + ### columnMoved

    void columnMoved([TableColumnModelEvent](TableColumnModelEvent.md "class in javax.swing.event") e)

    Tells listeners that a column was repositioned.

    Parameters:
    :   `e` - a `TableColumnModelEvent`
  + ### columnMarginChanged

    void columnMarginChanged([ChangeEvent](ChangeEvent.md "class in javax.swing.event") e)

    Tells listeners that a column was moved due to a margin change.

    Parameters:
    :   `e` - a `ChangeEvent`
  + ### columnSelectionChanged

    void columnSelectionChanged([ListSelectionEvent](ListSelectionEvent.md "class in javax.swing.event") e)

    Tells listeners that the selection model of the
    TableColumnModel changed.

    Parameters:
    :   `e` - a `ListSelectionEvent`