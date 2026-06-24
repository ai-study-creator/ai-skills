Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class InternalFrameEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

javax.swing.event.InternalFrameEvent

All Implemented Interfaces:
:   `Serializable`

---

public class InternalFrameEvent
extends [AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

An `AWTEvent` that adds support for
`JInternalFrame` objects as the event source. This class has the
same event types as `WindowEvent`,
although different IDs are used.
Help on handling internal frame events
is in
[How to Write an Internal Frame Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/internalframelistener.html),
a section in *The Java Tutorial*.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`WindowEvent`](../../../java/awt/event/WindowEvent.md "class in java.awt.event")
    * [`WindowListener`](../../../java/awt/event/WindowListener.md "interface in java.awt.event")
    * [`JInternalFrame`](../JInternalFrame.md "class in javax.swing")
    * [`InternalFrameListener`](InternalFrameListener.md "interface in javax.swing.event")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `INTERNAL_FRAME_ACTIVATED`

  The "window activated" event type.

  `static final int`

  `INTERNAL_FRAME_CLOSED`

  The "window closed" event.

  `static final int`

  `INTERNAL_FRAME_CLOSING`

  The "window is closing" event.

  `static final int`

  `INTERNAL_FRAME_DEACTIVATED`

  The "window deactivated" event type.

  `static final int`

  `INTERNAL_FRAME_DEICONIFIED`

  The "window deiconified" event type.

  `static final int`

  `INTERNAL_FRAME_FIRST`

  The first number in the range of IDs used for internal frame events.

  `static final int`

  `INTERNAL_FRAME_ICONIFIED`

  The "window iconified" event.

  `static final int`

  `INTERNAL_FRAME_LAST`

  The last number in the range of IDs used for internal frame events.

  `static final int`

  `INTERNAL_FRAME_OPENED`

  The "window opened" event.

  ### Fields inherited from class java.awt.[AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

  `ACTION_EVENT_MASK, ADJUSTMENT_EVENT_MASK, COMPONENT_EVENT_MASK, consumed, CONTAINER_EVENT_MASK, FOCUS_EVENT_MASK, HIERARCHY_BOUNDS_EVENT_MASK, HIERARCHY_EVENT_MASK, id, INPUT_METHOD_EVENT_MASK, INVOCATION_EVENT_MASK, ITEM_EVENT_MASK, KEY_EVENT_MASK, MOUSE_EVENT_MASK, MOUSE_MOTION_EVENT_MASK, MOUSE_WHEEL_EVENT_MASK, PAINT_EVENT_MASK, RESERVED_ID_MAX, TEXT_EVENT_MASK, WINDOW_EVENT_MASK, WINDOW_FOCUS_EVENT_MASK, WINDOW_STATE_EVENT_MASK`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InternalFrameEvent(JInternalFrame source,
  int id)`

  Constructs an `InternalFrameEvent` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `JInternalFrame`

  `getInternalFrame()`

  Returns the originator of the event.

  `String`

  `paramString()`

  Returns a parameter string identifying this event.

  ### Methods inherited from class java.awt.[AWTEvent](../../../java/awt/AWTEvent.md "class in java.awt")

  `consume, getID, isConsumed, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### INTERNAL\_FRAME\_FIRST

    public static final int INTERNAL\_FRAME\_FIRST

    The first number in the range of IDs used for internal frame events.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_FIRST)
  + ### INTERNAL\_FRAME\_LAST

    public static final int INTERNAL\_FRAME\_LAST

    The last number in the range of IDs used for internal frame events.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_LAST)
  + ### INTERNAL\_FRAME\_OPENED

    public static final int INTERNAL\_FRAME\_OPENED

    The "window opened" event. This event is delivered only
    the first time the internal frame is made visible.

    See Also:
    :   - [`JInternalFrame.show()`](../JInternalFrame.md#show())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_OPENED)
  + ### INTERNAL\_FRAME\_CLOSING

    public static final int INTERNAL\_FRAME\_CLOSING

    The "window is closing" event. This event is delivered when
    the user attempts to close the internal frame, such as by
    clicking the internal frame's close button,
    or when a program attempts to close the internal frame
    by invoking the `setClosed` method.

    See Also:
    :   - [`JInternalFrame.setDefaultCloseOperation(int)`](../JInternalFrame.md#setDefaultCloseOperation(int))
        - [`JInternalFrame.doDefaultCloseAction()`](../JInternalFrame.md#doDefaultCloseAction())
        - [`JInternalFrame.setClosed(boolean)`](../JInternalFrame.md#setClosed(boolean))
        - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_CLOSING)
  + ### INTERNAL\_FRAME\_CLOSED

    public static final int INTERNAL\_FRAME\_CLOSED

    The "window closed" event. This event is delivered after
    the internal frame has been closed as the result of a call to
    the `setClosed` or
    `dispose` method.

    See Also:
    :   - [`JInternalFrame.setClosed(boolean)`](../JInternalFrame.md#setClosed(boolean))
        - [`JInternalFrame.dispose()`](../JInternalFrame.md#dispose())
        - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_CLOSED)
  + ### INTERNAL\_FRAME\_ICONIFIED

    public static final int INTERNAL\_FRAME\_ICONIFIED

    The "window iconified" event.
    This event indicates that the internal frame
    was shrunk down to a small icon.

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../JInternalFrame.md#setIcon(boolean))
        - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_ICONIFIED)
  + ### INTERNAL\_FRAME\_DEICONIFIED

    public static final int INTERNAL\_FRAME\_DEICONIFIED

    The "window deiconified" event type. This event indicates that the
    internal frame has been restored to its normal size.

    See Also:
    :   - [`JInternalFrame.setIcon(boolean)`](../JInternalFrame.md#setIcon(boolean))
        - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_DEICONIFIED)
  + ### INTERNAL\_FRAME\_ACTIVATED

    public static final int INTERNAL\_FRAME\_ACTIVATED

    The "window activated" event type. This event indicates that keystrokes
    and mouse clicks are directed towards this internal frame.

    See Also:
    :   - [`JInternalFrame.show()`](../JInternalFrame.md#show())
        - [`JInternalFrame.setSelected(boolean)`](../JInternalFrame.md#setSelected(boolean))
        - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_ACTIVATED)
  + ### INTERNAL\_FRAME\_DEACTIVATED

    public static final int INTERNAL\_FRAME\_DEACTIVATED

    The "window deactivated" event type. This event indicates that keystrokes
    and mouse clicks are no longer directed to the internal frame.

    See Also:
    :   - [`JInternalFrame.setSelected(boolean)`](../JInternalFrame.md#setSelected(boolean))
        - [Constant Field Values](../../../../constant-values.md#javax.swing.event.InternalFrameEvent.INTERNAL_FRAME_DEACTIVATED)
* ## Constructor Details

  + ### InternalFrameEvent

    public InternalFrameEvent([JInternalFrame](../JInternalFrame.md "class in javax.swing") source,
    int id)

    Constructs an `InternalFrameEvent` object.

    Parameters:
    :   `source` - the `JInternalFrame` object that originated the event
    :   `id` - an integer indicating the type of event
* ## Method Details

  + ### paramString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a parameter string identifying this event.
    This method is useful for event logging and for debugging.

    Overrides:
    :   `paramString` in class `AWTEvent`

    Returns:
    :   a string identifying the event and its attributes
  + ### getInternalFrame

    public [JInternalFrame](../JInternalFrame.md "class in javax.swing") getInternalFrame()

    Returns the originator of the event.

    Returns:
    :   the `JInternalFrame` object that originated the event

    Since:
    :   1.3