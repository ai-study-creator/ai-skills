Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthTabbedPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TabbedPaneUI](../TabbedPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthTabbedPaneUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`, `SwingConstants`

---

public class SynthTabbedPaneUI
extends [BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JTabbedPane`](../../JTabbedPane.md "class in javax.swing").

Looks up the `selectedTabPadInsets` property from the Style,
which represents additional insets for the selected tab.

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

  `BasicTabbedPaneUI.FocusHandler, BasicTabbedPaneUI.MouseHandler, BasicTabbedPaneUI.PropertyChangeHandler, BasicTabbedPaneUI.TabbedPaneLayout, BasicTabbedPaneUI.TabSelectionHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

  `calcRect, contentBorderInsets, darkShadow, downKey, focus, focusListener, highlight, leftKey, lightHighlight, maxTabHeight, maxTabWidth, mouseListener, propertyChangeListener, rects, rightKey, runCount, selectedRun, selectedTabPadInsets, shadow, tabAreaInsets, tabChangeListener, tabInsets, tabPane, tabRunOverlay, tabRuns, textIconGap, upKey`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthTabbedPaneUI()`

  Constructs a `SynthTabbedPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected int`

  `calculateMaxTabHeight(int tabPlacement)`

  Calculates the maximum tab height.

  `protected int`

  `calculateMaxTabWidth(int tabPlacement)`

  Calculates the maximum tab width.

  `protected int`

  `calculateTabWidth(int tabPlacement,
  int tabIndex,
  FontMetrics metrics)`

  Calculates the tab width.

  `protected LayoutManager`

  `createLayoutManager()`

  Invoked by `installUI` to create
  a layout manager object to manage
  the `JTabbedPane`.

  `protected MouseListener`

  `createMouseListener()`

  Creates a mouse listener.

  `protected JButton`

  `createScrollButton(int direction)`

  Creates and returns a JButton that will provide the user
  with a way to scroll the tabs in a particular direction.

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a new UI object for the given component.

  `protected int`

  `getBaseline(int tab)`

  Returns the baseline for the specified tab.

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `protected FontMetrics`

  `getFontMetrics()`

  Returns the font metrics.

  `protected Insets`

  `getTabInsets(int tabPlacement,
  int tabIndex)`

  Returns the tab insets.

  `protected int`

  `getTabLabelShiftX(int tabPlacement,
  int tabIndex,
  boolean isSelected)`

  Returns the tab label shift x.

  `protected int`

  `getTabLabelShiftY(int tabPlacement,
  int tabIndex,
  boolean isSelected)`

  Returns the tab label shift y.

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

  `paintTabArea(Graphics g,
  int tabPlacement,
  int selectedIndex)`

  Paints the tabs in the tab area.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `protected void`

  `setRolloverTab(int index)`

  Sets the tab the mouse is currently over to `index`.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the defaults.

  `protected void`

  `uninstallListeners()`

  Uninstalls the listeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

  `assureRectsCreated, calculateTabAreaHeight, calculateTabAreaWidth, calculateTabHeight, createChangeListener, createFocusListener, createPropertyChangeListener, expandTabRunsArray, getBaseline, getBaselineOffset, getBaselineResizeBehavior, getContentBorderInsets, getFocusIndex, getIconForTab, getMaximumSize, getMinimumSize, getNextTabIndex, getNextTabIndexInRun, getNextTabRun, getPreviousTabIndex, getPreviousTabIndexInRun, getPreviousTabRun, getRolloverTab, getRunForTab, getSelectedTabPadInsets, getTabAreaInsets, getTabBounds, getTabBounds, getTabRunCount, getTabRunIndent, getTabRunOffset, getTabRunOverlay, getTextViewForTab, getVisibleComponent, installComponents, installKeyboardActions, installUI, lastTabInRun, layoutLabel, navigateSelectedTab, paintContentBorder, paintContentBorderBottomEdge, paintContentBorderLeftEdge, paintContentBorderRightEdge, paintContentBorderTopEdge, paintFocusIndicator, paintIcon, paintTab, paintTabBackground, paintTabBorder, paintText, rotateInsets, selectAdjacentRunTab, selectNextTab, selectNextTabInRun, selectPreviousTab, selectPreviousTabInRun, setVisibleComponent, shouldPadTabRun, shouldRotateTabRuns, tabForCoordinate, uninstallComponents, uninstallKeyboardActions, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getPreferredSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthTabbedPaneUI

    public SynthTabbedPaneUI()

    Constructs a `SynthTabbedPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a new UI object for the given component.

    Parameters:
    :   `c` - component to create UI object for

    Returns:
    :   the UI object
  + ### installDefaults

    protected void installDefaults()

    Installs the defaults.

    Overrides:
    :   `installDefaults` in class `BasicTabbedPaneUI`
  + ### installListeners

    protected void installListeners()

    Installs the listeners.

    Overrides:
    :   `installListeners` in class `BasicTabbedPaneUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicTabbedPaneUI`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the defaults.

    Overrides:
    :   `uninstallDefaults` in class `BasicTabbedPaneUI`
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### createScrollButton

    protected [JButton](../../JButton.md "class in javax.swing") createScrollButton(int direction)

    Creates and returns a JButton that will provide the user
    with a way to scroll the tabs in a particular direction. The
    returned JButton must be instance of UIResource.

    Overrides:
    :   `createScrollButton` in class `BasicTabbedPaneUI`

    Parameters:
    :   `direction` - One of the SwingConstants constants:
        SOUTH, NORTH, EAST or WEST

    Returns:
    :   Widget for user to

    See Also:
    :   - [`JTabbedPane.setTabPlacement(int)`](../../JTabbedPane.md#setTabPlacement(int))
        - [`SwingConstants`](../../SwingConstants.md "interface in javax.swing")
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### createMouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") createMouseListener()

    Creates a mouse listener.
    Overridden to keep track of whether the selected tab is also pressed.

    Overrides:
    :   `createMouseListener` in class `BasicTabbedPaneUI`

    Returns:
    :   a mouse listener
  + ### getTabLabelShiftX

    protected int getTabLabelShiftX(int tabPlacement,
    int tabIndex,
    boolean isSelected)

    Returns the tab label shift x.

    Overrides:
    :   `getTabLabelShiftX` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `tabIndex` - the tab index
    :   `isSelected` - selection status

    Returns:
    :   the tab label shift x
  + ### getTabLabelShiftY

    protected int getTabLabelShiftY(int tabPlacement,
    int tabIndex,
    boolean isSelected)

    Returns the tab label shift y.

    Overrides:
    :   `getTabLabelShiftY` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `tabIndex` - the tab index
    :   `isSelected` - selection status

    Returns:
    :   the tab label shift y
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
  + ### getBaseline

    protected int getBaseline(int tab)

    Returns the baseline for the specified tab.

    Overrides:
    :   `getBaseline` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tab` - index of tab to get baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline
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
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the specified component according to the Look and Feel.

    This method is not used by Synth Look and Feel.
    Painting is handled by the [`paint(SynthContext,Graphics)`](#paint(javax.swing.plaf.synth.SynthContext,java.awt.Graphics)) method.

    Overrides:
    :   `paint` in class `BasicTabbedPaneUI`

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
  + ### paintTabArea

    protected void paintTabArea([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the tabs in the tab area.
    Invoked by paint().
    The graphics parameter must be a valid `Graphics`
    object. Tab placement may be either:
    `JTabbedPane.TOP`, `JTabbedPane.BOTTOM`,
    `JTabbedPane.LEFT`, or `JTabbedPane.RIGHT`.
    The selected index must be a valid tabbed pane tab index (0 to
    tab count - 1, inclusive) or -1 if no tab is currently selected.
    The handling of invalid parameters is unspecified.

    Overrides:
    :   `paintTabArea` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics object to use for rendering
    :   `tabPlacement` - the placement for the tabs within the JTabbedPane
    :   `selectedIndex` - the tab index of the selected component
  + ### setRolloverTab

    protected void setRolloverTab(int index)

    Sets the tab the mouse is currently over to `index`.
    `index` will be -1 if the mouse is no longer over any
    tab. No checking is done to ensure the passed in index identifies a
    valid tab.

    Overrides:
    :   `setRolloverTab` in class `BasicTabbedPaneUI`

    Parameters:
    :   `index` - Index of the tab the mouse is over.
  + ### calculateMaxTabHeight

    protected int calculateMaxTabHeight(int tabPlacement)

    Calculates the maximum tab height.

    Overrides:
    :   `calculateMaxTabHeight` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the maximum tab height
  + ### calculateTabWidth

    protected int calculateTabWidth(int tabPlacement,
    int tabIndex,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") metrics)

    Calculates the tab width.

    Overrides:
    :   `calculateTabWidth` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the index of the tab with respect to other tabs
    :   `metrics` - the font metrics

    Returns:
    :   the tab width
  + ### calculateMaxTabWidth

    protected int calculateMaxTabWidth(int tabPlacement)

    Calculates the maximum tab width.

    Overrides:
    :   `calculateMaxTabWidth` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the maximum tab width
  + ### getTabInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") getTabInsets(int tabPlacement,
    int tabIndex)

    Returns the tab insets.

    Overrides:
    :   `getTabInsets` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the tab index

    Returns:
    :   the tab insets
  + ### getFontMetrics

    protected [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics()

    Returns the font metrics.

    Overrides:
    :   `getFontMetrics` in class `BasicTabbedPaneUI`

    Returns:
    :   the font metrics
  + ### createLayoutManager

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayoutManager()

    Invoked by `installUI` to create
    a layout manager object to manage
    the `JTabbedPane`.
    Overridden to create a TabbedPaneLayout subclass which takes into
    account tabOverlap.

    Overrides:
    :   `createLayoutManager` in class `BasicTabbedPaneUI`

    Returns:
    :   a layout manager object

    See Also:
    :   - [`BasicTabbedPaneUI.TabbedPaneLayout`](../basic/BasicTabbedPaneUI.TabbedPaneLayout.md "class in javax.swing.plaf.basic")
        - [`JTabbedPane.getTabLayoutPolicy()`](../../JTabbedPane.md#getTabLayoutPolicy())