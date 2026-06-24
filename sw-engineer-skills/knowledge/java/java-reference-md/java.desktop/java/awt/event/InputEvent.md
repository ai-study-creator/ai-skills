Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class InputEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../AWTEvent.md "class in java.awt")

[java.awt.event.ComponentEvent](ComponentEvent.md "class in java.awt.event")

java.awt.event.InputEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `KeyEvent`, `MouseEvent`

---

public abstract sealed class InputEvent
extends [ComponentEvent](ComponentEvent.md "class in java.awt.event")
permits [KeyEvent](KeyEvent.md "class in java.awt.event"), [MouseEvent](MouseEvent.md "class in java.awt.event")

The root event class for all component-level input events.
Input events are delivered to listeners before they are
processed normally by the source where they originated.
This allows listeners and component subclasses to "consume"
the event so that the source will not process them in their
default manner. For example, consuming mousePressed events
on a Button component will prevent the Button from being
activated.

Since:
:   1.1

See Also:
:   * [`KeyEvent`](KeyEvent.md "class in java.awt.event")
    * [`KeyAdapter`](KeyAdapter.md "class in java.awt.event")
    * [`MouseEvent`](MouseEvent.md "class in java.awt.event")
    * [`MouseAdapter`](MouseAdapter.md "class in java.awt.event")
    * [`MouseMotionAdapter`](MouseMotionAdapter.md "class in java.awt.event")
    * [Serialized Form](../../../../serialized-form.md#java.awt.event.InputEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ALT_DOWN_MASK`

  The Alt key extended modifier constant.

  `static final int`

  `ALT_GRAPH_DOWN_MASK`

  The AltGraph key extended modifier constant.

  `static final int`

  `ALT_GRAPH_MASK`

  Deprecated.

  It is recommended that ALT\_GRAPH\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead

  `static final int`

  `ALT_MASK`

  Deprecated.

  It is recommended that ALT\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead

  `static final int`

  `BUTTON1_DOWN_MASK`

  The Mouse Button1 extended modifier constant.

  `static final int`

  `BUTTON1_MASK`

  Deprecated.

  It is recommended that BUTTON1\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead

  `static final int`

  `BUTTON2_DOWN_MASK`

  The Mouse Button2 extended modifier constant.

  `static final int`

  `BUTTON2_MASK`

  Deprecated.

  It is recommended that BUTTON2\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead.

  `static final int`

  `BUTTON3_DOWN_MASK`

  The Mouse Button3 extended modifier constant.

  `static final int`

  `BUTTON3_MASK`

  Deprecated.

  It is recommended that BUTTON3\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead.

  `static final int`

  `CTRL_DOWN_MASK`

  The Control key extended modifier constant.

  `static final int`

  `CTRL_MASK`

  Deprecated.

  It is recommended that CTRL\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead

  `static final int`

  `META_DOWN_MASK`

  The Meta key extended modifier constant.

  `static final int`

  `META_MASK`

  Deprecated.

  It is recommended that META\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead

  `static final int`

  `SHIFT_DOWN_MASK`

  The Shift key extended modifier constant.

  `static final int`

  `SHIFT_MASK`

  Deprecated.

  It is recommended that SHIFT\_DOWN\_MASK and
  [`getModifiersEx()`](#getModifiersEx()) be used instead

  ### Fields inherited from class java.awt.event.[ComponentEvent](ComponentEvent.md "class in java.awt.event")

  `COMPONENT_FIRST, COMPONENT_HIDDEN, COMPONENT_LAST, COMPONENT_MOVED, COMPONENT_RESIZED, COMPONENT_SHOWN`

  ### Fields inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `ACTION_EVENT_MASK, ADJUSTMENT_EVENT_MASK, COMPONENT_EVENT_MASK, consumed, CONTAINER_EVENT_MASK, FOCUS_EVENT_MASK, HIERARCHY_BOUNDS_EVENT_MASK, HIERARCHY_EVENT_MASK, id, INPUT_METHOD_EVENT_MASK, INVOCATION_EVENT_MASK, ITEM_EVENT_MASK, KEY_EVENT_MASK, MOUSE_EVENT_MASK, MOUSE_MOTION_EVENT_MASK, MOUSE_WHEEL_EVENT_MASK, PAINT_EVENT_MASK, RESERVED_ID_MAX, TEXT_EVENT_MASK, WINDOW_EVENT_MASK, WINDOW_FOCUS_EVENT_MASK, WINDOW_STATE_EVENT_MASK`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `consume()`

  Consumes this event so that it will not be processed
  in the default manner by the source which originated it.

  `static int`

  `getMaskForButton(int button)`

  A method to obtain a mask for any existing mouse button.

  `int`

  `getModifiers()`

  Deprecated.

  It is recommended that extended modifier keys and
  [`getModifiersEx()`](#getModifiersEx()) be used instead

  `int`

  `getModifiersEx()`

  Returns the extended modifier mask for this event.

  `static String`

  `getModifiersExText(int modifiers)`

  Returns a String describing the extended modifier keys and
  mouse buttons, such as "Shift", "Button1", or "Ctrl+Shift".

  `long`

  `getWhen()`

  Returns the difference in milliseconds between the timestamp of when this event occurred and
  midnight, January 1, 1970 UTC.

  `boolean`

  `isAltDown()`

  Returns whether or not the Alt modifier is down on this event.

  `boolean`

  `isAltGraphDown()`

  Returns whether or not the AltGraph modifier is down on this event.

  `boolean`

  `isConsumed()`

  Returns whether or not this event has been consumed.

  `boolean`

  `isControlDown()`

  Returns whether or not the Control modifier is down on this event.

  `boolean`

  `isMetaDown()`

  Returns whether or not the Meta modifier is down on this event.

  `boolean`

  `isShiftDown()`

  Returns whether or not the Shift modifier is down on this event.

  ### Methods inherited from class java.awt.event.[ComponentEvent](ComponentEvent.md "class in java.awt.event")

  `getComponent, paramString`

  ### Methods inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `getID, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### SHIFT\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int SHIFT\_MASK

    Deprecated.

    It is recommended that SHIFT\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead

    The Shift key modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.SHIFT_MASK)
  + ### CTRL\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int CTRL\_MASK

    Deprecated.

    It is recommended that CTRL\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead

    The Control key modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.CTRL_MASK)
  + ### META\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int META\_MASK

    Deprecated.

    It is recommended that META\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead

    The Meta key modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.META_MASK)
  + ### ALT\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int ALT\_MASK

    Deprecated.

    It is recommended that ALT\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead

    The Alt key modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.ALT_MASK)
  + ### ALT\_GRAPH\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int ALT\_GRAPH\_MASK

    Deprecated.

    It is recommended that ALT\_GRAPH\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead

    The AltGraph key modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.ALT_GRAPH_MASK)
  + ### BUTTON1\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int BUTTON1\_MASK

    Deprecated.

    It is recommended that BUTTON1\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead

    The Mouse Button1 modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.BUTTON1_MASK)
  + ### BUTTON2\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int BUTTON2\_MASK

    Deprecated.

    It is recommended that BUTTON2\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead. Note that
    BUTTON2\_MASK has the same value as ALT\_MASK.

    The Mouse Button2 modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.BUTTON2_MASK)
  + ### BUTTON3\_MASK

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int BUTTON3\_MASK

    Deprecated.

    It is recommended that BUTTON3\_DOWN\_MASK and
    [`getModifiersEx()`](#getModifiersEx()) be used instead. Note that
    BUTTON3\_MASK has the same value as META\_MASK.

    The Mouse Button3 modifier constant.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.BUTTON3_MASK)
  + ### SHIFT\_DOWN\_MASK

    public static final int SHIFT\_DOWN\_MASK

    The Shift key extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.SHIFT_DOWN_MASK)
  + ### CTRL\_DOWN\_MASK

    public static final int CTRL\_DOWN\_MASK

    The Control key extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.CTRL_DOWN_MASK)
  + ### META\_DOWN\_MASK

    public static final int META\_DOWN\_MASK

    The Meta key extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.META_DOWN_MASK)
  + ### ALT\_DOWN\_MASK

    public static final int ALT\_DOWN\_MASK

    The Alt key extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.ALT_DOWN_MASK)
  + ### BUTTON1\_DOWN\_MASK

    public static final int BUTTON1\_DOWN\_MASK

    The Mouse Button1 extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.BUTTON1_DOWN_MASK)
  + ### BUTTON2\_DOWN\_MASK

    public static final int BUTTON2\_DOWN\_MASK

    The Mouse Button2 extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.BUTTON2_DOWN_MASK)
  + ### BUTTON3\_DOWN\_MASK

    public static final int BUTTON3\_DOWN\_MASK

    The Mouse Button3 extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.BUTTON3_DOWN_MASK)
  + ### ALT\_GRAPH\_DOWN\_MASK

    public static final int ALT\_GRAPH\_DOWN\_MASK

    The AltGraph key extended modifier constant.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InputEvent.ALT_GRAPH_DOWN_MASK)
