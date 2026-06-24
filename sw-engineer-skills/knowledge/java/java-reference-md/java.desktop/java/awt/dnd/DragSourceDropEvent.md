Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragSourceDropEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.dnd.DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd")

java.awt.dnd.DragSourceDropEvent

All Implemented Interfaces:
:   `Serializable`

---

public class DragSourceDropEvent
extends [DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd")

The `DragSourceDropEvent` is delivered
from the `DragSourceContextPeer`,
via the `DragSourceContext`, to the `dragDropEnd`
method of `DragSourceListener`s registered with that
`DragSourceContext` and with its associated
`DragSource`.
It contains sufficient information for the
originator of the operation
to provide appropriate feedback to the end user
when the operation completes.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DragSourceDropEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DragSourceDropEvent(DragSourceContext dsc)`

  Construct a `DragSourceDropEvent`
  for a drag that does not result in a drop.

  `DragSourceDropEvent(DragSourceContext dsc,
  int action,
  boolean success)`

  Construct a `DragSourceDropEvent` for a drop,
  given the
  `DragSourceContext`, the drop action,
  and a `boolean` indicating if the drop was successful.

  `DragSourceDropEvent(DragSourceContext dsc,
  int action,
  boolean success,
  int x,
  int y)`

  Construct a `DragSourceDropEvent` for a drop, given the
  `DragSourceContext`, the drop action, a `boolean`
  indicating if the drop was successful, and coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDropAction()`

  This method returns an `int` representing
  the action performed by the target on the subject of the drop.

  `boolean`

  `getDropSuccess()`

  This method returns a `boolean` indicating
  if the drop was successful.

  ### Methods inherited from class java.awt.dnd.[DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd")

  `getDragSourceContext, getLocation, getX, getY`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DragSourceDropEvent

    public DragSourceDropEvent([DragSourceContext](DragSourceContext.md "class in java.awt.dnd") dsc,
    int action,
    boolean success)

    Construct a `DragSourceDropEvent` for a drop,
    given the
    `DragSourceContext`, the drop action,
    and a `boolean` indicating if the drop was successful.
    The coordinates for this `DragSourceDropEvent`
    are not specified, so `getLocation` will return
    `null` for this event.

    The argument `action` should be one of `DnDConstants`
    that represents a single action.
    This constructor does not throw any exception for invalid `action`.

    Parameters:
    :   `dsc` - the `DragSourceContext`
        associated with this `DragSourceDropEvent`
    :   `action` - the drop action
    :   `success` - a boolean indicating if the drop was successful

    Throws:
    :   `IllegalArgumentException` - if `dsc` is `null`.

    See Also:
    :   - [`DragSourceEvent.getLocation()`](DragSourceEvent.md#getLocation())
  + ### DragSourceDropEvent

    public DragSourceDropEvent([DragSourceContext](DragSourceContext.md "class in java.awt.dnd") dsc,
    int action,
    boolean success,
    int x,
    int y)

    Construct a `DragSourceDropEvent` for a drop, given the
    `DragSourceContext`, the drop action, a `boolean`
    indicating if the drop was successful, and coordinates.

    The argument `action` should be one of `DnDConstants`
    that represents a single action.
    This constructor does not throw any exception for invalid `action`.

    Parameters:
    :   `dsc` - the `DragSourceContext`
        associated with this `DragSourceDropEvent`
    :   `action` - the drop action
    :   `success` - a boolean indicating if the drop was successful
    :   `x` - the horizontal coordinate for the cursor location
    :   `y` - the vertical coordinate for the cursor location

    Throws:
    :   `IllegalArgumentException` - if `dsc` is `null`.

    Since:
    :   1.4
  + ### DragSourceDropEvent

    public DragSourceDropEvent([DragSourceContext](DragSourceContext.md "class in java.awt.dnd") dsc)

    Construct a `DragSourceDropEvent`
    for a drag that does not result in a drop.
    The coordinates for this `DragSourceDropEvent`
    are not specified, so `getLocation` will return
    `null` for this event.

    Parameters:
    :   `dsc` - the `DragSourceContext`

    Throws:
    :   `IllegalArgumentException` - if `dsc` is `null`.

    See Also:
    :   - [`DragSourceEvent.getLocation()`](DragSourceEvent.md#getLocation())
* ## Method Details

  + ### getDropSuccess

    public boolean getDropSuccess()

    This method returns a `boolean` indicating
    if the drop was successful.

    Returns:
    :   `true` if the drop target accepted the drop and
        successfully performed a drop action;
        `false` if the drop target rejected the drop or
        if the drop target accepted the drop, but failed to perform
        a drop action.
  + ### getDropAction

    public int getDropAction()

    This method returns an `int` representing
    the action performed by the target on the subject of the drop.

    Returns:
    :   the action performed by the target on the subject of the drop
        if the drop target accepted the drop and the target drop action
        is supported by the drag source; otherwise,
        `DnDConstants.ACTION_NONE`.