Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class AsyncBoxView.ChildState

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.AsyncBoxView.ChildState

All Implemented Interfaces:
:   `Runnable`

Enclosing class:
:   `AsyncBoxView`

---

public class AsyncBoxView.ChildState
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang")

A record representing the layout state of a
child view. It is runnable as a task on another
thread. All access to the child view that is
based upon a read-lock on the model should synchronize
on this object (i.e. The layout thread and the GUI
thread can both have a read lock on the model at the
same time and are not protected from each other).
Access to a child view hierarchy is serialized via
synchronization on the ChildState instance.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ChildState(View v)`

  Construct a child status.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `View`

  `getChildView()`

  Fetch the child view this record represents.

  `float`

  `getMajorOffset()`

  Get the offset along the major axis.

  `float`

  `getMajorSpan()`

  What is the span along the major axis.

  `float`

  `getMinorOffset()`

  What is the offset along the minor axis

  `float`

  `getMinorSpan()`

  What is the span along the minor axis.

  `boolean`

  `isLayoutValid()`

  Has the child view been laid out.

  `void`

  `preferenceChanged(boolean width,
  boolean height)`

  Mark preferences changed for this child.

  `void`

  `run()`

  Update the child state.

  `void`

  `setMajorOffset(float offs)`

  This method should only be called by the ChildLocator,
  it is simply a convenient place to hold the cached
  location.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ChildState

    public ChildState([View](View.md "class in javax.swing.text") v)

    Construct a child status. This needs to start
    out as fairly large so we don't falsely begin with
    the idea that all of the children are visible.

    Parameters:
    :   `v` - the view

    Since:
    :   1.4
* ## Method Details

  + ### getChildView

    public [View](View.md "class in javax.swing.text") getChildView()

    Fetch the child view this record represents.

    Returns:
    :   the child view this record represents
  + ### run

    public void run()

    Update the child state. This should be
    called by the thread that desires to spend
    time updating the child state (intended to
    be the layout thread).

    This acquires a read lock on the associated
    document for the duration of the update to
    ensure the model is not changed while it is
    operating. The first thing to do would be
    to see if any work actually needs to be done.
    The following could have conceivably happened
    while the state was waiting to be updated:
    1. The child may have been removed from the
       view hierarchy.+ The child may have been updated by a
         higher priority operation (i.e. the child
         may have become visible).

    Specified by:
    :   `run` in interface `Runnable`
  + ### getMinorSpan

    public float getMinorSpan()

    What is the span along the minor axis.

    Returns:
    :   the span along the minor axis
  + ### getMinorOffset

    public float getMinorOffset()

    What is the offset along the minor axis

    Returns:
    :   the offset along the minor axis
  + ### getMajorSpan

    public float getMajorSpan()

    What is the span along the major axis.

    Returns:
    :   the span along the major axis
  + ### getMajorOffset

    public float getMajorOffset()

    Get the offset along the major axis.

    Returns:
    :   the offset along the major axis
  + ### setMajorOffset

    public void setMajorOffset(float offs)

    This method should only be called by the ChildLocator,
    it is simply a convenient place to hold the cached
    location.

    Parameters:
    :   `offs` - offsets
  + ### preferenceChanged

    public void preferenceChanged(boolean width,
    boolean height)

    Mark preferences changed for this child.

    Parameters:
    :   `width` - true if the width preference has changed
    :   `height` - true if the height preference has changed

    See Also:
    :   - [`JComponent.revalidate()`](../JComponent.md#revalidate())
  + ### isLayoutValid

    public boolean isLayoutValid()

    Has the child view been laid out.

    Returns:
    :   whether or not the child view been laid out.