* ## Method Details

  + ### getMaskForButton

    public static int getMaskForButton(int button)

    A method to obtain a mask for any existing mouse button.
    The returned mask may be used for different purposes. Following are some of them:
    - [`mousePress(buttons)`](../Robot.md#mousePress(int)) and
      [`mouseRelease(buttons)`](../Robot.md#mouseRelease(int))- as a `modifiers` parameter when creating a new [`MouseEvent`](MouseEvent.md "class in java.awt.event") instance- to check [`modifiersEx`](MouseEvent.md#getModifiersEx()) of existing `MouseEvent`

    Parameters:
    :   `button` - is a number to represent a button starting from 1.
        For example,

        ```
         int button = InputEvent.getMaskForButton(1);
        ```

        will have the same meaning as

        ```
         int button = InputEvent.getMaskForButton(MouseEvent.BUTTON1);
        ```

        because [`MouseEvent.BUTTON1`](MouseEvent.md#BUTTON1) equals to 1.
        If a mouse has three enabled buttons(see [`MouseInfo.getNumberOfButtons()`](../MouseInfo.md#getNumberOfButtons()))
        then the values from the left column passed into the method will return
        corresponding values from the right column:

        ```
            button    returned mask
            BUTTON1  BUTTON1_DOWN_MASK
            BUTTON2  BUTTON2_DOWN_MASK
            BUTTON3  BUTTON3_DOWN_MASK
        ```

        If a mouse has more than three enabled buttons then more values
        are admissible (4, 5, etc.). There is no assigned constants for these extended buttons.
        The button masks for the extra buttons returned by this method have no assigned names like the
        first three button masks.

        This method has the following implementation restriction.
        It returns masks for a limited number of buttons only. The maximum number is
        implementation dependent and may vary.
        This limit is defined by the relevant number
        of buttons that may hypothetically exist on the mouse but it is greater than the
        [`MouseInfo.getNumberOfButtons()`](../MouseInfo.md#getNumberOfButtons()).

    Returns:
    :   a mask for an existing mouse button.

    Throws:
    :   `IllegalArgumentException` - if `button` is less than zero or greater than the number
        of button masks reserved for buttons

    Since:
    :   1.7

    See Also:
    :   - [`MouseInfo.getNumberOfButtons()`](../MouseInfo.md#getNumberOfButtons())
        - [`Toolkit.areExtraMouseButtonsEnabled()`](../Toolkit.md#areExtraMouseButtonsEnabled())
        - [`getModifiers()`](#getModifiers())
        - [`MouseEvent.getModifiersEx()`](MouseEvent.md#getModifiersEx())
  + ### isShiftDown

    public boolean isShiftDown()

    Returns whether or not the Shift modifier is down on this event.

    Returns:
    :   whether or not the Shift modifier is down on this event
  + ### isControlDown

    public boolean isControlDown()

    Returns whether or not the Control modifier is down on this event.

    Returns:
    :   whether or not the Control modifier is down on this event
  + ### isMetaDown

    public boolean isMetaDown()

    Returns whether or not the Meta modifier is down on this event.

    Returns:
    :   whether or not the Meta modifier is down on this event
  + ### isAltDown

    public boolean isAltDown()

    Returns whether or not the Alt modifier is down on this event.

    Returns:
    :   whether or not the Alt modifier is down on this event
  + ### isAltGraphDown

    public boolean isAltGraphDown()

    Returns whether or not the AltGraph modifier is down on this event.

    Returns:
    :   whether or not the AltGraph modifier is down on this event
  + ### getWhen

    public long getWhen()

    Returns the difference in milliseconds between the timestamp of when this event occurred and
    midnight, January 1, 1970 UTC.

    Returns:
    :   the difference in milliseconds between the timestamp and midnight, January 1, 1970 UTC
  + ### getModifiers

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public int getModifiers()

    Deprecated.

    It is recommended that extended modifier keys and
    [`getModifiersEx()`](#getModifiersEx()) be used instead

    Returns the modifier mask for this event.

    Returns:
    :   the modifier mask for this event
  + ### getModifiersEx

    public int getModifiersEx()

    Returns the extended modifier mask for this event.

    Extended modifiers are the modifiers that ends with the \_DOWN\_MASK suffix,
    such as ALT\_DOWN\_MASK, BUTTON1\_DOWN\_MASK, and others.

    Extended modifiers represent the state of all modal keys,
    such as ALT, CTRL, META, and the mouse buttons just after
    the event occurred.

    For example, if the user presses **button 1** followed by
    **button 2**, and then releases them in the same order,
    the following sequence of events is generated:

    ```
        MOUSE_PRESSED:  BUTTON1_DOWN_MASK
        MOUSE_PRESSED:  BUTTON1_DOWN_MASK | BUTTON2_DOWN_MASK
        MOUSE_RELEASED: BUTTON2_DOWN_MASK
        MOUSE_CLICKED:  BUTTON2_DOWN_MASK
        MOUSE_RELEASED:
        MOUSE_CLICKED:
    ```

    It is not recommended to compare the return value of this method
    using `==` because new modifiers can be added in the future.
    For example, the appropriate way to check that SHIFT and BUTTON1 are
    down, but CTRL is up is demonstrated by the following code:

    ```
        int onmask = SHIFT_DOWN_MASK | BUTTON1_DOWN_MASK;
        int offmask = CTRL_DOWN_MASK;
        if ((event.getModifiersEx() & (onmask | offmask)) == onmask) {
            ...
        }
    ```

    The above code will work even if new modifiers are added.

    Returns:
    :   the extended modifier mask for this event

    Since:
    :   1.4
  + ### consume

    public void consume()

    Consumes this event so that it will not be processed
    in the default manner by the source which originated it.

    Overrides:
    :   `consume` in class `AWTEvent`
  + ### isConsumed

    public boolean isConsumed()

    Returns whether or not this event has been consumed.

    Overrides:
    :   `isConsumed` in class `AWTEvent`

    Returns:
    :   whether or not this event has been consumed

    See Also:
    :   - [`consume()`](#consume())
  + ### getModifiersExText

    public static [String](../../../../java.base/java/lang/String.md "class in java.lang") getModifiersExText(int modifiers)

    Returns a String describing the extended modifier keys and
    mouse buttons, such as "Shift", "Button1", or "Ctrl+Shift".
    These strings can be localized by changing the
    `awt.properties` file.

    Note that passing negative parameter is incorrect,
    and will cause the returning an unspecified string.
    Zero parameter means that no modifiers were passed and will
    cause the returning an empty string.

    Parameters:
    :   `modifiers` - a modifier mask describing the extended
        modifier keys and mouse buttons for the event

    Returns:
    :   a text description of the combination of extended
        modifier keys and mouse buttons that were held down
        during the event.

    Since:
    :   1.4