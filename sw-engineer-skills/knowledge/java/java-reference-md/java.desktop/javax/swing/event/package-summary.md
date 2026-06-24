Module [java.desktop](../../../module-summary.md)

# Package javax.swing.event

---

package javax.swing.event

Provides for events fired by Swing components. It contains event classes and
corresponding event listener interfaces for events fired by Swing components
in addition to those events in the [`java.awt.event`](../../../java/awt/event/package-summary.md) package.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

## Related Documentation

For overviews, tutorials, examples, guides, and tool documentation,
please see:

* [Writing Event Listeners](https://docs.oracle.com/javase/tutorial/uiswing/events/index.html),
  a section in *The Java Tutorial*

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing](../package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.
* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [AncestorEvent](AncestorEvent.md "class in javax.swing.event")

  An event reported to a child component that originated from an
  ancestor in the component hierarchy.

  [AncestorListener](AncestorListener.md "interface in javax.swing.event")

  AncestorListener
  Interface to support notification when changes occur to a JComponent or one
  of its ancestors.

  [CaretEvent](CaretEvent.md "class in javax.swing.event")

  CaretEvent is used to notify interested parties that
  the text caret has changed in the event source.

  [CaretListener](CaretListener.md "interface in javax.swing.event")

  Listener for changes in the caret position of a text
  component.

  [CellEditorListener](CellEditorListener.md "interface in javax.swing.event")

  CellEditorListener defines the interface for an object that listens
  to changes in a CellEditor

  [ChangeEvent](ChangeEvent.md "class in javax.swing.event")

  ChangeEvent is used to notify interested parties that
  state has changed in the event source.

  [ChangeListener](ChangeListener.md "interface in javax.swing.event")

  Defines an object which listens for ChangeEvents.

  [DocumentEvent](DocumentEvent.md "interface in javax.swing.event")

  Interface for document change notifications.

  [DocumentEvent.ElementChange](DocumentEvent.ElementChange.md "interface in javax.swing.event")

  Describes changes made to a specific element.

  [DocumentEvent.EventType](DocumentEvent.EventType.md "class in javax.swing.event")

  Enumeration for document event types

  [DocumentListener](DocumentListener.md "interface in javax.swing.event")

  Interface for an observer to register to receive notifications
  of changes to a text document.

  [EventListenerList](EventListenerList.md "class in javax.swing.event")

  A class that holds a list of EventListeners.

  [HyperlinkEvent](HyperlinkEvent.md "class in javax.swing.event")

  HyperlinkEvent is used to notify interested parties that
  something has happened with respect to a hypertext link.

  [HyperlinkEvent.EventType](HyperlinkEvent.EventType.md "class in javax.swing.event")

  Defines the ENTERED, EXITED, and ACTIVATED event types, along
  with their string representations, returned by toString().

  [HyperlinkListener](HyperlinkListener.md "interface in javax.swing.event")

  HyperlinkListener

  [InternalFrameAdapter](InternalFrameAdapter.md "class in javax.swing.event")

  An abstract adapter class for receiving internal frame events.

  [InternalFrameEvent](InternalFrameEvent.md "class in javax.swing.event")

  An `AWTEvent` that adds support for
  `JInternalFrame` objects as the event source.

  [InternalFrameListener](InternalFrameListener.md "interface in javax.swing.event")

  The listener interface for receiving internal frame events.

  [ListDataEvent](ListDataEvent.md "class in javax.swing.event")

  Defines an event that encapsulates changes to a list.

  [ListDataListener](ListDataListener.md "interface in javax.swing.event")

  ListDataListener

  [ListSelectionEvent](ListSelectionEvent.md "class in javax.swing.event")

  An event that characterizes a change in selection.

  [ListSelectionListener](ListSelectionListener.md "interface in javax.swing.event")

  The listener that's notified when a lists selection value
  changes.

  [MenuDragMouseEvent](MenuDragMouseEvent.md "class in javax.swing.event")

  MenuDragMouseEvent is used to notify interested parties that
  the menu element has received a MouseEvent forwarded to it
  under drag conditions.

  [MenuDragMouseListener](MenuDragMouseListener.md "interface in javax.swing.event")

  Defines a menu mouse-drag listener.

  [MenuEvent](MenuEvent.md "class in javax.swing.event")

  MenuEvent is used to notify interested parties that
  the menu which is the event source has been posted,
  selected, or canceled.

  [MenuKeyEvent](MenuKeyEvent.md "class in javax.swing.event")

  MenuKeyEvent is used to notify interested parties that
  the menu element has received a KeyEvent forwarded to it
  in a menu tree.

  [MenuKeyListener](MenuKeyListener.md "interface in javax.swing.event")

  MenuKeyListener

  [MenuListener](MenuListener.md "interface in javax.swing.event")

  Defines a listener for menu events.

  [MouseInputAdapter](MouseInputAdapter.md "class in javax.swing.event")

  An empty implementation of the `MouseInputListener` interface, provided
  as a convenience to simplify the task of creating listeners, by extending
  and implementing only the methods of interest.

  [MouseInputListener](MouseInputListener.md "interface in javax.swing.event")

  A listener implementing all the methods in both the `MouseListener` and
  `MouseMotionListener` interfaces.

  [PopupMenuEvent](PopupMenuEvent.md "class in javax.swing.event")

  PopupMenuEvent only contains the source of the event which is the JPopupMenu
  sending the event

  [PopupMenuListener](PopupMenuListener.md "interface in javax.swing.event")

  A popup menu listener

  [RowSorterEvent](RowSorterEvent.md "class in javax.swing.event")

  `RowSorterEvent` provides notification of changes to
  a `RowSorter`.

  [RowSorterEvent.Type](RowSorterEvent.Type.md "enum class in javax.swing.event")

  Enumeration of the types of `RowSorterEvent`s.

  [RowSorterListener](RowSorterListener.md "interface in javax.swing.event")

  `RowSorterListener`s are notified of changes to a
  `RowSorter`.

  [SwingPropertyChangeSupport](SwingPropertyChangeSupport.md "class in javax.swing.event")

  This subclass of `java.beans.PropertyChangeSupport` is almost
  identical in functionality.

  [TableColumnModelEvent](TableColumnModelEvent.md "class in javax.swing.event")

  **TableColumnModelEvent** is used to notify listeners that a table
  column model has changed, such as a column was added, removed, or
  moved.

  [TableColumnModelListener](TableColumnModelListener.md "interface in javax.swing.event")

  TableColumnModelListener defines the interface for an object that listens
  to changes in a TableColumnModel.

  [TableModelEvent](TableModelEvent.md "class in javax.swing.event")

  TableModelEvent is used to notify listeners that a table model
  has changed.

  [TableModelListener](TableModelListener.md "interface in javax.swing.event")

  TableModelListener defines the interface for an object that listens
  to changes in a TableModel.

  [TreeExpansionEvent](TreeExpansionEvent.md "class in javax.swing.event")

  An event used to identify a single path in a tree.

  [TreeExpansionListener](TreeExpansionListener.md "interface in javax.swing.event")

  The listener that's notified when a tree expands or collapses
  a node.

  [TreeModelEvent](TreeModelEvent.md "class in javax.swing.event")

  Encapsulates information describing changes to a tree model, and
  used to notify tree model listeners of the change.

  [TreeModelListener](TreeModelListener.md "interface in javax.swing.event")

  Defines the interface for an object that listens
  to changes in a TreeModel.

  [TreeSelectionEvent](TreeSelectionEvent.md "class in javax.swing.event")

  An event that characterizes a change in the current
  selection.

  [TreeSelectionListener](TreeSelectionListener.md "interface in javax.swing.event")

  The listener that's notified when the selection in a TreeSelectionModel
  changes.

  [TreeWillExpandListener](TreeWillExpandListener.md "interface in javax.swing.event")

  The listener that's notified when a tree expands or collapses
  a node.

  [UndoableEditEvent](UndoableEditEvent.md "class in javax.swing.event")

  An event indicating that an operation which can be undone has occurred.

  [UndoableEditListener](UndoableEditListener.md "interface in javax.swing.event")

  Interface implemented by a class interested in hearing about
  undoable operations.