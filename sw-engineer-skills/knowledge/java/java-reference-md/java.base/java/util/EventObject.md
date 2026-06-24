Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class EventObject

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.EventObject

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AppEvent`, `AWTEvent`, `BeanContextEvent`, `CaretEvent`, `ChangeEvent`, `ConnectionEvent`, `DragGestureEvent`, `DragSourceEvent`, `DropTargetEvent`, `FlavorEvent`, `HandshakeCompletedEvent`, `HyperlinkEvent`, `LineEvent`, `ListDataEvent`, `ListSelectionEvent`, `MenuEvent`, `NamingEvent`, `NamingExceptionEvent`, `NodeChangeEvent`, `Notification`, `PopupMenuEvent`, `PreferenceChangeEvent`, `PrintEvent`, `PropertyChangeEvent`, `RowSetEvent`, `RowSorterEvent`, `SSLSessionBindingEvent`, `StatementEvent`, `TableColumnModelEvent`, `TableModelEvent`, `TreeExpansionEvent`, `TreeModelEvent`, `TreeSelectionEvent`, `UndoableEditEvent`, `UnsolicitedNotificationEvent`

---

public class EventObject
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

The root class from which all event state objects shall be derived.

All Events are constructed with a reference to the object, the "source",
that is logically deemed to be the object upon which the Event in question
initially occurred upon.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.EventObject)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Object`

  `source`

  The object on which the Event initially occurred.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EventObject(Object source)`

  Constructs a prototypical Event.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getSource()`

  The object on which the Event initially occurred.

  `String`

  `toString()`

  Returns a String representation of this EventObject.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### source

    protected transient [Object](../lang/Object.md "class in java.lang") source

    The object on which the Event initially occurred.
* ## Constructor Details

  + ### EventObject

    public EventObject([Object](../lang/Object.md "class in java.lang") source)

    Constructs a prototypical Event.

    Parameters:
    :   `source` - the object on which the Event initially occurred

    Throws:
    :   `IllegalArgumentException` - if source is null
* ## Method Details

  + ### getSource

    public [Object](../lang/Object.md "class in java.lang") getSource()

    The object on which the Event initially occurred.

    Returns:
    :   the object on which the Event initially occurred
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a String representation of this EventObject.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this EventObject