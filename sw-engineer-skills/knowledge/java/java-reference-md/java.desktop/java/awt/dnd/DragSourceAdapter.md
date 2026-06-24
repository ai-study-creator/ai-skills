Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragSourceAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DragSourceAdapter

All Implemented Interfaces:
:   `DragSourceListener`, `DragSourceMotionListener`, `EventListener`

---

public abstract class DragSourceAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd"), [DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd")

An abstract adapter class for receiving drag source events. The methods in
this class are empty. This class exists only as a convenience for creating
listener objects.

Extend this class to create a `DragSourceEvent` listener
and override the methods for the events of interest. (If you implement the
`DragSourceListener` interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you only have to define methods for events you care about.)

Create a listener object using the extended class and then register it with
a `DragSource`. When the drag enters, moves over, or exits
a drop site, when the drop action changes, and when the drag ends, the
relevant method in the listener object is invoked, and the
`DragSourceEvent` is passed to it.

The drop site is *associated with the previous `dragEnter()`
invocation* if the latest invocation of `dragEnter()` on this
adapter corresponds to that drop site and is not followed by a
`dragExit()` invocation on this adapter.

Since:
:   1.4

See Also:
:   * [`DragSourceEvent`](DragSourceEvent.md "class in java.awt.dnd")
    * [`DragSourceListener`](DragSourceListener.md "interface in java.awt.dnd")
    * [`DragSourceMotionListener`](DragSourceMotionListener.md "interface in java.awt.dnd")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DragSourceAdapter()`

  Constructs a `DragSourceAdapter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `dragDropEnd(DragSourceDropEvent dsde)`

  This method is invoked to signify that the Drag and Drop
  operation is complete.

  `void`

  `dragEnter(DragSourceDragEvent dsde)`

  Called as the cursor's hotspot enters a platform-dependent drop site.

  `void`

  `dragExit(DragSourceEvent dse)`

  Called as the cursor's hotspot exits a platform-dependent drop site.

  `void`

  `dragMouseMoved(DragSourceDragEvent dsde)`

  Called whenever the mouse is moved during a drag operation.

  `void`

  `dragOver(DragSourceDragEvent dsde)`

  Called as the cursor's hotspot moves over a platform-dependent drop site.

  `void`

  `dropActionChanged(DragSourceDragEvent dsde)`

  Called when the user has modified the drop gesture.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DragSourceAdapter

    protected DragSourceAdapter()

    Constructs a `DragSourceAdapter`.
* ## Method Details

  + ### dragEnter

    public void dragEnter([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Called as the cursor's hotspot enters a platform-dependent drop site.
    This method is invoked when all the following conditions are true:
    - The cursor's hotspot enters the operable part of
      a platform-dependent drop site.- The drop site is active.- The drop site accepts the drag.

    Specified by:
    :   `dragEnter` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`
  + ### dragOver

    public void dragOver([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Called as the cursor's hotspot moves over a platform-dependent drop site.
    This method is invoked when all the following conditions are true:
    - The cursor's hotspot has moved, but still intersects the
      operable part of the drop site associated with the previous
      dragEnter() invocation.- The drop site is still active.- The drop site accepts the drag.

    Specified by:
    :   `dragOver` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`
  + ### dragMouseMoved

    public void dragMouseMoved([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Called whenever the mouse is moved during a drag operation.

    Specified by:
    :   `dragMouseMoved` in interface `DragSourceMotionListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`
  + ### dropActionChanged

    public void dropActionChanged([DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd") dsde)

    Called when the user has modified the drop gesture.
    This method is invoked when the state of the input
    device(s) that the user is interacting with changes.
    Such devices are typically the mouse buttons or keyboard
    modifiers that the user is interacting with.

    Specified by:
    :   `dropActionChanged` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDragEvent`
  + ### dragExit

    public void dragExit([DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd") dse)

    Called as the cursor's hotspot exits a platform-dependent drop site.
    This method is invoked when any of the following conditions are true:
    - The cursor's hotspot no longer intersects the operable part
      of the drop site associated with the previous dragEnter() invocation.OR
    - The drop site associated with the previous dragEnter() invocation
      is no longer active.OR
    - The drop site associated with the previous dragEnter() invocation
      has rejected the drag.

    Specified by:
    :   `dragExit` in interface `DragSourceListener`

    Parameters:
    :   `dse` - the `DragSourceEvent`
  + ### dragDropEnd

    public void dragDropEnd([DragSourceDropEvent](DragSourceDropEvent.md "class in java.awt.dnd") dsde)

    This method is invoked to signify that the Drag and Drop
    operation is complete. The getDropSuccess() method of
    the `DragSourceDropEvent` can be used to
    determine the termination state. The getDropAction() method
    returns the operation that the drop site selected
    to apply to the Drop operation. Once this method is complete, the
    current `DragSourceContext` and
    associated resources become invalid.

    Specified by:
    :   `dragDropEnd` in interface `DragSourceListener`

    Parameters:
    :   `dsde` - the `DragSourceDropEvent`