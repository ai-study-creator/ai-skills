Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalTabbedPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TabbedPaneUI](../TabbedPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalTabbedPaneUI

All Implemented Interfaces:
:   `SwingConstants`

---

public class MetalTabbedPaneUI
extends [BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

The Metal subclass of BasicTabbedPaneUI.

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

  `class`

  `MetalTabbedPaneUI.TabbedPaneLayout`

  This class should be treated as a "protected" inner class.

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

  `BasicTabbedPaneUI.FocusHandler, BasicTabbedPaneUI.MouseHandler, BasicTabbedPaneUI.PropertyChangeHandler, BasicTabbedPaneUI.TabSelectionHandler`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `minTabWidth`

  The minimum width of a pane.

  `protected Color`

  `selectColor`

  The color of the selected pane.

  `protected Color`

  `selectHighlight`

  The color of the highlight.

  `protected Color`

  `tabAreaBackground`

  The color of tab's background.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

  `calcRect, contentBorderInsets, darkShadow, downKey, focus, focusListener, highlight, leftKey, lightHighlight, maxTabHeight, maxTabWidth, mouseListener, propertyChangeListener, rects, rightKey, runCount, selectedRun, selectedTabPadInsets, shadow, tabAreaInsets, tabChangeListener, tabInsets, tabPane, tabRunOverlay, tabRuns, textIconGap, upKey`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalTabbedPaneUI()`

  Constructs a `MetalTabbedPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected int`

  `calculateMaxTabHeight(int tabPlacement)`

  Calculates the maximum tab height.

  `protected LayoutManager`

  `createLayoutManager()`

  Invoked by `installUI` to create
  a layout manager object to manage
  the `JTabbedPane`.

  `static ComponentUI`

  `createUI(JComponent x)`

  Constructs `MetalTabbedPaneUI`.

  `protected int`

  `getBaselineOffset()`

  Returns the amount the baseline is offset by.

  `protected Color`

  `getColorForGap(int currentRun,
  int x,
  int y)`

  Returns the color of the gap.

  `protected int`

  `getTabLabelShiftX(int tabPlacement,
  int tabIndex,
  boolean isSelected)`

  Overridden to do nothing for the Java L&F.

  `protected int`

  `getTabLabelShiftY(int tabPlacement,
  int tabIndex,
  boolean isSelected)`

  Overridden to do nothing for the Java L&F.

  `protected int`

  `getTabRunOverlay(int tabPlacement)`

  Returns the tab run overlay.

  `protected void`

  `installDefaults()`

  Installs the defaults.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `paintBottomTabBorder(int tabIndex,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int btm,
  int rght,
  boolean isSelected)`

  Paints the bottom tab border.

  `protected void`

  `paintContentBorderBottomEdge(Graphics g,
  int tabPlacement,
  int selectedIndex,
  int x,
  int y,
  int w,
  int h)`

  Paints the content border bottom edge.

  `protected void`

  `paintContentBorderLeftEdge(Graphics g,
  int tabPlacement,
  int selectedIndex,
  int x,
  int y,
  int w,
  int h)`

  Paints the content border left edge.

  `protected void`

  `paintContentBorderRightEdge(Graphics g,
  int tabPlacement,
  int selectedIndex,
  int x,
  int y,
  int w,
  int h)`

  Paints the content border right edge.

  `protected void`

  `paintContentBorderTopEdge(Graphics g,
  int tabPlacement,
  int selectedIndex,
  int x,
  int y,
  int w,
  int h)`

  Paints the content border top edge.

  `protected void`

  `paintFocusIndicator(Graphics g,
  int tabPlacement,
  Rectangle[] rects,
  int tabIndex,
  Rectangle iconRect,
  Rectangle textRect,
  boolean isSelected)`

  Paints the focus indicator.

  `protected void`

  `paintHighlightBelowTab()`

  Paints highlights below tab.

  `protected void`

  `paintLeftTabBorder(int tabIndex,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int btm,
  int rght,
  boolean isSelected)`

  Paints the left tab border.

  `protected void`

  `paintRightTabBorder(int tabIndex,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int btm,
  int rght,
  boolean isSelected)`

  Paints the right tab border.

  `protected void`

  `paintTabBackground(Graphics g,
  int tabPlacement,
  int tabIndex,
  int x,
  int y,
  int w,
  int h,
  boolean isSelected)`

  Paints the tab background.

  `protected void`

  `paintTabBorder(Graphics g,
  int tabPlacement,
  int tabIndex,
  int x,
  int y,
  int w,
  int h,
  boolean isSelected)`

  Paints the border around a tab.

  `protected void`

  `paintTopTabBorder(int tabIndex,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int btm,
  int rght,
  boolean isSelected)`

  Paints the top tab border.

  `protected boolean`

  `shouldFillGap(int currentRun,
  int tabIndex,
  int x,
  int y)`

  Returns `true` if the gap should be filled.

  `protected boolean`

  `shouldPadTabRun(int tabPlacement,
  int run)`

  Returns whether or not the tab run should be padded.

  `protected boolean`

  `shouldRotateTabRuns(int tabPlacement,
  int selectedRun)`

  Returns `true` if tab runs should be rotated.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate that it is time to paint the specified
  component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTabbedPaneUI](../basic/BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

  `assureRectsCreated, calculateMaxTabWidth, calculateTabAreaHeight, calculateTabAreaWidth, calculateTabHeight, calculateTabWidth, createChangeListener, createFocusListener, createMouseListener, createPropertyChangeListener, createScrollButton, expandTabRunsArray, getBaseline, getBaseline, getBaselineResizeBehavior, getContentBorderInsets, getFocusIndex, getFontMetrics, getIconForTab, getMaximumSize, getMinimumSize, getNextTabIndex, getNextTabIndexInRun, getNextTabRun, getPreviousTabIndex, getPreviousTabIndexInRun, getPreviousTabRun, getRolloverTab, getRunForTab, getSelectedTabPadInsets, getTabAreaInsets, getTabBounds, getTabBounds, getTabInsets, getTabRunCount, getTabRunIndent, getTabRunOffset, getTextViewForTab, getVisibleComponent, installComponents, installKeyboardActions, installListeners, installUI, lastTabInRun, layoutLabel, navigateSelectedTab, paintContentBorder, paintIcon, paintTab, paintTabArea, paintText, rotateInsets, selectAdjacentRunTab, selectNextTab, selectNextTabInRun, selectPreviousTab, selectPreviousTabInRun, setRolloverTab, setVisibleComponent, shouldRotateTabRuns, tabForCoordinate, uninstallComponents, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getPreferredSize`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### minTabWidth

    protected int minTabWidth

    The minimum width of a pane.
  + ### tabAreaBackground

    protected [Color](../../../../java/awt/Color.md "class in java.awt") tabAreaBackground

    The color of tab's background.
  + ### selectColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectColor

    The color of the selected pane.
  + ### selectHighlight

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectHighlight

    The color of the highlight.
* ## Constructor Details

  + ### MetalTabbedPaneUI

    public MetalTabbedPaneUI()

    Constructs a `MetalTabbedPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Constructs `MetalTabbedPaneUI`.

    Parameters:
    :   `x` - a component

    Returns:
    :   an instance of `MetalTabbedPaneUI`
  + ### createLayoutManager

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayoutManager()

    Description copied from class: `BasicTabbedPaneUI`

    Invoked by `installUI` to create
    a layout manager object to manage
    the `JTabbedPane`.

    Overrides:
    :   `createLayoutManager` in class `BasicTabbedPaneUI`

    Returns:
    :   a layout manager object

    See Also:
    :   - [`BasicTabbedPaneUI.TabbedPaneLayout`](../basic/BasicTabbedPaneUI.TabbedPaneLayout.md "class in javax.swing.plaf.basic")
        - [`JTabbedPane.getTabLayoutPolicy()`](../../JTabbedPane.md#getTabLayoutPolicy())
  + ### installDefaults

    protected void installDefaults()

    Description copied from class: `BasicTabbedPaneUI`

    Installs the defaults.

    Overrides:
    :   `installDefaults` in class `BasicTabbedPaneUI`
  + ### paintTabBorder

    protected void paintTabBorder([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int tabIndex,
    int x,
    int y,
    int w,
    int h,
    boolean isSelected)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the border around a tab.
    Note that this function does not paint the background of the tab,
    that is done elsewhere.

    Overrides:
    :   `paintTabBorder` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the index of the tab with respect to other tabs
    :   `x` - the x coordinate of tab
    :   `y` - the y coordinate of tab
    :   `w` - the width of the tab
    :   `h` - the height of the tab
    :   `isSelected` - a `boolean` which determines whether or not
        the tab is selected
  + ### paintTopTabBorder

    protected void paintTopTabBorder(int tabIndex,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int btm,
    int rght,
    boolean isSelected)

    Paints the top tab border.

    Parameters:
    :   `tabIndex` - a tab index
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `btm` - bottom
    :   `rght` - right
    :   `isSelected` - a selection
  + ### shouldFillGap

    protected boolean shouldFillGap(int currentRun,
    int tabIndex,
    int x,
    int y)

    Returns `true` if the gap should be filled.

    Parameters:
    :   `currentRun` - the current run
    :   `tabIndex` - the tab index
    :   `x` - an X coordinate
    :   `y` - an Y coordinate

    Returns:
    :   `true` if the gap should be filled
  + ### getColorForGap

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getColorForGap(int currentRun,
    int x,
    int y)

    Returns the color of the gap.

    Parameters:
    :   `currentRun` - the current run
    :   `x` - an X coordinate
    :   `y` - an Y coordinate

    Returns:
    :   the color of the gap
  + ### paintLeftTabBorder

    protected void paintLeftTabBorder(int tabIndex,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int btm,
    int rght,
    boolean isSelected)

    Paints the left tab border.

    Parameters:
    :   `tabIndex` - a tab index
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `btm` - bottom
    :   `rght` - right
    :   `isSelected` - a selection
  + ### paintBottomTabBorder

    protected void paintBottomTabBorder(int tabIndex,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int btm,
    int rght,
    boolean isSelected)

    Paints the bottom tab border.

    Parameters:
    :   `tabIndex` - a tab index
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `btm` - bottom
    :   `rght` - right
    :   `isSelected` - a selection
  + ### paintRightTabBorder

    protected void paintRightTabBorder(int tabIndex,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int btm,
    int rght,
    boolean isSelected)

    Paints the right tab border.

    Parameters:
    :   `tabIndex` - a tab index
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
    :   `w` - a width
    :   `h` - a height
    :   `btm` - bottom
    :   `rght` - right
    :   `isSelected` - a selection
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Notifies this UI delegate that it is time to paint the specified
    component. This method is invoked by `JComponent`
    when the specified component is being painted.

    By default this method fills the specified component with
    its background color if its `opaque` property is `true`,
    and then immediately calls `paint`. In general this method need
    not be overridden by subclasses; all look-and-feel rendering code should
    reside in the `paint` method.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#paint(java.awt.Graphics,javax.swing.JComponent))
        - [`JComponent.paintComponent(java.awt.Graphics)`](../../JComponent.md#paintComponent(java.awt.Graphics))
  + ### paintTabBackground

    protected void paintTabBackground([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int tabIndex,
    int x,
    int y,
    int w,
    int h,
    boolean isSelected)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the tab background.

    Overrides:
    :   `paintTabBackground` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the index of the tab with respect to other tabs
    :   `x` - the x coordinate of tab
    :   `y` - the y coordinate of tab
    :   `w` - the width of the tab
    :   `h` - the height of the tab
    :   `isSelected` - a `boolean` which determines whether or not
        the tab is selected
  + ### getTabLabelShiftX

    protected int getTabLabelShiftX(int tabPlacement,
    int tabIndex,
    boolean isSelected)

    Overridden to do nothing for the Java L&F.

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

    Overridden to do nothing for the Java L&F.

    Overrides:
    :   `getTabLabelShiftY` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `tabIndex` - the tab index
    :   `isSelected` - selection status

    Returns:
    :   the tab label shift y
  + ### getBaselineOffset

    protected int getBaselineOffset()

    Returns the amount the baseline is offset by. This is typically
    the same as `getTabLabelShiftY`.

    Overrides:
    :   `getBaselineOffset` in class `BasicTabbedPaneUI`

    Returns:
    :   amount to offset the baseline by

    Since:
    :   1.6
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
    :   `paint` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintHighlightBelowTab

    protected void paintHighlightBelowTab()

    Paints highlights below tab.
  + ### paintFocusIndicator

    protected void paintFocusIndicator([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt")[] rects,
    int tabIndex,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    boolean isSelected)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the focus indicator.

    Overrides:
    :   `paintFocusIndicator` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics
    :   `tabPlacement` - the tab placement
    :   `rects` - the tab rectangles
    :   `tabIndex` - the tab index
    :   `iconRect` - the icon rectangle
    :   `textRect` - the text rectangle
    :   `isSelected` - selection status
  + ### paintContentBorderTopEdge

    protected void paintContentBorderTopEdge([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex,
    int x,
    int y,
    int w,
    int h)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the content border top edge.

    Overrides:
    :   `paintContentBorderTopEdge` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `selectedIndex` - the tab index of the selected component
    :   `x` - the x coordinate of tab
    :   `y` - the y coordinate of tab
    :   `w` - the width of the tab
    :   `h` - the height of the tab
  + ### paintContentBorderBottomEdge

    protected void paintContentBorderBottomEdge([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex,
    int x,
    int y,
    int w,
    int h)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the content border bottom edge.

    Overrides:
    :   `paintContentBorderBottomEdge` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `selectedIndex` - the tab index of the selected component
    :   `x` - the x coordinate of tab
    :   `y` - the y coordinate of tab
    :   `w` - the width of the tab
    :   `h` - the height of the tab
  + ### paintContentBorderLeftEdge

    protected void paintContentBorderLeftEdge([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex,
    int x,
    int y,
    int w,
    int h)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the content border left edge.

    Overrides:
    :   `paintContentBorderLeftEdge` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `selectedIndex` - the tab index of the selected component
    :   `x` - the x coordinate of tab
    :   `y` - the y coordinate of tab
    :   `w` - the width of the tab
    :   `h` - the height of the tab
  + ### paintContentBorderRightEdge

    protected void paintContentBorderRightEdge([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex,
    int x,
    int y,
    int w,
    int h)

    Description copied from class: `BasicTabbedPaneUI`

    Paints the content border right edge.

    Overrides:
    :   `paintContentBorderRightEdge` in class `BasicTabbedPaneUI`

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `selectedIndex` - the tab index of the selected component
    :   `x` - the x coordinate of tab
    :   `y` - the y coordinate of tab
    :   `w` - the width of the tab
    :   `h` - the height of the tab
  + ### calculateMaxTabHeight

    protected int calculateMaxTabHeight(int tabPlacement)

    Description copied from class: `BasicTabbedPaneUI`

    Calculates the maximum tab height.

    Overrides:
    :   `calculateMaxTabHeight` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the maximum tab height
  + ### getTabRunOverlay

    protected int getTabRunOverlay(int tabPlacement)

    Description copied from class: `BasicTabbedPaneUI`

    Returns the tab run overlay.

    Overrides:
    :   `getTabRunOverlay` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the tab run overlay
  + ### shouldRotateTabRuns

    protected boolean shouldRotateTabRuns(int tabPlacement,
    int selectedRun)

    Returns `true` if tab runs should be rotated.

    Parameters:
    :   `tabPlacement` - a tab placement
    :   `selectedRun` - a selected run

    Returns:
    :   `true` if tab runs should be rotated.
  + ### shouldPadTabRun

    protected boolean shouldPadTabRun(int tabPlacement,
    int run)

    Description copied from class: `BasicTabbedPaneUI`

    Returns whether or not the tab run should be padded.

    Overrides:
    :   `shouldPadTabRun` in class `BasicTabbedPaneUI`

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `run` - the tab run

    Returns:
    :   whether or not the tab run should be padded