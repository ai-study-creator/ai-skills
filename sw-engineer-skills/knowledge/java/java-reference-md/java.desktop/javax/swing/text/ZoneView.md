Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class ZoneView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](BoxView.md "class in javax.swing.text")

javax.swing.text.ZoneView

All Implemented Interfaces:
:   `SwingConstants`

---

public class ZoneView
extends [BoxView](BoxView.md "class in javax.swing.text")

ZoneView is a View implementation that creates zones for which
the child views are not created or stored until they are needed
for display or model/view translations. This enables a substantial
reduction in memory consumption for situations where the model
being represented is very large, by building view objects only for
the region being actively viewed/edited. The size of the children
can be estimated in some way, or calculated asynchronously with
only the result being saved.

ZoneView extends BoxView to provide a box that implements
zones for its children. The zones are special View implementations
(the children of an instance of this class) that represent only a
portion of the model that an instance of ZoneView is responsible
for. The zones don't create child views until an attempt is made
to display them. A box shaped view is well suited to this because:

* Boxes are a heavily used view, and having a box that
  provides this behavior gives substantial opportunity
  to plug the behavior into a view hierarchy from the
  view factory.* Boxes are tiled in one direction, so it is easy to
    divide them into zones in a reliable way.* Boxes typically have a simple relationship to the model (i.e. they
      create child views that directly represent the child elements).* Boxes are easier to estimate the size of than some other shapes.

The default behavior is controlled by two properties, maxZoneSize
and maxZonesLoaded. Setting maxZoneSize to Integer.MAX\_VALUE would
have the effect of causing only one zone to be created. This would
effectively turn the view into an implementation of the decorator
pattern. Setting maxZonesLoaded to a value of Integer.MAX\_VALUE would
cause zones to never be unloaded. For simplicity, zones are created on
boundaries represented by the child elements of the element the view is
responsible for. The zones can be any View implementation, but the
default implementation is based upon AsyncBoxView which supports fairly
large zones efficiently.

Since:
:   1.3

