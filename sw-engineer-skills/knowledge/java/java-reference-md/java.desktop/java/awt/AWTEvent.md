Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class AWTEvent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

java.awt.AWTEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ActionEvent`, `AdjustmentEvent`, `AncestorEvent`, `ComponentEvent`, `HierarchyEvent`, `InputMethodEvent`, `InternalFrameEvent`, `InvocationEvent`, `ItemEvent`, `TextEvent`

---

public abstract class AWTEvent
extends [EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

The root event class for all AWT events.
This class and its subclasses supersede the original
java.awt.Event class.
Subclasses of this root AWTEvent class defined outside of the
java.awt.event package should define event ID values greater than
the value defined by RESERVED\_ID\_MAX.

The event masks defined in this class are needed by Component subclasses
which are using Component.enableEvents() to select for event types not
selected by registered listeners. If a listener is registered on a
component, the appropriate event mask is already set internally by the
component.

The masks are also used to specify to which types of events an
AWTEventListener should listen. The masks are bitwise-ORed together
and passed to Toolkit.addAWTEventListener.

Since:
:   1.1

See Also:
:   * [`Component.enableEvents(long)`](Component.md#enableEvents(long))
    * [`Toolkit.addAWTEventListener(java.awt.event.AWTEventListener, long)`](Toolkit.md#addAWTEventListener(java.awt.event.AWTEventListener,long))
    * [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
    * [`AdjustmentEvent`](event/AdjustmentEvent.md "class in java.awt.event")
    * [`ComponentEvent`](event/ComponentEvent.md "class in java.awt.event")
    * [`ContainerEvent`](event/ContainerEvent.md "class in java.awt.event")
    * [`FocusEvent`](event/FocusEvent.md "class in java.awt.event")
    * [`InputMethodEvent`](event/InputMethodEvent.md "class in java.awt.event")
    * [`InvocationEvent`](event/InvocationEvent.md "class in java.awt.event")
    * [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
    * [`HierarchyEvent`](event/HierarchyEvent.md "class in java.awt.event")
    * [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
    * [`MouseEvent`](event/MouseEvent.md "class in java.awt.event")
    * [`MouseWheelEvent`](event/MouseWheelEvent.md "class in java.awt.event")
    * [`PaintEvent`](event/PaintEvent.md "class in java.awt.event")
    * [`TextEvent`](event/TextEvent.md "class in java.awt.event")
    * [`WindowEvent`](event/WindowEvent.md "class in java.awt.event")
    * [Serialized Form](../../../serialized-form.md#java.awt.AWTEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final long`

  `ACTION_EVENT_MASK`

  The event mask for selecting action events.

  `static final long`

  `ADJUSTMENT_EVENT_MASK`

  The event mask for selecting adjustment events.

  `static final long`

  `COMPONENT_EVENT_MASK`

  The event mask for selecting component events.

  `protected boolean`

  `consumed`

  Controls whether or not the event is sent back down to the peer once the
  source has processed it - false means it's sent to the peer; true means
  it's not.

  `static final long`

  `CONTAINER_EVENT_MASK`

  The event mask for selecting container events.

  `static final long`

  `FOCUS_EVENT_MASK`

  The event mask for selecting focus events.

  `static final long`

  `HIERARCHY_BOUNDS_EVENT_MASK`

  The event mask for selecting hierarchy bounds events.

  `static final long`

  `HIERARCHY_EVENT_MASK`

  The event mask for selecting hierarchy events.

  `protected int`

  `id`

  The event's id.

  `static final long`

  `INPUT_METHOD_EVENT_MASK`

  The event mask for selecting input method events.

  `static final long`

  `INVOCATION_EVENT_MASK`

  The event mask for selecting invocation events.

  `static final long`

  `ITEM_EVENT_MASK`

  The event mask for selecting item events.

  `static final long`

  `KEY_EVENT_MASK`

  The event mask for selecting key events.

  `static final long`

  `MOUSE_EVENT_MASK`

  The event mask for selecting mouse events.

  `static final long`

  `MOUSE_MOTION_EVENT_MASK`

  The event mask for selecting mouse motion events.

  `static final long`

  `MOUSE_WHEEL_EVENT_MASK`

  The event mask for selecting mouse wheel events.

  `static final long`

  `PAINT_EVENT_MASK`

  The event mask for selecting paint events.

  `static final int`

  `RESERVED_ID_MAX`

  The maximum value for reserved AWT event IDs.

  `static final long`

  `TEXT_EVENT_MASK`

  The event mask for selecting text events.

  `static final long`

  `WINDOW_EVENT_MASK`

  The event mask for selecting window events.

  `static final long`

  `WINDOW_FOCUS_EVENT_MASK`

  The event mask for selecting window focus events.

  `static final long`

  `WINDOW_STATE_EVENT_MASK`

  The event mask for selecting window state events.

  ### Fields inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AWTEvent(Event event)`

  Deprecated.

  It is recommended that [`AWTEvent(Object, int)`](#%3Cinit%3E(java.lang.Object,int)) be used
  instead

  `AWTEvent(Object source,
  int id)`

  Constructs an AWTEvent object with the specified source object and type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `consume()`

  Consumes this event, if this event can be consumed.

  `int`

  `getID()`

  Returns the event type.

  `protected boolean`

  `isConsumed()`

  Returns whether this event has been consumed.

  `String`

  `paramString()`

  Returns a string representing the state of this `Event`.

  `void`

  `setSource(Object newSource)`

  Retargets an event to a new source.

  `String`

  `toString()`

  Returns a String representation of this object.

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### id

    protected int id

    The event's id.

    See Also:
    :   - [`getID()`](#getID())
        - [`AWTEvent(java.lang.Object, int)`](#%3Cinit%3E(java.lang.Object,int))
  + ### consumed

    protected boolean consumed

    Controls whether or not the event is sent back down to the peer once the
    source has processed it - false means it's sent to the peer; true means
    it's not. Semantic events always have a 'true' value since they were
    generated by the peer in response to a low-level event.

    See Also:
    :   - [`consume()`](#consume())
        - [`isConsumed()`](#isConsumed())
  + ### COMPONENT\_EVENT\_MASK

    public static final long COMPONENT\_EVENT\_MASK

    The event mask for selecting component events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.COMPONENT_EVENT_MASK)
  + ### CONTAINER\_EVENT\_MASK

    public static final long CONTAINER\_EVENT\_MASK

    The event mask for selecting container events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.CONTAINER_EVENT_MASK)
  + ### FOCUS\_EVENT\_MASK

    public static final long FOCUS\_EVENT\_MASK

    The event mask for selecting focus events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.FOCUS_EVENT_MASK)
  + ### KEY\_EVENT\_MASK

    public static final long KEY\_EVENT\_MASK

    The event mask for selecting key events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.KEY_EVENT_MASK)
  + ### MOUSE\_EVENT\_MASK

    public static final long MOUSE\_EVENT\_MASK

    The event mask for selecting mouse events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.MOUSE_EVENT_MASK)
  + ### MOUSE\_MOTION\_EVENT\_MASK

    public static final long MOUSE\_MOTION\_EVENT\_MASK

    The event mask for selecting mouse motion events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.MOUSE_MOTION_EVENT_MASK)
  + ### WINDOW\_EVENT\_MASK

    public static final long WINDOW\_EVENT\_MASK

    The event mask for selecting window events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.WINDOW_EVENT_MASK)
  + ### ACTION\_EVENT\_MASK

    public static final long ACTION\_EVENT\_MASK

    The event mask for selecting action events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.ACTION_EVENT_MASK)
  + ### ADJUSTMENT\_EVENT\_MASK

    public static final long ADJUSTMENT\_EVENT\_MASK

    The event mask for selecting adjustment events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.ADJUSTMENT_EVENT_MASK)
  + ### ITEM\_EVENT\_MASK

    public static final long ITEM\_EVENT\_MASK

    The event mask for selecting item events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.ITEM_EVENT_MASK)
  + ### TEXT\_EVENT\_MASK

    public static final long TEXT\_EVENT\_MASK

    The event mask for selecting text events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.TEXT_EVENT_MASK)
  + ### INPUT\_METHOD\_EVENT\_MASK

    public static final long INPUT\_METHOD\_EVENT\_MASK

    The event mask for selecting input method events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.INPUT_METHOD_EVENT_MASK)
  + ### PAINT\_EVENT\_MASK

    public static final long PAINT\_EVENT\_MASK

    The event mask for selecting paint events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.PAINT_EVENT_MASK)
  + ### INVOCATION\_EVENT\_MASK

    public static final long INVOCATION\_EVENT\_MASK

    The event mask for selecting invocation events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.INVOCATION_EVENT_MASK)
  + ### HIERARCHY\_EVENT\_MASK

    public static final long HIERARCHY\_EVENT\_MASK

    The event mask for selecting hierarchy events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.HIERARCHY_EVENT_MASK)
  + ### HIERARCHY\_BOUNDS\_EVENT\_MASK

    public static final long HIERARCHY\_BOUNDS\_EVENT\_MASK

    The event mask for selecting hierarchy bounds events.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.HIERARCHY_BOUNDS_EVENT_MASK)
  + ### MOUSE\_WHEEL\_EVENT\_MASK

    public static final long MOUSE\_WHEEL\_EVENT\_MASK

    The event mask for selecting mouse wheel events.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.MOUSE_WHEEL_EVENT_MASK)
  + ### WINDOW\_STATE\_EVENT\_MASK

    public static final long WINDOW\_STATE\_EVENT\_MASK

    The event mask for selecting window state events.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.WINDOW_STATE_EVENT_MASK)
  + ### WINDOW\_FOCUS\_EVENT\_MASK

    public static final long WINDOW\_FOCUS\_EVENT\_MASK

    The event mask for selecting window focus events.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.WINDOW_FOCUS_EVENT_MASK)
  + ### RESERVED\_ID\_MAX

    public static final int RESERVED\_ID\_MAX

    The maximum value for reserved AWT event IDs. Programs defining
    their own event IDs should use IDs greater than this value.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.AWTEvent.RESERVED_ID_MAX)
