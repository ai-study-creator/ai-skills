Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ScrollBarUI](../ScrollBarUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicScrollBarUI

All Implemented Interfaces:
:   `LayoutManager`, `SwingConstants`

Direct Known Subclasses:
:   `MetalScrollBarUI`, `SynthScrollBarUI`

---

public class BasicScrollBarUI
extends [ScrollBarUI](../ScrollBarUI.md "class in javax.swing.plaf")
implements [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt"), [SwingConstants](../../SwingConstants.md "interface in javax.swing")

Implementation of ScrollBarUI for the Basic Look and Feel

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `BasicScrollBarUI.ArrowButtonListener`

  Listener for cursor keys.

  `protected class`

  `BasicScrollBarUI.ModelListener`

  A listener to listen for model changes.

  `class`

  `BasicScrollBarUI.PropertyChangeHandler`

  Property change handler

  `protected class`

  `BasicScrollBarUI.ScrollListener`

  Listener for scrolling events initiated in the
  `ScrollPane`.

  `protected class`

  `BasicScrollBarUI.TrackListener`

  Track mouse drags.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected BasicScrollBarUI.ArrowButtonListener`

  `buttonListener`

  Button listener

  `protected JButton`

  `decrButton`

  Decrement button

  `protected static final int`

  `DECREASE_HIGHLIGHT`

  Decrease highlight

  `protected int`

  `decrGap`

  Distance between the decrement button and the track.

  `protected JButton`

  `incrButton`

  Increment button

  `protected static final int`

  `INCREASE_HIGHLIGHT`

  Increase highlight

  `protected int`

  `incrGap`

  Distance between the increment button and the track.

  `protected boolean`

  `isDragging`

  Dragging

  `protected Dimension`

  `maximumThumbSize`

  Maximum thumb size

  `protected Dimension`

  `minimumThumbSize`

  Minimum thumb size

  `protected BasicScrollBarUI.ModelListener`

  `modelListener`

  Model listener

  `protected static final int`

  `NO_HIGHLIGHT`

  No highlight

  `protected PropertyChangeListener`

  `propertyChangeListener`

  Property change listener

  `protected JScrollBar`

  `scrollbar`

  Scrollbar

  `protected int`

  `scrollBarWidth`

  Hint as to what width (when vertical) or height (when horizontal)
  should be.

  `protected BasicScrollBarUI.ScrollListener`

  `scrollListener`

  Scroll listener

  `protected Timer`

  `scrollTimer`

  Scroll timer

  `protected Color`

  `thumbColor`

  Thumb color

  `protected Color`

  `thumbDarkShadowColor`

  Thumb dark shadow color

  `protected Color`

  `thumbHighlightColor`

  Thumb highlight color

  `protected Color`

  `thumbLightShadowColor`

  Thumb light shadow color

  `protected Rectangle`

  `thumbRect`

  Thumb rectangle

  `protected Color`

  `trackColor`

  Track color

  `protected int`

  `trackHighlight`

  Track highlight

  `protected Color`

  `trackHighlightColor`

  Track highlight color

  `protected BasicScrollBarUI.TrackListener`

  `trackListener`

  Track listener

  `protected Rectangle`

  `trackRect`

  Track rectangle

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicScrollBarUI()`

  Constructs a `BasicScrollBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(String name,
  Component child)`

  If the layout manager uses a per-component string,
  adds the component `comp` to the layout,
  associating it
  with the string specified by `name`.

  `protected void`

  `configureScrollBarColors()`

  Configures the scroll bar colors.

  `protected BasicScrollBarUI.ArrowButtonListener`

  `createArrowButtonListener()`

  Creates an arrow button listener.

  `protected JButton`

  `createDecreaseButton(int orientation)`

  Creates a decrease button.

  `protected JButton`

  `createIncreaseButton(int orientation)`

  Creates an increase button.

  `protected BasicScrollBarUI.ModelListener`

  `createModelListener()`

  Creates a model listener.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a property change listener.

  `protected BasicScrollBarUI.ScrollListener`

  `createScrollListener()`

  Creates a scroll listener.

  `protected BasicScrollBarUI.TrackListener`

  `createTrackListener()`

  Creates a track listener.

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates the UI.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the specified component's maximum size appropriate for
  the look and feel.

  `protected Dimension`

  `getMaximumThumbSize()`

  Returns the largest acceptable size for the thumb.

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

  `protected Rectangle`

  `getThumbBounds()`

  Return the current size/location of the thumb.

  `protected Rectangle`

  `getTrackBounds()`

  Returns the current bounds of the track, i.e.

  `protected void`

  `installComponents()`

  Installs the components.

  `protected void`

  `installDefaults()`

  Installs the defaults.

  `protected void`

  `installKeyboardActions()`

  Installs the keyboard actions.

  `protected void`

  `installListeners()`

  Installs the listeners.

  `void`

  `installUI(JComponent c)`

  Installs the UI.

  `boolean`

  `isThumbRollover()`

  Returns true if the mouse is currently over the thumb.

  `void`

  `layoutContainer(Container scrollbarContainer)`

  Lays out the specified container.

  `protected void`

  `layoutHScrollbar(JScrollBar sb)`

  Lays out a horizontal scroll bar.

  `protected void`

  `layoutVScrollbar(JScrollBar sb)`

  Lays out a vertical scroll bar.

  `Dimension`

  `minimumLayoutSize(Container scrollbarContainer)`

  Calculates the minimum size dimensions for the specified
  container, given the components it contains.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `paintDecreaseHighlight(Graphics g)`

  Paints the decrease highlight.

  `protected void`

  `paintIncreaseHighlight(Graphics g)`

  Paints the increase highlight.

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

  `Dimension`

  `preferredLayoutSize(Container scrollbarContainer)`

  Calculates the preferred size dimensions for the specified
  container, given the components it contains.

  `void`

  `removeLayoutComponent(Component child)`

  Removes the specified component from the layout.

  `protected void`

  `scrollByBlock(int direction)`

  Scrolls by block.

  `protected void`

  `scrollByUnit(int direction)`

  Scrolls by unit.

  `protected void`

  `setThumbBounds(int x,
  int y,
  int width,
  int height)`

  Set the bounds of the thumb and force a repaint that includes
  the old thumbBounds and the new one.

  `protected void`

  `setThumbRollover(boolean active)`

  Sets whether or not the mouse is currently over the thumb.

  `protected void`

  `uninstallComponents()`

  Uninstalls the components.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the defaults.

  `protected void`

  `uninstallKeyboardActions()`

  Uninstalls the keyboard actions.

  `protected void`

  `uninstallListeners()`

  Uninstall the listeners.

  `void`

  `uninstallUI(JComponent c)`

  Uninstalls the UI.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMinimumSize, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### minimumThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") minimumThumbSize

    Minimum thumb size
  + ### maximumThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") maximumThumbSize

    Maximum thumb size
  + ### thumbHighlightColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") thumbHighlightColor

    Thumb highlight color
  + ### thumbLightShadowColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") thumbLightShadowColor

    Thumb light shadow color
  + ### thumbDarkShadowColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") thumbDarkShadowColor

    Thumb dark shadow color
  + ### thumbColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") thumbColor

    Thumb color
  + ### trackColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") trackColor

    Track color
  + ### trackHighlightColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") trackHighlightColor

    Track highlight color
  + ### scrollbar

    protected [JScrollBar](../../JScrollBar.md "class in javax.swing") scrollbar

    Scrollbar
  + ### incrButton

    protected [JButton](../../JButton.md "class in javax.swing") incrButton

    Increment button
  + ### decrButton

    protected [JButton](../../JButton.md "class in javax.swing") decrButton

    Decrement button
  + ### isDragging

    protected boolean isDragging

    Dragging
  + ### trackListener

    protected [BasicScrollBarUI.TrackListener](BasicScrollBarUI.TrackListener.md "class in javax.swing.plaf.basic") trackListener

    Track listener
  + ### buttonListener

    protected [BasicScrollBarUI.ArrowButtonListener](BasicScrollBarUI.ArrowButtonListener.md "class in javax.swing.plaf.basic") buttonListener

    Button listener
  + ### modelListener

    protected [BasicScrollBarUI.ModelListener](BasicScrollBarUI.ModelListener.md "class in javax.swing.plaf.basic") modelListener

    Model listener
  + ### thumbRect

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") thumbRect

    Thumb rectangle
  + ### trackRect

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") trackRect

    Track rectangle
  + ### trackHighlight

    protected int trackHighlight

    Track highlight
  + ### NO\_HIGHLIGHT

    protected static final int NO\_HIGHLIGHT

    No highlight

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicScrollBarUI.NO_HIGHLIGHT)
  + ### DECREASE\_HIGHLIGHT

    protected static final int DECREASE\_HIGHLIGHT

    Decrease highlight

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicScrollBarUI.DECREASE_HIGHLIGHT)
  + ### INCREASE\_HIGHLIGHT

    protected static final int INCREASE\_HIGHLIGHT

    Increase highlight

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicScrollBarUI.INCREASE_HIGHLIGHT)
  + ### scrollListener

    protected [BasicScrollBarUI.ScrollListener](BasicScrollBarUI.ScrollListener.md "class in javax.swing.plaf.basic") scrollListener

    Scroll listener
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    Property change listener
  + ### scrollTimer

    protected [Timer](../../Timer.md "class in javax.swing") scrollTimer

    Scroll timer
  + ### scrollBarWidth

    protected int scrollBarWidth

    Hint as to what width (when vertical) or height (when horizontal)
    should be.

    Since:
    :   1.7
  + ### incrGap

    protected int incrGap

    Distance between the increment button and the track. This may be a negative
    number. If negative, then an overlap between the button and track will occur,
    which is useful for shaped buttons.

    Since:
    :   1.7
  + ### decrGap

    protected int decrGap

    Distance between the decrement button and the track. This may be a negative
    number. If negative, then an overlap between the button and track will occur,
    which is useful for shaped buttons.

    Since:
    :   1.7
