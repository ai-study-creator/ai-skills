Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalTreeUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TreeUI](../TreeUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalTreeUI

---

public class MetalTreeUI
extends [BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

The metal look and feel implementation of `TreeUI`.

`MetalTreeUI` allows for configuring how to
visually render the spacing and delineation between nodes. The following
hints are supported:

Descriptions of supported hints: Angled, Horizontal, and None

| Hint Description | |
| --- | --- |
| Angled A line is drawn connecting the child to the parent. For handling of the root node refer to [`JTree.setRootVisible(boolean)`](../../JTree.md#setRootVisible(boolean)) and [`JTree.setShowsRootHandles(boolean)`](../../JTree.md#setShowsRootHandles(boolean)).| Horizontal A horizontal line is drawn dividing the children of the root node.|  |  | | --- | --- | | None Do not draw any visual indication between nodes. | | | | | |

As it is typically impractical to obtain the `TreeUI` from
the `JTree` and cast to an instance of `MetalTreeUI`
you enable this property via the client property
`JTree.lineStyle`. For example, to switch to
`Horizontal` style you would do:
`tree.putClientProperty("JTree.lineStyle", "Horizontal");`

The default is `Angled`.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

  `BasicTreeUI.CellEditorHandler, BasicTreeUI.ComponentHandler, BasicTreeUI.FocusHandler, BasicTreeUI.KeyHandler, BasicTreeUI.MouseHandler, BasicTreeUI.MouseInputHandler, BasicTreeUI.NodeDimensionsHandler, BasicTreeUI.PropertyChangeHandler, BasicTreeUI.SelectionModelPropertyChangeHandler, BasicTreeUI.TreeCancelEditingAction, BasicTreeUI.TreeExpansionHandler, BasicTreeUI.TreeHomeAction, BasicTreeUI.TreeIncrementAction, BasicTreeUI.TreeModelHandler, BasicTreeUI.TreePageAction, BasicTreeUI.TreeSelectionHandler, BasicTreeUI.TreeToggleAction, BasicTreeUI.TreeTraverseAction`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

  `cellEditor, collapsedIcon, createdCellEditor, createdRenderer, currentCellRenderer, depthOffset, drawingCache, editingComponent, editingPath, editingRow, editorHasDifferentSize, expandedIcon, largeModel, lastSelectedRow, leftChildIndent, nodeDimensions, preferredMinSize, preferredSize, rendererPane, rightChildIndent, stopEditingInCompleteEditing, totalChildIndent, tree, treeModel, treeSelectionModel, treeState, validCachedPreferredSize`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalTreeUI()`

  Constructs the `MetalTreeUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent x)`

  Constructs the `MetalTreeUI`.

  `protected void`

  `decodeLineStyle(Object lineStyleFlag)`

  Converts between the string passed into the client property
  and the internal representation (currently and int)

  `protected int`

  `getHorizontalLegBuffer()`

  The horizontal element of legs between nodes starts at the
  right of the left-hand side of the child node by default.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected boolean`

  `isLocationInExpandControl(int row,
  int rowLevel,
  int mouseX,
  int mouseY)`

  Returns `true` if a point with X coordinate `mouseX`
  and Y coordinate `mouseY` is in expanded control.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

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

  `paintHorizontalSeparators(Graphics g,
  JComponent c)`

  Paints the horizontal separators.

  `protected void`

  `paintVerticalPartOfLeg(Graphics g,
  Rectangle clipBounds,
  Insets insets,
  TreePath path)`

  Paints the vertical part of the leg.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicTreeUI](../basic/BasicTreeUI.md "class in javax.swing.plaf.basic")

  `cancelEditing, checkForClickInExpandControl, completeEditing, completeEditing, completeUIInstall, completeUIUninstall, configureLayoutCache, createCellEditorListener, createCellRendererPane, createComponentListener, createDefaultCellEditor, createDefaultCellRenderer, createFocusListener, createKeyListener, createLayoutCache, createMouseListener, createNodeDimensions, createPropertyChangeListener, createSelectionModelPropertyChangeListener, createTreeExpansionListener, createTreeModelListener, createTreeSelectionListener, drawCentered, drawDashedHorizontalLine, drawDashedVerticalLine, ensureRowsAreVisible, getBaseline, getBaselineResizeBehavior, getCellEditor, getCellRenderer, getClosestPathForLocation, getCollapsedIcon, getDropLineRect, getEditingPath, getExpandedIcon, getHashColor, getLastChildPath, getLeadSelectionRow, getLeftChildIndent, getMaximumSize, getMinimumSize, getModel, getPathBounds, getPathForRow, getPreferredMinSize, getPreferredSize, getPreferredSize, getRightChildIndent, getRowCount, getRowForPath, getRowHeight, getRowX, getSelectionModel, getShowsRootHandles, getVerticalLegBuffer, handleExpandControlClick, installComponents, installDefaults, installKeyboardActions, installListeners, isDropLine, isEditable, isEditing, isLargeModel, isLeaf, isLocationInExpandControl, isMultiSelectEvent, isRootVisible, isToggleEvent, isToggleSelectionEvent, paintDropLine, paintExpandControl, paintHorizontalLine, paintRow, paintVerticalLine, pathWasCollapsed, pathWasExpanded, prepareForUIInstall, prepareForUIUninstall, selectPathForEvent, setCellEditor, setCellRenderer, setCollapsedIcon, setEditable, setExpandedIcon, setHashColor, setLargeModel, setLeftChildIndent, setModel, setPreferredMinSize, setRightChildIndent, setRootVisible, setRowHeight, setSelectionModel, setShowsRootHandles, shouldPaintExpandControl, startEditing, startEditingAtPath, stopEditing, toggleExpandState, uninstallComponents, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, updateCachedPreferredSize, updateCellEditor, updateDepthOffset, updateExpandedDescendants, updateLayoutCacheExpandedNodes, updateLeadSelectionRow, updateRenderer, updateSize`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalTreeUI

    public MetalTreeUI()

    Constructs the `MetalTreeUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Constructs the `MetalTreeUI`.

    Parameters:
    :   `x` - a component

    Returns:
    :   the instance of the `MetalTreeUI`
  + ### getHorizontalLegBuffer

    protected int getHorizontalLegBuffer()

    Description copied from class: `BasicTreeUI`

    The horizontal element of legs between nodes starts at the
    right of the left-hand side of the child node by default. This
    method makes the leg end before that.

    Overrides:
    :   `getHorizontalLegBuffer` in class `BasicTreeUI`

    Returns:
    :   the horizontal leg buffer
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
    :   `installUI` in class `BasicTreeUI`

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
    :   `uninstallUI` in class `BasicTreeUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### decodeLineStyle

    protected void decodeLineStyle([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") lineStyleFlag)

    Converts between the string passed into the client property
    and the internal representation (currently and int)

    Parameters:
    :   `lineStyleFlag` - a flag
  + ### isLocationInExpandControl

    protected boolean isLocationInExpandControl(int row,
    int rowLevel,
    int mouseX,
    int mouseY)

    Returns `true` if a point with X coordinate `mouseX`
    and Y coordinate `mouseY` is in expanded control.

    Parameters:
    :   `row` - a row
    :   `rowLevel` - a row level
    :   `mouseX` - X coordinate
    :   `mouseY` - Y coordinate

    Returns:
    :   `true` if a point with X coordinate `mouseX`
        and Y coordinate `mouseY` is in expanded control.
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
    :   `paint` in class `BasicTreeUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### paintHorizontalSeparators

    protected void paintHorizontalSeparators([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paints the horizontal separators.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `c` - a component
  + ### paintVerticalPartOfLeg

    protected void paintVerticalPartOfLeg([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") clipBounds,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Description copied from class: `BasicTreeUI`

    Paints the vertical part of the leg. The receiver should
    NOT modify `clipBounds`, `insets`.

    Overrides:
    :   `paintVerticalPartOfLeg` in class `BasicTreeUI`

    Parameters:
    :   `g` - a graphics context
    :   `clipBounds` - a clipped rectangle
    :   `insets` - insets
    :   `path` - a tree path
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

    Description copied from class: `BasicTreeUI`

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