Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthScrollBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ScrollBarUI](../ScrollBarUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthScrollBarUI

All Implemented Interfaces:
:   `LayoutManager`, `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`, `SwingConstants`

---

public class SynthScrollBarUI
extends [BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JScrollBar`](../../JScrollBar.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

  `BasicScrollBarUI.ArrowButtonListener, BasicScrollBarUI.ModelListener, BasicScrollBarUI.PropertyChangeHandler, BasicScrollBarUI.ScrollListener, BasicScrollBarUI.TrackListener`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

  `buttonListener, decrButton, DECREASE_HIGHLIGHT, decrGap, incrButton, INCREASE_HIGHLIGHT, incrGap, isDragging, maximumThumbSize, minimumThumbSize, modelListener, NO_HIGHLIGHT, propertyChangeListener, scrollbar, scrollBarWidth, scrollListener, scrollTimer, thumbColor, thumbDarkShadowColor, thumbHighlightColor, thumbLightShadowColor, thumbRect, trackColor, trackHighlight, trackHighlightColor, trackListener, trackRect`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthScrollBarUI()`

  Constructs a `SynthScrollBarUI`.
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

  Creates a decrease button.

  `protected JButton`

  `createIncreaseButton(int orientation)`

  Creates an increase button.

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns a UI.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected Dimension`

  `getMinimumThumbSize()`

  Returns the smallest acceptable size for the thumb.

  `Dimension`

  `getPreferredSize(JComponent c)`

  A vertical scrollbar's preferred width is the maximum of
  preferred widths of the (non `null`)
  increment/decrement buttons,
  and the minimum width of the thumb.

  `boolean`

  `getSupportsAbsolutePositioning()`

  Indicates whether the user can absolutely position the thumb with
  a mouse gesture (usually the middle mouse button).

  `protected void`

  `installDefaults()`

  Installs the defaults.

  `protected void`

  `installListeners()`

  Installs the listeners.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component according to the Look and Feel.

  `protected void`

  `paint(SynthContext context,
  Graphics g)`

  Paints the specified component.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

  `protected void`

  `paintThumb(SynthContext context,
  Graphics g,
  Rectangle thumbBounds)`

  Paints the scrollbar thumb.

  `protected void`

  `paintTrack(SynthContext context,
  Graphics g,
  Rectangle trackBounds)`

  Paints the scrollbar track.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `setThumbRollover(boolean active)`

  Sets whether or not the mouse is currently over the thumb.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the defaults.

  `protected void`

  `uninstallListeners()`

  Uninstall the listeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicScrollBarUI](../basic/BasicScrollBarUI.md "class in javax.swing.plaf.basic")

  `addLayoutComponent, createArrowButtonListener, createModelListener, createPropertyChangeListener, createScrollListener, createTrackListener, getMaximumSize, getMaximumThumbSize, getThumbBounds, getTrackBounds, installComponents, installKeyboardActions, installUI, isThumbRollover, layoutContainer, layoutHScrollbar, layoutVScrollbar, minimumLayoutSize, paintDecreaseHighlight, paintIncreaseHighlight, paintThumb, paintTrack, preferredLayoutSize, removeLayoutComponent, scrollByBlock, scrollByUnit, setThumbBounds, uninstallComponents, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMinimumSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthScrollBarUI

    public SynthScrollBarUI()

    Constructs a `SynthScrollBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns a UI.

    Parameters:
    :   `c` - a component

    Returns:
    :   a UI
  + ### installDefaults

    protected void installDefaults()

    Installs the defaults.

    Overrides:
    :   `installDefaults` in class `BasicScrollBarUI`
  + ### configureScrollBarColors

    protected void configureScrollBarColors()

    Configures the scroll bar colors.

    Overrides:
    :   `configureScrollBarColors` in class `BasicScrollBarUI`
  + ### installListeners

    protected void installListeners()

    Installs the listeners.

    Overrides:
    :   `installListeners` in class `BasicScrollBarUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstall the listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicScrollBarUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the defaults.

    Overrides:
    :   `uninstallDefaults` in class `BasicScrollBarUI`
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### getSupportsAbsolutePositioning

    public boolean getSupportsAbsolutePositioning()

    Indicates whether the user can absolutely position the thumb with
    a mouse gesture (usually the middle mouse button).

    Overrides:
    :   `getSupportsAbsolutePositioning` in class `BasicScrollBarUI`

    Returns:
    :   true if a mouse gesture can absolutely position the thumb
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Notifies this UI delegate to repaint the specified component.
    This method paints the component background, then calls
    the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    In general, this method does not need to be overridden by subclasses.
    All Look and Feel rendering code should reside in the `paint` method.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the specified component according to the Look and Feel.

    This method is not used by Synth Look and Feel.
    Painting is handled by the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    Overrides:
    :   `paint` in class `BasicScrollBarUI`

    Parameters:
    :   `g` - the `Graphics` object used for painting
    :   `c` - the component being painted

    See Also:
    :   - [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics))
  + ### paint

    protected void paint([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the specified component.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - the `Graphics` object used for painting

    See Also:
    :   - [`update(Graphics,JComponent)`](#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintBorder

    public void paintBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border.

    Specified by:
    :   `paintBorder` in interface `SynthUI`

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border
  + ### paintTrack

    protected void paintTrack([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") trackBounds)

    Paints the scrollbar track.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - `Graphics` object used for painting
    :   `trackBounds` - bounding box for the track
  + ### paintThumb

    protected void paintThumb([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") thumbBounds)

    Paints the scrollbar thumb.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - `Graphics` object used for painting
    :   `thumbBounds` - bounding box for the thumb
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

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
  + ### getMinimumThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumThumbSize()

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
  + ### createDecreaseButton

    protected [JButton](../../JButton.md "class in javax.swing") createDecreaseButton(int orientation)

    Creates a decrease button.

    Overrides:
    :   `createDecreaseButton` in class `BasicScrollBarUI`

    Parameters:
    :   `orientation` - the orientation

    Returns:
    :   a decrease button
  + ### createIncreaseButton

    protected [JButton](../../JButton.md "class in javax.swing") createIncreaseButton(int orientation)

    Creates an increase button.

    Overrides:
    :   `createIncreaseButton` in class `BasicScrollBarUI`

    Parameters:
    :   `orientation` - the orientation

    Returns:
    :   an increase button
  + ### setThumbRollover

    protected void setThumbRollover(boolean active)

    Sets whether or not the mouse is currently over the thumb.

    Overrides:
    :   `setThumbRollover` in class `BasicScrollBarUI`

    Parameters:
    :   `active` - True indicates the thumb is currently active.
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.