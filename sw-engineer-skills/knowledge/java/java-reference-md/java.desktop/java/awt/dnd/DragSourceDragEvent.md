Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragSourceDragEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.dnd.DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd")

java.awt.dnd.DragSourceDragEvent

All Implemented Interfaces:
:   `Serializable`

---

public class DragSourceDragEvent
extends [DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd")

The `DragSourceDragEvent` is
delivered from the `DragSourceContextPeer`,
via the `DragSourceContext`, to the `DragSourceListener`
registered with that `DragSourceContext` and with its associated
`DragSource`.

The `DragSourceDragEvent` reports the *target drop action*
and the *user drop action* that reflect the current state of
the drag operation.

*Target drop action* is one of `DnDConstants` that represents
the drop action selected by the current drop target if this drop action is
supported by the drag source or `DnDConstants.ACTION_NONE` if this
drop action is not supported by the drag source.

*User drop action* depends on the drop actions supported by the drag
source and the drop action selected by the user. The user can select a drop
action by pressing modifier keys during the drag operation:

```
   Ctrl + Shift -> ACTION_LINK
   Ctrl         -> ACTION_COPY
   Shift        -> ACTION_MOVE
```

If the user selects a drop action, the *user drop action* is one of
`DnDConstants` that represents the selected drop action if this
drop action is supported by the drag source or
`DnDConstants.ACTION_NONE` if this drop action is not supported
by the drag source.

If the user doesn't select a drop action, the set of
`DnDConstants` that represents the set of drop actions supported
by the drag source is searched for `DnDConstants.ACTION_MOVE`,
then for `DnDConstants.ACTION_COPY`, then for
`DnDConstants.ACTION_LINK` and the *user drop action* is the
first constant found. If no constant is found the *user drop action*
is `DnDConstants.ACTION_NONE`.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DragSourceDragEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DragSourceDragEvent(DragSourceContext dsc,
  int dropAction,
  int action,
  int modifiers)`

  Constructs a `DragSourceDragEvent`.

  `DragSourceDragEvent(DragSourceContext dsc,
  int dropAction,
  int action,
  int modifiers,
  int x,
  int y)`

  Constructs a `DragSourceDragEvent` given the specified
  `DragSourceContext`, user drop action, target drop action,
  modifiers and coordinates.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDropAction()`

  This method returns the logical intersection of
  the target drop action and the set of drop actions supported by
  the drag source.

  `int`

  `getGestureModifiers()`

  This method returns an `int` representing
  the current state of the input device modifiers
  associated with the user's gesture.

  `int`

  `getGestureModifiersEx()`

  This method returns an `int` representing
  the current state of the input device extended modifiers
  associated with the user's gesture.

  `int`

  `getTargetActions()`

  This method returns the target drop action.

  `int`

  `getUserAction()`

  This method returns the user drop action.

  ### Methods inherited from class java.awt.dnd.[DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd")

  `getDragSourceContext, getLocation, getX, getY`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DragSourceDragEvent

    public DragSourceDragEvent([DragSourceContext](DragSourceContext.md "class in java.awt.dnd") dsc,
    int dropAction,
    int action,
    int modifiers)

    Constructs a `DragSourceDragEvent`.
    This class is typically
    instantiated by the `DragSourceContextPeer`
    rather than directly
    by client code.
    The coordinates for this `DragSourceDragEvent`
    are not specified, so `getLocation` will return
    `null` for this event.

    The arguments `dropAction` and `action` should
    be one of `DnDConstants` that represents a single action.
    The argument `modifiers` should be either a bitwise mask
    of old `java.awt.event.InputEvent.*_MASK` constants or a
    bitwise mask of extended `java.awt.event.InputEvent.*_DOWN_MASK`
    constants.
    This constructor does not throw any exception for invalid `dropAction`,
    `action` and `modifiers`.

    Parameters:
    :   `dsc` - the `DragSourceContext` that is to manage
        notifications for this event.
    :   `dropAction` - the user drop action.
    :   `action` - the target drop action.
    :   `modifiers` - the modifier keys down during event (shift, ctrl,
        alt, meta)
        Either extended \_DOWN\_MASK or old \_MASK modifiers
        should be used, but both models should not be mixed
        in one event. Use of the extended modifiers is
        preferred.

    Throws:
    :   `IllegalArgumentException` - if `dsc` is `null`.

    See Also:
    :   - [`InputEvent`](../event/InputEvent.md "class in java.awt.event")
        - [`DragSourceEvent.getLocation()`](DragSourceEvent.md#getLocation())
  + ### DragSourceDragEvent

    public DragSourceDragEvent([DragSourceContext](DragSourceContext.md "class in java.awt.dnd") dsc,
    int dropAction,
    int action,
    int modifiers,
    int x,
    int y)

    Constructs a `DragSourceDragEvent` given the specified
    `DragSourceContext`, user drop action, target drop action,
    modifiers and coordinates.

    The arguments `dropAction` and `action` should
    be one of `DnDConstants` that represents a single action.
    The argument `modifiers` should be either a bitwise mask
    of old `java.awt.event.InputEvent.*_MASK` constants or a
    bitwise mask of extended `java.awt.event.InputEvent.*_DOWN_MASK`
    constants.
    This constructor does not throw any exception for invalid `dropAction`,
    `action` and `modifiers`.

    Parameters:
    :   `dsc` - the `DragSourceContext` associated with this
        event.
    :   `dropAction` - the user drop action.
    :   `action` - the target drop action.
    :   `modifiers` - the modifier keys down during event (shift, ctrl,
        alt, meta)
        Either extended \_DOWN\_MASK or old \_MASK modifiers
        should be used, but both models should not be mixed
        in one event. Use of the extended modifiers is
        preferred.
    :   `x` - the horizontal coordinate for the cursor location
    :   `y` - the vertical coordinate for the cursor location

    Throws:
    :   `IllegalArgumentException` - if `dsc` is `null`.

    Since:
    :   1.4

    See Also:
    :   - [`InputEvent`](../event/InputEvent.md "class in java.awt.event")
* ## Method Details

  + ### getTargetActions

    public int getTargetActions()

    This method returns the target drop action.

    Returns:
    :   the target drop action.
  + ### getGestureModifiers

    public int getGestureModifiers()

    This method returns an `int` representing
    the current state of the input device modifiers
    associated with the user's gesture. Typically these
    would be mouse buttons or keyboard modifiers.

    If the `modifiers` passed to the constructor
    are invalid, this method returns them unchanged.

    Returns:
    :   the current state of the input device modifiers
  + ### getGestureModifiersEx

    public int getGestureModifiersEx()

    This method returns an `int` representing
    the current state of the input device extended modifiers
    associated with the user's gesture.
    See [`InputEvent.getModifiersEx()`](../event/InputEvent.md#getModifiersEx())

    If the `modifiers` passed to the constructor
    are invalid, this method returns them unchanged.

    Returns:
    :   the current state of the input device extended modifiers

    Since:
    :   1.4
  + ### getUserAction

    public int getUserAction()

    This method returns the user drop action.

    Returns:
    :   the user drop action.
  + ### getDropAction

    public int getDropAction()

    This method returns the logical intersection of
    the target drop action and the set of drop actions supported by
    the drag source.

    Returns:
    :   the logical intersection of the target drop action and
        the set of drop actions supported by the drag source.