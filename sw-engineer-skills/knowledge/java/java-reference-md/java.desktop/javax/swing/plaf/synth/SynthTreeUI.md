Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthTreeUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TreeUI](../TreeUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.synth.SynthTreeUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`, `SynthConstants`, `SynthUI`

---

public class SynthTreeUI
extends [BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans"), [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

Provides the Synth L&F UI delegate for
[`JTree`](../../JTree.md "class in javax.swing").

Since:
:   1.7

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

  `BasicTreeUI.CellEditorHandler, BasicTreeUI.ComponentHandler, BasicTreeUI.FocusHandler, BasicTreeUI.KeyHandler, BasicTreeUI.MouseHandler, BasicTreeUI.MouseInputHandler, BasicTreeUI.NodeDimensionsHandler, BasicTreeUI.PropertyChangeHandler, BasicTreeUI.SelectionModelPropertyChangeHandler, BasicTreeUI.TreeCancelEditingAction, BasicTreeUI.TreeExpansionHandler, BasicTreeUI.TreeHomeAction, BasicTreeUI.TreeIncrementAction, BasicTreeUI.TreeModelHandler, BasicTreeUI.TreePageAction, BasicTreeUI.TreeSelectionHandler, BasicTreeUI.TreeToggleAction, BasicTreeUI.TreeTraverseAction`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

  `cellEditor, collapsedIcon, createdCellEditor, createdRenderer, currentCellRenderer, depthOffset, drawingCache, editingComponent, editingPath, editingRow, editorHasDifferentSize, expandedIcon, largeModel, lastSelectedRow, leftChildIndent, nodeDimensions, preferredMinSize, preferredSize, rendererPane, rightChildIndent, stopEditingInCompleteEditing, totalChildIndent, tree, treeModel, treeSelectionModel, treeState, validCachedPreferredSize`

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SynthTreeUI()`

  Constructs a `SynthTreeUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected TreeCellEditor`

  `createDefaultCellEditor()`

  Creates a default cell editor.

  `protected TreeCellRenderer`

  `createDefaultCellRenderer()`

  Returns the default cell renderer that is used to do the
  stamping of each node.

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new UI object for the given component.

  `protected void`

  `drawCentered(Component c,
  Graphics graphics,
  Icon icon,
  int x,
  int y)`

  Draws the `icon` centered at (x,y).

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `Icon`

  `getExpandedIcon()`

  Returns the expanded icon.

  `protected int`

  `getRowX(int row,
  int depth)`

  Returns the location, along the x-axis, to render a particular row
  at.

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

  `paintDropLine(Graphics g)`

  Paints the drop line.

  `protected void`

  `paintExpandControl(Graphics g,
  Rectangle clipBounds,
  Insets insets,
  Rectangle bounds,
  TreePath path,
  int row,
  boolean isExpanded,
  boolean hasBeenExpanded,
  boolean isLeaf)`

  Paints the expand (toggle) part of a row.

  `protected void`

  `paintHorizontalLine(Graphics g,
  JComponent c,
  int y,
  int left,
  int right)`

  Paints a horizontal line.

  `protected void`

  `paintHorizontalPartOfLeg(Graphics g,
  Rectangle clipBounds,
  Insets insets,
  Rectangle bounds,
  TreePath path,
  int row,
  boolean isExpanded,
  boolean hasBeenExpanded,
  boolean isLeaf)`

  Paints the horizontal part of the leg.

  `protected void`

  `paintVerticalLine(Graphics g,
  JComponent c,
  int x,
  int top,
  int bottom)`

  Paints a vertical line.

  `protected void`

  `paintVerticalPartOfLeg(Graphics g,
  Rectangle clipBounds,
  Insets insets,
  TreePath path)`

  Paints the vertical part of the leg.

  `void`

  `propertyChange(PropertyChangeEvent event)`

  This method gets called when a bound property is changed.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `update(Graphics g,
  JComponent c)`

  Notifies this UI delegate to repaint the specified component.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

  `cancelEditing, checkForClickInExpandControl, completeEditing, completeEditing, completeUIInstall, completeUIUninstall, configureLayoutCache, createCellEditorListener, createCellRendererPane, createComponentListener, createFocusListener, createKeyListener, createLayoutCache, createMouseListener, createNodeDimensions, createPropertyChangeListener, createSelectionModelPropertyChangeListener, createTreeExpansionListener, createTreeModelListener, createTreeSelectionListener, drawDashedHorizontalLine, drawDashedVerticalLine, ensureRowsAreVisible, getBaseline, getBaselineResizeBehavior, getCellEditor, getCellRenderer, getClosestPathForLocation, getCollapsedIcon, getDropLineRect, getEditingPath, getHashColor, getHorizontalLegBuffer, getLastChildPath, getLeadSelectionRow, getLeftChildIndent, getMaximumSize, getMinimumSize, getModel, getPathBounds, getPathForRow, getPreferredMinSize, getPreferredSize, getPreferredSize, getRightChildIndent, getRowCount, getRowForPath, getRowHeight, getSelectionModel, getShowsRootHandles, getVerticalLegBuffer, handleExpandControlClick, installComponents, installKeyboardActions, installUI, isDropLine, isEditable, isEditing, isLargeModel, isLeaf, isLocationInExpandControl, isMultiSelectEvent, isRootVisible, isToggleEvent, isToggleSelectionEvent, paintRow, pathWasCollapsed, pathWasExpanded, prepareForUIInstall, prepareForUIUninstall, selectPathForEvent, setCellEditor, setCellRenderer, setCollapsedIcon, setEditable, setExpandedIcon, setHashColor, setLargeModel, setLeftChildIndent, setModel, setPreferredMinSize, setRightChildIndent, setRootVisible, setRowHeight, setSelectionModel, setShowsRootHandles, shouldPaintExpandControl, startEditing, startEditingAtPath, stopEditing, toggleExpandState, uninstallComponents, uninstallKeyboardActions, uninstallUI, updateCachedPreferredSize, updateCellEditor, updateDepthOffset, updateExpandedDescendants, updateLayoutCacheExpandedNodes, updateLeadSelectionRow, updateRenderer, updateSize`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthTreeUI

    public SynthTreeUI()

    Constructs a `SynthTreeUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new UI object for the given component.

    Parameters:
    :   `x` - component to create UI object for

    Returns:
    :   the UI object
  + ### getExpandedIcon

    public [Icon](../../Icon.md "interface in javax.swing") getExpandedIcon()

    Returns the expanded icon.

    Overrides:
    :   `getExpandedIcon` in class `BasicTreeUI`

    Returns:
    :   the expanded icon
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicTreeUI`
  + ### installListeners

    protected void installListeners()

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicTreeUI`
  + ### getContext

    public [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Specified by:
    :   `getContext` in interface `SynthUI`

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### createDefaultCellEditor

    protected [TreeCellEditor](../../tree/TreeCellEditor.md "interface in javax.swing.tree") createDefaultCellEditor()

    Creates a default cell editor.

    Overrides:
    :   `createDefaultCellEditor` in class `BasicTreeUI`

    Returns:
    :   a default cell editor
  + ### createDefaultCellRenderer

    protected [TreeCellRenderer](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") createDefaultCellRenderer()

    Returns the default cell renderer that is used to do the
    stamping of each node.

    Overrides:
    :   `createDefaultCellRenderer` in class `BasicTreeUI`

    Returns:
    :   an instance of `TreeCellRenderer`
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.

    Overrides:
    :   `uninstallDefaults` in class `BasicTreeUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicTreeUI`
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
    :   `paint` in class `BasicTreeUI`

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
  + ### paintHorizontalPartOfLeg

    protected void paintHorizontalPartOfLeg([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") clipBounds,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    int row,
    boolean isExpanded,
    boolean hasBeenExpanded,
    boolean isLeaf)

    Paints the horizontal part of the leg. The receiver should
    NOT modify `clipBounds`, or `insets`.

    NOTE: `parentRow` can be -1 if the root is not visible.

    Overrides:
    :   `paintHorizontalPartOfLeg` in class `BasicTreeUI`

    Parameters:
    :   `g` - a graphics context
    :   `clipBounds` - a clipped rectangle
    :   `insets` - insets
    :   `bounds` - a bounding rectangle
    :   `path` - a tree path
    :   `row` - a row
    :   `isExpanded` - `true` if the path is expanded
    :   `hasBeenExpanded` - `true` if the path has been expanded
    :   `isLeaf` - `true` if the path is leaf
  + ### paintHorizontalLine

    protected void paintHorizontalLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    int y,
    int left,
    int right)

    Paints a horizontal line.

    Overrides:
    :   `paintHorizontalLine` in class `BasicTreeUI`

    Parameters:
    :   `g` - a graphics context
    :   `c` - a component
    :   `y` - an Y coordinate
    :   `left` - an X1 coordinate
    :   `right` - an X2 coordinate
  + ### paintVerticalPartOfLeg

    protected void paintVerticalPartOfLeg([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") clipBounds,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Paints the vertical part of the leg. The receiver should
    NOT modify `clipBounds`, `insets`.

    Overrides:
    :   `paintVerticalPartOfLeg` in class `BasicTreeUI`

    Parameters:
    :   `g` - a graphics context
    :   `clipBounds` - a clipped rectangle
    :   `insets` - insets
    :   `path` - a tree path
  + ### paintVerticalLine

    protected void paintVerticalLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    int x,
    int top,
    int bottom)

    Paints a vertical line.

    Overrides:
    :   `paintVerticalLine` in class `BasicTreeUI`

    Parameters:
    :   `g` - a graphics context
    :   `c` - a component
    :   `x` - an X coordinate
    :   `top` - an Y1 coordinate
    :   `bottom` - an Y2 coordinate
  + ### paintExpandControl

    protected void paintExpandControl([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") clipBounds,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    int row,
    boolean isExpanded,
    boolean hasBeenExpanded,
    boolean isLeaf)

    Paints the expand (toggle) part of a row. The receiver should
    NOT modify `clipBounds`, or `insets`.

    Overrides:
    :   `paintExpandControl` in class `BasicTreeUI`

    Parameters:
    :   `g` - a graphics context
    :   `clipBounds` - a clipped rectangle
    :   `insets` - insets
    :   `bounds` - a bounding rectangle
    :   `path` - a tree path
    :   `row` - a row
    :   `isExpanded` - `true` if the path is expanded
    :   `hasBeenExpanded` - `true` if the path has been expanded
    :   `isLeaf` - `true` if the row is leaf
  + ### drawCentered

    protected void drawCentered([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") graphics,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    int x,
    int y)

    Draws the `icon` centered at (x,y).

    Overrides:
    :   `drawCentered` in class `BasicTreeUI`

    Parameters:
    :   `c` - a component
    :   `graphics` - a graphics context
    :   `icon` - an icon
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") event)

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `event` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### paintDropLine

    protected void paintDropLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the drop line.

    Overrides:
    :   `paintDropLine` in class `BasicTreeUI`

    Parameters:
    :   `g` - `Graphics` object to draw on
  + ### getRowX

    protected int getRowX(int row,
    int depth)

    Returns the location, along the x-axis, to render a particular row
    at. The return value does not include any Insets specified on the JTree.
    This does not check for the validity of the row or depth, it is assumed
    to be correct and will not throw an Exception if the row or depth
    doesn't match that of the tree.

    Overrides:
    :   `getRowX` in class `BasicTreeUI`

    Parameters:
    :   `row` - Row to return x location for
    :   `depth` - Depth of the row

    Returns:
    :   amount to indent the given row.