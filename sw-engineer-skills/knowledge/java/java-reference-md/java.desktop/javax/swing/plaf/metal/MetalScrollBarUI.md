Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalScrollBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ScrollBarUI](../ScrollBarUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalScrollBarUI

All Implemented Interfaces:
:   `LayoutManager`, `SwingConstants`

---

public class MetalScrollBarUI
extends [BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

Implementation of ScrollBarUI for the Metal Look and Feel

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

  `BasicScrollBarUI.ArrowButtonListener, BasicScrollBarUI.ModelListener, BasicScrollBarUI.PropertyChangeHandler, BasicScrollBarUI.ScrollListener, BasicScrollBarUI.TrackListener`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected MetalScrollButton`

  `decreaseButton`

  The decrease button.

  `static final String`

  `FREE_STANDING_PROP`

  The property `JScrollBar.isFreeStanding`.

  `protected MetalScrollButton`

  `increaseButton`

  The increase button.

  `protected boolean`

  `isFreeStanding`

  The value of the property `JScrollBar.isFreeStanding`.

  `protected int`

  `scrollBarWidth`

  The width of the scroll bar.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

  `buttonListener, decrButton, DECREASE_HIGHLIGHT, decrGap, incrButton, INCREASE_HIGHLIGHT, incrGap, isDragging, maximumThumbSize, minimumThumbSize, modelListener, NO_HIGHLIGHT, propertyChangeListener, scrollbar, scrollListener, scrollTimer, thumbDarkShadowColor, thumbLightShadowColor, thumbRect, trackColor, trackHighlight, trackHighlightColor, trackListener, trackRect`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalScrollBarUI()`

  Constructs a `MetalScrollBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `configureScrollBarColors()`

  Configures the scroll bar colors.

  `protected JButton`

  `createDecreaseButton(int orientation)`

  Returns the view that represents the decrease view.

  `protected JButton`

  `createIncreaseButton(int orientation)`

  Returns the view that represents the increase view.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a property change listener.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new `MetalScrollBarUI` instance.

  `protected Dimension`

  `getMinimumThumbSize()`

  Returns the smallest acceptable size for the thumb.

  `Dimension`

  `getPreferredSize(JComponent c)`

  A vertical scrollbar's preferred width is the maximum of
  preferred widths of the (non `null`)
  increment/decrement buttons,
  and the minimum width of the thumb.

  `protected void`

  `installDefaults()`

  Installs the defaults.

  `protected void`

  `installListeners()`

  Installs the listeners.

  `protected void`

  `paintThumb(Graphics g,
  JComponent c,
  Rectangle thumbBounds)`

  Paints the thumb.

  `protected void`

  `paintTrack(Graphics g,
  JComponent c,
  Rectangle trackBounds)`

  Paints the track.

  `protected void`

  `setThumbBounds(int x,
  int y,
  int width,
  int height)`

  This is overridden only to increase the invalid area.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

  `addLayoutComponent, createArrowButtonListener, createModelListener, createScrollListener, createTrackListener, getMaximumSize, getMaximumThumbSize, getSupportsAbsolutePositioning, getThumbBounds, getTrackBounds, installComponents, installKeyboardActions, installUI, isThumbRollover, layoutContainer, layoutHScrollbar, layoutVScrollbar, minimumLayoutSize, paint, paintDecreaseHighlight, paintIncreaseHighlight, preferredLayoutSize, removeLayoutComponent, scrollByBlock, scrollByUnit, setThumbRollover, uninstallComponents, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMinimumSize, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### increaseButton

    protected [MetalScrollButton](MetalScrollButton.md "class in javax.swing.plaf.metal") increaseButton

    The increase button.
  + ### decreaseButton

    protected [MetalScrollButton](MetalScrollButton.md "class in javax.swing.plaf.metal") decreaseButton

    The decrease button.
  + ### scrollBarWidth

    protected int scrollBarWidth

    The width of the scroll bar.
  + ### FREE\_STANDING\_PROP

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FREE\_STANDING\_PROP

    The property `JScrollBar.isFreeStanding`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.metal.MetalScrollBarUI.FREE_STANDING_PROP)
  + ### isFreeStanding

    protected boolean isFreeStanding

    The value of the property `JScrollBar.isFreeStanding`.
* ## Constructor Details

  + ### MetalScrollBarUI

    public MetalScrollBarUI()

    Constructs a `MetalScrollBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new `MetalScrollBarUI` instance.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new `MetalScrollBarUI` instance
  + ### installDefaults

    protected void installDefaults()

    Description copied from class: `BasicScrollBarUI`

    Installs the defaults.

    Overrides:
    :   `installDefaults` in class `BasicScrollBarUI`
  + ### installListeners

    protected void installListeners()

    Description copied from class: `BasicScrollBarUI`

    Installs the listeners.

    Overrides:
    :   `installListeners` in class `BasicScrollBarUI`
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Description copied from class: `BasicScrollBarUI`

    Creates a property change listener.

    Overrides:
    :   `createPropertyChangeListener` in class `BasicScrollBarUI`

    Returns:
    :   a property change listener
  + ### configureScrollBarColors

    protected void configureScrollBarColors()

    Description copied from class: `BasicScrollBarUI`

    Configures the scroll bar colors.

    Overrides:
    :   `configureScrollBarColors` in class `BasicScrollBarUI`
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicScrollBarUI`

    A vertical scrollbar's preferred width is the maximum of
    preferred widths of the (non `null`)
    increment/decrement buttons,
    and the minimum width of the thumb. The preferred height is the
    sum of the preferred heights of the same parts. The basis for
    the preferred size of a horizontal scrollbar is similar.

    The `preferredSize` is only computed once, subsequent
    calls to this method just return a cached size.

    Overrides:
    :   `getPreferredSize` in class `BasicScrollBarUI`

    Parameters:
    :   `c` - the `JScrollBar` that's delegating this method to us

    Returns:
    :   the preferred size of a Basic JScrollBar

    See Also:
    :   - [`BasicScrollBarUI.getMaximumSize(javax.swing.JComponent)`](../basic/BasicScrollBarUI.md#getMaximumSize(javax.swing.JComponent))
        - [`ComponentUI.getMinimumSize(javax.swing.JComponent)`](../ComponentUI.md#getMinimumSize(javax.swing.JComponent))
  + ### createDecreaseButton

    protected [JButton](../../JButton.md "class in javax.swing") createDecreaseButton(int orientation)

    Returns the view that represents the decrease view.

    Overrides:
    :   `createDecreaseButton` in class `BasicScrollBarUI`

    Parameters:
    :   `orientation` - the orientation

    Returns:
    :   a decrease button
  + ### createIncreaseButton

    protected [JButton](../../JButton.md "class in javax.swing") createIncreaseButton(int orientation)

    Returns the view that represents the increase view.

    Overrides:
    :   `createIncreaseButton` in class `BasicScrollBarUI`

    Parameters:
    :   `orientation` - the orientation

    Returns:
    :   an increase button
  + ### paintTrack

    protected void paintTrack([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") trackBounds)

    Description copied from class: `BasicScrollBarUI`

    Paints the track.

    Overrides:
    :   `paintTrack` in class `BasicScrollBarUI`

    Parameters:
    :   `g` - the graphics
    :   `c` - the component
    :   `trackBounds` - the track bounds
  + ### paintThumb

    protected void paintThumb([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") thumbBounds)

    Description copied from class: `BasicScrollBarUI`

    Paints the thumb.

    Overrides:
    :   `paintThumb` in class `BasicScrollBarUI`

    Parameters:
    :   `g` - the graphics
    :   `c` - the component
    :   `thumbBounds` - the thumb bounds
  + ### getMinimumThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumThumbSize()

    Description copied from class: `BasicScrollBarUI`

    Returns the smallest acceptable size for the thumb. If the scrollbar
    becomes so small that this size isn't available, the thumb will be
    hidden.

    **Warning** : the value returned by this method should not be
    be modified, it's a shared static constant.

    Overrides:
    :   `getMinimumThumbSize` in class `BasicScrollBarUI`

    Returns:
    :   The smallest acceptable size for the thumb.

    See Also:
    :   - [`BasicScrollBarUI.getMaximumThumbSize()`](../basic/BasicScrollBarUI.md#getMaximumThumbSize())
  + ### setThumbBounds

    protected void setThumbBounds(int x,
    int y,
    int width,
    int height)

    This is overridden only to increase the invalid area. This
    ensures that the "Shadow" below the thumb is invalidated

    Overrides:
    :   `setThumbBounds` in class `BasicScrollBarUI`

    Parameters:
    :   `x` - set the x location of the thumb
    :   `y` - set the y location of the thumb
    :   `width` - set the width of the thumb
    :   `height` - set the height of the thumb

    See Also:
    :   - [`BasicScrollBarUI.getThumbBounds()`](../basic/BasicScrollBarUI.md#getThumbBounds())