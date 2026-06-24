Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class AsyncBoxView.ChildLocator

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.AsyncBoxView.ChildLocator

Enclosing class:
:   `AsyncBoxView`

---

public class AsyncBoxView.ChildLocator
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A class to manage the effective position of the
child views in a localized area while changes are
being made around the localized area. The AsyncBoxView
may be continuously changing, but the visible area
needs to remain fairly stable until the layout thread
decides to publish an update to the parent.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Rectangle`

  `childAlloc`

  A shape to use for the child allocation to avoid
  creating a lot of garbage.

  `protected Rectangle`

  `lastAlloc`

  The last seen allocation (for repainting when changes
  are flushed upward).

  `protected AsyncBoxView.ChildState`

  `lastValidOffset`

  The location of the last offset calculation
  that is valid.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ChildLocator()`

  construct a child locator.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `childChanged(AsyncBoxView.ChildState cs)`

  Notification that a child changed.

  `protected Shape`

  `getChildAllocation(int index)`

  Fetch the allocation to use for a child view.

  `Shape`

  `getChildAllocation(int index,
  Shape a)`

  Fetch the allocation to use for a child view.

  `int`

  `getViewIndexAtPoint(float x,
  float y,
  Shape a)`

  Fetches the child view index at the given point.

  `protected int`

  `getViewIndexAtVisualOffset(float targetOffset)`

  Locate the view responsible for an offset into the box
  along the major axis.

  `void`

  `paintChildren(Graphics g)`

  Paint the children that intersect the clip area.

  `protected void`

  `setAllocation(Shape a)`

  Copy the currently allocated shape into the Rectangle
  used to store the current allocation.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### lastValidOffset

    protected [AsyncBoxView.ChildState](AsyncBoxView.ChildState.md "class in javax.swing.text") lastValidOffset

    The location of the last offset calculation
    that is valid.
  + ### lastAlloc

    protected [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") lastAlloc

    The last seen allocation (for repainting when changes
    are flushed upward).
  + ### childAlloc

    protected [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") childAlloc

    A shape to use for the child allocation to avoid
    creating a lot of garbage.
* ## Constructor Details

  + ### ChildLocator

    public ChildLocator()

    construct a child locator.
* ## Method Details

  + ### childChanged

    public void childChanged([AsyncBoxView.ChildState](AsyncBoxView.ChildState.md "class in javax.swing.text") cs)

    Notification that a child changed. This can effect
    whether or not new offset calculations are needed.
    This is called by a ChildState object that has
    changed it's major span. This can therefore be
    called by multiple threads.

    Parameters:
    :   `cs` - the child state
  + ### paintChildren

    public void paintChildren([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Paint the children that intersect the clip area.

    Parameters:
    :   `g` - the rendering surface to use
  + ### getChildAllocation

    public [Shape](../../../java/awt/Shape.md "interface in java.awt") getChildAllocation(int index,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Fetch the allocation to use for a child view.
    This will update the offsets for all children
    not yet updated before the given index.

    Parameters:
    :   `index` - the child index
    :   `a` - the allocation

    Returns:
    :   the allocation to use for a child view
  + ### getViewIndexAtPoint

    public int getViewIndexAtPoint(float x,
    float y,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Fetches the child view index at the given point.
    This is called by the various View methods that
    need to calculate which child to forward a message
    to. This should be called by a block synchronized
    on this object, and would typically be followed
    with one or more calls to getChildAllocation that
    should also be in the synchronized block.

    Parameters:
    :   `x` - the X coordinate >= 0
    :   `y` - the Y coordinate >= 0
    :   `a` - the allocation to the View

    Returns:
    :   the nearest child index
  + ### getChildAllocation

    protected [Shape](../../../java/awt/Shape.md "interface in java.awt") getChildAllocation(int index)

    Fetch the allocation to use for a child view.
    *This does not update the offsets in the ChildState
    records.*

    Parameters:
    :   `index` - the index

    Returns:
    :   the allocation to use for a child view
  + ### setAllocation

    protected void setAllocation([Shape](../../../java/awt/Shape.md "interface in java.awt") a)

    Copy the currently allocated shape into the Rectangle
    used to store the current allocation. This would be
    a floating point rectangle in a Java2D-specific implementation.

    Parameters:
    :   `a` - the allocation
  + ### getViewIndexAtVisualOffset

    protected int getViewIndexAtVisualOffset(float targetOffset)

    Locate the view responsible for an offset into the box
    along the major axis. Make sure that offsets are set
    on the ChildState objects up to the given target span
    past the desired offset.

    Parameters:
    :   `targetOffset` - the target offset

    Returns:
    :   index of the view representing the given visual
        location (targetOffset), or -1 if no view represents
        that location