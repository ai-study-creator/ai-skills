Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class PaintEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../AWTEvent.md "class in java.awt")

[java.awt.event.ComponentEvent](ComponentEvent.md "class in java.awt.event")

java.awt.event.PaintEvent

All Implemented Interfaces:
:   `Serializable`

---

public class PaintEvent
extends [ComponentEvent](ComponentEvent.md "class in java.awt.event")

The component-level paint event.
This event is a special type which is used to ensure that
paint/update method calls are serialized along with the other
events delivered from the event queue. This event is not
designed to be used with the Event Listener model; programs
should continue to override paint/update methods in order
render themselves properly.

An unspecified behavior will be caused if the `id` parameter
of any particular `PaintEvent` instance is not
in the range from `PAINT_FIRST` to `PAINT_LAST`.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.event.PaintEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `PAINT`

  The paint event type.

  `static final int`

  `PAINT_FIRST`

  Marks the first integer id for the range of paint event ids.

  `static final int`

  `PAINT_LAST`

  Marks the last integer id for the range of paint event ids.

  `static final int`

  `UPDATE`

  The update event type.

  ### Fields inherited from class java.awt.event.[ComponentEvent](ComponentEvent.md "class in java.awt.event")

  `COMPONENT_FIRST, COMPONENT_HIDDEN, COMPONENT_LAST, COMPONENT_MOVED, COMPONENT_RESIZED, COMPONENT_SHOWN`

  ### Fields inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `ACTION_EVENT_MASK, ADJUSTMENT_EVENT_MASK, COMPONENT_EVENT_MASK, consumed, CONTAINER_EVENT_MASK, FOCUS_EVENT_MASK, HIERARCHY_BOUNDS_EVENT_MASK, HIERARCHY_EVENT_MASK, id, INPUT_METHOD_EVENT_MASK, INVOCATION_EVENT_MASK, ITEM_EVENT_MASK, KEY_EVENT_MASK, MOUSE_EVENT_MASK, MOUSE_MOTION_EVENT_MASK, MOUSE_WHEEL_EVENT_MASK, PAINT_EVENT_MASK, RESERVED_ID_MAX, TEXT_EVENT_MASK, WINDOW_EVENT_MASK, WINDOW_FOCUS_EVENT_MASK, WINDOW_STATE_EVENT_MASK`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PaintEvent(Component source,
  int id,
  Rectangle updateRect)`

  Constructs a `PaintEvent` object with the specified
  source component and type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Rectangle`

  `getUpdateRect()`

  Returns the rectangle representing the area which needs to be
  repainted in response to this event.

  `String`

  `paramString()`

  Returns a parameter string identifying this event.

  `void`

  `setUpdateRect(Rectangle updateRect)`

  Sets the rectangle representing the area which needs to be
  repainted in response to this event.

  ### Methods inherited from class java.awt.event.[ComponentEvent](ComponentEvent.md "class in java.awt.event")

  `getComponent`

  ### Methods inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `consume, getID, isConsumed, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### PAINT\_FIRST

    public static final int PAINT\_FIRST

    Marks the first integer id for the range of paint event ids.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.PaintEvent.PAINT_FIRST)
  + ### PAINT\_LAST

    public static final int PAINT\_LAST

    Marks the last integer id for the range of paint event ids.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.PaintEvent.PAINT_LAST)
  + ### PAINT

    public static final int PAINT

    The paint event type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.PaintEvent.PAINT)
  + ### UPDATE

    public static final int UPDATE

    The update event type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.PaintEvent.UPDATE)
* ## Constructor Details

  + ### PaintEvent

    public PaintEvent([Component](../Component.md "class in java.awt") source,
    int id,
    [Rectangle](../Rectangle.md "class in java.awt") updateRect)

    Constructs a `PaintEvent` object with the specified
    source component and type.

    This method throws an
    `IllegalArgumentException` if `source`
    is `null`.

    Parameters:
    :   `source` - The object where the event originated
    :   `id` - The integer that identifies the event type.
        For information on allowable values, see
        the class description for [`PaintEvent`](PaintEvent.md "class in java.awt.event")
    :   `updateRect` - The rectangle area which needs to be repainted

    Throws:
    :   `IllegalArgumentException` - if `source` is null

    See Also:
    :   - [`EventObject.getSource()`](../../../../java.base/java/util/EventObject.md#getSource())
        - [`AWTEvent.getID()`](../AWTEvent.md#getID())
        - [`getUpdateRect()`](#getUpdateRect())
* ## Method Details

  + ### getUpdateRect

    public [Rectangle](../Rectangle.md "class in java.awt") getUpdateRect()

    Returns the rectangle representing the area which needs to be
    repainted in response to this event.

    Returns:
    :   the rectangle representing the area which needs to be
        repainted in response to this event
  + ### setUpdateRect

    public void setUpdateRect([Rectangle](../Rectangle.md "class in java.awt") updateRect)

    Sets the rectangle representing the area which needs to be
    repainted in response to this event.

    Parameters:
    :   `updateRect` - the rectangle area which needs to be repainted
  + ### paramString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Description copied from class: `ComponentEvent`

    Returns a parameter string identifying this event.
    This method is useful for event-logging and for debugging.

    Overrides:
    :   `paramString` in class `ComponentEvent`

    Returns:
    :   a string identifying the event and its attributes