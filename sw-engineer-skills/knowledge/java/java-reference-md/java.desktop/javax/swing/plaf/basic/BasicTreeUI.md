Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.TreeUI](../TreeUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicTreeUI

Direct Known Subclasses:
:   `MetalTreeUI`, `SynthTreeUI`

---

public class BasicTreeUI
extends [TreeUI](../TreeUI.md "class in javax.swing.plaf")

The basic L&F for a hierarchical data structure.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicTreeUI.CellEditorHandler`

  Listener responsible for getting cell editing events and updating
  the tree accordingly.

  `class`

  `BasicTreeUI.ComponentHandler`

  Updates the preferred size when scrolling (if necessary).

  `class`

  `BasicTreeUI.FocusHandler`

  Repaints the lead selection row when focus is lost/gained.

  `class`

  `BasicTreeUI.KeyHandler`

  This is used to get multiple key down events to appropriately generate
  events.

  `class`

  `BasicTreeUI.MouseHandler`

  TreeMouseListener is responsible for updating the selection
  based on mouse events.

  `class`

  `BasicTreeUI.MouseInputHandler`

  MouseInputHandler handles passing all mouse events,
  including mouse motion events, until the mouse is released to
  the destination it is constructed with.

  `class`

  `BasicTreeUI.NodeDimensionsHandler`

  Class responsible for getting size of node, method is forwarded
  to BasicTreeUI method.

  `class`

  `BasicTreeUI.PropertyChangeHandler`

  PropertyChangeListener for the tree.

  `class`

  `BasicTreeUI.SelectionModelPropertyChangeHandler`

  Listener on the TreeSelectionModel, resets the row selection if
  any of the properties of the model change.

  `class`

  `BasicTreeUI.TreeCancelEditingAction`

  ActionListener that invokes cancelEditing when action performed.

  `class`

  `BasicTreeUI.TreeExpansionHandler`

  Updates the TreeState in response to nodes expanding/collapsing.

  `class`

  `BasicTreeUI.TreeHomeAction`

  TreeHomeAction is used to handle end/home actions.

  `class`

  `BasicTreeUI.TreeIncrementAction`

  TreeIncrementAction is used to handle up/down actions.

  `class`

  `BasicTreeUI.TreeModelHandler`

  Forwards all TreeModel events to the TreeState.

  `class`

  `BasicTreeUI.TreePageAction`

  TreePageAction handles page up and page down events.

  `class`

  `BasicTreeUI.TreeSelectionHandler`

  Listens for changes in the selection model and updates the display
  accordingly.

  `class`

  `BasicTreeUI.TreeToggleAction`

  For the first selected row expandedness will be toggled.

  `class`

  `BasicTreeUI.TreeTraverseAction`

  `TreeTraverseAction` is the action used for left/right keys.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected TreeCellEditor`

  `cellEditor`

  Editor for the tree.

  `protected Icon`

  `collapsedIcon`

  The collapsed icon.

  `protected boolean`

  `createdCellEditor`

  Set to true if editor that is currently in the tree was
  created by this instance.

  `protected boolean`

  `createdRenderer`

  Set to true if the renderer that is currently in the tree was
  created by this instance.

  `protected TreeCellRenderer`

  `currentCellRenderer`

  Renderer that is being used to do the actual cell drawing.

  `protected int`

  `depthOffset`

  How much the depth should be offset to properly calculate
  x locations.

  `protected Hashtable<TreePath,Boolean>`

  `drawingCache`

  Used for minimizing the drawing of vertical lines.

  `protected Component`

  `editingComponent`

  When editing, this will be the Component that is doing the actual
  editing.

  `protected TreePath`

  `editingPath`

  Path that is being edited.

  `protected int`

  `editingRow`

  Row that is being edited.

  `protected boolean`

  `editorHasDifferentSize`

  Set to true if the editor has a different size than the renderer.

  `protected Icon`

  `expandedIcon`

  The expanded icon.

  `protected boolean`

  `largeModel`

  True if doing optimizations for a largeModel.

  `protected int`

  `lastSelectedRow`

  Index of the row that was last selected.

  `protected int`

  `leftChildIndent`

  Distance between left margin and where vertical dashes will be
  drawn.

  `protected AbstractLayoutCache.NodeDimensions`

  `nodeDimensions`

  Responsible for telling the TreeState the size needed for a node.

  `protected Dimension`

  `preferredMinSize`

  Minimum preferred size.

  `protected Dimension`

  `preferredSize`

  Size needed to completely display all the nodes.

  `protected CellRendererPane`

  `rendererPane`

  Used to paint the TreeCellRenderer.

  `protected int`

  `rightChildIndent`

  Distance to add to leftChildIndent to determine where cell
  contents will be drawn.

  `protected boolean`

  `stopEditingInCompleteEditing`

  Set to false when editing and shouldSelectCell() returns true meaning
  the node should be selected before editing, used in completeEditing.

  `protected int`

  `totalChildIndent`

  Total distance that will be indented.

  `protected JTree`

  `tree`

  Component that we're going to be drawing into.

  `protected TreeModel`

  `treeModel`

  Used to determine what to display.

  `protected TreeSelectionModel`

  `treeSelectionModel`

  Model maintaining the selection.

  `protected AbstractLayoutCache`

  `treeState`

  Object responsible for handling sizing and expanded issues.

  `protected boolean`

  `validCachedPreferredSize`

  Is the preferredSize valid?
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicTreeUI()`

  Constructs a new instance of `BasicTreeUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `cancelEditing(JTree tree)`

  Cancels the current editing session.

  `protected void`

  `checkForClickInExpandControl(TreePath path,
  int mouseX,
  int mouseY)`

  If the `mouseX` and `mouseY` are in the
  expand/collapse region of the `row`, this will toggle
  the row.

  `protected void`

  `completeEditing()`

  Messages to stop the editing session.

  `protected void`

  `completeEditing(boolean messageStop,
  boolean messageCancel,
  boolean messageTree)`

  Stops the editing session.

  `protected void`

  `completeUIInstall()`

  Invoked from installUI after all the defaults/listeners have been
  installed.

  `protected void`

  `completeUIUninstall()`

  Uninstalls UI.

  `protected void`

  `configureLayoutCache()`

  Resets the TreeState instance based on the tree we're providing the
  look and feel for.

  `protected CellEditorListener`

  `createCellEditorListener()`

  Creates a listener to handle events from the current editor.

  `protected CellRendererPane`

  `createCellRendererPane()`

  Returns the renderer pane that renderer components are placed in.

  `protected ComponentListener`

  `createComponentListener()`

  Creates and returns a new ComponentHandler.

  `protected TreeCellEditor`

  `createDefaultCellEditor()`

  Creates a default cell editor.

  `protected TreeCellRenderer`

  `createDefaultCellRenderer()`

  Returns the default cell renderer that is used to do the
  stamping of each node.

  `protected FocusListener`

  `createFocusListener()`

  Creates a listener that is responsible for updating the display
  when focus is lost/gained.

  `protected KeyListener`

  `createKeyListener()`

  Creates the listener responsible for getting key events from
  the tree.

  `protected AbstractLayoutCache`

  `createLayoutCache()`

  Creates the object responsible for managing what is expanded, as
  well as the size of nodes.

  `protected MouseListener`

  `createMouseListener()`

  Creates the listener responsible for updating the selection based on
  mouse events.

  `protected AbstractLayoutCache.NodeDimensions`

  `createNodeDimensions()`

  Creates an instance of `NodeDimensions` that is able to determine
  the size of a given node in the tree.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates a listener that is responsible that updates the UI based on
  how the tree changes.

  `protected PropertyChangeListener`

  `createSelectionModelPropertyChangeListener()`

  Creates the listener responsible for getting property change
  events from the selection model.

  `protected TreeExpansionListener`

  `createTreeExpansionListener()`

  Creates and returns the object responsible for updating the treestate
  when nodes expanded state changes.

  `protected TreeModelListener`

  `createTreeModelListener()`

  Returns a listener that can update the tree when the model changes.

  `protected TreeSelectionListener`

  `createTreeSelectionListener()`

  Creates the listener that updates the display based on selection change
  methods.

  `static ComponentUI`

  `createUI(JComponent x)`

  Constructs a new instance of `BasicTreeUI`.

  `protected void`

  `drawCentered(Component c,
  Graphics graphics,
  Icon icon,
  int x,
  int y)`

  Draws the `icon` centered at (x,y).

  `protected void`

  `drawDashedHorizontalLine(Graphics g,
  int y,
  int x1,
  int x2)`

  Draws a horizontal dashed line.

  `protected void`

  `drawDashedVerticalLine(Graphics g,
  int x,
  int y1,
  int y2)`

  Draws a vertical dashed line.

  `protected void`

  `ensureRowsAreVisible(int beginRow,
  int endRow)`

  Ensures that the rows identified by `beginRow` through
  `endRow` are visible.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `protected TreeCellEditor`

  `getCellEditor()`

  Returns the editor used to edit entries in the drawn tree component, or
  `null` if the tree cannot be edited.

  `protected TreeCellRenderer`

  `getCellRenderer()`

  Returns the current instance of the [`TreeCellRenderer`](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") that is
  rendering each cell.

  `TreePath`

  `getClosestPathForLocation(JTree tree,
  int x,
  int y)`

  Returns the path to the node that is closest to x,y.

  `Icon`

  `getCollapsedIcon()`

  Returns the collapsed icon.

  `protected Rectangle`

  `getDropLineRect(JTree.DropLocation loc)`

  Returns a unbounding box for the drop line.

  `TreePath`

  `getEditingPath(JTree tree)`

  Returns the path to the element that is being edited.

  `Icon`

  `getExpandedIcon()`

  Returns the expanded icon.

  `protected Color`

  `getHashColor()`

  Returns the hash color.

  `protected int`

  `getHorizontalLegBuffer()`

  The horizontal element of legs between nodes starts at the
  right of the left-hand side of the child node by default.

  `protected TreePath`

  `getLastChildPath(TreePath parent)`

  Returns a path to the last child of `parent`.

  `protected int`

  `getLeadSelectionRow()`

  Returns the lead row of the selection.

  `int`

  `getLeftChildIndent()`

  Returns the left child indent.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the maximum size for this component, which will be the
  preferred size if the instance is currently in a JTree, or 0, 0.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the minimum size for this component.

  `protected TreeModel`

  `getModel()`

  Returns the tree model.

  `Rectangle`

  `getPathBounds(JTree tree,
  TreePath path)`

  Returns the Rectangle enclosing the label portion that the
  last item in path will be drawn into.

  `TreePath`

  `getPathForRow(JTree tree,
  int row)`

  Returns the path for passed in row.

  `Dimension`

  `getPreferredMinSize()`

  Returns the minimum preferred size.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the preferred size to properly display the tree,
  this is a cover method for `getPreferredSize(c, true)`.

  `Dimension`

  `getPreferredSize(JComponent c,
  boolean checkConsistency)`

  Returns the preferred size to represent the tree in
  *c*.

  `int`

  `getRightChildIndent()`

  Returns the right child indent.

  `int`

  `getRowCount(JTree tree)`

  Returns the number of rows that are being displayed.

  `int`

  `getRowForPath(JTree tree,
  TreePath path)`

  Returns the row that the last item identified in path is visible
  at.

  `protected int`

  `getRowHeight()`

  Returns the height of each row in the drawn tree component.

  `protected int`

  `getRowX(int row,
  int depth)`

  Returns the location, along the x-axis, to render a particular row
  at.

  `protected TreeSelectionModel`

  `getSelectionModel()`

  Returns the current instance of the [`TreeSelectionModel`](../../tree/TreeSelectionModel.md "interface in javax.swing.tree") which is
  the model for selections.

  `protected boolean`

  `getShowsRootHandles()`

  Returns `true` if the root handles are to be displayed.

  `protected int`

  `getVerticalLegBuffer()`

  The vertical element of legs between nodes starts at the bottom of the
  parent node by default.

  `protected void`

  `handleExpandControlClick(TreePath path,
  int mouseX,
  int mouseY)`

  Messaged when the user clicks the particular row, this invokes
  `toggleExpandState`.

  `protected void`

  `installComponents()`

  Intalls the subcomponents of the tree, which is the renderer pane.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installKeyboardActions()`

  Registers keyboard actions.

  `protected void`

  `installListeners()`

  Registers listeners.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected boolean`

  `isDropLine(JTree.DropLocation loc)`

  Tells if a `DropLocation` should be indicated by a line between
  nodes.

  `protected boolean`

  `isEditable()`

  Returns whether the drawn tree component should be enabled for editing.

  `boolean`

  `isEditing(JTree tree)`

  Returns true if the tree is being edited.

  `protected boolean`

  `isLargeModel()`

  Returns `true` if large model is set.

  `protected boolean`

  `isLeaf(int row)`

  Returns `true` if the node at `row` is a leaf.

  `protected boolean`

  `isLocationInExpandControl(TreePath path,
  int mouseX,
  int mouseY)`

  Returns `true` if `mouseX` and `mouseY` fall
  in the area of row that is used to expand/collapse the node and
  the node at `row` does not represent a leaf.

  `protected boolean`

  `isMultiSelectEvent(MouseEvent event)`

  Returning `true` signifies a mouse event on the node should select
  from the anchor point.

  `protected boolean`

  `isRootVisible()`

  Returns whether the root node of the drawn tree component should be displayed.

  `protected boolean`

  `isToggleEvent(MouseEvent event)`

  Returning `true` indicates the row under the mouse should be toggled
  based on the event.

  `protected boolean`

  `isToggleSelectionEvent(MouseEvent event)`

  Returning `true` signifies a mouse event on the node should toggle
  the selection of only the row under mouse.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

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

  `paintRow(Graphics g,
  Rectangle clipBounds,
  Insets insets,
  Rectangle bounds,
  TreePath path,
  int row,
  boolean isExpanded,
  boolean hasBeenExpanded,
  boolean isLeaf)`

  Paints the renderer part of a row.

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

  `protected void`

  `pathWasCollapsed(TreePath path)`

  Messaged from the `VisibleTreeNode` after it has collapsed.

  `protected void`

  `pathWasExpanded(TreePath path)`

  Messaged from the `VisibleTreeNode` after it has been expanded.

  `protected void`

  `prepareForUIInstall()`

  Invoked after the `tree` instance variable has been
  set, but before any defaults/listeners have been installed.

  `protected void`

  `prepareForUIUninstall()`

  Invoked before uninstallation of UI.

  `protected void`

  `selectPathForEvent(TreePath path,
  MouseEvent event)`

  Messaged to update the selection based on a `MouseEvent` over a
  particular row.

  `protected void`

  `setCellEditor(TreeCellEditor editor)`

  Sets the cell editor.

  `protected void`

  `setCellRenderer(TreeCellRenderer tcr)`

  Sets the `TreeCellRenderer` to `tcr`.

  `void`

  `setCollapsedIcon(Icon newG)`

  Sets the collapsed icon.

  `protected void`

  `setEditable(boolean newValue)`

  Configures the receiver to allow, or not allow, editing.

  `void`

  `setExpandedIcon(Icon newG)`

  Sets the expanded icon.

  `protected void`

  `setHashColor(Color color)`

  Sets the hash color.

  `protected void`

  `setLargeModel(boolean largeModel)`

  Sets the `largeModel`.

  `void`

  `setLeftChildIndent(int newAmount)`

  Sets the left child indent.

  `protected void`

  `setModel(TreeModel model)`

  Sets the `TreeModel`.

  `void`

  `setPreferredMinSize(Dimension newSize)`

  Sets the preferred minimum size.

  `void`

  `setRightChildIndent(int newAmount)`

  Sets the right child indent.

  `protected void`

  `setRootVisible(boolean newValue)`

  Sets the root to being visible.

  `protected void`

  `setRowHeight(int rowHeight)`

  Sets the row height, this is forwarded to the treeState.

  `protected void`

  `setSelectionModel(TreeSelectionModel newLSM)`

  Resets the selection model.

  `protected void`

  `setShowsRootHandles(boolean newValue)`

  Determines whether the node handles are to be displayed.

  `protected boolean`

  `shouldPaintExpandControl(TreePath path,
  int row,
  boolean isExpanded,
  boolean hasBeenExpanded,
  boolean isLeaf)`

  Returns `true` if the expand (toggle) control should be drawn for
  the specified row.

  `protected boolean`

  `startEditing(TreePath path,
  MouseEvent event)`

  Will start editing for node if there is a `cellEditor` and
  `shouldSelectCell` returns `true`.

  `void`

  `startEditingAtPath(JTree tree,
  TreePath path)`

  Selects the last item in path and tries to edit it.

  `boolean`

  `stopEditing(JTree tree)`

  Stops the current editing session.

  `protected void`

  `toggleExpandState(TreePath path)`

  Expands path if it is not expanded, or collapses row if it is expanded.

  `protected void`

  `uninstallComponents()`

  Uninstalls the renderer pane.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  `protected void`

  `updateCachedPreferredSize()`

  Updates the `preferredSize` instance variable,
  which is returned from `getPreferredSize()`.

  `protected void`

  `updateCellEditor()`

  Updates the cellEditor based on the editability of the JTree that
  we're contained in.

  `protected void`

  `updateDepthOffset()`

  Updates how much each depth should be offset by.

  `protected void`

  `updateExpandedDescendants(TreePath path)`

  Updates the expanded state of all the descendants of `path`
  by getting the expanded descendants from the tree and forwarding
  to the tree state.

  `protected void`

  `updateLayoutCacheExpandedNodes()`

  Makes all the nodes that are expanded in JTree expanded in LayoutCache.

  `protected void`

  `updateLeadSelectionRow()`

  Updates the lead row of the selection.

  `protected void`

  `updateRenderer()`

  Messaged from the tree we're in when the renderer has changed.

  `protected void`

  `updateSize()`

  Marks the cached size as being invalid, and messages the
  tree with `treeDidChange`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### collapsedIcon

    protected transient [Icon](../../Icon.md "interface in javax.swing") collapsedIcon

    The collapsed icon.
  + ### expandedIcon

    protected transient [Icon](../../Icon.md "interface in javax.swing") expandedIcon

    The expanded icon.
  + ### leftChildIndent

    protected int leftChildIndent

    Distance between left margin and where vertical dashes will be
    drawn.
  + ### rightChildIndent

    protected int rightChildIndent

    Distance to add to leftChildIndent to determine where cell
    contents will be drawn.
  + ### totalChildIndent

    protected int totalChildIndent

    Total distance that will be indented. The sum of leftChildIndent
    and rightChildIndent.
  + ### preferredMinSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") preferredMinSize

    Minimum preferred size.
  + ### lastSelectedRow

    protected int lastSelectedRow

    Index of the row that was last selected.
  + ### tree

    protected [JTree](../../JTree.md "class in javax.swing") tree

    Component that we're going to be drawing into.
  + ### currentCellRenderer

    protected transient [TreeCellRenderer](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") currentCellRenderer

    Renderer that is being used to do the actual cell drawing.
  + ### createdRenderer

    protected boolean createdRenderer

    Set to true if the renderer that is currently in the tree was
    created by this instance.
  + ### cellEditor

    protected transient [TreeCellEditor](../../tree/TreeCellEditor.md "interface in javax.swing.tree") cellEditor

    Editor for the tree.
  + ### createdCellEditor

    protected boolean createdCellEditor

    Set to true if editor that is currently in the tree was
    created by this instance.
  + ### stopEditingInCompleteEditing

    protected boolean stopEditingInCompleteEditing

    Set to false when editing and shouldSelectCell() returns true meaning
    the node should be selected before editing, used in completeEditing.
  + ### rendererPane

    protected [CellRendererPane](../../CellRendererPane.md "class in javax.swing") rendererPane

    Used to paint the TreeCellRenderer.
  + ### preferredSize

    protected [Dimension](../../../../java/awt/Dimension.md "class in java.awt") preferredSize

    Size needed to completely display all the nodes.
  + ### validCachedPreferredSize

    protected boolean validCachedPreferredSize

    Is the preferredSize valid?
  + ### treeState

    protected [AbstractLayoutCache](../../tree/AbstractLayoutCache.md "class in javax.swing.tree") treeState

    Object responsible for handling sizing and expanded issues.
  + ### drawingCache

    protected [Hashtable](../../../../../java.base/java/util/Hashtable.md "class in java.util")<[TreePath](../../tree/TreePath.md "class in javax.swing.tree"),[Boolean](../../../../../java.base/java/lang/Boolean.md "class in java.lang")> drawingCache

    Used for minimizing the drawing of vertical lines.
  + ### largeModel

    protected boolean largeModel

    True if doing optimizations for a largeModel. Subclasses that
    don't support this may wish to override createLayoutCache to not
    return a FixedHeightLayoutCache instance.
  + ### nodeDimensions

    protected [AbstractLayoutCache.NodeDimensions](../../tree/AbstractLayoutCache.NodeDimensions.md "class in javax.swing.tree") nodeDimensions

    Responsible for telling the TreeState the size needed for a node.
  + ### treeModel

    protected [TreeModel](../../tree/TreeModel.md "interface in javax.swing.tree") treeModel

    Used to determine what to display.
  + ### treeSelectionModel

    protected [TreeSelectionModel](../../tree/TreeSelectionModel.md "interface in javax.swing.tree") treeSelectionModel

    Model maintaining the selection.
  + ### depthOffset

    protected int depthOffset

    How much the depth should be offset to properly calculate
    x locations. This is based on whether or not the root is visible,
    and if the root handles are visible.
  + ### editingComponent

    protected [Component](../../../../java/awt/Component.md "class in java.awt") editingComponent

    When editing, this will be the Component that is doing the actual
    editing.
  + ### editingPath

    protected [TreePath](../../tree/TreePath.md "class in javax.swing.tree") editingPath

    Path that is being edited.
  + ### editingRow

    protected int editingRow

    Row that is being edited. Should only be referenced if
    editingComponent is not null.
  + ### editorHasDifferentSize

    protected boolean editorHasDifferentSize

    Set to true if the editor has a different size than the renderer.
* ## Constructor Details

  + ### BasicTreeUI

    public BasicTreeUI()

    Constructs a new instance of `BasicTreeUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Constructs a new instance of `BasicTreeUI`.

    Parameters:
    :   `x` - a component

    Returns:
    :   a new instance of `BasicTreeUI`
  + ### getHashColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") getHashColor()

    Returns the hash color.

    Returns:
    :   the hash color
  + ### setHashColor

    protected void setHashColor([Color](../../../../java/awt/Color.md "class in java.awt") color)

    Sets the hash color.

    Parameters:
    :   `color` - the hash color
  + ### setLeftChildIndent

    public void setLeftChildIndent(int newAmount)

    Sets the left child indent.

    Parameters:
    :   `newAmount` - the left child indent
  + ### getLeftChildIndent

    public int getLeftChildIndent()

    Returns the left child indent.

    Returns:
    :   the left child indent
  + ### setRightChildIndent

    public void setRightChildIndent(int newAmount)

    Sets the right child indent.

    Parameters:
    :   `newAmount` - the right child indent
  + ### getRightChildIndent

    public int getRightChildIndent()

    Returns the right child indent.

    Returns:
    :   the right child indent
  + ### setExpandedIcon

    public void setExpandedIcon([Icon](../../Icon.md "interface in javax.swing") newG)

    Sets the expanded icon.

    Parameters:
    :   `newG` - the expanded icon
  + ### getExpandedIcon

    public [Icon](../../Icon.md "interface in javax.swing") getExpandedIcon()

    Returns the expanded icon.

    Returns:
    :   the expanded icon
  + ### setCollapsedIcon

    public void setCollapsedIcon([Icon](../../Icon.md "interface in javax.swing") newG)

    Sets the collapsed icon.

    Parameters:
    :   `newG` - the collapsed icon
  + ### getCollapsedIcon

    public [Icon](../../Icon.md "interface in javax.swing") getCollapsedIcon()

    Returns the collapsed icon.

    Returns:
    :   the collapsed icon
  + ### setLargeModel

    protected void setLargeModel(boolean largeModel)

    Sets the `largeModel`.
    Called when the `largeModel` property is changed in the drawn tree
    component.

    Parameters:
    :   `largeModel` - the new value of the `largeModel` property
  + ### isLargeModel

    protected boolean isLargeModel()

    Returns `true` if large model is set.

    Returns:
    :   `true` if large model is set
  + ### setRowHeight

    protected void setRowHeight(int rowHeight)

    Sets the row height, this is forwarded to the treeState.
    Called when the `rowHeight` property is changed in
    the drawn tree component.

    Parameters:
    :   `rowHeight` - the new value of the `rowHeight` property
  + ### getRowHeight

    protected int getRowHeight()

    Returns the height of each row in the drawn tree component. If the
    returned value is less than or equal to 0 the height for each row is
    determined by the renderer.

    Returns:
    :   the height of each row, in pixels
  + ### setCellRenderer

    protected void setCellRenderer([TreeCellRenderer](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") tcr)

    Sets the `TreeCellRenderer` to `tcr`. This invokes
    `updateRenderer`.
    Called when the `cellRenderer` property is changed in
    the drawn tree component.

    Parameters:
    :   `tcr` - the new value of the `cellRenderer` property
  + ### getCellRenderer

    protected [TreeCellRenderer](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") getCellRenderer()

    Returns the current instance of the [`TreeCellRenderer`](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") that is
    rendering each cell.

    Returns:
    :   the [`TreeCellRenderer`](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") instance
  + ### setModel

    protected void setModel([TreeModel](../../tree/TreeModel.md "interface in javax.swing.tree") model)

    Sets the `TreeModel`.

    Parameters:
    :   `model` - the new value
  + ### getModel

    protected [TreeModel](../../tree/TreeModel.md "interface in javax.swing.tree") getModel()

    Returns the tree model.

    Returns:
    :   the tree model
  + ### setRootVisible

    protected void setRootVisible(boolean newValue)

    Sets the root to being visible.
    Called when the `rootVisible` property is changed in the drawn tree
    component.

    Parameters:
    :   `newValue` - the new value of the `rootVisible` property
  + ### isRootVisible

    protected boolean isRootVisible()

    Returns whether the root node of the drawn tree component should be displayed.

    Returns:
    :   `true` if the root node of the tree is displayed
  + ### setShowsRootHandles

    protected void setShowsRootHandles(boolean newValue)

    Determines whether the node handles are to be displayed.
    Called when the `showsRootHandles` property is changed in the drawn
    tree component.

    Parameters:
    :   `newValue` - the new value of the `showsRootHandles` property
  + ### getShowsRootHandles

    protected boolean getShowsRootHandles()

    Returns `true` if the root handles are to be displayed.

    Returns:
    :   `true` if the root handles are to be displayed
  + ### setCellEditor

    protected void setCellEditor([TreeCellEditor](../../tree/TreeCellEditor.md "interface in javax.swing.tree") editor)

    Sets the cell editor.
    Called when the `cellEditor` property is changed in the drawn tree
    component.

    Parameters:
    :   `editor` - the new value of the `cellEditor` property
  + ### getCellEditor

    protected [TreeCellEditor](../../tree/TreeCellEditor.md "interface in javax.swing.tree") getCellEditor()

    Returns the editor used to edit entries in the drawn tree component, or
    `null` if the tree cannot be edited.

    Returns:
    :   the [`TreeCellEditor`](../../tree/TreeCellEditor.md "interface in javax.swing.tree") instance, or `null`
  + ### setEditable

    protected void setEditable(boolean newValue)

    Configures the receiver to allow, or not allow, editing.
    Called when the `editable` property is changed in the drawn tree
    component.

    Parameters:
    :   `newValue` - the new value of the `editable` property
  + ### isEditable

    protected boolean isEditable()

    Returns whether the drawn tree component should be enabled for editing.

    Returns:
    :   `true` if the tree is editable
  + ### setSelectionModel

    protected void setSelectionModel([TreeSelectionModel](../../tree/TreeSelectionModel.md "interface in javax.swing.tree") newLSM)

    Resets the selection model. The appropriate listener are installed
    on the model.
    Called when the `selectionModel` property is changed in the drawn tree
    component.

    Parameters:
    :   `newLSM` - the new value of the `selectionModel` property
  + ### getSelectionModel

    protected [TreeSelectionModel](../../tree/TreeSelectionModel.md "interface in javax.swing.tree") getSelectionModel()

    Returns the current instance of the [`TreeSelectionModel`](../../tree/TreeSelectionModel.md "interface in javax.swing.tree") which is
    the model for selections.

    Returns:
    :   the [`TreeSelectionModel`](../../tree/TreeSelectionModel.md "interface in javax.swing.tree") instance
  + ### getPathBounds

    public [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getPathBounds([JTree](../../JTree.md "class in javax.swing") tree,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Returns the Rectangle enclosing the label portion that the
    last item in path will be drawn into. Will return null if
    any component in path is currently invalid.

    Specified by:
    :   `getPathBounds` in class `TreeUI`

    Parameters:
    :   `tree` - the `JTree` for `path`
    :   `path` - the `TreePath` identifying the node

    Returns:
    :   the `Rectangle` enclosing the label portion that the
        last item in path will be drawn into, `null` if any
        component in path is currently valid.
  + ### getPathForRow

    public [TreePath](../../tree/TreePath.md "class in javax.swing.tree") getPathForRow([JTree](../../JTree.md "class in javax.swing") tree,
    int row)

    Returns the path for passed in row. If row is not visible
    null is returned.

    Specified by:
    :   `getPathForRow` in class `TreeUI`

    Parameters:
    :   `tree` - a `JTree` object
    :   `row` - an integer specifying a row

    Returns:
    :   the `path` for `row` or `null` if `row`
        is not visible
  + ### getRowForPath

    public int getRowForPath([JTree](../../JTree.md "class in javax.swing") tree,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Returns the row that the last item identified in path is visible
    at. Will return -1 if any of the elements in path are not
    currently visible.

    Specified by:
    :   `getRowForPath` in class `TreeUI`

    Parameters:
    :   `tree` - the `JTree` for `path`
    :   `path` - the `TreePath` object to look in

    Returns:
    :   an integer specifying the row at which the last item
        identified is visible, -1 if any of the elements in
        `path` are not currently visible
  + ### getRowCount

    public int getRowCount([JTree](../../JTree.md "class in javax.swing") tree)

    Returns the number of rows that are being displayed.

    Specified by:
    :   `getRowCount` in class `TreeUI`

    Parameters:
    :   `tree` - the `JTree` for which to count rows

    Returns:
    :   an integer specifying the number of row being displayed
  + ### getClosestPathForLocation

    public [TreePath](../../tree/TreePath.md "class in javax.swing.tree") getClosestPathForLocation([JTree](../../JTree.md "class in javax.swing") tree,
    int x,
    int y)

    Returns the path to the node that is closest to x,y. If
    there is nothing currently visible this will return null, otherwise
    it'll always return a valid path. If you need to test if the
    returned object is exactly at x, y you should get the bounds for
    the returned path and test x, y against that.

    Specified by:
    :   `getClosestPathForLocation` in class `TreeUI`

    Parameters:
    :   `tree` - a `JTree` object
    :   `x` - an integer giving the number of pixels horizontally from the
        left edge of the display area
    :   `y` - an integer giving the number of pixels vertically from the top
        of the display area, minus any top margin

    Returns:
    :   the `TreePath` node closest to `x,y` or `null`
        if there is nothing currently visible
  + ### isEditing

    public boolean isEditing([JTree](../../JTree.md "class in javax.swing") tree)

    Returns true if the tree is being edited. The item that is being
    edited can be returned by getEditingPath().

    Specified by:
    :   `isEditing` in class `TreeUI`

    Parameters:
    :   `tree` - a `JTree` object

    Returns:
    :   true if `tree` is being edited
  + ### stopEditing

    public boolean stopEditing([JTree](../../JTree.md "class in javax.swing") tree)

    Stops the current editing session. This has no effect if the
    tree isn't being edited. Returns true if the editor allows the
    editing session to stop.

    Specified by:
    :   `stopEditing` in class `TreeUI`

    Parameters:
    :   `tree` - a `JTree` object

    Returns:
    :   true if the editor allows the editing session to stop
  + ### cancelEditing

    public void cancelEditing([JTree](../../JTree.md "class in javax.swing") tree)

    Cancels the current editing session.

    Specified by:
    :   `cancelEditing` in class `TreeUI`

    Parameters:
    :   `tree` - a `JTree` object
  + ### startEditingAtPath

    public void startEditingAtPath([JTree](../../JTree.md "class in javax.swing") tree,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Selects the last item in path and tries to edit it. Editing will
    fail if the CellEditor won't allow it for the selected item.

    Specified by:
    :   `startEditingAtPath` in class `TreeUI`

    Parameters:
    :   `tree` - the `JTree` being edited
    :   `path` - the `TreePath` to be edited
  + ### getEditingPath

    public [TreePath](../../tree/TreePath.md "class in javax.swing.tree") getEditingPath([JTree](../../JTree.md "class in javax.swing") tree)

    Returns the path to the element that is being edited.

    Specified by:
    :   `getEditingPath` in class `TreeUI`

    Parameters:
    :   `tree` - the `JTree` for which to return a path

    Returns:
    :   a `TreePath` containing the path to `tree`
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
  + ### prepareForUIInstall

    protected void prepareForUIInstall()

    Invoked after the `tree` instance variable has been
    set, but before any defaults/listeners have been installed.
  + ### completeUIInstall

    protected void completeUIInstall()

    Invoked from installUI after all the defaults/listeners have been
    installed.
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.
  + ### installListeners

    protected void installListeners()

    Registers listeners.
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers keyboard actions.
  + ### installComponents

    protected void installComponents()

    Intalls the subcomponents of the tree, which is the renderer pane.
  + ### createNodeDimensions

    protected [AbstractLayoutCache.NodeDimensions](../../tree/AbstractLayoutCache.NodeDimensions.md "class in javax.swing.tree") createNodeDimensions()

    Creates an instance of `NodeDimensions` that is able to determine
    the size of a given node in the tree.

    Returns:
    :   an instance of `NodeDimensions`
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates a listener that is responsible that updates the UI based on
    how the tree changes.

    Returns:
    :   an instance of the `PropertyChangeListener`
  + ### createMouseListener

    protected [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") createMouseListener()

    Creates the listener responsible for updating the selection based on
    mouse events.

    Returns:
    :   an instance of the `MouseListener`
  + ### createFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") createFocusListener()

    Creates a listener that is responsible for updating the display
    when focus is lost/gained.

    Returns:
    :   an instance of the `FocusListener`
  + ### createKeyListener

    protected [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") createKeyListener()

    Creates the listener responsible for getting key events from
    the tree.

    Returns:
    :   an instance of the `KeyListener`
  + ### createSelectionModelPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createSelectionModelPropertyChangeListener()

    Creates the listener responsible for getting property change
    events from the selection model.

    Returns:
    :   an instance of the `PropertyChangeListener`
  + ### createTreeSelectionListener

    protected [TreeSelectionListener](../../event/TreeSelectionListener.md "interface in javax.swing.event") createTreeSelectionListener()

    Creates the listener that updates the display based on selection change
    methods.

    Returns:
    :   an instance of the `TreeSelectionListener`
  + ### createCellEditorListener

    protected [CellEditorListener](../../event/CellEditorListener.md "interface in javax.swing.event") createCellEditorListener()

    Creates a listener to handle events from the current editor.

    Returns:
    :   an instance of the `CellEditorListener`
  + ### createComponentListener

    protected [ComponentListener](../../../../java/awt/event/ComponentListener.md "interface in java.awt.event") createComponentListener()

    Creates and returns a new ComponentHandler. This is used for
    the large model to mark the validCachedPreferredSize as invalid
    when the component moves.

    Returns:
    :   an instance of the `ComponentListener`
  + ### createTreeExpansionListener

    protected [TreeExpansionListener](../../event/TreeExpansionListener.md "interface in javax.swing.event") createTreeExpansionListener()

    Creates and returns the object responsible for updating the treestate
    when nodes expanded state changes.

    Returns:
    :   an instance of the `TreeExpansionListener`
  + ### createLayoutCache

    protected [AbstractLayoutCache](../../tree/AbstractLayoutCache.md "class in javax.swing.tree") createLayoutCache()

    Creates the object responsible for managing what is expanded, as
    well as the size of nodes.

    Returns:
    :   the object responsible for managing what is expanded
  + ### createCellRendererPane

    protected [CellRendererPane](../../CellRendererPane.md "class in javax.swing") createCellRendererPane()

    Returns the renderer pane that renderer components are placed in.

    Returns:
    :   an instance of the `CellRendererPane`
  + ### createDefaultCellEditor

    protected [TreeCellEditor](../../tree/TreeCellEditor.md "interface in javax.swing.tree") createDefaultCellEditor()

    Creates a default cell editor.

    Returns:
    :   a default cell editor
  + ### createDefaultCellRenderer

    protected [TreeCellRenderer](../../tree/TreeCellRenderer.md "interface in javax.swing.tree") createDefaultCellRenderer()

    Returns the default cell renderer that is used to do the
    stamping of each node.

    Returns:
    :   an instance of `TreeCellRenderer`
  + ### createTreeModelListener

    protected [TreeModelListener](../../event/TreeModelListener.md "interface in javax.swing.event") createTreeModelListener()

    Returns a listener that can update the tree when the model changes.

    Returns:
    :   an instance of the `TreeModelListener`.
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
  + ### prepareForUIUninstall

    protected void prepareForUIUninstall()

    Invoked before uninstallation of UI.
  + ### completeUIUninstall

    protected void completeUIUninstall()

    Uninstalls UI.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions.
  + ### uninstallComponents

    protected void uninstallComponents()

    Uninstalls the renderer pane.
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
  + ### isDropLine

    protected boolean isDropLine([JTree.DropLocation](../../JTree.DropLocation.md "class in javax.swing") loc)

    Tells if a `DropLocation` should be indicated by a line between
    nodes. This is meant for `javax.swing.DropMode.INSERT` and
    `javax.swing.DropMode.ON_OR_INSERT` drop modes.

    Parameters:
    :   `loc` - a `DropLocation`

    Returns:
    :   `true` if the drop location should be shown as a line

    Since:
    :   1.7
  + ### paintDropLine

    protected void paintDropLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Paints the drop line.

    Parameters:
    :   `g` - `Graphics` object to draw on

    Since:
    :   1.7
  + ### getDropLineRect

    protected [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getDropLineRect([JTree.DropLocation](../../JTree.DropLocation.md "class in javax.swing") loc)

    Returns a unbounding box for the drop line.

    Parameters:
    :   `loc` - a `DropLocation`

    Returns:
    :   bounding box for the drop line

    Since:
    :   1.7
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
  + ### paintVerticalPartOfLeg

    protected void paintVerticalPartOfLeg([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") clipBounds,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Paints the vertical part of the leg. The receiver should
    NOT modify `clipBounds`, `insets`.

    Parameters:
    :   `g` - a graphics context
    :   `clipBounds` - a clipped rectangle
    :   `insets` - insets
    :   `path` - a tree path
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
  + ### paintRow

    protected void paintRow([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") clipBounds,
    [Insets](../../../../java/awt/Insets.md "class in java.awt") insets,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") bounds,
    [TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    int row,
    boolean isExpanded,
    boolean hasBeenExpanded,
    boolean isLeaf)

    Paints the renderer part of a row. The receiver should
    NOT modify `clipBounds`, or `insets`.

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
  + ### shouldPaintExpandControl

    protected boolean shouldPaintExpandControl([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    int row,
    boolean isExpanded,
    boolean hasBeenExpanded,
    boolean isLeaf)

    Returns `true` if the expand (toggle) control should be drawn for
    the specified row.

    Parameters:
    :   `path` - a tree path
    :   `row` - a row
    :   `isExpanded` - `true` if the path is expanded
    :   `hasBeenExpanded` - `true` if the path has been expanded
    :   `isLeaf` - `true` if the row is leaf

    Returns:
    :   `true` if the expand (toggle) control should be drawn
        for the specified row
  + ### paintVerticalLine

    protected void paintVerticalLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    int x,
    int top,
    int bottom)

    Paints a vertical line.

    Parameters:
    :   `g` - a graphics context
    :   `c` - a component
    :   `x` - an X coordinate
    :   `top` - an Y1 coordinate
    :   `bottom` - an Y2 coordinate
  + ### paintHorizontalLine

    protected void paintHorizontalLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c,
    int y,
    int left,
    int right)

    Paints a horizontal line.

    Parameters:
    :   `g` - a graphics context
    :   `c` - a component
    :   `y` - an Y coordinate
    :   `left` - an X1 coordinate
    :   `right` - an X2 coordinate
  + ### getVerticalLegBuffer

    protected int getVerticalLegBuffer()

    The vertical element of legs between nodes starts at the bottom of the
    parent node by default. This method makes the leg start below that.

    Returns:
    :   the vertical leg buffer
  + ### getHorizontalLegBuffer

    protected int getHorizontalLegBuffer()

    The horizontal element of legs between nodes starts at the
    right of the left-hand side of the child node by default. This
    method makes the leg end before that.

    Returns:
    :   the horizontal leg buffer
  + ### drawCentered

    protected void drawCentered([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") graphics,
    [Icon](../../Icon.md "interface in javax.swing") icon,
    int x,
    int y)

    Draws the `icon` centered at (x,y).

    Parameters:
    :   `c` - a component
    :   `graphics` - a graphics context
    :   `icon` - an icon
    :   `x` - an X coordinate
    :   `y` - an Y coordinate
  + ### drawDashedHorizontalLine

    protected void drawDashedHorizontalLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int y,
    int x1,
    int x2)

    Draws a horizontal dashed line. It is assumed `x1` <= `x2`.
    If `x1` is greater than `x2`, the method draws nothing.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `y` - an Y coordinate
    :   `x1` - an X1 coordinate
    :   `x2` - an X2 coordinate
  + ### drawDashedVerticalLine

    protected void drawDashedVerticalLine([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y1,
    int y2)

    Draws a vertical dashed line. It is assumed `y1` <= `y2`.
    If `y1` is greater than `y2`, the method draws nothing.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `x` - an X coordinate
    :   `y1` - an Y1 coordinate
    :   `y2` - an Y2 coordinate
  + ### getRowX

    protected int getRowX(int row,
    int depth)

    Returns the location, along the x-axis, to render a particular row
    at. The return value does not include any Insets specified on the JTree.
    This does not check for the validity of the row or depth, it is assumed
    to be correct and will not throw an Exception if the row or depth
    doesn't match that of the tree.

    Parameters:
    :   `row` - Row to return x location for
    :   `depth` - Depth of the row

    Returns:
    :   amount to indent the given row.

    Since:
    :   1.5
  + ### updateLayoutCacheExpandedNodes

    protected void updateLayoutCacheExpandedNodes()

    Makes all the nodes that are expanded in JTree expanded in LayoutCache.
    This invokes updateExpandedDescendants with the root path.
  + ### updateExpandedDescendants

    protected void updateExpandedDescendants([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Updates the expanded state of all the descendants of `path`
    by getting the expanded descendants from the tree and forwarding
    to the tree state.

    Parameters:
    :   `path` - a tree path
  + ### getLastChildPath

    protected [TreePath](../../tree/TreePath.md "class in javax.swing.tree") getLastChildPath([TreePath](../../tree/TreePath.md "class in javax.swing.tree") parent)

    Returns a path to the last child of `parent`.

    Parameters:
    :   `parent` - a tree path

    Returns:
    :   a path to the last child of `parent`
  + ### updateDepthOffset

    protected void updateDepthOffset()

    Updates how much each depth should be offset by.
  + ### updateCellEditor

    protected void updateCellEditor()

    Updates the cellEditor based on the editability of the JTree that
    we're contained in. If the tree is editable but doesn't have a
    cellEditor, a basic one will be used.
  + ### updateRenderer

    protected void updateRenderer()

    Messaged from the tree we're in when the renderer has changed.
  + ### configureLayoutCache

    protected void configureLayoutCache()

    Resets the TreeState instance based on the tree we're providing the
    look and feel for.
  + ### updateSize

    protected void updateSize()

    Marks the cached size as being invalid, and messages the
    tree with `treeDidChange`.
  + ### updateCachedPreferredSize

    protected void updateCachedPreferredSize()

    Updates the `preferredSize` instance variable,
    which is returned from `getPreferredSize()`.

    For left to right orientations, the size is determined from the
    current AbstractLayoutCache. For RTL orientations, the preferred size
    becomes the width minus the minimum x position.
  + ### pathWasExpanded

    protected void pathWasExpanded([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Messaged from the `VisibleTreeNode` after it has been expanded.

    Parameters:
    :   `path` - a tree path
  + ### pathWasCollapsed

    protected void pathWasCollapsed([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Messaged from the `VisibleTreeNode` after it has collapsed.

    Parameters:
    :   `path` - a tree path
  + ### ensureRowsAreVisible

    protected void ensureRowsAreVisible(int beginRow,
    int endRow)

    Ensures that the rows identified by `beginRow` through
    `endRow` are visible.

    Parameters:
    :   `beginRow` - the begin row
    :   `endRow` - the end row
  + ### setPreferredMinSize

    public void setPreferredMinSize([Dimension](../../../../java/awt/Dimension.md "class in java.awt") newSize)

    Sets the preferred minimum size.

    Parameters:
    :   `newSize` - the new preferred size
  + ### getPreferredMinSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredMinSize()

    Returns the minimum preferred size.

    Returns:
    :   the minimum preferred size
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the preferred size to properly display the tree,
    this is a cover method for `getPreferredSize(c, true)`.

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `c` - a component

    Returns:
    :   the preferred size to represent the tree in the component

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c,
    boolean checkConsistency)

    Returns the preferred size to represent the tree in
    *c*. If *checkConsistency* is `true`
    **checkConsistency** is messaged first.

    Parameters:
    :   `c` - a component
    :   `checkConsistency` - if `true` consistency is checked

    Returns:
    :   the preferred size to represent the tree in the component
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the minimum size for this component. Which will be
    the min preferred size or 0, 0.

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

    Returns the maximum size for this component, which will be the
    preferred size if the instance is currently in a JTree, or 0, 0.

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
  + ### completeEditing

    protected void completeEditing()

    Messages to stop the editing session. If the UI the receiver
    is providing the look and feel for returns true from
    `getInvokesStopCellEditing`, stopCellEditing will
    invoked on the current editor. Then completeEditing will
    be messaged with false, true, false to cancel any lingering
    editing.
  + ### completeEditing

    protected void completeEditing(boolean messageStop,
    boolean messageCancel,
    boolean messageTree)

    Stops the editing session. If `messageStop` is `true` the editor
    is messaged with `stopEditing`, if `messageCancel`
    is `true` the editor is messaged with `cancelEditing`.
    If `messageTree` is `true` the `treeModel` is messaged
    with `valueForPathChanged`.

    Parameters:
    :   `messageStop` - message to stop editing
    :   `messageCancel` - message to cancel editing
    :   `messageTree` - message to tree
  + ### startEditing

    protected boolean startEditing([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    [MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Will start editing for node if there is a `cellEditor` and
    `shouldSelectCell` returns `true`.

    This assumes that path is valid and visible.

    Parameters:
    :   `path` - a tree path
    :   `event` - a mouse event

    Returns:
    :   `true` if the editing is successful
  + ### checkForClickInExpandControl

    protected void checkForClickInExpandControl([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    int mouseX,
    int mouseY)

    If the `mouseX` and `mouseY` are in the
    expand/collapse region of the `row`, this will toggle
    the row.

    Parameters:
    :   `path` - a tree path
    :   `mouseX` - an X coordinate
    :   `mouseY` - an Y coordinate
  + ### isLocationInExpandControl

    protected boolean isLocationInExpandControl([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    int mouseX,
    int mouseY)

    Returns `true` if `mouseX` and `mouseY` fall
    in the area of row that is used to expand/collapse the node and
    the node at `row` does not represent a leaf.

    Parameters:
    :   `path` - a tree path
    :   `mouseX` - an X coordinate
    :   `mouseY` - an Y coordinate

    Returns:
    :   `true` if the mouse cursor fall in the area of row that
        is used to expand/collapse the node and the node is not a leaf.
  + ### handleExpandControlClick

    protected void handleExpandControlClick([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    int mouseX,
    int mouseY)

    Messaged when the user clicks the particular row, this invokes
    `toggleExpandState`.

    Parameters:
    :   `path` - a tree path
    :   `mouseX` - an X coordinate
    :   `mouseY` - an Y coordinate
  + ### toggleExpandState

    protected void toggleExpandState([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path)

    Expands path if it is not expanded, or collapses row if it is expanded.
    If expanding a path and `JTree` scrolls on expand,
    `ensureRowsAreVisible` is invoked to scroll as many of the children
    to visible as possible (tries to scroll to last visible descendant of path).

    Parameters:
    :   `path` - a tree path
  + ### isToggleSelectionEvent

    protected boolean isToggleSelectionEvent([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Returning `true` signifies a mouse event on the node should toggle
    the selection of only the row under mouse.

    Parameters:
    :   `event` - a mouse event

    Returns:
    :   `true` if a mouse event on the node should toggle the selection
  + ### isMultiSelectEvent

    protected boolean isMultiSelectEvent([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Returning `true` signifies a mouse event on the node should select
    from the anchor point.

    Parameters:
    :   `event` - a mouse event

    Returns:
    :   `true` if a mouse event on the node should select
        from the anchor point
  + ### isToggleEvent

    protected boolean isToggleEvent([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Returning `true` indicates the row under the mouse should be toggled
    based on the event. This is invoked after `checkForClickInExpandControl`,
    implying the location is not in the expand (toggle) control.

    Parameters:
    :   `event` - a mouse event

    Returns:
    :   `true` if the row under the mouse should be toggled
  + ### selectPathForEvent

    protected void selectPathForEvent([TreePath](../../tree/TreePath.md "class in javax.swing.tree") path,
    [MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Messaged to update the selection based on a `MouseEvent` over a
    particular row. If the event is a toggle selection event, the
    row is either selected, or deselected. If the event identifies
    a multi selection event, the selection is updated from the
    anchor point. Otherwise the row is selected, and if the event
    specified a toggle event the row is expanded/collapsed.

    Parameters:
    :   `path` - the selected path
    :   `event` - the mouse event
  + ### isLeaf

    protected boolean isLeaf(int row)

    Returns `true` if the node at `row` is a leaf.

    Parameters:
    :   `row` - a row

    Returns:
    :   `true` if the node at `row` is a leaf
  + ### updateLeadSelectionRow

    protected void updateLeadSelectionRow()

    Updates the lead row of the selection.

    Since:
    :   1.7
  + ### getLeadSelectionRow

    protected int getLeadSelectionRow()

    Returns the lead row of the selection.

    Returns:
    :   selection lead row

    Since:
    :   1.7