* ## Constructor Details

  + ### BasicScrollBarUI

    public BasicScrollBarUI()

    Constructs a `BasicScrollBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates the UI.

    Parameters:
    :   `c` - the component

    Returns:
    :   the UI
  + ### configureScrollBarColors

    protected void configureScrollBarColors()

    Configures the scroll bar colors.
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Installs the UI.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Uninstalls the UI.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installDefaults

    protected void installDefaults()

    Installs the defaults.
  + ### installComponents

    protected void installComponents()

    Installs the components.
  + ### uninstallComponents

    protected void uninstallComponents()

    Uninstalls the components.
  + ### installListeners

    protected void installListeners()

    Installs the listeners.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Installs the keyboard actions.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Uninstalls the keyboard actions.
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstall the listeners.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the defaults.
  + ### createTrackListener

    protected [BasicScrollBarUI.TrackListener](BasicScrollBarUI.TrackListener.md "class in javax.swing.plaf.basic") createTrackListener()

    Creates a track listener.

    Returns:
    :   a track listener
  + ### createArrowButtonListener

    protected [BasicScrollBarUI.ArrowButtonListener](BasicScrollBarUI.ArrowButtonListener.md "class in javax.swing.plaf.basic") createArrowButtonListener()

    Creates an arrow button listener.

    Returns:
    :   an arrow button listener
  + ### createModelListener

    protected [BasicScrollBarUI.ModelListener](BasicScrollBarUI.ModelListener.md "class in javax.swing.plaf.basic") createModelListener()

    Creates a model listener.

    Returns:
    :   a model listener
  + ### createScrollListener

    protected [BasicScrollBarUI.ScrollListener](BasicScrollBarUI.ScrollListener.md "class in javax.swing.plaf.basic") createScrollListener()

    Creates a scroll listener.

    Returns:
    :   a scroll listener
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates a property change listener.

    Returns:
    :   a property change listener
  + ### setThumbRollover

    protected void setThumbRollover(boolean active)

    Sets whether or not the mouse is currently over the thumb.

    Parameters:
    :   `active` - True indicates the thumb is currently active.

    Since:
    :   1.5
  + ### isThumbRollover

    public boolean isThumbRollover()

    Returns true if the mouse is currently over the thumb.

    Returns:
    :   true if the thumb is currently active

    Since:
    :   1.5
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Paints the specified component appropriately for the look and feel.
    This method is invoked from the `ComponentUI.update` method when
    the specified component is being painted. Subclasses should override
    this method and use the specified `Graphics` object to
    render the content of the component.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
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
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `c` - the `JScrollBar` that's delegating this method to us

    Returns:
    :   the preferred size of a Basic JScrollBar

    See Also:
    :   - [`getMaximumSize(javax.swing.JComponent)`](#getMaximumSize(javax.swing.JComponent))
        - [`ComponentUI.getMinimumSize(javax.swing.JComponent)`](../ComponentUI.md#getMinimumSize(javax.swing.JComponent))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's maximum size appropriate for
    the look and feel. If `null` is returned, the maximum
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method invokes `getPreferredSize` and returns that value.

    Overrides:
    :   `getMaximumSize` in class `ComponentUI`

    Parameters:
    :   `c` - The JScrollBar that's delegating this method to us.

    Returns:
    :   new Dimension(Integer.MAX\_VALUE, Integer.MAX\_VALUE);

    See Also:
    :   - [`ComponentUI.getMinimumSize(javax.swing.JComponent)`](../ComponentUI.md#getMinimumSize(javax.swing.JComponent))
        - [`getPreferredSize(javax.swing.JComponent)`](#getPreferredSize(javax.swing.JComponent))
  + ### createDecreaseButton

    protected [JButton](../../JButton.md "class in javax.swing") createDecreaseButton(int orientation)

    Creates a decrease button.

    Parameters:
    :   `orientation` - the orientation

    Returns:
    :   a decrease button
  + ### createIncreaseButton

    protected [JButton](../../JButton.md "class in javax.swing") createIncreaseButton(int orientation)

    Creates an increase button.

    Parameters:
    :   `orientation` - the orientation

    Returns:
    :   an increase button
  + ### paintDecreaseHighlight

    protected void paintDecreaseHighlight([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the decrease highlight.

    Parameters:
    :   `g` - the graphics
  + ### paintIncreaseHighlight

    protected void paintIncreaseHighlight([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the increase highlight.

    Parameters:
    :   `g` - the graphics
  + ### paintTrack

    protected void paintTrack([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") trackBounds)

    Paints the track.

    Parameters:
    :   `g` - the graphics
    :   `c` - the component
    :   `trackBounds` - the track bounds
  + ### paintThumb

    protected void paintThumb([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") thumbBounds)

    Paints the thumb.

    Parameters:
    :   `g` - the graphics
    :   `c` - the component
    :   `thumbBounds` - the thumb bounds
  + ### getMinimumThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumThumbSize()

    Returns the smallest acceptable size for the thumb. If the scrollbar
    becomes so small that this size isn't available, the thumb will be
    hidden.

    **Warning** : the value returned by this method should not be
    be modified, it's a shared static constant.

    Returns:
    :   The smallest acceptable size for the thumb.

    See Also:
    :   - [`getMaximumThumbSize()`](#getMaximumThumbSize())
  + ### getMaximumThumbSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumThumbSize()

    Returns the largest acceptable size for the thumb. To create a fixed
    size thumb one make this method and `getMinimumThumbSize`
    return the same value.

    **Warning** : the value returned by this method should not be
    be modified, it's a shared static constant.

    Returns:
    :   The largest acceptable size for the thumb.

    See Also:
    :   - [`getMinimumThumbSize()`](#getMinimumThumbSize())
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../../../java/awt/Component.md "class in java.awt") child)

    Description copied from interface: `LayoutManager`

    If the layout manager uses a per-component string,
    adds the component `comp` to the layout,
    associating it
    with the string specified by `name`.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - the string to be associated with the component
    :   `child` - the component to be added
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../../../java/awt/Component.md "class in java.awt") child)

    Description copied from interface: `LayoutManager`

    Removes the specified component from the layout.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `child` - the component to be removed
  + ### preferredLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") scrollbarContainer)

    Description copied from interface: `LayoutManager`

    Calculates the preferred size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `scrollbarContainer` - the container to be laid out

    Returns:
    :   the preferred dimension for the container

    See Also:
    :   - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../../../java/awt/Container.md "class in java.awt") scrollbarContainer)

    Description copied from interface: `LayoutManager`

    Calculates the minimum size dimensions for the specified
    container, given the components it contains.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `scrollbarContainer` - the component to be laid out

    Returns:
    :   the minimum dimension for the container

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### layoutVScrollbar

    protected void layoutVScrollbar([JScrollBar](../../JScrollBar.md "class in javax.swing") sb)

    Lays out a vertical scroll bar.

    Parameters:
    :   `sb` - the scroll bar
  + ### layoutHScrollbar

    protected void layoutHScrollbar([JScrollBar](../../JScrollBar.md "class in javax.swing") sb)

    Lays out a horizontal scroll bar.

    Parameters:
    :   `sb` - the scroll bar
  + ### layoutContainer

    public void layoutContainer([Container](../../../../java/awt/Container.md "class in java.awt") scrollbarContainer)

    Description copied from interface: `LayoutManager`

    Lays out the specified container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `scrollbarContainer` - the container to be laid out
  + ### setThumbBounds

    protected void setThumbBounds(int x,
    int y,
    int width,
    int height)

    Set the bounds of the thumb and force a repaint that includes
    the old thumbBounds and the new one.

    Parameters:
    :   `x` - set the x location of the thumb
    :   `y` - set the y location of the thumb
    :   `width` - set the width of the thumb
    :   `height` - set the height of the thumb

    See Also:
    :   - [`getThumbBounds()`](#getThumbBounds())
  + ### getThumbBounds

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getThumbBounds()

    Return the current size/location of the thumb.

    **Warning** : the value returned by this method should not be
    be modified, it's a reference to the actual rectangle, not a copy.

    Returns:
    :   The current size/location of the thumb.

    See Also:
    :   - [`setThumbBounds(int, int, int, int)`](#setThumbBounds(int,int,int,int))
  + ### getTrackBounds

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getTrackBounds()

    Returns the current bounds of the track, i.e. the space in between
    the increment and decrement buttons, less the insets. The value
    returned by this method is updated each time the scrollbar is
    laid out (validated).

    **Warning** : the value returned by this method should not be
    be modified, it's a reference to the actual rectangle, not a copy.

    Returns:
    :   the current bounds of the scrollbar track

    See Also:
    :   - [`layoutContainer(java.awt.Container)`](#layoutContainer(java.awt.Container))
  + ### scrollByBlock

    protected void scrollByBlock(int direction)

    Scrolls by block.

    Parameters:
    :   `direction` - the direction to scroll
  + ### scrollByUnit

    protected void scrollByUnit(int direction)

    Scrolls by unit.

    Parameters:
    :   `direction` - the direction to scroll
  + ### getSupportsAbsolutePositioning

    public boolean getSupportsAbsolutePositioning()

    Indicates whether the user can absolutely position the thumb with
    a mouse gesture (usually the middle mouse button).

    Returns:
    :   true if a mouse gesture can absolutely position the thumb

    Since:
    :   1.5