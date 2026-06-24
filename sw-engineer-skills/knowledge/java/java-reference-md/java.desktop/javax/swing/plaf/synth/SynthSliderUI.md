Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthSliderUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SliderUI](../SliderUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthSliderUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthSliderUI
extends [BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JSlider`](../../JSlider.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

  `BasicSliderUI.ActionScroller, BasicSliderUI.ChangeHandler, BasicSliderUI.ComponentHandler, BasicSliderUI.FocusHandler, BasicSliderUI.PropertyChangeHandler, BasicSliderUI.ScrollListener, BasicSliderUI.TrackListener`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

  `changeListener, componentListener, contentRect, focusInsets, focusListener, focusRect, insetCache, labelRect, leftToRightCache, MAX_SCROLL, MIN_SCROLL, NEGATIVE_SCROLL, POSITIVE_SCROLL, propertyChangeListener, scrollListener, scrollTimer, slider, thumbRect, tickRect, trackBuffer, trackListener, trackRect`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SynthSliderUI(JSlider c)`

  Constructs a `SynthSliderUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `calculateGeometry()`

  Calculates the geometry.

  `protected void`

  `calculateThumbLocation()`

  Calculates the thumb location.

  `protected BasicSliderUI.TrackListener`

  `createTrackListener(JSlider s)`

  Creates a track listener.

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a new UI object for the given component.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the minimum size.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the preferred size.

  `protected Dimension`

  `getThumbSize()`

  Returns the thumb size.

  `protected void`

  `installDefaults(JSlider slider)`

  Installs the defaults.

  `protected void`

  `installListeners(JSlider slider)`

  Installs listeners.

  `protected void`

  `layout()`

  Lays out the slider.

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

  Paints the slider thumb.

  `protected void`

  `paintTrack(SynthContext context,
  Graphics g,
  Rectangle trackBounds)`

  Paints the slider track.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `recalculateIfInsetsChanged()`

  Recalculates if the insets have changed.

  `void`

  `setThumbLocation(int x,
  int y)`

  Sets the thumb location.

  `protected void`

  `uninstallDefaults(JSlider slider)`

  Uninstalls default setting.

  `protected void`

  `uninstallListeners(JSlider slider)`

  Uninstalls listeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  `int`

  `valueForXPosition(int xPos)`

  Returns the value at the x position.

  `int`

  `valueForYPosition(int yPos)`

  Returns the value at the y position.

  `protected int`

  `xPositionForValue(int value)`

  Returns the x position for a value.

  `protected int`

  `yPositionForValue(int value,
  int trackY,
  int trackHeight)`

  Returns the y location for the specified value.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

  `calculateContentRect, calculateFocusRect, calculateLabelRect, calculateThumbSize, calculateTickRect, calculateTrackBuffer, calculateTrackRect, createChangeListener, createComponentListener, createFocusListener, createPropertyChangeListener, createScrollListener, drawInverted, getBaselineResizeBehavior, getFocusColor, getHeightOfHighValueLabel, getHeightOfLowValueLabel, getHeightOfTallestLabel, getHighestValue, getHighestValueLabel, getHighlightColor, getLowestValue, getLowestValueLabel, getMaximumSize, getMinimumHorizontalSize, getMinimumVerticalSize, getPreferredHorizontalSize, getPreferredVerticalSize, getShadowColor, getTickLength, getWidthOfHighValueLabel, getWidthOfLowValueLabel, getWidthOfWidestLabel, installKeyboardActions, installUI, isDragging, labelsHaveSameBaselines, paintFocus, paintHorizontalLabel, paintLabels, paintMajorTickForHorizSlider, paintMajorTickForVertSlider, paintMinorTickForHorizSlider, paintMinorTickForVertSlider, paintThumb, paintTicks, paintTrack, paintVerticalLabel, recalculateIfOrientationChanged, scrollByBlock, scrollByUnit, scrollDueToClickInTrack, uninstallKeyboardActions, uninstallUI, yPositionForValue`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthSliderUI

    protected SynthSliderUI([JSlider](../../JSlider.md "class in javax.swing") c)

    Constructs a `SynthSliderUI`.

    Parameters:
    :   `c` - a slider
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a new UI object for the given component.

    Parameters:
    :   `c` - component to create UI object for

    Returns:
    :   the UI object
  + ### installDefaults

    protected void installDefaults([JSlider](../../JSlider.md "class in javax.swing") slider)

    Installs the defaults.

    Overrides:
    :   `installDefaults` in class `BasicSliderUI`

    Parameters:
    :   `slider` - a slider
  + ### uninstallDefaults

    protected void uninstallDefaults([JSlider](../../JSlider.md "class in javax.swing") slider)

    Uninstalls default setting. This method is called when a
    `LookAndFeel` is uninstalled.

    Overrides:
    :   `uninstallDefaults` in class `BasicSliderUI`

    Parameters:
    :   `slider` - a slider
  + ### installListeners

    protected void installListeners([JSlider](../../JSlider.md "class in javax.swing") slider)

    Installs listeners.

    Overrides:
    :   `installListeners` in class `BasicSliderUI`

    Parameters:
    :   `slider` - a slider
  + ### uninstallListeners

    protected void uninstallListeners([JSlider](../../JSlider.md "class in javax.swing") slider)

    Uninstalls listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicSliderUI`

    Parameters:
    :   `slider` - a slider
  + ### createTrackListener

    protected [BasicSliderUI.TrackListener](../basic/BasicSliderUI.TrackListener.md "class in javax.swing.plaf.basic") createTrackListener([JSlider](../../JSlider.md "class in javax.swing") s)

    Creates a track listener.

    Overrides:
    :   `createTrackListener` in class `BasicSliderUI`

    Parameters:
    :   `s` - a slider

    Returns:
    :   a track listener
  + ### getBaseline

    public int getBaseline([JComponent](../../JComponent.md "class in javax.swing") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `BasicSliderUI`

    Parameters:
    :   `c` - `JComponent` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the preferred size.

    Overrides:
    :   `getPreferredSize` in class `BasicSliderUI`

    Parameters:
    :   `c` - a component

    Returns:
    :   the preferred size

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the minimum size.

    Overrides:
    :   `getMinimumSize` in class `BasicSliderUI`

    Parameters:
    :   `c` - a component

    Returns:
    :   the minimum size

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### calculateGeometry

    protected void calculateGeometry()

    Calculates the geometry.

    Overrides:
    :   `calculateGeometry` in class `BasicSliderUI`
  + ### layout

    protected void layout()

    Lays out the slider.
  + ### calculateThumbLocation

    protected void calculateThumbLocation()

    Calculates the thumb location.

    Overrides:
    :   `calculateThumbLocation` in class `BasicSliderUI`
  + ### setThumbLocation

    public void setThumbLocation(int x,
    int y)

    Sets the thumb location.

    Overrides:
    :   `setThumbLocation` in class `BasicSliderUI`

    Parameters:
    :   `x` - the x coordinate
    :   `y` - the y coordinate
  + ### xPositionForValue

    protected int xPositionForValue(int value)

    Returns the x position for a value.

    Overrides:
    :   `xPositionForValue` in class `BasicSliderUI`

    Parameters:
    :   `value` - the value

    Returns:
    :   the x position for a value
  + ### yPositionForValue

    protected int yPositionForValue(int value,
    int trackY,
    int trackHeight)

    Returns the y location for the specified value. No checking is
    done on the arguments. In particular if `trackHeight` is
    negative undefined results may occur.

    Overrides:
    :   `yPositionForValue` in class `BasicSliderUI`

    Parameters:
    :   `value` - the slider value to get the location for
    :   `trackY` - y-origin of the track
    :   `trackHeight` - the height of the track

    Returns:
    :   the y location for the specified value of the slider
  + ### valueForYPosition

    public int valueForYPosition(int yPos)

    Returns the value at the y position. If `yPos` is beyond the
    track at the bottom or the top, this method sets the value to either
    the minimum or maximum value of the slider, depending on if the slider
    is inverted or not.

    Overrides:
    :   `valueForYPosition` in class `BasicSliderUI`

    Parameters:
    :   `yPos` - the location of the slider along the y axis

    Returns:
    :   the value at the y position
  + ### valueForXPosition

    public int valueForXPosition(int xPos)

    Returns the value at the x position. If `xPos` is beyond the
    track at the left or the right, this method sets the value to either the
    minimum or maximum value of the slider, depending on if the slider is
    inverted or not.

    Overrides:
    :   `valueForXPosition` in class `BasicSliderUI`

    Parameters:
    :   `xPos` - the location of the slider along the x axis

    Returns:
    :   the value of the x position
  + ### getThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getThumbSize()

    Returns the thumb size.

    Overrides:
    :   `getThumbSize` in class `BasicSliderUI`

    Returns:
    :   the thumb size
  + ### recalculateIfInsetsChanged

    protected void recalculateIfInsetsChanged()

    Recalculates if the insets have changed.

    Overrides:
    :   `recalculateIfInsetsChanged` in class `BasicSliderUI`
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
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
    :   `paint` in class `BasicSliderUI`

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
  + ### paintThumb

    protected void paintThumb([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") thumbBounds)

    Paints the slider thumb.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - `Graphics` object used for painting
    :   `thumbBounds` - bounding box for the thumb
  + ### paintTrack

    protected void paintTrack([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") trackBounds)

    Paints the slider track.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - `Graphics` object used for painting
    :   `trackBounds` - bounding box for the track
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.