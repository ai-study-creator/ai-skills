Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicListUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ListUI](../ListUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicListUI

Direct Known Subclasses:
:   `SynthListUI`

---

public class BasicListUI
extends [ListUI](../ListUI.md "class in javax.swing.plaf")

An extensible implementation of `ListUI`.

`BasicListUI` instances cannot be shared between multiple
lists.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicListUI.FocusHandler`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicListUI.ListDataHandler`

  The `ListDataListener` that's added to the `JLists` model at
  `installUI time`, and whenever the JList.model property changes.

  `class`

  `BasicListUI.ListSelectionHandler`

  The ListSelectionListener that's added to the JLists selection
  model at installUI time, and whenever the JList.selectionModel property
  changes.

  `class`

  `BasicListUI.MouseInputHandler`

  Mouse input, and focus handling for JList.

  `class`

  `BasicListUI.PropertyChangeHandler`

  The PropertyChangeListener that's added to the JList at
  installUI time.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `cellHeight`

  The height of cell.

  `protected int[]`

  `cellHeights`

  The array of cells' height

  `protected static final int`

  `cellRendererChanged`

  The bit relates to cell renderer changed property.

  `protected int`

  `cellWidth`

  The width of cell.

  `protected static final int`

  `fixedCellHeightChanged`

  The bit relates to fixed cell height changed property.

  `protected static final int`

  `fixedCellWidthChanged`

  The bit relates to fixed cell width changed property.

  `protected FocusListener`

  `focusListener`

  `FocusListener` that attached to `JList`.

  `protected static final int`

  `fontChanged`

  The bit relates to font changed property.

  `protected JList<Object>`

  `list`

  The instance of `JList`.

  `protected ListDataListener`

  `listDataListener`

  `ListDataListener` that attached to `JList`.

  `protected ListSelectionListener`

  `listSelectionListener`

  `ListSelectionListener` that attached to `JList`.

  `protected static final int`

  `modelChanged`

  The bit relates to model changed property.

  `protected MouseInputListener`

  `mouseInputListener`

  `MouseInputListener` that attached to `JList`.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  `PropertyChangeListener` that attached to `JList`.

  `protected static final int`

  `prototypeCellValueChanged`

  The bit relates to prototype cell value changed property.

  `protected CellRendererPane`

  `rendererPane`

  The instance of `CellRendererPane`.

  `protected static final int`

  `selectionModelChanged`

  The bit relates to selection model changed property.

  `protected int`

  `updateLayoutStateNeeded`

  The value represents changes to `JList` model.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicListUI()`

  Constructs a `BasicListUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected int`

  `convertRowToY(int row)`

  Return the `JList` relative Y coordinate of the origin of the specified
  row or -1 if row isn't valid.

  `protected int`

  `convertYToRow(int y0)`

  Convert the `JList` relative coordinate to the row that contains it,
  based on the current layout.

  `protected FocusListener`

  `createFocusListener()`

  Returns an instance of `FocusListener`.

  `protected ListDataListener`

  `createListDataListener()`

  Creates an instance of `ListDataListener` that's added to
  the `JLists` by model as needed.

  `protected ListSelectionListener`

  `createListSelectionListener()`

  Creates an instance of `ListSelectionHandler` that's added to
  the `JLists` by selectionModel as needed.

  `protected MouseInputListener`

  `createMouseInputListener()`

  Creates a delegate that implements `MouseInputListener`.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Creates an instance of `PropertyChangeHandler` that's added to
  the `JList` by `installUI()`.

  `static ComponentUI`

  `createUI(JComponent list)`

  Returns a new instance of `BasicListUI`.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `Rectangle`

  `getCellBounds(JList<?> list,
  int index1,
  int index2)`

  Returns the bounding rectangle, in the given list's coordinate system,
  for the range of cells specified by the two indices.

  `Dimension`

  `getPreferredSize(JComponent c)`

  The preferredSize of the list depends upon the layout orientation.

  `protected int`

  `getRowHeight(int row)`

  Returns the height of the specified row based on the current layout.

  `Point`

  `indexToLocation(JList<?> list,
  int index)`

  Returns the origin in the given `JList`, of the specified item,
  in the list's coordinate system.

  `protected void`

  `installDefaults()`

  Initializes list properties such as font, foreground, and background,
  and adds the CellRendererPane.

  `protected void`

  `installKeyboardActions()`

  Registers the keyboard bindings on the `JList` that the
  `BasicListUI` is associated with.

  `protected void`

  `installListeners()`

  Creates and installs the listeners for the JList, its model, and its
  selectionModel.

  `void`

  `installUI(JComponent c)`

  Initializes `this.list` by calling `installDefaults()`,
  `installListeners()`, and `installKeyboardActions()`
  in order.

  `int`

  `locationToIndex(JList<?> list,
  Point location)`

  Returns the cell index in the specified `JList` closest to the
  given location in the list's coordinate system.

  `protected void`

  `maybeUpdateLayoutState()`

  If updateLayoutStateNeeded is non zero, call updateLayoutState() and reset
  updateLayoutStateNeeded.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paint the rows that intersect the Graphics objects clipRect.

  `protected void`

  `paintCell(Graphics g,
  int row,
  Rectangle rowBounds,
  ListCellRenderer<Object> cellRenderer,
  ListModel<Object> dataModel,
  ListSelectionModel selModel,
  int leadIndex)`

  Paint one List cell: compute the relevant state, get the "rubber stamp"
  cell renderer component, and then use the `CellRendererPane` to paint it.

  `protected void`

  `selectNextIndex()`

  Selected the previous row and force it to be visible.

  `protected void`

  `selectPreviousIndex()`

  Selected the previous row and force it to be visible.

  `protected void`

  `uninstallDefaults()`

  Sets the list properties that have not been explicitly overridden to
  `null`.

  `protected void`

  `uninstallKeyboardActions()`

  Unregisters keyboard actions installed from
  `installKeyboardActions`.

  `protected void`

  `uninstallListeners()`

  Removes the listeners from the JList, its model, and its
  selectionModel.

  `void`

  `uninstallUI(JComponent c)`

  Uninitializes `this.list` by calling `uninstallListeners()`,
  `uninstallKeyboardActions()`, and `uninstallDefaults()`
  in order.

  `protected void`

  `updateLayoutState()`

  Recompute the value of cellHeight or cellHeights based
  and cellWidth, based on the current font and the current
  values of fixedCellWidth, fixedCellHeight, and prototypeCellValue.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMaximumSize, getMinimumSize, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### list

    protected [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> list

    The instance of `JList`.
  + ### rendererPane

    protected [CellRendererPane](../../CellRendererPane.md "class in javax.swing") rendererPane

    The instance of `CellRendererPane`.
  + ### focusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") focusListener

    `FocusListener` that attached to `JList`.
  + ### mouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") mouseInputListener

    `MouseInputListener` that attached to `JList`.
  + ### listSelectionListener

    protected [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event") listSelectionListener

    `ListSelectionListener` that attached to `JList`.
  + ### listDataListener

    protected [ListDataListener](../../event/ListDataListener.md "interface in javax.swing.event") listDataListener

    `ListDataListener` that attached to `JList`.
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    `PropertyChangeListener` that attached to `JList`.
  + ### cellHeights

    protected int[] cellHeights

    The array of cells' height
  + ### cellHeight

    protected int cellHeight

    The height of cell.
  + ### cellWidth

    protected int cellWidth

    The width of cell.
  + ### updateLayoutStateNeeded

    protected int updateLayoutStateNeeded

    The value represents changes to `JList` model.
  + ### modelChanged

    protected static final int modelChanged

    The bit relates to model changed property.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicListUI.modelChanged)
  + ### selectionModelChanged

    protected static final int selectionModelChanged

    The bit relates to selection model changed property.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicListUI.selectionModelChanged)
  + ### fontChanged

    protected static final int fontChanged

    The bit relates to font changed property.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicListUI.fontChanged)
  + ### fixedCellWidthChanged

    protected static final int fixedCellWidthChanged

    The bit relates to fixed cell width changed property.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicListUI.fixedCellWidthChanged)
  + ### fixedCellHeightChanged

    protected static final int fixedCellHeightChanged

    The bit relates to fixed cell height changed property.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicListUI.fixedCellHeightChanged)
  + ### prototypeCellValueChanged

    protected static final int prototypeCellValueChanged

    The bit relates to prototype cell value changed property.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicListUI.prototypeCellValueChanged)
  + ### cellRendererChanged

    protected static final int cellRendererChanged

    The bit relates to cell renderer changed property.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.basic.BasicListUI.cellRendererChanged)
* ## Constructor Details

  + ### BasicListUI

    public BasicListUI()

    Constructs a `BasicListUI`.
* ## Method Details

  + ### paintCell

    protected void paintCell([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int row,
    [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") rowBounds,
    [ListCellRenderer](../../ListCellRenderer.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> cellRenderer,
    [ListModel](../../ListModel.md "interface in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> dataModel,
    [ListSelectionModel](../../ListSelectionModel.md "interface in javax.swing") selModel,
    int leadIndex)

    Paint one List cell: compute the relevant state, get the "rubber stamp"
    cell renderer component, and then use the `CellRendererPane` to paint it.
    Subclasses may want to override this method rather than `paint()`.

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `row` - a row
    :   `rowBounds` - a bounding rectangle to render to
    :   `cellRenderer` - a list of `ListCellRenderer`
    :   `dataModel` - a list model
    :   `selModel` - a selection model
    :   `leadIndex` - a lead index

    See Also:
    :   - [`paint(java.awt.Graphics, javax.swing.JComponent)`](#paint(java.awt.Graphics,javax.swing.JComponent))
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Paint the rows that intersect the Graphics objects clipRect. This
    method calls paintCell as necessary. Subclasses
    may want to override these methods.

    Overrides:
    :   `paint` in class `ComponentUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`paintCell(java.awt.Graphics, int, java.awt.Rectangle, javax.swing.ListCellRenderer<java.lang.Object>, javax.swing.ListModel<java.lang.Object>, javax.swing.ListSelectionModel, int)`](#paintCell(java.awt.Graphics,int,java.awt.Rectangle,javax.swing.ListCellRenderer,javax.swing.ListModel,javax.swing.ListSelectionModel,int))
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
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    The preferredSize of the list depends upon the layout orientation.

    Describes the preferred size for each layout orientation

    | Layout Orientation Preferred Size | |
    | --- | --- |
    | JList.VERTICAL The preferredSize of the list is total height of the rows and the maximum width of the cells. If JList.fixedCellHeight is specified then the total height of the rows is just (cellVerticalMargins + fixedCellHeight) \* model.getSize() where rowVerticalMargins is the space we allocate for drawing the yellow focus outline. Similarly if fixedCellWidth is specified then we just use that.|  |  |  |  | | --- | --- | --- | --- | | JList.VERTICAL\_WRAP If the visible row count is greater than zero, the preferredHeight is the maximum cell height \* visibleRowCount. If the visible row count is <= 0, the preferred height is either the current height of the list, or the maximum cell height, whichever is bigger. The preferred width is than the maximum cell width \* number of columns needed. Where the number of columns needs is list.height / max cell height. Max cell height is either the fixed cell height, or is determined by iterating through all the cells to find the maximum height from the ListCellRenderer.|  |  | | --- | --- | | JList.HORIZONTAL\_WRAP If the visible row count is greater than zero, the preferredHeight is the maximum cell height \* adjustedRowCount. Where visibleRowCount is used to determine the number of columns. Because this lays out horizontally the number of rows is then determined from the column count. For example, lets say you have a model with 10 items and the visible row count is 8. The number of columns needed to display this is 2, but you no longer need 8 rows to display this, you only need 5, thus the adjustedRowCount is 5. If the visible row count is <= 0, the preferred height is dictated by the number of columns, which will be as many as can fit in the width of the `JList` (width / max cell width), with at least one column. The preferred height then becomes the model size / number of columns \* maximum cell height. Max cell height is either the fixed cell height, or is determined by iterating through all the cells to find the maximum height from the ListCellRenderer. | | | | | |

    The above specifies the raw preferred width and height. The resulting
    preferred width is the above width + insets.left + insets.right and
    the resulting preferred height is the above height + insets.top +
    insets.bottom. Where the `Insets` are determined from
    `list.getInsets()`.

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `c` - The JList component.

    Returns:
    :   The total size of the list.

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### selectPreviousIndex

    protected void selectPreviousIndex()

    Selected the previous row and force it to be visible.

    See Also:
    :   - [`JList.ensureIndexIsVisible(int)`](../../JList.md#ensureIndexIsVisible(int))
  + ### selectNextIndex

    protected void selectNextIndex()

    Selected the previous row and force it to be visible.

    See Also:
    :   - [`JList.ensureIndexIsVisible(int)`](../../JList.md#ensureIndexIsVisible(int))
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Registers the keyboard bindings on the `JList` that the
    `BasicListUI` is associated with. This method is called at
    installUI() time.

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Unregisters keyboard actions installed from
    `installKeyboardActions`.
    This method is called at uninstallUI() time - subclassess should
    ensure that all of the keyboard actions registered at installUI
    time are removed here.

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
  + ### installListeners

    protected void installListeners()

    Creates and installs the listeners for the JList, its model, and its
    selectionModel. This method is called at installUI() time.

    See Also:
    :   - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
        - [`uninstallListeners()`](#uninstallListeners())
  + ### uninstallListeners

    protected void uninstallListeners()

    Removes the listeners from the JList, its model, and its
    selectionModel. All of the listener fields, are reset to
    null here. This method is called at uninstallUI() time,
    it should be kept in sync with installListeners.

    See Also:
    :   - [`uninstallUI(javax.swing.JComponent)`](#uninstallUI(javax.swing.JComponent))
        - [`installListeners()`](#installListeners())
  + ### installDefaults

    protected void installDefaults()

    Initializes list properties such as font, foreground, and background,
    and adds the CellRendererPane. The font, foreground, and background
    properties are only set if their current value is either null
    or a UIResource, other properties are set if the current
    value is null.

    See Also:
    :   - [`uninstallDefaults()`](#uninstallDefaults())
        - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
        - [`CellRendererPane`](../../CellRendererPane.md "class in javax.swing")
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Sets the list properties that have not been explicitly overridden to
    `null`. A property is considered overridden if its current value
    is not a `UIResource`.

    See Also:
    :   - [`installDefaults()`](#installDefaults())
        - [`uninstallUI(javax.swing.JComponent)`](#uninstallUI(javax.swing.JComponent))
        - [`CellRendererPane`](../../CellRendererPane.md "class in javax.swing")
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Initializes `this.list` by calling `installDefaults()`,
    `installListeners()`, and `installKeyboardActions()`
    in order.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`installDefaults()`](#installDefaults())
        - [`installListeners()`](#installListeners())
        - [`installKeyboardActions()`](#installKeyboardActions())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Uninitializes `this.list` by calling `uninstallListeners()`,
    `uninstallKeyboardActions()`, and `uninstallDefaults()`
    in order. Sets this.list to null.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`uninstallListeners()`](#uninstallListeners())
        - [`uninstallKeyboardActions()`](#uninstallKeyboardActions())
        - [`uninstallDefaults()`](#uninstallDefaults())
  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") list)

    Returns a new instance of `BasicListUI`.
    `BasicListUI` delegates are allocated one per `JList`.

    Parameters:
    :   `list` - a component

    Returns:
    :   a new `ListUI` implementation for the Windows look and feel.
  + ### locationToIndex

    public int locationToIndex([JList](../../JList.md "class in javax.swing")<?> list,
    [Point](../../../../java/awt/Point.md "class in java.awt") location)

    Returns the cell index in the specified `JList` closest to the
    given location in the list's coordinate system. To determine if the
    cell actually contains the specified location, compare the point against
    the cell's bounds, as provided by `getCellBounds`.
    This method returns `-1` if the list's model is empty.

    Specified by:
    :   `locationToIndex` in class `ListUI`

    Parameters:
    :   `list` - the list
    :   `location` - the coordinates of the point

    Returns:
    :   the cell index closest to the given location, or `-1`

    Throws:
    :   `NullPointerException` - if `location` is null
  + ### indexToLocation

    public [Point](../../../../java/awt/Point.md "class in java.awt") indexToLocation([JList](../../JList.md "class in javax.swing")<?> list,
    int index)

    Returns the origin in the given `JList`, of the specified item,
    in the list's coordinate system.
    Returns `null` if the index isn't valid.

    Specified by:
    :   `indexToLocation` in class `ListUI`

    Parameters:
    :   `list` - the list
    :   `index` - the cell index

    Returns:
    :   the origin of the cell, or `null`
  + ### getCellBounds

    public [Rectangle](../../../../java/awt/Rectangle.md "class in java.awt") getCellBounds([JList](../../JList.md "class in javax.swing")<?> list,
    int index1,
    int index2)

    Returns the bounding rectangle, in the given list's coordinate system,
    for the range of cells specified by the two indices.
    The indices can be supplied in any order.

    If the smaller index is outside the list's range of cells, this method
    returns `null`. If the smaller index is valid, but the larger
    index is outside the list's range, the bounds of just the first index
    is returned. Otherwise, the bounds of the valid range is returned.

    Specified by:
    :   `getCellBounds` in class `ListUI`

    Parameters:
    :   `list` - the list
    :   `index1` - the first index in the range
    :   `index2` - the second index in the range

    Returns:
    :   the bounding rectangle for the range of cells, or `null`
  + ### getRowHeight

    protected int getRowHeight(int row)

    Returns the height of the specified row based on the current layout.

    Parameters:
    :   `row` - a row

    Returns:
    :   the specified row height or -1 if row isn't valid

    See Also:
    :   - [`convertYToRow(int)`](#convertYToRow(int))
        - [`convertRowToY(int)`](#convertRowToY(int))
        - [`updateLayoutState()`](#updateLayoutState())
  + ### convertYToRow

    protected int convertYToRow(int y0)

    Convert the `JList` relative coordinate to the row that contains it,
    based on the current layout. If `y0` doesn't fall within any row,
    return -1.

    Parameters:
    :   `y0` - a relative Y coordinate

    Returns:
    :   the row that contains y0, or -1

    See Also:
    :   - [`getRowHeight(int)`](#getRowHeight(int))
        - [`updateLayoutState()`](#updateLayoutState())
  + ### convertRowToY

    protected int convertRowToY(int row)

    Return the `JList` relative Y coordinate of the origin of the specified
    row or -1 if row isn't valid.

    Parameters:
    :   `row` - a row

    Returns:
    :   the Y coordinate of the origin of row, or -1

    See Also:
    :   - [`getRowHeight(int)`](#getRowHeight(int))
        - [`updateLayoutState()`](#updateLayoutState())
  + ### maybeUpdateLayoutState

    protected void maybeUpdateLayoutState()

    If updateLayoutStateNeeded is non zero, call updateLayoutState() and reset
    updateLayoutStateNeeded. This method should be called by methods
    before doing any computation based on the geometry of the list.
    For example it's the first call in paint() and getPreferredSize().

    See Also:
    :   - [`updateLayoutState()`](#updateLayoutState())
  + ### updateLayoutState

    protected void updateLayoutState()

    Recompute the value of cellHeight or cellHeights based
    and cellWidth, based on the current font and the current
    values of fixedCellWidth, fixedCellHeight, and prototypeCellValue.

    See Also:
    :   - [`maybeUpdateLayoutState()`](#maybeUpdateLayoutState())
  + ### createMouseInputListener

    protected [MouseInputListener](../../event/MouseInputListener.md "interface in javax.swing.event") createMouseInputListener()

    Creates a delegate that implements `MouseInputListener`.
    The delegate is added to the corresponding `java.awt.Component` listener
    lists at `installUI()` time. Subclasses can override this method to return
    a custom `MouseInputListener`, e.g.

    ```
     class MyListUI extends BasicListUI {
        protected MouseInputListener createMouseInputListener() {
            return new MyMouseInputHandler();
        }
        public class MyMouseInputHandler extends MouseInputHandler {
            public void mouseMoved(MouseEvent e) {
                // do some extra work when the mouse moves
                super.mouseMoved(e);
            }
        }
     }
    ```

    Returns:
    :   an instance of `MouseInputListener`

    See Also:
    :   - [`BasicListUI.MouseInputHandler`](BasicListUI.MouseInputHandler.md "class in javax.swing.plaf.basic")
        - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
  + ### createFocusListener

    protected [FocusListener](../../../../java/awt/event/FocusListener.md "interface in java.awt.event") createFocusListener()

    Returns an instance of `FocusListener`.

    Returns:
    :   an instance of `FocusListener`
  + ### createListSelectionListener

    protected [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event") createListSelectionListener()

    Creates an instance of `ListSelectionHandler` that's added to
    the `JLists` by selectionModel as needed. Subclasses can override
    this method to return a custom `ListSelectionListener`, e.g.

    ```
     class MyListUI extends BasicListUI {
        protected ListSelectionListener createListSelectionListener() {
            return new MySelectionListener();
        }
        public class MySelectionListener extends ListSelectionHandler {
            public void valueChanged(ListSelectionEvent e) {
                // do some extra work when the selection changes
                super.valueChange(e);
            }
        }
     }
    ```

    Returns:
    :   an instance of `ListSelectionHandler`

    See Also:
    :   - [`BasicListUI.ListSelectionHandler`](BasicListUI.ListSelectionHandler.md "class in javax.swing.plaf.basic")
        - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
  + ### createListDataListener

    protected [ListDataListener](../../event/ListDataListener.md "interface in javax.swing.event") createListDataListener()

    Creates an instance of `ListDataListener` that's added to
    the `JLists` by model as needed. Subclasses can override
    this method to return a custom `ListDataListener`, e.g.

    ```
     class MyListUI extends BasicListUI {
        protected ListDataListener createListDataListener() {
            return new MyListDataListener();
        }
        public class MyListDataListener extends ListDataHandler {
            public void contentsChanged(ListDataEvent e) {
                // do some extra work when the models contents change
                super.contentsChange(e);
            }
        }
     }
    ```

    Returns:
    :   an instance of `ListDataListener`

    See Also:
    :   - [`ListDataListener`](../../event/ListDataListener.md "interface in javax.swing.event")
        - [`JList.getModel()`](../../JList.md#getModel())
        - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Creates an instance of `PropertyChangeHandler` that's added to
    the `JList` by `installUI()`. Subclasses can override this method
    to return a custom `PropertyChangeListener`, e.g.

    ```
     class MyListUI extends BasicListUI {
        protected PropertyChangeListener createPropertyChangeListener() {
            return new MyPropertyChangeListener();
        }
        public class MyPropertyChangeListener extends PropertyChangeHandler {
            public void propertyChange(PropertyChangeEvent e) {
                if (e.getPropertyName().equals("model")) {
                    // do some extra work when the model changes
                }
                super.propertyChange(e);
            }
        }
     }
    ```

    Returns:
    :   an instance of `PropertyChangeHandler`

    See Also:
    :   - [`PropertyChangeListener`](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")
        - [`installUI(javax.swing.JComponent)`](#installUI(javax.swing.JComponent))