* ## Constructor Details

  + ### AWTEvent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9")
    public AWTEvent([Event](Event.md "class in java.awt") event)

    Deprecated.

    It is recommended that [`AWTEvent(Object, int)`](#%3Cinit%3E(java.lang.Object,int)) be used
    instead

    Constructs an AWTEvent object from the parameters of a 1.0-style event.

    Parameters:
    :   `event` - the old-style event
  + ### AWTEvent

    public AWTEvent([Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    int id)

    Constructs an AWTEvent object with the specified source object and type.

    Parameters:
    :   `source` - the object where the event originated
    :   `id` - the event type
* ## Method Details

  + ### setSource

    public void setSource([Object](../../../java.base/java/lang/Object.md "class in java.lang") newSource)

    Retargets an event to a new source. This method is typically used to
    retarget an event to a lightweight child Component of the original
    heavyweight source.

    This method is intended to be used only by event targeting subsystems,
    such as client-defined KeyboardFocusManagers. It is not for general
    client use.

    Parameters:
    :   `newSource` - the new Object to which the event should be dispatched

    Since:
    :   1.4
  + ### getID

    public int getID()

    Returns the event type.

    Returns:
    :   the event's type id
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a String representation of this object.

    Overrides:
    :   `toString` in class `EventObject`

    Returns:
    :   a String representation of this EventObject
  + ### paramString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representing the state of this `Event`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Returns:
    :   a string representation of this event
  + ### consume

    protected void consume()

    Consumes this event, if this event can be consumed. Only low-level,
    system events can be consumed
  + ### isConsumed

    protected boolean isConsumed()

    Returns whether this event has been consumed.

    Returns:
    :   `true` if this event has been consumed;
        otherwise `false`