See Also:
:   * [`View`](View.md "class in javax.swing.text")

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZoneView(Element elem,
  int axis)`

  Constructs a ZoneView.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected View`

  `createZone(int p0,
  int p1)`

  Create a view to represent a zone for the given
  range within the model (which should be within
  the range of this objects responsibility).

  `int`

  `getMaximumZoneSize()`

  Get the current maximum zone size.

  `int`

  `getMaxZonesLoaded()`

  Get the current setting of the number of zones
  allowed to be loaded at the same time.

  `protected int`

  `getViewIndexAtPosition(int pos)`

  Returns the child view index representing the given position in
  the model.

  `void`

  `insertUpdate(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Gives notification that something was inserted into the document
  in a location that this view is responsible for.

  `protected boolean`

  `isZoneLoaded(View zone)`

  Determine if a zone is in the loaded state.

  `protected void`

  `loadChildren(ViewFactory f)`

  Loads all of the children to initialize the view.

  `void`

  `removeUpdate(DocumentEvent changes,
  Shape a,
  ViewFactory f)`

  Gives notification that something was removed from the document
  in a location that this view is responsible for.

  `void`

  `setMaximumZoneSize(int size)`

  Set the desired maximum zone size.

  `void`

  `setMaxZonesLoaded(int mzl)`

  Sets the current setting of the number of zones
  allowed to be loaded at the same time.

  `protected void`

  `unloadZone(View zone)`

  Unload a zone (Convert the zone to its memory saving state).

  `protected boolean`

  `updateChildren(DocumentEvent.ElementChange ec,
  DocumentEvent e,
  ViewFactory f)`

  The superclass behavior will try to update the child views
  which is not desired in this case, since the children are
  zones and not directly effected by the changes to the
  associated element.

  `protected void`

  `zoneWasLoaded(View zone)`

  Called by a zone when it gets loaded.

  ### Methods inherited from class javax.swing.text.[BoxView](BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, calculateMajorAxisRequirements, calculateMinorAxisRequirements, childAllocation, flipEastAndWestAtEnds, forwardUpdate, getAlignment, getAxis, getChildAllocation, getHeight, getMaximumSpan, getMinimumSpan, getOffset, getPreferredSpan, getResizeWeight, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layout, layoutChanged, layoutMajorAxis, layoutMinorAxis, modelToView, paint, paintChild, preferenceChanged, replace, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextNorthSouthVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewAtPosition, getViewCount, getViewIndex, modelToView, setInsets, setParagraphInsets, setParent`

  ### Methods inherited from class javax.swing.text.[View](View.md "class in javax.swing.text")

  `append, breakView, changedUpdate, createFragment, forwardUpdateToView, getAttributes, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, isVisible, modelToView, remove, removeAll, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ZoneView

    public ZoneView([Element](Element.md "interface in javax.swing.text") elem,
    int axis)

    Constructs a ZoneView.

    Parameters:
    :   `elem` - the element this view is responsible for
    :   `axis` - either View.X\_AXIS or View.Y\_AXIS
* ## Method Details

  + ### getMaximumZoneSize

    public int getMaximumZoneSize()

    Get the current maximum zone size.

    Returns:
    :   the current maximum zone size
  + ### setMaximumZoneSize

    public void setMaximumZoneSize(int size)

    Set the desired maximum zone size. A
    zone may get larger than this size if
    a single child view is larger than this
    size since zones are formed on child view
    boundaries.

    Parameters:
    :   `size` - the number of characters the zone
        may represent before attempting to break
        the zone into a smaller size.
  + ### getMaxZonesLoaded

    public int getMaxZonesLoaded()

    Get the current setting of the number of zones
    allowed to be loaded at the same time.

    Returns:
    :   current setting of the number of zones
        allowed to be loaded at the same time
  + ### setMaxZonesLoaded

    public void setMaxZonesLoaded(int mzl)

    Sets the current setting of the number of zones
    allowed to be loaded at the same time. This will throw an
    `IllegalArgumentException` if `mzl` is less
    than 1.

    Parameters:
    :   `mzl` - the desired maximum number of zones
        to be actively loaded, must be greater than 0

    Throws:
    :   `IllegalArgumentException` - if `mzl` is < 1
  + ### zoneWasLoaded

    protected void zoneWasLoaded([View](View.md "class in javax.swing.text") zone)

    Called by a zone when it gets loaded. This happens when
    an attempt is made to display or perform a model/view
    translation on a zone that was in an unloaded state.
    This is implemented to check if the maximum number of
    zones was reached and to unload the oldest zone if so.

    Parameters:
    :   `zone` - the child view that was just loaded.
  + ### unloadZone

    protected void unloadZone([View](View.md "class in javax.swing.text") zone)

    Unload a zone (Convert the zone to its memory saving state).
    The zones are expected to represent a subset of the
    child elements of the element this view is responsible for.
    Therefore, the default implementation is to simple remove
    all the children.

    Parameters:
    :   `zone` - the child view desired to be set to an
        unloaded state.
  + ### isZoneLoaded

    protected boolean isZoneLoaded([View](View.md "class in javax.swing.text") zone)

    Determine if a zone is in the loaded state.
    The zones are expected to represent a subset of the
    child elements of the element this view is responsible for.
    Therefore, the default implementation is to return
    true if the view has children.
    param zone the child view

    Parameters:
    :   `zone` - the zone

    Returns:
    :   whether or not the zone is in the loaded state.
  + ### createZone

    protected [View](View.md "class in javax.swing.text") createZone(int p0,
    int p1)

    Create a view to represent a zone for the given
    range within the model (which should be within
    the range of this objects responsibility). This
    is called by the zone management logic to create
    new zones. Subclasses can provide a different
    implementation for a zone by changing this method.

    Parameters:
    :   `p0` - the start of the desired zone. This should
        be >= getStartOffset() and < getEndOffset(). This
        value should also be < p1.
    :   `p1` - the end of the desired zone. This should
        be > getStartOffset() and <= getEndOffset(). This
        value should also be > p0.

    Returns:
    :   a view to represent a zone for the given range within
        the model
  + ### loadChildren

    protected void loadChildren([ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Loads all of the children to initialize the view.
    This is called by the `setParent` method.
    This is reimplemented to not load any children directly
    (as they are created by the zones). This method creates
    the initial set of zones. Zones don't actually get
    populated however until an attempt is made to display
    them or to do model/view coordinate translation.

    Overrides:
    :   `loadChildren` in class `CompositeView`

    Parameters:
    :   `f` - the view factory

    See Also:
    :   - [`CompositeView.setParent(javax.swing.text.View)`](CompositeView.md#setParent(javax.swing.text.View))
  + ### getViewIndexAtPosition

    protected int getViewIndexAtPosition(int pos)

    Returns the child view index representing the given position in
    the model.

    Overrides:
    :   `getViewIndexAtPosition` in class `CompositeView`

    Parameters:
    :   `pos` - the position >= 0

    Returns:
    :   index of the view representing the given position, or
        -1 if no view represents that position
  + ### updateChildren

    protected boolean updateChildren([DocumentEvent.ElementChange](../event/DocumentEvent.ElementChange.md "interface in javax.swing.event") ec,
    [DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    The superclass behavior will try to update the child views
    which is not desired in this case, since the children are
    zones and not directly effected by the changes to the
    associated element. This is reimplemented to do nothing
    and return false.

    Overrides:
    :   `updateChildren` in class `View`

    Parameters:
    :   `ec` - the change information for the element this view
        is responsible for. This should not be `null` if
        this method gets called
    :   `e` - the change information from the associated document
    :   `f` - the factory to use to build child views

    Returns:
    :   whether or not the child views represent the
        child elements of the element this view is responsible
        for. Some views create children that represent a portion
        of the element they are responsible for, and should return
        false. This information is used to determine if views
        in the range of the added elements should be forwarded to
        or not

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
        - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
        - [`View.changedUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#changedUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### insertUpdate

    public void insertUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was inserted into the document
    in a location that this view is responsible for. This is largely
    delegated to the superclass, but is reimplemented to update the
    relevant zone (i.e. determine if a zone needs to be split into a
    set of 2 or more zones).

    Overrides:
    :   `insertUpdate` in class `View`

    Parameters:
    :   `changes` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.insertUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#insertUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))
  + ### removeUpdate

    public void removeUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") changes,
    [Shape](../../../java/awt/Shape.md "interface in java.awt") a,
    [ViewFactory](ViewFactory.md "interface in javax.swing.text") f)

    Gives notification that something was removed from the document
    in a location that this view is responsible for. This is largely
    delegated to the superclass, but is reimplemented to update the
    relevant zones (i.e. determine if zones need to be removed or
    joined with another zone).

    Overrides:
    :   `removeUpdate` in class `View`

    Parameters:
    :   `changes` - the change information from the associated document
    :   `a` - the current allocation of the view
    :   `f` - the factory to use to rebuild if the view has children

    See Also:
    :   - [`View.removeUpdate(javax.swing.event.DocumentEvent, java.awt.Shape, javax.swing.text.ViewFactory)`](View.md#removeUpdate(javax.swing.event.DocumentEvent,java.awt.Shape,javax.swing.text.ViewFactory))