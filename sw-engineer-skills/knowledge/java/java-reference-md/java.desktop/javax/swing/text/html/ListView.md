Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class ListView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.View](../View.md "class in javax.swing.text")

[javax.swing.text.CompositeView](../CompositeView.md "class in javax.swing.text")

[javax.swing.text.BoxView](../BoxView.md "class in javax.swing.text")

[javax.swing.text.html.BlockView](BlockView.md "class in javax.swing.text.html")

javax.swing.text.html.ListView

All Implemented Interfaces:
:   `SwingConstants`

---

public class ListView
extends [BlockView](BlockView.md "class in javax.swing.text.html")

A view implementation to display an html list

* ## Field Summary

  ### Fields inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `BadBreakWeight, ExcellentBreakWeight, ForcedBreakWeight, GoodBreakWeight, X_AXIS, Y_AXIS`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ListView(Element elem)`

  Creates a new view that represents a list element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `float`

  `getAlignment(int axis)`

  Calculates the desired shape of the list.

  `void`

  `paint(Graphics g,
  Shape allocation)`

  Renders using the given rendering surface and area on that
  surface.

  `protected void`

  `paintChild(Graphics g,
  Rectangle alloc,
  int index)`

  Paints one of the children; called by paint().

  `protected void`

  `setPropertiesFromAttributes()`

  Update any cached values that come from attributes.

  ### Methods inherited from class javax.swing.text.html.[BlockView](BlockView.md "class in javax.swing.text.html")

  `calculateMajorAxisRequirements, calculateMinorAxisRequirements, changedUpdate, getAttributes, getMaximumSpan, getMinimumSpan, getPreferredSpan, getResizeWeight, getStyleSheet, layoutMinorAxis, setParent`

  ### Methods inherited from class javax.swing.text.[BoxView](../BoxView.md "class in javax.swing.text")

  `baselineLayout, baselineRequirements, childAllocation, flipEastAndWestAtEnds, forwardUpdate, getAxis, getChildAllocation, getHeight, getOffset, getSpan, getViewAtPoint, getWidth, isAfter, isAllocationValid, isBefore, isLayoutValid, layout, layoutChanged, layoutMajorAxis, modelToView, preferenceChanged, replace, setAxis, setSize, viewToModel`

  ### Methods inherited from class javax.swing.text.[CompositeView](../CompositeView.md "class in javax.swing.text")

  `getBottomInset, getInsideAllocation, getLeftInset, getNextEastWestVisualPositionFrom, getNextNorthSouthVisualPositionFrom, getNextVisualPositionFrom, getRightInset, getTopInset, getView, getViewAtPosition, getViewCount, getViewIndex, getViewIndexAtPosition, loadChildren, modelToView, setInsets, setParagraphInsets`

  ### Methods inherited from class javax.swing.text.[View](../View.md "class in javax.swing.text")

  `append, breakView, createFragment, forwardUpdateToView, getBreakWeight, getContainer, getDocument, getElement, getEndOffset, getGraphics, getParent, getStartOffset, getToolTipText, getViewFactory, getViewIndex, insert, insertUpdate, isVisible, modelToView, remove, removeAll, removeUpdate, updateChildren, updateLayout, viewToModel`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ListView

    public ListView([Element](../Element.md "interface in javax.swing.text") elem)

    Creates a new view that represents a list element.

    Parameters:
    :   `elem` - the element to create a view for
* ## Method Details

  + ### getAlignment

    public float getAlignment(int axis)

    Calculates the desired shape of the list.

    Overrides:
    :   `getAlignment` in class `BlockView`

    Parameters:
    :   `axis` - may be either X\_AXIS or Y\_AXIS

    Returns:
    :   the desired span

    See Also:
    :   - [`View.getPreferredSpan(int)`](../View.md#getPreferredSpan(int))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Shape](../../../../java/awt/Shape.md "interface in java.awt") allocation)

    Renders using the given rendering surface and area on that
    surface.

    Overrides:
    :   `paint` in class `BlockView`

    Parameters:
    :   `g` - the rendering surface to use
    :   `allocation` - the allocated region to render into

    See Also:
    :   - [`View.paint(java.awt.Graphics, java.awt.Shape)`](../View.md#paint(java.awt.Graphics,java.awt.Shape))
  + ### paintChild

    protected void paintChild([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") alloc,
    int index)

    Paints one of the children; called by paint(). By default
    that is all it does, but a subclass can use this to paint
    things relative to the child.

    Overrides:
    :   `paintChild` in class `BoxView`

    Parameters:
    :   `g` - the graphics context
    :   `alloc` - the allocated region to render the child into
    :   `index` - the index of the child
  + ### setPropertiesFromAttributes

    protected void setPropertiesFromAttributes()

    Description copied from class: `BlockView`

    Update any cached values that come from attributes.

    Overrides:
    :   `setPropertiesFromAttributes` in class `BlockView`