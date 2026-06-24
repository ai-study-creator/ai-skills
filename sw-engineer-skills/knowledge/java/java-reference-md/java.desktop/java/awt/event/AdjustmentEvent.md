Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class AdjustmentEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../AWTEvent.md "class in java.awt")

java.awt.event.AdjustmentEvent

All Implemented Interfaces:
:   `Serializable`

---

public class AdjustmentEvent
extends [AWTEvent](../AWTEvent.md "class in java.awt")

The adjustment event emitted by Adjustable objects like
[`Scrollbar`](../Scrollbar.md "class in java.awt") and [`ScrollPane`](../ScrollPane.md "class in java.awt").
When the user changes the value of the scrolling component,
it receives an instance of `AdjustmentEvent`.

An unspecified behavior will be caused if the `id` parameter
of any particular `AdjustmentEvent` instance is not
in the range from `ADJUSTMENT_FIRST` to `ADJUSTMENT_LAST`.

The `type` of any `AdjustmentEvent` instance takes one of the following
values:

* `UNIT_INCREMENT`* `UNIT_DECREMENT`* `BLOCK_INCREMENT`* `BLOCK_DECREMENT`* `TRACK`

Assigning the value different from listed above will cause an unspecified behavior.

Since:
:   1.1

See Also:
:   * [`Adjustable`](../Adjustable.md "interface in java.awt")
    * [`AdjustmentListener`](AdjustmentListener.md "interface in java.awt.event")
    * [Serialized Form](../../../../serialized-form.md#java.awt.event.AdjustmentEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ADJUSTMENT_FIRST`

  Marks the first integer id for the range of adjustment event ids.

  `static final int`

  `ADJUSTMENT_LAST`

  Marks the last integer id for the range of adjustment event ids.

  `static final int`

  `ADJUSTMENT_VALUE_CHANGED`

  The adjustment value changed event.

  `static final int`

  `BLOCK_DECREMENT`

  The block decrement adjustment type.

  `static final int`

  `BLOCK_INCREMENT`

  The block increment adjustment type.

  `static final int`

  `TRACK`

  The absolute tracking adjustment type.

  `static final int`

  `UNIT_DECREMENT`

  The unit decrement adjustment type.

  `static final int`

  `UNIT_INCREMENT`

  The unit increment adjustment type.

  ### Fields inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `ACTION_EVENT_MASK, ADJUSTMENT_EVENT_MASK, COMPONENT_EVENT_MASK, consumed, CONTAINER_EVENT_MASK, FOCUS_EVENT_MASK, HIERARCHY_BOUNDS_EVENT_MASK, HIERARCHY_EVENT_MASK, id, INPUT_METHOD_EVENT_MASK, INVOCATION_EVENT_MASK, ITEM_EVENT_MASK, KEY_EVENT_MASK, MOUSE_EVENT_MASK, MOUSE_MOTION_EVENT_MASK, MOUSE_WHEEL_EVENT_MASK, PAINT_EVENT_MASK, RESERVED_ID_MAX, TEXT_EVENT_MASK, WINDOW_EVENT_MASK, WINDOW_FOCUS_EVENT_MASK, WINDOW_STATE_EVENT_MASK`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AdjustmentEvent(Adjustable source,
  int id,
  int type,
  int value)`

  Constructs an `AdjustmentEvent` object with the
  specified `Adjustable` source, event type,
  adjustment type, and value.

  `AdjustmentEvent(Adjustable source,
  int id,
  int type,
  int value,
  boolean isAdjusting)`

  Constructs an `AdjustmentEvent` object with the
  specified Adjustable source, event type, adjustment type, and value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Adjustable`

  `getAdjustable()`

  Returns the `Adjustable` object where this event originated.

  `int`

  `getAdjustmentType()`

  Returns the type of adjustment which caused the value changed
  event.

  `int`

  `getValue()`

  Returns the current value in the adjustment event.

  `boolean`

  `getValueIsAdjusting()`

  Returns `true` if this is one of multiple
  adjustment events.

  `String`

  `paramString()`

  Returns a string representing the state of this `Event`.

  ### Methods inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `consume, getID, isConsumed, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ADJUSTMENT\_FIRST

    public static final int ADJUSTMENT\_FIRST

    Marks the first integer id for the range of adjustment event ids.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.ADJUSTMENT_FIRST)
  + ### ADJUSTMENT\_LAST

    public static final int ADJUSTMENT\_LAST

    Marks the last integer id for the range of adjustment event ids.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.ADJUSTMENT_LAST)
  + ### ADJUSTMENT\_VALUE\_CHANGED

    public static final int ADJUSTMENT\_VALUE\_CHANGED

    The adjustment value changed event.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.ADJUSTMENT_VALUE_CHANGED)
  + ### UNIT\_INCREMENT

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int UNIT\_INCREMENT

    The unit increment adjustment type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.UNIT_INCREMENT)
  + ### UNIT\_DECREMENT

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int UNIT\_DECREMENT

    The unit decrement adjustment type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.UNIT_DECREMENT)
  + ### BLOCK\_DECREMENT

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int BLOCK\_DECREMENT

    The block decrement adjustment type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.BLOCK_DECREMENT)
  + ### BLOCK\_INCREMENT

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int BLOCK\_INCREMENT

    The block increment adjustment type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.BLOCK_INCREMENT)
  + ### TRACK

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int TRACK

    The absolute tracking adjustment type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.AdjustmentEvent.TRACK)
