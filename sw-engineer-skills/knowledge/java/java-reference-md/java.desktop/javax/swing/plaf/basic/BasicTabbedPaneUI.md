Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTabbedPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TabbedPaneUI](../TabbedPaneUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicTabbedPaneUI

All Implemented Interfaces:
:   `SwingConstants`

Direct Known Subclasses:
:   `MetalTabbedPaneUI`, `SynthTabbedPaneUI`

---

public class BasicTabbedPaneUI
extends [TabbedPaneUI](../TabbedPaneUI.md "class in javax.swing.plaf")
implements [SwingConstants](../../SwingConstants.md "interface in javax.swing")

A Basic L&F implementation of TabbedPaneUI.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicTabbedPaneUI.FocusHandler`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicTabbedPaneUI.MouseHandler`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicTabbedPaneUI.PropertyChangeHandler`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicTabbedPaneUI.TabbedPaneLayout`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicTabbedPaneUI.TabSelectionHandler`

  This class should be treated as a "protected" inner class.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Rectangle`

  `calcRect`

  A rectangle used for general layout calculations in order
  to avoid constructing many new Rectangles on the fly.

  `protected Insets`

  `contentBorderInsets`

  Content border insets

  `protected Color`

  `darkShadow`

  Dark shadow color

  `protected KeyStroke`

  `downKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected Color`

  `focus`

  Focus color

  `protected FocusListener`

  `focusListener`

  Focus change listener

  `protected Color`

  `highlight`

  Highlight color

  `protected KeyStroke`

  `leftKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected Color`

  `lightHighlight`

  Light highlight color

  `protected int`

  `maxTabHeight`

  Maximum tab height

  `protected int`

  `maxTabWidth`

  Maximum tab width

  `protected MouseListener`

  `mouseListener`

  Mouse change listener

  `protected PropertyChangeListener`

  `propertyChangeListener`

  Property change listener

  `protected Rectangle[]`

  `rects`

  Tab rects

  `protected KeyStroke`

  `rightKey`

  Deprecated.

  As of Java 2 platform v1.3.

  `protected int`

  `runCount`

  Run count

  `protected int`

  `selectedRun`

  Selected run

  `protected Insets`

  `selectedTabPadInsets`

  Selected tab insets

  `protected Color`

  `shadow`

  Shadow color

  `protected Insets`

  `tabAreaInsets`

  Tab area insets

  `protected ChangeListener`

  `tabChangeListener`

  Tab change listener

  `protected Insets`

  `tabInsets`

  Tab insets

  `protected JTabbedPane`

  `tabPane`

  The tab pane

  `protected int`

  `tabRunOverlay`

  Tab run overlay

  `protected int[]`

  `tabRuns`

  Tab runs

  `protected int`

  `textIconGap`

  Text icon gap

  `protected KeyStroke`

  `upKey`

  Deprecated.

  As of Java 2 platform v1.3.

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicTabbedPaneUI()`

  Constructs a `BasicTabbedPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `assureRectsCreated(int tabCount)`

  Assures the tab rectangles are created.

  `protected int`

  `calculateMaxTabHeight(int tabPlacement)`

  Calculates the maximum tab height.

  `protected int`

  `calculateMaxTabWidth(int tabPlacement)`

  Calculates the maximum tab width.

  `protected int`

  `calculateTabAreaHeight(int tabPlacement,
  int horizRunCount,
  int maxTabHeight)`

  Calculates the tab area height.

  `protected int`

  `calculateTabAreaWidth(int tabPlacement,
  int vertRunCount,
  int maxTabWidth)`

  Calculates the tab area width.

  `protected int`

  `calculateTabHeight(int tabPlacement,
  int tabIndex,
  int fontHeight)`

  Calculates the tab height.

  `protected int`

  `calculateTabWidth(int tabPlacement,
  int tabIndex,
  FontMetrics metrics)`

  Calculates the tab width.

  `protected ChangeListener`

  `createChangeListener()`

  Creates a change listener.

  `protected FocusListener`

  `createFocusListener()`

  Creates a focus listener.

  `protected LayoutManager`

  `createLayoutManager()`

  Invoked by `installUI` to create
  a layout manager object to manage
  the `JTabbedPane`.

  `protected MouseListener`

  `createMouseListener()`

  Creates a mouse listener.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a property change listener.

  `protected JButton`

  `createScrollButton(int direction)`

  Creates and returns a JButton that will provide the user
  with a way to scroll the tabs in a particular direction.

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a UI.

  `protected void`

  `expandTabRunsArray()`

  Expands the tab runs array.

  `protected int`

  `getBaseline(int tab)`

  Returns the baseline for the specified tab.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `protected int`

  `getBaselineOffset()`

  Returns the amount the baseline is offset by.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `protected Insets`

  `getContentBorderInsets(int tabPlacement)`

  Returns the content border insets.

  `protected int`

  `getFocusIndex()`

  Returns the index of the tab that has focus.

  `protected FontMetrics`

  `getFontMetrics()`

  Returns the font metrics.

  `protected Icon`

  `getIconForTab(int tabIndex)`

  Returns the icon for a tab.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the specified component's maximum size appropriate for
  the look and feel.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the specified component's minimum size appropriate for
  the look and feel.

  `protected int`

  `getNextTabIndex(int base)`

  Returns the next tab index.

  `protected int`

  `getNextTabIndexInRun(int tabCount,
  int base)`

  Returns the next tab index in the run.

  `protected int`

  `getNextTabRun(int baseRun)`

  Returns the next tab run.

  `protected int`

  `getPreviousTabIndex(int base)`

  Returns the previous tab index.

  `protected int`

  `getPreviousTabIndexInRun(int tabCount,
  int base)`

  Returns the previous tab index in the run.

  `protected int`

  `getPreviousTabRun(int baseRun)`

  Returns the previous tab run.

  `protected int`

  `getRolloverTab()`

  Returns the tab the mouse is currently over, or `-1` if the mouse is no
  longer over any tab.

  `protected int`

  `getRunForTab(int tabCount,
  int tabIndex)`

  Returns the run for a tab.

  `protected Insets`

  `getSelectedTabPadInsets(int tabPlacement)`

  Returns the selected tab pad insets.

  `protected Insets`

  `getTabAreaInsets(int tabPlacement)`

  Returns the tab area insets.

  `protected Rectangle`

  `getTabBounds(int tabIndex,
  Rectangle dest)`

  Returns the bounds of the specified tab in the coordinate space
  of the JTabbedPane component.

  `Rectangle`

  `getTabBounds(JTabbedPane pane,
  int i)`

  Returns the bounds of the specified tab index.

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

  `int`

  `getTabRunCount(JTabbedPane pane)`

  Returns the tab run count.

  `protected int`

  `getTabRunIndent(int tabPlacement,
  int run)`

  Returns the tab run indent.

  `protected int`

  `getTabRunOffset(int tabPlacement,
  int tabCount,
  int tabIndex,
  boolean forward)`

  Returns the tab run offset.

  `protected int`

  `getTabRunOverlay(int tabPlacement)`

  Returns the tab run overlay.

  `protected View`

  `getTextViewForTab(int tabIndex)`

  Returns the text View object required to render stylized text (HTML) for
  the specified tab or null if no specialized text rendering is needed
  for this tab.

  `protected Component`

  `getVisibleComponent()`

  Returns the visible component.

  `protected void`

  `installComponents()`

  Creates and installs any required subcomponents for the JTabbedPane.

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

  Configures the specified component appropriately for the look and feel.

  `protected int`

  `lastTabInRun(int tabCount,
  int run)`

  Returns the last tab in a run.

  `protected void`

  `layoutLabel(int tabPlacement,
  FontMetrics metrics,
  int tabIndex,
  String title,
  Icon icon,
  Rectangle tabRect,
  Rectangle iconRect,
  Rectangle textRect,
  boolean isSelected)`

  Lays out a label.

  `protected void`

  `navigateSelectedTab(int direction)`

  Navigates the selected tab.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  `protected void`

  `paintContentBorder(Graphics g,
  int tabPlacement,
  int selectedIndex)`

  Paints the content border.

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

  `paintIcon(Graphics g,
  int tabPlacement,
  int tabIndex,
  Icon icon,
  Rectangle iconRect,
  boolean isSelected)`

  Paints an icon.

  `protected void`

  `paintTab(Graphics g,
  int tabPlacement,
  Rectangle[] rects,
  int tabIndex,
  Rectangle iconRect,
  Rectangle textRect)`

  Paints a tab.

  `protected void`

  `paintTabArea(Graphics g,
  int tabPlacement,
  int selectedIndex)`

  Paints the tabs in the tab area.

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

  `paintText(Graphics g,
  int tabPlacement,
  Font font,
  FontMetrics metrics,
  int tabIndex,
  String title,
  Rectangle textRect,
  boolean isSelected)`

  Paints text.

  `protected static void`

  `rotateInsets(Insets topInsets,
  Insets targetInsets,
  int targetPlacement)`

  Rotates the insets.

  `protected void`

  `selectAdjacentRunTab(int tabPlacement,
  int tabIndex,
  int offset)`

  Selects an adjacent run of tabs.

  `protected void`

  `selectNextTab(int current)`

  Selects the next tab.

  `protected void`

  `selectNextTabInRun(int current)`

  Selects the next tab in the run.

  `protected void`

  `selectPreviousTab(int current)`

  Selects the previous tab.

  `protected void`

  `selectPreviousTabInRun(int current)`

  Selects the previous tab in the run.

  `protected void`

  `setRolloverTab(int index)`

  Sets the tab the mouse is currently over to `index`.

  `protected void`

  `setVisibleComponent(Component component)`

  Sets the visible component.

  `protected boolean`

  `shouldPadTabRun(int tabPlacement,
  int run)`

  Returns whether or not the tab run should be padded.

  `protected boolean`

  `shouldRotateTabRuns(int tabPlacement)`

  Returns whether or not the tab run should be rotated.

  `int`

  `tabForCoordinate(JTabbedPane pane,
  int x,
  int y)`

  Returns the tab index which intersects the specified point
  in the JTabbedPane's coordinate space.

  `protected void`

  `uninstallComponents()`

  Removes any installed subcomponents from the JTabbedPane.

  `protected void`

  `uninstallDefaults()`

  Uninstalls the defaults.

  `protected void`

  `uninstallKeyboardActions()`

  Uninstalls the keyboard actions.

  `protected void`

  `uninstallListeners()`

  Uninstalls the listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getPreferredSize, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### tabPane

    protected [JTabbedPane](../../JTabbedPane.md "class in javax.swing") tabPane

    The tab pane
  + ### highlight

    protected [Color](../../../../java/awt/Color.md "class in java.awt") highlight

    Highlight color
  + ### lightHighlight

    protected [Color](../../../../java/awt/Color.md "class in java.awt") lightHighlight

    Light highlight color
  + ### shadow

    protected [Color](../../../../java/awt/Color.md "class in java.awt") shadow

    Shadow color
  + ### darkShadow

    protected [Color](../../../../java/awt/Color.md "class in java.awt") darkShadow

    Dark shadow color
  + ### focus

    protected [Color](../../../../java/awt/Color.md "class in java.awt") focus

    Focus color
  + ### textIconGap

    protected int textIconGap

    Text icon gap
  + ### tabRunOverlay

    protected int tabRunOverlay

    Tab run overlay
  + ### tabInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") tabInsets

    Tab insets
  + ### selectedTabPadInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") selectedTabPadInsets

    Selected tab insets
  + ### tabAreaInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") tabAreaInsets

    Tab area insets
  + ### contentBorderInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") contentBorderInsets

    Content border insets
  + ### upKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") upKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### downKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") downKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### leftKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") leftKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### rightKey

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected [KeyStroke](../../KeyStroke.md "class in javax.swing") rightKey

    Deprecated.

    As of Java 2 platform v1.3.

    As of Java 2 platform v1.3 this previously undocumented field is no
    longer used.
    Key bindings are now defined by the LookAndFeel, please refer to
    the key bindings specification for further details.
  + ### tabRuns

    protected int[] tabRuns

    Tab runs
  + ### runCount

    protected int runCount

    Run count
  + ### selectedRun

    protected int selectedRun

    Selected run
  + ### rects

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt")[] rects

    Tab rects
  + ### maxTabHeight

    protected int maxTabHeight

    Maximum tab height
  + ### maxTabWidth

    protected int maxTabWidth

    Maximum tab width
  + ### tabChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") tabChangeListener

    Tab change listener
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    Property change listener
  + ### mouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") mouseListener

    Mouse change listener
  + ### focusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") focusListener

    Focus change listener
  + ### calcRect

    protected transient [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") calcRect

    A rectangle used for general layout calculations in order
    to avoid constructing many new Rectangles on the fly.
* ## Constructor Details

  + ### BasicTabbedPaneUI

    public BasicTabbedPaneUI()

    Constructs a `BasicTabbedPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a UI.

    Parameters:
    :   `c` - a component

    Returns:
    :   a UI
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Configures the specified component appropriately for the look and feel.
    This method is invoked when the `ComponentUI` instance is being installed
    as the UI delegate on the specified component. This method should
    completely configure the component for the look and feel,
    including the following:
    1. Install default property values for color, fonts, borders,
       icons, opacity, etc. on the component. Whenever possible,
       property values initialized by the client program should *not*
       be overridden.+ Install a `LayoutManager` on the component if necessary.+ Create/add any required sub-components to the component.+ Create/install event listeners on the component.+ Create/install a `PropertyChangeListener` on the component in order
               to detect and respond to component property changes appropriately.+ Install keyboard UI (mnemonics, traversal, etc.) on the component.+ Initialize any appropriate instance data.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Reverses configuration which was done on the specified component during
    `installUI`. This method is invoked when this
    `UIComponent` instance is being removed as the UI delegate
    for the specified component. This method should undo the
    configuration performed in `installUI`, being careful to
    leave the `JComponent` instance in a clean state (no
    extraneous listeners, look-and-feel-specific property objects, etc.).
    This should include the following:
    1. Remove any UI-set borders from the component.+ Remove any UI-set layout managers on the component.+ Remove any UI-added sub-components from the component.+ Remove any UI-added event/property listeners from the component.+ Remove any UI-installed keyboard UI from the component.+ Nullify any allocated instance data objects to allow for GC.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### createLayoutManager

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayoutManager()

    Invoked by `installUI` to create
    a layout manager object to manage
    the `JTabbedPane`.

    Returns:
    :   a layout manager object

    See Also:
    :   - [`BasicTabbedPaneUI.TabbedPaneLayout`](BasicTabbedPaneUI.TabbedPaneLayout.md "class in javax.swing.plaf.basic")
        - [`JTabbedPane.getTabLayoutPolicy()`](../../JTabbedPane.md#getTabLayoutPolicy())
  + ### installComponents

    protected void installComponents()

    Creates and installs any required subcomponents for the JTabbedPane.
    Invoked by installUI.

    Since:
    :   1.4
  + ### createScrollButton

    protected [JButton](../../JButton.md "class in javax.swing") createScrollButton(int direction)

    Creates and returns a JButton that will provide the user
    with a way to scroll the tabs in a particular direction. The
    returned JButton must be instance of UIResource.

    Parameters:
    :   `direction` - One of the SwingConstants constants:
        SOUTH, NORTH, EAST or WEST

    Returns:
    :   Widget for user to

    Throws:
    :   `IllegalArgumentException` - if direction is not one of
        NORTH, SOUTH, EAST or WEST

    Since:
    :   1.5

    See Also:
    :   - [`JTabbedPane.setTabPlacement(int)`](../../JTabbedPane.md#setTabPlacement(int))
        - [`SwingConstants`](../../SwingConstants.md "interface in javax.swing")
  + ### uninstallComponents

    protected void uninstallComponents()

    Removes any installed subcomponents from the JTabbedPane.
    Invoked by uninstallUI.

    Since:
    :   1.4
  + ### installDefaults

    protected void installDefaults()

    Installs the defaults.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls the defaults.
  + ### installListeners

    protected void installListeners()

    Installs the listeners.
  + ### uninstallListeners

    protected void uninstallListeners()

    Uninstalls the listeners.
  + ### createMouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") createMouseListener()

    Creates a mouse listener.

    Returns:
    :   a mouse listener
  + ### createFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") createFocusListener()

    Creates a focus listener.

    Returns:
    :   a focus listener
  + ### createChangeListener

    protected [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event") createChangeListener()

    Creates a change listener.

    Returns:
    :   a change listener
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates a property change listener.

    Returns:
    :   a property change listener
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Installs the keyboard actions.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Uninstalls the keyboard actions.
  + ### setRolloverTab

    protected void setRolloverTab(int index)

    Sets the tab the mouse is currently over to `index`.
    `index` will be -1 if the mouse is no longer over any
    tab. No checking is done to ensure the passed in index identifies a
    valid tab.

    Parameters:
    :   `index` - Index of the tab the mouse is over.

    Since:
    :   1.5
  + ### getRolloverTab

    protected int getRolloverTab()

    Returns the tab the mouse is currently over, or `-1` if the mouse is no
    longer over any tab.

    Returns:
    :   the tab the mouse is currently over, or `-1` if the mouse is no
        longer over any tab

    Since:
    :   1.5
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's minimum size appropriate for
    the look and feel. If `null` is returned, the minimum
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method invokes `getPreferredSize` and returns that value.

    Overrides:
    :   `getMinimumSize` in class `ComponentUI`

    Parameters:
    :   `c` - the component whose minimum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
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
    :   `c` - the component whose maximum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))
  + ### getBaseline

    public int getBaseline([JComponent](../../JComponent.md "class in javax.swing") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `NullPointerException` - if `c` is `null`
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### getBaselineResizeBehavior

    public [Component.BaselineResizeBehavior](../../../../java/awt/Component.BaselineResizeBehavior.md "enum class in java.awt") getBaselineResizeBehavior([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an enum indicating how the baseline of the component
    changes as the size changes.

    Overrides:
    :   `getBaselineResizeBehavior` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` to return baseline resize behavior for

    Returns:
    :   an enum indicating how the baseline changes as the component
        size changes

    Throws:
    :   `NullPointerException` - if `c` is `null`

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### getBaseline

    protected int getBaseline(int tab)

    Returns the baseline for the specified tab.

    Parameters:
    :   `tab` - index of tab to get baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `IndexOutOfBoundsException` - if index is out of range
        (index < 0 || index >= tab count)

    Since:
    :   1.6
  + ### getBaselineOffset

    protected int getBaselineOffset()

    Returns the amount the baseline is offset by. This is typically
    the same as `getTabLabelShiftY`.

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
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintTabArea

    protected void paintTabArea([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex)

    Paints the tabs in the tab area.
    Invoked by paint().
    The graphics parameter must be a valid `Graphics`
    object. Tab placement may be either:
    `JTabbedPane.TOP`, `JTabbedPane.BOTTOM`,
    `JTabbedPane.LEFT`, or `JTabbedPane.RIGHT`.
    The selected index must be a valid tabbed pane tab index (0 to
    tab count - 1, inclusive) or -1 if no tab is currently selected.
    The handling of invalid parameters is unspecified.

    Parameters:
    :   `g` - the graphics object to use for rendering
    :   `tabPlacement` - the placement for the tabs within the JTabbedPane
    :   `selectedIndex` - the tab index of the selected component

    Since:
    :   1.4
  + ### paintTab

    protected void paintTab([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt")[] rects,
    int tabIndex,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect)

    Paints a tab.

    Parameters:
    :   `g` - the graphics
    :   `tabPlacement` - the tab placement
    :   `rects` - the tab rectangles
    :   `tabIndex` - the tab index
    :   `iconRect` - the icon rectangle
    :   `textRect` - the text rectangle
  + ### layoutLabel

    protected void layoutLabel(int tabPlacement,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    int tabIndex,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") title,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") tabRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    boolean isSelected)

    Lays out a label.

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `metrics` - the font metrics
    :   `tabIndex` - the tab index
    :   `title` - the title
    :   `icon` - the icon
    :   `tabRect` - the tab rectangle
    :   `iconRect` - the icon rectangle
    :   `textRect` - the text rectangle
    :   `isSelected` - selection status
  + ### paintIcon

    protected void paintIcon([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int tabIndex,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect,
    boolean isSelected)

    Paints an icon.

    Parameters:
    :   `g` - the graphics
    :   `tabPlacement` - the tab placement
    :   `tabIndex` - the tab index
    :   `icon` - the icon
    :   `iconRect` - the icon rectangle
    :   `isSelected` - selection status
  + ### paintText

    protected void paintText([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    [Font](../../../../java/awt/Font.md "class in java.awt") font,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    int tabIndex,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") title,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    boolean isSelected)

    Paints text.

    Parameters:
    :   `g` - the graphics
    :   `tabPlacement` - the tab placement
    :   `font` - the font
    :   `metrics` - the font metrics
    :   `tabIndex` - the tab index
    :   `title` - the title
    :   `textRect` - the text rectangle
    :   `isSelected` - selection status
  + ### getTabLabelShiftX

    protected int getTabLabelShiftX(int tabPlacement,
    int tabIndex,
    boolean isSelected)

    Returns the tab label shift x.

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

    Parameters:
    :   `tabPlacement` - the tab placement
    :   `tabIndex` - the tab index
    :   `isSelected` - selection status

    Returns:
    :   the tab label shift y
  + ### paintFocusIndicator

    protected void paintFocusIndicator([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt")[] rects,
    int tabIndex,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") iconRect,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") textRect,
    boolean isSelected)

    Paints the focus indicator.

    Parameters:
    :   `g` - the graphics
    :   `tabPlacement` - the tab placement
    :   `rects` - the tab rectangles
    :   `tabIndex` - the tab index
    :   `iconRect` - the icon rectangle
    :   `textRect` - the text rectangle
    :   `isSelected` - selection status
  + ### paintTabBorder

    protected void paintTabBorder([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int tabIndex,
    int x,
    int y,
    int w,
    int h,
    boolean isSelected)

    Paints the border around a tab.
    Note that this function does not paint the background of the tab,
    that is done elsewhere.

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
  + ### paintTabBackground

    protected void paintTabBackground([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int tabIndex,
    int x,
    int y,
    int w,
    int h,
    boolean isSelected)

    Paints the tab background.

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
  + ### paintContentBorder

    protected void paintContentBorder([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex)

    Paints the content border.

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `selectedIndex` - the tab index of the selected component
  + ### paintContentBorderTopEdge

    protected void paintContentBorderTopEdge([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int tabPlacement,
    int selectedIndex,
    int x,
    int y,
    int w,
    int h)

    Paints the content border top edge.

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

    Paints the content border left edge.

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

    Paints the content border bottom edge.

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

    Paints the content border right edge.

    Parameters:
    :   `g` - the graphics context in which to paint
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `selectedIndex` - the tab index of the selected component
    :   `x` - the x coordinate of tab
    :   `y` - the y coordinate of tab
    :   `w` - the width of the tab
    :   `h` - the height of the tab
  + ### getTabBounds

    public [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getTabBounds([JTabbedPane](../../JTabbedPane.md "class in javax.swing") pane,
    int i)

    Returns the bounds of the specified tab index. The bounds are
    with respect to the JTabbedPane's coordinate space.

    Specified by:
    :   `getTabBounds` in class `TabbedPaneUI`

    Parameters:
    :   `pane` - the pane
    :   `i` - the index

    Returns:
    :   the rectangle for the tab bounds
  + ### getTabRunCount

    public int getTabRunCount([JTabbedPane](../../JTabbedPane.md "class in javax.swing") pane)

    Description copied from class: `TabbedPaneUI`

    Returns the tab run count.

    Specified by:
    :   `getTabRunCount` in class `TabbedPaneUI`

    Parameters:
    :   `pane` - the pane

    Returns:
    :   the tab run count
  + ### tabForCoordinate

    public int tabForCoordinate([JTabbedPane](../../JTabbedPane.md "class in javax.swing") pane,
    int x,
    int y)

    Returns the tab index which intersects the specified point
    in the JTabbedPane's coordinate space.

    Specified by:
    :   `tabForCoordinate` in class `TabbedPaneUI`

    Parameters:
    :   `pane` - the pane
    :   `x` - the x coordinate
    :   `y` - the y coordinate

    Returns:
    :   the tab for the coordinate
  + ### getTabBounds

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getTabBounds(int tabIndex,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") dest)

    Returns the bounds of the specified tab in the coordinate space
    of the JTabbedPane component. This is required because the tab rects
    are by default defined in the coordinate space of the component where
    they are rendered, which could be the JTabbedPane
    (for WRAP\_TAB\_LAYOUT) or a ScrollableTabPanel (SCROLL\_TAB\_LAYOUT).
    This method should be used whenever the tab rectangle must be relative
    to the JTabbedPane itself and the result should be placed in a
    designated Rectangle object (rather than instantiating and returning
    a new Rectangle each time). The tab index parameter must be a valid
    tabbed pane tab index (0 to tab count - 1, inclusive). The destination
    rectangle parameter must be a valid `Rectangle` instance.
    The handling of invalid parameters is unspecified.

    Parameters:
    :   `tabIndex` - the index of the tab
    :   `dest` - the rectangle where the result should be placed

    Returns:
    :   the resulting rectangle

    Since:
    :   1.4
  + ### getVisibleComponent

    protected [Component](../../../../java/awt/Component.md "class in java.awt") getVisibleComponent()

    Returns the visible component.

    Returns:
    :   the visible component
  + ### setVisibleComponent

    protected void setVisibleComponent([Component](../../../../java/awt/Component.md "class in java.awt") component)

    Sets the visible component.

    Parameters:
    :   `component` - the component
  + ### assureRectsCreated

    protected void assureRectsCreated(int tabCount)

    Assures the tab rectangles are created.

    Parameters:
    :   `tabCount` - the tab count
  + ### expandTabRunsArray

    protected void expandTabRunsArray()

    Expands the tab runs array.
  + ### getRunForTab

    protected int getRunForTab(int tabCount,
    int tabIndex)

    Returns the run for a tab.

    Parameters:
    :   `tabCount` - the tab count
    :   `tabIndex` - the tab index.

    Returns:
    :   the run for a tab
  + ### lastTabInRun

    protected int lastTabInRun(int tabCount,
    int run)

    Returns the last tab in a run.

    Parameters:
    :   `tabCount` - the tab count
    :   `run` - the run

    Returns:
    :   the last tab in a run
  + ### getTabRunOverlay

    protected int getTabRunOverlay(int tabPlacement)

    Returns the tab run overlay.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the tab run overlay
  + ### getTabRunIndent

    protected int getTabRunIndent(int tabPlacement,
    int run)

    Returns the tab run indent.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `run` - the tab run

    Returns:
    :   the tab run indent
  + ### shouldPadTabRun

    protected boolean shouldPadTabRun(int tabPlacement,
    int run)

    Returns whether or not the tab run should be padded.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `run` - the tab run

    Returns:
    :   whether or not the tab run should be padded
  + ### shouldRotateTabRuns

    protected boolean shouldRotateTabRuns(int tabPlacement)

    Returns whether or not the tab run should be rotated.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   whether or not the tab run should be rotated
  + ### getIconForTab

    protected [Icon](../../Icon.md "interface in javax.swing") getIconForTab(int tabIndex)

    Returns the icon for a tab.

    Parameters:
    :   `tabIndex` - the index of the tab

    Returns:
    :   the icon for a tab
  + ### getTextViewForTab

    protected [View](../../text/View.md "class in javax.swing.text") getTextViewForTab(int tabIndex)

    Returns the text View object required to render stylized text (HTML) for
    the specified tab or null if no specialized text rendering is needed
    for this tab. This is provided to support html rendering inside tabs.

    Parameters:
    :   `tabIndex` - the index of the tab

    Returns:
    :   the text view to render the tab's text or null if no
        specialized rendering is required

    Since:
    :   1.4
  + ### calculateTabHeight

    protected int calculateTabHeight(int tabPlacement,
    int tabIndex,
    int fontHeight)

    Calculates the tab height.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the index of the tab with respect to other tabs
    :   `fontHeight` - the font height

    Returns:
    :   the tab height
  + ### calculateMaxTabHeight

    protected int calculateMaxTabHeight(int tabPlacement)

    Calculates the maximum tab height.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the maximum tab height
  + ### calculateTabWidth

    protected int calculateTabWidth(int tabPlacement,
    int tabIndex,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") metrics)

    Calculates the tab width.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the index of the tab with respect to other tabs
    :   `metrics` - the font metrics

    Returns:
    :   the tab width
  + ### calculateMaxTabWidth

    protected int calculateMaxTabWidth(int tabPlacement)

    Calculates the maximum tab width.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the maximum tab width
  + ### calculateTabAreaHeight

    protected int calculateTabAreaHeight(int tabPlacement,
    int horizRunCount,
    int maxTabHeight)

    Calculates the tab area height.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `horizRunCount` - horizontal run count
    :   `maxTabHeight` - maximum tab height

    Returns:
    :   the tab area height
  + ### calculateTabAreaWidth

    protected int calculateTabAreaWidth(int tabPlacement,
    int vertRunCount,
    int maxTabWidth)

    Calculates the tab area width.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `vertRunCount` - vertical run count
    :   `maxTabWidth` - maximum tab width

    Returns:
    :   the tab area width
  + ### getTabInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") getTabInsets(int tabPlacement,
    int tabIndex)

    Returns the tab insets.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the tab index

    Returns:
    :   the tab insets
  + ### getSelectedTabPadInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") getSelectedTabPadInsets(int tabPlacement)

    Returns the selected tab pad insets.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the selected tab pad insets
  + ### getTabAreaInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") getTabAreaInsets(int tabPlacement)

    Returns the tab area insets.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the pad area insets
  + ### getContentBorderInsets

    protected [Insets](../../../../java/awt/Insets.md "class in java.awt") getContentBorderInsets(int tabPlacement)

    Returns the content border insets.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab

    Returns:
    :   the content border insets
  + ### getFontMetrics

    protected [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics()

    Returns the font metrics.

    Returns:
    :   the font metrics
  + ### navigateSelectedTab

    protected void navigateSelectedTab(int direction)

    Navigates the selected tab.

    Parameters:
    :   `direction` - the direction
  + ### selectNextTabInRun

    protected void selectNextTabInRun(int current)

    Selects the next tab in the run.

    Parameters:
    :   `current` - the current tab
  + ### selectPreviousTabInRun

    protected void selectPreviousTabInRun(int current)

    Selects the previous tab in the run.

    Parameters:
    :   `current` - the current tab
  + ### selectNextTab

    protected void selectNextTab(int current)

    Selects the next tab.

    Parameters:
    :   `current` - the current tab
  + ### selectPreviousTab

    protected void selectPreviousTab(int current)

    Selects the previous tab.

    Parameters:
    :   `current` - the current tab
  + ### selectAdjacentRunTab

    protected void selectAdjacentRunTab(int tabPlacement,
    int tabIndex,
    int offset)

    Selects an adjacent run of tabs.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabIndex` - the index of the tab with respect to other tabs
    :   `offset` - selection offset
  + ### getFocusIndex

    protected int getFocusIndex()

    Returns the index of the tab that has focus.

    Returns:
    :   index of tab that has focus

    Since:
    :   1.5
  + ### getTabRunOffset

    protected int getTabRunOffset(int tabPlacement,
    int tabCount,
    int tabIndex,
    boolean forward)

    Returns the tab run offset.

    Parameters:
    :   `tabPlacement` - the placement (left, right, bottom, top) of the tab
    :   `tabCount` - the tab count
    :   `tabIndex` - the index of the tab with respect to other tabs
    :   `forward` - forward or not

    Returns:
    :   the tab run offset
  + ### getPreviousTabIndex

    protected int getPreviousTabIndex(int base)

    Returns the previous tab index.

    Parameters:
    :   `base` - the base

    Returns:
    :   the previous tab index
  + ### getNextTabIndex

    protected int getNextTabIndex(int base)

    Returns the next tab index.

    Parameters:
    :   `base` - the base

    Returns:
    :   the next tab index
  + ### getNextTabIndexInRun

    protected int getNextTabIndexInRun(int tabCount,
    int base)

    Returns the next tab index in the run.

    Parameters:
    :   `tabCount` - the tab count
    :   `base` - the base

    Returns:
    :   the next tab index in the run
  + ### getPreviousTabIndexInRun

    protected int getPreviousTabIndexInRun(int tabCount,
    int base)

    Returns the previous tab index in the run.

    Parameters:
    :   `tabCount` - the tab count
    :   `base` - the base

    Returns:
    :   the previous tab index in the run
  + ### getPreviousTabRun

    protected int getPreviousTabRun(int baseRun)

    Returns the previous tab run.

    Parameters:
    :   `baseRun` - the base run

    Returns:
    :   the previous tab run
  + ### getNextTabRun

    protected int getNextTabRun(int baseRun)

    Returns the next tab run.

    Parameters:
    :   `baseRun` - the base run

    Returns:
    :   the next tab run
  + ### rotateInsets

    protected static void rotateInsets([Insets](../../../../java/awt/Insets.md "class in java.awt") topInsets,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") targetInsets,
    int targetPlacement)

    Rotates the insets.

    Parameters:
    :   `topInsets` - the top insets
    :   `targetInsets` - the target insets
    :   `targetPlacement` - the target placement