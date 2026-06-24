Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthProgressBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ProgressBarUI](../ProgressBarUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthProgressBarUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthProgressBarUI
extends [BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")
implements [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth"), [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Provides the Synth L&F UI delegate for
[`JProgressBar`](../../JProgressBar.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

  `BasicProgressBarUI.ChangeHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

  `boxRect, changeListener, progressBar`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthProgressBarUI()`

  Constructs a `SynthProgressBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new UI object for the given component.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `protected Rectangle`

  `getBox(Rectangle r)`

  Stores the position and size of
  the bouncing box that would be painted for the current animation index
  in `r` and returns `r`.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installListeners()`

  Registers listeners.

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

  `paintText(SynthContext context,
  Graphics g,
  String title)`

  Paints the component's text.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `setAnimationIndex(int newValue)`

  Sets the index of the current animation frame
  to the specified value and requests that the
  progress bar be repainted.

  `protected void`

  `uninstallDefaults()`

  Unintalls default properties.

  `protected void`

  `uninstallListeners()`

  Removes all listeners installed by this object.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

  `getAmountFull, getAnimationIndex, getBaselineResizeBehavior, getBoxLength, getCellLength, getCellSpacing, getFrameCount, getMaximumSize, getMinimumSize, getPreferredInnerHorizontal, getPreferredInnerVertical, getSelectionBackground, getSelectionForeground, getStringPlacement, incrementAnimationIndex, installUI, paintDeterminate, paintIndeterminate, paintString, setCellLength, setCellSpacing, startAnimationTimer, stopAnimationTimer, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthProgressBarUI

    public SynthProgressBarUI()

    Constructs a `SynthProgressBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new UI object for the given component.

    Parameters:
    :   `x` - component to create UI object for

    Returns:
    :   the UI object
  + ### installListeners

    protected void installListeners()

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicProgressBarUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Removes all listeners installed by this object.

    Overrides:
    :   `uninstallListeners` in class `BasicProgressBarUI`
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicProgressBarUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Unintalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicProgressBarUI`
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### getBaseline

    public int getBaseline([JComponent](../../JComponent.md "class in javax.swing") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `BasicProgressBarUI`

    Parameters:
    :   `c` - `JComponent` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### getBox

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getBox([Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") r)

    Stores the position and size of
    the bouncing box that would be painted for the current animation index
    in `r` and returns `r`.
    Subclasses that add to the painting performed
    in this class's implementation of `paintIndeterminate` --
    to draw an outline around the bouncing box, for example --
    can use this method to get the location of the bouncing
    box that was just painted.
    By overriding this method,
    you have complete control over the size and position
    of the bouncing box,
    without having to reimplement `paintIndeterminate`.

    Overrides:
    :   `getBox` in class `BasicProgressBarUI`

    Parameters:
    :   `r` - the Rectangle instance to be modified;
        may be `null`

    Returns:
    :   `null` if no box should be drawn;
        otherwise, returns the passed-in rectangle
        (if non-null)
        or a new rectangle

    See Also:
    :   - [`BasicProgressBarUI.setAnimationIndex(int)`](../basic/BasicProgressBarUI.md#setAnimationIndex(int))
  + ### setAnimationIndex

    protected void setAnimationIndex(int newValue)

    Sets the index of the current animation frame
    to the specified value and requests that the
    progress bar be repainted.
    Subclasses that don't use the default painting code
    might need to override this method
    to change the way that the `repaint` method
    is invoked.

    Overrides:
    :   `setAnimationIndex` in class `BasicProgressBarUI`

    Parameters:
    :   `newValue` - the new animation index; no checking
        is performed on its value

    See Also:
    :   - [`BasicProgressBarUI.incrementAnimationIndex()`](../basic/BasicProgressBarUI.md#incrementAnimationIndex())
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
    :   `paint` in class `BasicProgressBarUI`

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
  + ### paintText

    protected void paintText([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") title)

    Paints the component's text.

    Parameters:
    :   `context` - context for the component being painted
    :   `g` - `Graphics` object used for painting
    :   `title` - the text to paint
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
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the specified component's preferred size appropriate for
    the look and feel. If `null` is returned, the preferred
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method returns `null`.

    Overrides:
    :   `getPreferredSize` in class `BasicProgressBarUI`

    Parameters:
    :   `c` - the component whose preferred size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object containing given component's preferred
        size appropriate for the look and feel

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))