* ## Constructor Details

  + ### AdjustmentEvent

    public AdjustmentEvent([Adjustable](../Adjustable.md "interface in java.awt") source,
    int id,
    int type,
    int value)

    Constructs an `AdjustmentEvent` object with the
    specified `Adjustable` source, event type,
    adjustment type, and value.

    This method throws an
    `IllegalArgumentException` if `source`
    is `null`.

    Parameters:
    :   `source` - The `Adjustable` object where the
        event originated
    :   `id` - An integer indicating the type of event.
        For information on allowable values, see
        the class description for [`AdjustmentEvent`](AdjustmentEvent.md "class in java.awt.event")
    :   `type` - An integer indicating the adjustment type.
        For information on allowable values, see
        the class description for [`AdjustmentEvent`](AdjustmentEvent.md "class in java.awt.event")
    :   `value` - The current value of the adjustment

    Throws:
    :   `IllegalArgumentException` - if `source` is null

    See Also:
    :   - [`EventObject.getSource()`](../../../../java.base/java/util/EventObject.md#getSource())
        - [`AWTEvent.getID()`](../AWTEvent.md#getID())
        - [`getAdjustmentType()`](#getAdjustmentType())
        - [`getValue()`](#getValue())
  + ### AdjustmentEvent

    public AdjustmentEvent([Adjustable](../Adjustable.md "interface in java.awt") source,
    int id,
    int type,
    int value,
    boolean isAdjusting)

    Constructs an `AdjustmentEvent` object with the
    specified Adjustable source, event type, adjustment type, and value.

    This method throws an
    `IllegalArgumentException` if `source`
    is `null`.

    Parameters:
    :   `source` - The `Adjustable` object where the
        event originated
    :   `id` - An integer indicating the type of event.
        For information on allowable values, see
        the class description for [`AdjustmentEvent`](AdjustmentEvent.md "class in java.awt.event")
    :   `type` - An integer indicating the adjustment type.
        For information on allowable values, see
        the class description for [`AdjustmentEvent`](AdjustmentEvent.md "class in java.awt.event")
    :   `value` - The current value of the adjustment
    :   `isAdjusting` - A boolean that equals `true` if the event is one
        of a series of multiple adjusting events,
        otherwise `false`

    Throws:
    :   `IllegalArgumentException` - if `source` is null

    Since:
    :   1.4

    See Also:
    :   - [`EventObject.getSource()`](../../../../java.base/java/util/EventObject.md#getSource())
        - [`AWTEvent.getID()`](../AWTEvent.md#getID())
        - [`getAdjustmentType()`](#getAdjustmentType())
        - [`getValue()`](#getValue())
        - [`getValueIsAdjusting()`](#getValueIsAdjusting())
* ## Method Details

  + ### getAdjustable

    public [Adjustable](../Adjustable.md "interface in java.awt") getAdjustable()

    Returns the `Adjustable` object where this event originated.

    Returns:
    :   the `Adjustable` object where this event originated
  + ### getValue

    public int getValue()

    Returns the current value in the adjustment event.

    Returns:
    :   the current value in the adjustment event
  + ### getAdjustmentType

    public int getAdjustmentType()

    Returns the type of adjustment which caused the value changed
    event. It will have one of the following values:
    - [`UNIT_INCREMENT`](#UNIT_INCREMENT)- [`UNIT_DECREMENT`](#UNIT_DECREMENT)- [`BLOCK_INCREMENT`](#BLOCK_INCREMENT)- [`BLOCK_DECREMENT`](#BLOCK_DECREMENT)- [`TRACK`](#TRACK)

    Returns:
    :   one of the adjustment values listed above
  + ### getValueIsAdjusting

    public boolean getValueIsAdjusting()

    Returns `true` if this is one of multiple
    adjustment events.

    Returns:
    :   `true` if this is one of multiple
        adjustment events, otherwise returns `false`

    Since:
    :   1.4
  + ### paramString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Description copied from class: `AWTEvent`

    Returns a string representing the state of this `Event`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Overrides:
    :   `paramString` in class `AWTEvent`

    Returns:
    :   a string representation of this event