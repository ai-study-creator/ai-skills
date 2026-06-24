Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalSliderUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SliderUI](../SliderUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalSliderUI

---

public class MetalSliderUI
extends [BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

A Java L&F implementation of SliderUI.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `MetalSliderUI.MetalPropertyListener`

  `PropertyListener` for `JSlider.isFilled`.

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

  `BasicSliderUI.ActionScroller, BasicSliderUI.ChangeHandler, BasicSliderUI.ComponentHandler, BasicSliderUI.FocusHandler, BasicSliderUI.PropertyChangeHandler, BasicSliderUI.ScrollListener, BasicSliderUI.TrackListener`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static Color`

  `darkShadowColor`

  The color of dark shadow.

  `protected boolean`

  `filledSlider`

  The value of the property `JSlider.isFilled`.

  `protected static Color`

  `highlightColor`

  The color of highlighting.

  `protected static Icon`

  `horizThumbIcon`

  A default horizontal thumb `Icon`.

  `protected final String`

  `SLIDER_FILL`

  Property for `JSlider.isFilled`.

  `protected static Color`

  `thumbColor`

  The color of a thumb

  `protected final int`

  `TICK_BUFFER`

  The buffer of a tick.

  `protected static int`

  `tickLength`

  The length of a tick.

  `protected static int`

  `trackWidth`

  The width of a track.

  `protected static Icon`

  `vertThumbIcon`

  A default vertical thumb `Icon`.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

  `changeListener, componentListener, contentRect, focusInsets, focusListener, focusRect, insetCache, labelRect, leftToRightCache, MAX_SCROLL, MIN_SCROLL, NEGATIVE_SCROLL, POSITIVE_SCROLL, propertyChangeListener, scrollListener, scrollTimer, slider, thumbRect, tickRect, trackBuffer, trackListener, trackRect`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalSliderUI()`

  Constructs a `MetalSliderUI` instance.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected PropertyChangeListener`

  `createPropertyChangeListener(JSlider slider)`

  Constructs `MetalPropertyListener`.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a `MetalSliderUI` instance.

  `protected int`

  `getThumbOverhang()`

  Returns the amount that the thumb goes past the slide bar.

  `protected Dimension`

  `getThumbSize()`

  Returns the thumb size.

  `int`

  `getTickLength()`

  Gets the height of the tick area for horizontal sliders and the width of the
  tick area for vertical sliders.

  `protected int`

  `getTrackLength()`

  Returns the longer dimension of the slide bar.

  `protected int`

  `getTrackWidth()`

  Returns the shorter dimension of the track.

  `void`

  `installUI(JComponent c)`

  Installs a UI.

  `void`

  `paintFocus(Graphics g)`

  Paints focus.

  `protected void`

  `paintMajorTickForHorizSlider(Graphics g,
  Rectangle tickBounds,
  int x)`

  Paints major tick for horizontal slider.

  `protected void`

  `paintMajorTickForVertSlider(Graphics g,
  Rectangle tickBounds,
  int y)`

  Paints major tick for vertical slider.

  `protected void`

  `paintMinorTickForHorizSlider(Graphics g,
  Rectangle tickBounds,
  int x)`

  Paints minor tick for horizontal slider.

  `protected void`

  `paintMinorTickForVertSlider(Graphics g,
  Rectangle tickBounds,
  int y)`

  Paints minor tick for vertical slider.

  `void`

  `paintThumb(Graphics g)`

  Paints the thumb.

  `void`

  `paintTrack(Graphics g)`

  Paints track.

  `protected void`

  `scrollDueToClickInTrack(int dir)`

  This function is called when a mousePressed was detected in the track,
  not in the thumb.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicSliderUI](../basic/BasicSliderUI.md "class in javax.swing.plaf.basic")

  `calculateContentRect, calculateFocusRect, calculateGeometry, calculateLabelRect, calculateThumbLocation, calculateThumbSize, calculateTickRect, calculateTrackBuffer, calculateTrackRect, createChangeListener, createComponentListener, createFocusListener, createScrollListener, createTrackListener, drawInverted, getBaseline, getBaselineResizeBehavior, getFocusColor, getHeightOfHighValueLabel, getHeightOfLowValueLabel, getHeightOfTallestLabel, getHighestValue, getHighestValueLabel, getHighlightColor, getLowestValue, getLowestValueLabel, getMaximumSize, getMinimumHorizontalSize, getMinimumSize, getMinimumVerticalSize, getPreferredHorizontalSize, getPreferredSize, getPreferredVerticalSize, getShadowColor, getWidthOfHighValueLabel, getWidthOfLowValueLabel, getWidthOfWidestLabel, installDefaults, installKeyboardActions, installListeners, isDragging, labelsHaveSameBaselines, paint, paintHorizontalLabel, paintLabels, paintTicks, paintVerticalLabel, recalculateIfInsetsChanged, recalculateIfOrientationChanged, scrollByBlock, scrollByUnit, setThumbLocation, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI, valueForXPosition, valueForYPosition, xPositionForValue, yPositionForValue, yPositionForValue`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### TICK\_BUFFER

    protected final int TICK\_BUFFER

    The buffer of a tick.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.metal.MetalSliderUI.TICK_BUFFER)
  + ### filledSlider

    protected boolean filledSlider

    The value of the property `JSlider.isFilled`.
    By default, `false` if the property is not set,
    `true` for Ocean theme.
  + ### thumbColor

    protected static [Color](../../../../java/awt/Color.md "class in java.awt") thumbColor

    The color of a thumb
  + ### highlightColor

    protected static [Color](../../../../java/awt/Color.md "class in java.awt") highlightColor

    The color of highlighting.
  + ### darkShadowColor

    protected static [Color](../../../../java/awt/Color.md "class in java.awt") darkShadowColor

    The color of dark shadow.
  + ### trackWidth

    protected static int trackWidth

    The width of a track.
  + ### tickLength

    protected static int tickLength

    The length of a tick.
  + ### horizThumbIcon

    protected static [Icon](../../Icon.md "interface in javax.swing") horizThumbIcon

    A default horizontal thumb `Icon`. This field might not be
    used. To change the `Icon` used by this delegate directly set it
    using the `Slider.horizontalThumbIcon` UIManager property.
  + ### vertThumbIcon

    protected static [Icon](../../Icon.md "interface in javax.swing") vertThumbIcon

    A default vertical thumb `Icon`. This field might not be
    used. To change the `Icon` used by this delegate directly set it
    using the `Slider.verticalThumbIcon` UIManager property.
  + ### SLIDER\_FILL

    protected final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SLIDER\_FILL

    Property for `JSlider.isFilled`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.metal.MetalSliderUI.SLIDER_FILL)
* ## Constructor Details

  + ### MetalSliderUI

    public MetalSliderUI()

    Constructs a `MetalSliderUI` instance.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a `MetalSliderUI` instance.

    Parameters:
    :   `c` - a component

    Returns:
    :   a `MetalSliderUI` instance
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicSliderUI`

    Installs a UI.

    Overrides:
    :   `installUI` in class `BasicSliderUI`

    Parameters:
    :   `c` - a component

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener([JSlider](../../JSlider.md "class in javax.swing") slider)

    Constructs `MetalPropertyListener`.

    Overrides:
    :   `createPropertyChangeListener` in class `BasicSliderUI`

    Parameters:
    :   `slider` - a `JSlider`

    Returns:
    :   the `MetalPropertyListener`
  + ### paintThumb

    public void paintThumb([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Description copied from class: `BasicSliderUI`

    Paints the thumb.

    Overrides:
    :   `paintThumb` in class `BasicSliderUI`

    Parameters:
    :   `g` - the graphics
  + ### paintTrack

    public void paintTrack([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Description copied from class: `BasicSliderUI`

    Paints track.

    Overrides:
    :   `paintTrack` in class `BasicSliderUI`

    Parameters:
    :   `g` - the graphics
  + ### paintFocus

    public void paintFocus([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Description copied from class: `BasicSliderUI`

    Paints focus.

    Overrides:
    :   `paintFocus` in class `BasicSliderUI`

    Parameters:
    :   `g` - the graphics
  + ### getThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getThumbSize()

    Description copied from class: `BasicSliderUI`

    Returns the thumb size.

    Overrides:
    :   `getThumbSize` in class `BasicSliderUI`

    Returns:
    :   the thumb size
  + ### getTickLength

    public int getTickLength()

    Gets the height of the tick area for horizontal sliders and the width of the
    tick area for vertical sliders. BasicSliderUI uses the returned value to
    determine the tick area rectangle.

    Overrides:
    :   `getTickLength` in class `BasicSliderUI`

    Returns:
    :   an integer representing the height of the tick area for
        horizontal sliders, and the width of the tick area for the vertical
        sliders
  + ### getTrackWidth

    protected int getTrackWidth()

    Returns the shorter dimension of the track.

    Returns:
    :   the shorter dimension of the track
  + ### getTrackLength

    protected int getTrackLength()

    Returns the longer dimension of the slide bar. (The slide bar is only the
    part that runs directly under the thumb)

    Returns:
    :   the longer dimension of the slide bar
  + ### getThumbOverhang

    protected int getThumbOverhang()

    Returns the amount that the thumb goes past the slide bar.

    Returns:
    :   the amount that the thumb goes past the slide bar
  + ### scrollDueToClickInTrack

    protected void scrollDueToClickInTrack(int dir)

    Description copied from class: `BasicSliderUI`

    This function is called when a mousePressed was detected in the track,
    not in the thumb. The default behavior is to scroll by block. You can
    override this method to stop it from scrolling or to add additional
    behavior.

    Overrides:
    :   `scrollDueToClickInTrack` in class `BasicSliderUI`

    Parameters:
    :   `dir` - the direction and number of blocks to scroll
  + ### paintMinorTickForHorizSlider

    protected void paintMinorTickForHorizSlider([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") tickBounds,
    int x)

    Description copied from class: `BasicSliderUI`

    Paints minor tick for horizontal slider.

    Overrides:
    :   `paintMinorTickForHorizSlider` in class `BasicSliderUI`

    Parameters:
    :   `g` - the graphics
    :   `tickBounds` - the tick bounds
    :   `x` - the x coordinate
  + ### paintMajorTickForHorizSlider

    protected void paintMajorTickForHorizSlider([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") tickBounds,
    int x)

    Description copied from class: `BasicSliderUI`

    Paints major tick for horizontal slider.

    Overrides:
    :   `paintMajorTickForHorizSlider` in class `BasicSliderUI`

    Parameters:
    :   `g` - the graphics
    :   `tickBounds` - the tick bounds
    :   `x` - the x coordinate
  + ### paintMinorTickForVertSlider

    protected void paintMinorTickForVertSlider([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") tickBounds,
    int y)

    Description copied from class: `BasicSliderUI`

    Paints minor tick for vertical slider.

    Overrides:
    :   `paintMinorTickForVertSlider` in class `BasicSliderUI`

    Parameters:
    :   `g` - the graphics
    :   `tickBounds` - the tick bounds
    :   `y` - the y coordinate
  + ### paintMajorTickForVertSlider

    protected void paintMajorTickForVertSlider([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") tickBounds,
    int y)

    Description copied from class: `BasicSliderUI`

    Paints major tick for vertical slider.

    Overrides:
    :   `paintMajorTickForVertSlider` in class `BasicSliderUI`

    Parameters:
    :   `g` - the graphics
    :   `tickBounds` - the tick bounds
    :   `y` - the y coordinate