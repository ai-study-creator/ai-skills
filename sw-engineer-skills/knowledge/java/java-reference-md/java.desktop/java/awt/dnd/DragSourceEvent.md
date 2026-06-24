Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragSourceEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.awt.dnd.DragSourceEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DragSourceDragEvent`, `DragSourceDropEvent`

---

public class DragSourceEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

This class is the base class for
`DragSourceDragEvent` and
`DragSourceDropEvent`.

`DragSourceEvent`s are generated whenever the drag enters, moves
over, or exits a drop site, when the drop action changes, and when the drag
ends. The location for the generated `DragSourceEvent` specifies
the mouse cursor location in screen coordinates at the moment this event
occurred.

In a multi-screen environment without a virtual device, the cursor location is
specified in the coordinate system of the *initiator*
`GraphicsConfiguration`. The *initiator*
`GraphicsConfiguration` is the `GraphicsConfiguration`
of the `Component` on which the drag gesture for the current drag
operation was recognized. If the cursor location is outside the bounds of
the initiator `GraphicsConfiguration`, the reported coordinates are
clipped to fit within the bounds of that `GraphicsConfiguration`.

In a multi-screen environment with a virtual device, the location is specified
in the corresponding virtual coordinate system. If the cursor location is
outside the bounds of the virtual device the reported coordinates are
clipped to fit within the bounds of the virtual device.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DragSourceEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DragSourceEvent(DragSourceContext dsc)`

  Construct a `DragSourceEvent`
  given a specified `DragSourceContext`.

  `DragSourceEvent(DragSourceContext dsc,
  int x,
  int y)`

  Construct a `DragSourceEvent` given a specified
  `DragSourceContext`, and coordinates of the cursor
  location.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `DragSourceContext`

  `getDragSourceContext()`

  This method returns the `DragSourceContext` that
  originated the event.

  `Point`

  `getLocation()`

  This method returns a `Point` indicating the cursor
  location in screen coordinates at the moment this event occurred, or
  `null` if the cursor location is not specified for this
  event.

  `int`

  `getX()`

  This method returns the horizontal coordinate of the cursor location in
  screen coordinates at the moment this event occurred, or zero if the
  cursor location is not specified for this event.

  `int`

  `getY()`

  This method returns the vertical coordinate of the cursor location in
  screen coordinates at the moment this event occurred, or zero if the
  cursor location is not specified for this event.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DragSourceEvent

    public DragSourceEvent([DragSourceContext](DragSourceContext.md "class in java.awt.dnd") dsc)

    Construct a `DragSourceEvent`
    given a specified `DragSourceContext`.
    The coordinates for this `DragSourceEvent`
    are not specified, so `getLocation` will return
    `null` for this event.

    Parameters:
    :   `dsc` - the `DragSourceContext`

    Throws:
    :   `IllegalArgumentException` - if `dsc` is `null`.

    See Also:
    :   - [`getLocation()`](#getLocation())
  + ### DragSourceEvent

    public DragSourceEvent([DragSourceContext](DragSourceContext.md "class in java.awt.dnd") dsc,
    int x,
    int y)

    Construct a `DragSourceEvent` given a specified
    `DragSourceContext`, and coordinates of the cursor
    location.

    Parameters:
    :   `dsc` - the `DragSourceContext`
    :   `x` - the horizontal coordinate for the cursor location
    :   `y` - the vertical coordinate for the cursor location

    Throws:
    :   `IllegalArgumentException` - if `dsc` is `null`.

    Since:
    :   1.4
* ## Method Details

  + ### getDragSourceContext

    public [DragSourceContext](DragSourceContext.md "class in java.awt.dnd") getDragSourceContext()

    This method returns the `DragSourceContext` that
    originated the event.

    Returns:
    :   the `DragSourceContext` that originated the event
  + ### getLocation

    public [Point](../Point.md "class in java.awt") getLocation()

    This method returns a `Point` indicating the cursor
    location in screen coordinates at the moment this event occurred, or
    `null` if the cursor location is not specified for this
    event.

    Returns:
    :   the `Point` indicating the cursor location
        or `null` if the cursor location is not specified

    Since:
    :   1.4
  + ### getX

    public int getX()

    This method returns the horizontal coordinate of the cursor location in
    screen coordinates at the moment this event occurred, or zero if the
    cursor location is not specified for this event.

    Returns:
    :   an integer indicating the horizontal coordinate of the cursor
        location or zero if the cursor location is not specified

    Since:
    :   1.4
  + ### getY

    public int getY()

    This method returns the vertical coordinate of the cursor location in
    screen coordinates at the moment this event occurred, or zero if the
    cursor location is not specified for this event.

    Returns:
    :   an integer indicating the vertical coordinate of the cursor
        location or zero if the cursor location is not specified

    Since:
    :   1.4