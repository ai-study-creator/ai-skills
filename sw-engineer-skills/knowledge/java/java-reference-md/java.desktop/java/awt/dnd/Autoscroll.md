Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Interface Autoscroll

---

public interface Autoscroll

During DnD operations it is possible that a user may wish to drop the
subject of the operation on a region of a scrollable GUI control that is
not currently visible to the user.

In such situations it is desirable that the GUI control detect this
and institute a scroll operation in order to make obscured region(s)
visible to the user. This feature is known as autoscrolling.

If a GUI control is both an active `DropTarget`
and is also scrollable, it
can receive notifications of autoscrolling gestures by the user from
the DnD system by implementing this interface.

An autoscrolling gesture is initiated by the user by keeping the drag
cursor motionless with a border region of the `Component`,
referred to as
the "autoscrolling region", for a predefined period of time, this will
result in repeated scroll requests to the `Component`
until the drag `Cursor` resumes its motion.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `autoscroll(Point cursorLocn)`

  notify the `Component` to autoscroll

  `Insets`

  `getAutoscrollInsets()`

  This method returns the `Insets` describing
  the autoscrolling region or border relative
  to the geometry of the implementing Component.

* ## Method Details

  + ### getAutoscrollInsets

    [Insets](../Insets.md "class in java.awt") getAutoscrollInsets()

    This method returns the `Insets` describing
    the autoscrolling region or border relative
    to the geometry of the implementing Component.

    This value is read once by the `DropTarget`
    upon entry of the drag `Cursor`
    into the associated `Component`.

    Returns:
    :   the Insets
  + ### autoscroll

    void autoscroll([Point](../Point.md "class in java.awt") cursorLocn)

    notify the `Component` to autoscroll

    Parameters:
    :   `cursorLocn` - A `Point` indicating the
        location of the cursor that triggered this operation.