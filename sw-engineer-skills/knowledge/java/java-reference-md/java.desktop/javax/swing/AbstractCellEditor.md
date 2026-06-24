Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class AbstractCellEditor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.AbstractCellEditor

All Implemented Interfaces:
:   `Serializable`, `CellEditor`

Direct Known Subclasses:
:   `DefaultCellEditor`

---

public abstract class AbstractCellEditor
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [CellEditor](CellEditor.md "interface in javax.swing"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A base class for `CellEditors`, providing default
implementations for the methods in the `CellEditor`
interface except `getCellEditorValue()`.
Like the other abstract implementations in Swing, also manages a list
of listeners.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected ChangeEvent`

  `changeEvent`

  The change event.

  `protected EventListenerList`

  `listenerList`

  The list of listeners.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractCellEditor()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addCellEditorListener(CellEditorListener l)`

  Adds a `CellEditorListener` to the listener list.

  `void`

  `cancelCellEditing()`

  Calls `fireEditingCanceled`.

  `protected void`

  `fireEditingCanceled()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireEditingStopped()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `CellEditorListener[]`

  `getCellEditorListeners()`

  Returns an array of all the `CellEditorListener`s added
  to this AbstractCellEditor with addCellEditorListener().

  `boolean`

  `isCellEditable(EventObject e)`

  Returns true.

  `void`

  `removeCellEditorListener(CellEditorListener l)`

  Removes a `CellEditorListener` from the listener list.

  `boolean`

  `shouldSelectCell(EventObject anEvent)`

  Returns true.

  `boolean`

  `stopCellEditing()`

  Calls `fireEditingStopped` and returns true.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[CellEditor](CellEditor.md "interface in javax.swing")

  `getCellEditorValue`

* ## Field Details

  + ### listenerList

    protected [EventListenerList](event/EventListenerList.md "class in javax.swing.event") listenerList

    The list of listeners.
  + ### changeEvent

    protected transient [ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") changeEvent

    The change event.
* ## Constructor Details

  + ### AbstractCellEditor

    protected AbstractCellEditor()

    Constructor for subclasses to call.
* ## Method Details

  + ### isCellEditable

    public boolean isCellEditable([EventObject](../../../java.base/java/util/EventObject.md "class in java.util") e)

    Returns true.

    Specified by:
    :   `isCellEditable` in interface `CellEditor`

    Parameters:
    :   `e` - an event object

    Returns:
    :   true

    See Also:
    :   - [`CellEditor.shouldSelectCell(java.util.EventObject)`](CellEditor.md#shouldSelectCell(java.util.EventObject))
  + ### shouldSelectCell

    public boolean shouldSelectCell([EventObject](../../../java.base/java/util/EventObject.md "class in java.util") anEvent)

    Returns true.

    Specified by:
    :   `shouldSelectCell` in interface `CellEditor`

    Parameters:
    :   `anEvent` - an event object

    Returns:
    :   true

    See Also:
    :   - [`CellEditor.isCellEditable(java.util.EventObject)`](CellEditor.md#isCellEditable(java.util.EventObject))
  + ### stopCellEditing

    public boolean stopCellEditing()

    Calls `fireEditingStopped` and returns true.

    Specified by:
    :   `stopCellEditing` in interface `CellEditor`

    Returns:
    :   true
  + ### cancelCellEditing

    public void cancelCellEditing()

    Calls `fireEditingCanceled`.

    Specified by:
    :   `cancelCellEditing` in interface `CellEditor`
  + ### addCellEditorListener

    public void addCellEditorListener([CellEditorListener](event/CellEditorListener.md "interface in javax.swing.event") l)

    Adds a `CellEditorListener` to the listener list.

    Specified by:
    :   `addCellEditorListener` in interface `CellEditor`

    Parameters:
    :   `l` - the new listener to be added
  + ### removeCellEditorListener

    public void removeCellEditorListener([CellEditorListener](event/CellEditorListener.md "interface in javax.swing.event") l)

    Removes a `CellEditorListener` from the listener list.

    Specified by:
    :   `removeCellEditorListener` in interface `CellEditor`

    Parameters:
    :   `l` - the listener to be removed
  + ### getCellEditorListeners

    public [CellEditorListener](event/CellEditorListener.md "interface in javax.swing.event")[] getCellEditorListeners()

    Returns an array of all the `CellEditorListener`s added
    to this AbstractCellEditor with addCellEditorListener().

    Returns:
    :   all of the `CellEditorListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireEditingStopped

    protected void fireEditingStopped()

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is created lazily.

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireEditingCanceled

    protected void fireEditingCanceled()

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is created lazily.

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")