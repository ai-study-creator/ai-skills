Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Class JTableHeader

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../JComponent.md "class in javax.swing")

javax.swing.table.JTableHeader

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `EventListener`, `Accessible`, `TableColumnModelListener`

---

public class JTableHeader
extends [JComponent](../JComponent.md "class in javax.swing")
implements [TableColumnModelListener](../event/TableColumnModelListener.md "interface in javax.swing.event"), [Accessible](../../accessibility/Accessible.md "interface in javax.accessibility")

This is the object which manages the header of the `JTable`.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`JTable`](../JTable.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JTableHeader.AccessibleJTableHeader`

  This class implements accessibility support for the
  `JTableHeader` class.

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected TableColumnModel`

  `columnModel`

  The `TableColumnModel` of the table header.

  `protected TableColumn`

  `draggedColumn`

  The index of the column being dragged.

  `protected int`

  `draggedDistance`

  The distance from its original position the column has been dragged.

  `protected boolean`

  `reorderingAllowed`

  If true, reordering of columns are allowed by the user;
  the default is true.

  `protected boolean`

  `resizingAllowed`

  If true, resizing of columns are allowed by the user;
  the default is true.

  `protected TableColumn`

  `resizingColumn`

  The index of the column being resized.

  `protected JTable`

  `table`

  The table for which this object is the header;
  the default is `null`.

  `protected boolean`

  `updateTableInRealTime`

  Obsolete as of Java 2 platform v1.3.

  ### Fields inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JTableHeader()`

  Constructs a `JTableHeader` with a default
  `TableColumnModel`.

  `JTableHeader(TableColumnModel cm)`

  Constructs a `JTableHeader` which is initialized with
  `cm` as the column model.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `columnAdded(TableColumnModelEvent e)`

  Invoked when a column is added to the table column model.

  `int`

  `columnAtPoint(Point point)`

  Returns the index of the column that `point` lies in, or -1 if it
  lies out of bounds.

  `void`

  `columnMarginChanged(ChangeEvent e)`

  Invoked when a column is moved due to a margin change.

  `void`

  `columnMoved(TableColumnModelEvent e)`

  Invoked when a column is repositioned.

  `void`

  `columnRemoved(TableColumnModelEvent e)`

  Invoked when a column is removed from the table column model.

  `void`

  `columnSelectionChanged(ListSelectionEvent e)`

  Invoked when the selection model of the `TableColumnModel`
  is changed.

  `protected TableColumnModel`

  `createDefaultColumnModel()`

  Returns the default column model object which is
  a `DefaultTableColumnModel`.

  `protected TableCellRenderer`

  `createDefaultRenderer()`

  Returns a default renderer to be used when no header renderer
  is defined by a `TableColumn`.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JTableHeader.

  `TableColumnModel`

  `getColumnModel()`

  Returns the `TableColumnModel` that contains all column information
  of this table header.

  `TableCellRenderer`

  `getDefaultRenderer()`

  Returns the default renderer used when no `headerRenderer`
  is defined by a `TableColumn`.

  `TableColumn`

  `getDraggedColumn()`

  Returns the dragged column, if and only if, a drag is in
  process, otherwise returns `null`.

  `int`

  `getDraggedDistance()`

  Returns the column's horizontal distance from its original
  position, if and only if, a drag is in process.

  `Rectangle`

  `getHeaderRect(int column)`

  Returns the rectangle containing the header tile at `column`.

  `Dimension`

  `getPreferredSize()`

  Returns the preferred size of the table header.

  `boolean`

  `getReorderingAllowed()`

  Returns true if the user is allowed to rearrange columns by
  dragging their headers, false otherwise.

  `boolean`

  `getResizingAllowed()`

  Returns true if the user is allowed to resize columns by dragging
  between their headers, false otherwise.

  `TableColumn`

  `getResizingColumn()`

  Returns the resizing column.

  `JTable`

  `getTable()`

  Returns the table associated with this header.

  `String`

  `getToolTipText(MouseEvent event)`

  Allows the renderer's tips to be used if there is text set.

  `TableHeaderUI`

  `getUI()`

  Returns the look and feel (L&F) object that renders this component.

  `String`

  `getUIClassID()`

  Returns the suffix used to construct the name of the look and feel
  (L&F) class used to render this component.

  `boolean`

  `getUpdateTableInRealTime()`

  Obsolete as of Java 2 platform v1.3.

  `protected void`

  `initializeLocalVars()`

  Initializes the local variables and properties with default values.

  `protected String`

  `paramString()`

  Returns a string representation of this `JTableHeader`.

  `void`

  `resizeAndRepaint()`

  Sizes the header and marks it as needing display.

  `void`

  `setColumnModel(TableColumnModel columnModel)`

  Sets the column model for this table to `newModel` and registers
  for listener notifications from the new column model.

  `void`

  `setDefaultRenderer(TableCellRenderer defaultRenderer)`

  Sets the default renderer to be used when no `headerRenderer`
  is defined by a `TableColumn`.

  `void`

  `setDraggedColumn(TableColumn aColumn)`

  Sets the header's `draggedColumn` to `aColumn`.

  `void`

  `setDraggedDistance(int distance)`

  Sets the header's `draggedDistance` to `distance`.

  `void`

  `setReorderingAllowed(boolean reorderingAllowed)`

  Sets whether the user can drag column headers to reorder columns.

  `void`

  `setResizingAllowed(boolean resizingAllowed)`

  Sets whether the user can resize columns by dragging between headers.

  `void`

  `setResizingColumn(TableColumn aColumn)`

  Sets the header's `resizingColumn` to `aColumn`.

  `void`

  `setTable(JTable table)`

  Sets the table associated with this header.

  `void`

  `setUI(TableHeaderUI ui)`

  Sets the look and feel (L&F) object that renders this component.

  `void`

  `setUpdateTableInRealTime(boolean flag)`

  Obsolete as of Java 2 platform v1.3.

  `void`

  `updateUI()`

  Notification from the `UIManager` that the look and feel
  (L&F) has changed.

  ### Methods inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### table

    protected [JTable](../JTable.md "class in javax.swing") table

    The table for which this object is the header;
    the default is `null`.
  + ### columnModel

    protected [TableColumnModel](TableColumnModel.md "interface in javax.swing.table") columnModel

    The `TableColumnModel` of the table header.
  + ### reorderingAllowed

    protected boolean reorderingAllowed

    If true, reordering of columns are allowed by the user;
    the default is true.
  + ### resizingAllowed

    protected boolean resizingAllowed

    If true, resizing of columns are allowed by the user;
    the default is true.
  + ### updateTableInRealTime

    protected boolean updateTableInRealTime

    Obsolete as of Java 2 platform v1.3. Real time repaints, in response
    to column dragging or resizing, are now unconditional.
  + ### resizingColumn

    protected transient [TableColumn](TableColumn.md "class in javax.swing.table") resizingColumn

    The index of the column being resized. `null` if not resizing.
  + ### draggedColumn

    protected transient [TableColumn](TableColumn.md "class in javax.swing.table") draggedColumn

    The index of the column being dragged. `null` if not dragging.
  + ### draggedDistance

    protected transient int draggedDistance

    The distance from its original position the column has been dragged.
* ## Constructor Details

  + ### JTableHeader

    public JTableHeader()

    Constructs a `JTableHeader` with a default
    `TableColumnModel`.

    See Also:
    :   - [`createDefaultColumnModel()`](#createDefaultColumnModel())
  + ### JTableHeader

    public JTableHeader([TableColumnModel](TableColumnModel.md "interface in javax.swing.table") cm)

    Constructs a `JTableHeader` which is initialized with
    `cm` as the column model. If `cm` is
    `null` this method will initialize the table header
    with a default `TableColumnModel`.

    Parameters:
    :   `cm` - the column model for the table

    See Also:
    :   - [`createDefaultColumnModel()`](#createDefaultColumnModel())
* ## Method Details

  + ### setTable

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="The table associated with this header.")
    public void setTable([JTable](../JTable.md "class in javax.swing") table)

    Sets the table associated with this header.

    Parameters:
    :   `table` - the new table
  + ### getTable

    public [JTable](../JTable.md "class in javax.swing") getTable()

    Returns the table associated with this header.

    Returns:
    :   the `table` property
  + ### setReorderingAllowed

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="Whether the user can drag column headers to reorder columns.")
    public void setReorderingAllowed(boolean reorderingAllowed)

    Sets whether the user can drag column headers to reorder columns.

    Parameters:
    :   `reorderingAllowed` - true if the table view should allow
        reordering; otherwise false

    See Also:
    :   - [`getReorderingAllowed()`](#getReorderingAllowed())
  + ### getReorderingAllowed

    public boolean getReorderingAllowed()

    Returns true if the user is allowed to rearrange columns by
    dragging their headers, false otherwise. The default is true. You can
    rearrange columns programmatically regardless of this setting.

    Returns:
    :   the `reorderingAllowed` property

    See Also:
    :   - [`setReorderingAllowed(boolean)`](#setReorderingAllowed(boolean))
  + ### setResizingAllowed

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="Whether the user can resize columns by dragging between headers.")
    public void setResizingAllowed(boolean resizingAllowed)

    Sets whether the user can resize columns by dragging between headers.

    Parameters:
    :   `resizingAllowed` - true if table view should allow
        resizing

    See Also:
    :   - [`getResizingAllowed()`](#getResizingAllowed())
  + ### getResizingAllowed

    public boolean getResizingAllowed()

    Returns true if the user is allowed to resize columns by dragging
    between their headers, false otherwise. The default is true. You can
    resize columns programmatically regardless of this setting.

    Returns:
    :   the `resizingAllowed` property

    See Also:
    :   - [`setResizingAllowed(boolean)`](#setResizingAllowed(boolean))
  + ### getDraggedColumn

    public [TableColumn](TableColumn.md "class in javax.swing.table") getDraggedColumn()

    Returns the dragged column, if and only if, a drag is in
    process, otherwise returns `null`.

    Returns:
    :   the dragged column, if a drag is in
        process, otherwise returns `null`

    See Also:
    :   - [`getDraggedDistance()`](#getDraggedDistance())
  + ### getDraggedDistance

    public int getDraggedDistance()

    Returns the column's horizontal distance from its original
    position, if and only if, a drag is in process. Otherwise, the
    the return value is meaningless.

    Returns:
    :   the column's horizontal distance from its original
        position, if a drag is in process, otherwise the return
        value is meaningless

    See Also:
    :   - [`getDraggedColumn()`](#getDraggedColumn())
  + ### getResizingColumn

    public [TableColumn](TableColumn.md "class in javax.swing.table") getResizingColumn()

    Returns the resizing column. If no column is being
    resized this method returns `null`.

    Returns:
    :   the resizing column, if a resize is in process, otherwise
        returns `null`
  + ### setUpdateTableInRealTime

    public void setUpdateTableInRealTime(boolean flag)

    Obsolete as of Java 2 platform v1.3. Real time repaints, in response to
    column dragging or resizing, are now unconditional.

    Parameters:
    :   `flag` - true if tableView should update the body of the
        table in real time
  + ### getUpdateTableInRealTime

    public boolean getUpdateTableInRealTime()

    Obsolete as of Java 2 platform v1.3. Real time repaints, in response to
    column dragging or resizing, are now unconditional.

    Returns:
    :   true if the table updates in real time
  + ### setDefaultRenderer

    public void setDefaultRenderer([TableCellRenderer](TableCellRenderer.md "interface in javax.swing.table") defaultRenderer)

    Sets the default renderer to be used when no `headerRenderer`
    is defined by a `TableColumn`.

    Parameters:
    :   `defaultRenderer` - the default renderer

    Since:
    :   1.3
  + ### getDefaultRenderer

    public [TableCellRenderer](TableCellRenderer.md "interface in javax.swing.table") getDefaultRenderer()

    Returns the default renderer used when no `headerRenderer`
    is defined by a `TableColumn`.

    Returns:
    :   the default renderer

    Since:
    :   1.3
  + ### columnAtPoint

    public int columnAtPoint([Point](../../../java/awt/Point.md "class in java.awt") point)

    Returns the index of the column that `point` lies in, or -1 if it
    lies out of bounds.

    Parameters:
    :   `point` - if this `point` lies within a column, the index of
        that column will be returned; otherwise it is out of bounds
        and -1 is returned

    Returns:
    :   the index of the column that `point` lies in, or -1 if it
        lies out of bounds
  + ### getHeaderRect

    public [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getHeaderRect(int column)

    Returns the rectangle containing the header tile at `column`.
    When the `column` parameter is out of bounds this method uses the
    same conventions as the `JTable` method `getCellRect`.

    Parameters:
    :   `column` - index of the column

    Returns:
    :   the rectangle containing the header tile at `column`

    See Also:
    :   - [`JTable.getCellRect(int, int, boolean)`](../JTable.md#getCellRect(int,int,boolean))
  + ### getToolTipText

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getToolTipText([MouseEvent](../../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Allows the renderer's tips to be used if there is text set.

    Overrides:
    :   `getToolTipText` in class `JComponent`

    Parameters:
    :   `event` - the location of the event identifies the proper
        renderer and, therefore, the proper tip

    Returns:
    :   the tool tip for this component
  + ### getPreferredSize

    public [Dimension](../../../java/awt/Dimension.md "class in java.awt") getPreferredSize()

    Returns the preferred size of the table header.
    This is the size required to display the header and requested for
    the viewport.
    The returned `Dimension` `width` will always be calculated by
    the underlying TableHeaderUI, regardless of any width specified by
    [`JComponent.setPreferredSize(java.awt.Dimension)`](../JComponent.md#setPreferredSize(java.awt.Dimension))

    Overrides:
    :   `getPreferredSize` in class `JComponent`

    Returns:
    :   the size

    See Also:
    :   - [`JComponent.setPreferredSize(java.awt.Dimension)`](../JComponent.md#setPreferredSize(java.awt.Dimension))
        - [`ComponentUI`](../plaf/ComponentUI.md "class in javax.swing.plaf")
  + ### getUI

    public [TableHeaderUI](../plaf/TableHeaderUI.md "class in javax.swing.plaf") getUI()

    Returns the look and feel (L&F) object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `TableHeaderUI` object that renders this component
  + ### setUI

    public void setUI([TableHeaderUI](../plaf/TableHeaderUI.md "class in javax.swing.plaf") ui)

    Sets the look and feel (L&F) object that renders this component.

    Parameters:
    :   `ui` - the `TableHeaderUI` L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](../UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Notification from the `UIManager` that the look and feel
    (L&F) has changed.
    Replaces the current UI object with the latest version from the
    `UIManager`.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](../JComponent.md#updateUI())
  + ### getUIClassID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the suffix used to construct the name of the look and feel
    (L&F) class used to render this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "TableHeaderUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](../JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](../UIDefaults.md#getUI(javax.swing.JComponent))
  + ### setColumnModel

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="The object governing the way columns appear in the view.")
    public void setColumnModel([TableColumnModel](TableColumnModel.md "interface in javax.swing.table") columnModel)

    Sets the column model for this table to `newModel` and registers
    for listener notifications from the new column model.

    Parameters:
    :   `columnModel` - the new data source for this table

    Throws:
    :   `IllegalArgumentException` - if `newModel` is `null`

    See Also:
    :   - [`getColumnModel()`](#getColumnModel())
  + ### getColumnModel

    public [TableColumnModel](TableColumnModel.md "interface in javax.swing.table") getColumnModel()

    Returns the `TableColumnModel` that contains all column information
    of this table header.

    Returns:
    :   the `columnModel` property

    See Also:
    :   - [`setColumnModel(javax.swing.table.TableColumnModel)`](#setColumnModel(javax.swing.table.TableColumnModel))
  + ### columnAdded

    public void columnAdded([TableColumnModelEvent](../event/TableColumnModelEvent.md "class in javax.swing.event") e)

    Invoked when a column is added to the table column model.

    Application code will not use these methods explicitly, they
    are used internally by `JTable`.

    Specified by:
    :   `columnAdded` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - the event received

    See Also:
    :   - [`TableColumnModelListener`](../event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### columnRemoved

    public void columnRemoved([TableColumnModelEvent](../event/TableColumnModelEvent.md "class in javax.swing.event") e)

    Invoked when a column is removed from the table column model.

    Application code will not use these methods explicitly, they
    are used internally by `JTable`.

    Specified by:
    :   `columnRemoved` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - the event received

    See Also:
    :   - [`TableColumnModelListener`](../event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### columnMoved

    public void columnMoved([TableColumnModelEvent](../event/TableColumnModelEvent.md "class in javax.swing.event") e)

    Invoked when a column is repositioned.

    Application code will not use these methods explicitly, they
    are used internally by `JTable`.

    Specified by:
    :   `columnMoved` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - the event received

    See Also:
    :   - [`TableColumnModelListener`](../event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### columnMarginChanged

    public void columnMarginChanged([ChangeEvent](../event/ChangeEvent.md "class in javax.swing.event") e)

    Invoked when a column is moved due to a margin change.

    Application code will not use these methods explicitly, they
    are used internally by `JTable`.

    Specified by:
    :   `columnMarginChanged` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - the event received

    See Also:
    :   - [`TableColumnModelListener`](../event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### columnSelectionChanged

    public void columnSelectionChanged([ListSelectionEvent](../event/ListSelectionEvent.md "class in javax.swing.event") e)

    Invoked when the selection model of the `TableColumnModel`
    is changed. This method currently has no effect (the header is not
    redrawn).

    Application code will not use these methods explicitly, they
    are used internally by `JTable`.

    Specified by:
    :   `columnSelectionChanged` in interface `TableColumnModelListener`

    Parameters:
    :   `e` - the event received

    See Also:
    :   - [`TableColumnModelListener`](../event/TableColumnModelListener.md "interface in javax.swing.event")
  + ### createDefaultColumnModel

    protected [TableColumnModel](TableColumnModel.md "interface in javax.swing.table") createDefaultColumnModel()

    Returns the default column model object which is
    a `DefaultTableColumnModel`. A subclass can override this
    method to return a different column model object

    Returns:
    :   the default column model object
  + ### createDefaultRenderer

    protected [TableCellRenderer](TableCellRenderer.md "interface in javax.swing.table") createDefaultRenderer()

    Returns a default renderer to be used when no header renderer
    is defined by a `TableColumn`.

    Returns:
    :   the default table column renderer

    Since:
    :   1.3
  + ### initializeLocalVars

    protected void initializeLocalVars()

    Initializes the local variables and properties with default values.
    Used by the constructor methods.
  + ### resizeAndRepaint

    public void resizeAndRepaint()

    Sizes the header and marks it as needing display. Equivalent
    to `revalidate` followed by `repaint`.
  + ### setDraggedColumn

    public void setDraggedColumn([TableColumn](TableColumn.md "class in javax.swing.table") aColumn)

    Sets the header's `draggedColumn` to `aColumn`.

    Application code will not use this method explicitly, it is used
    internally by the column dragging mechanism.

    Parameters:
    :   `aColumn` - the column being dragged, or `null` if
        no column is being dragged
  + ### setDraggedDistance

    public void setDraggedDistance(int distance)

    Sets the header's `draggedDistance` to `distance`.

    Parameters:
    :   `distance` - the distance dragged
  + ### setResizingColumn

    public void setResizingColumn([TableColumn](TableColumn.md "class in javax.swing.table") aColumn)

    Sets the header's `resizingColumn` to `aColumn`.

    Application code will not use this method explicitly, it
    is used internally by the column sizing mechanism.

    Parameters:
    :   `aColumn` - the column being resized, or `null` if
        no column is being resized
  + ### paramString

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JTableHeader`. This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overriding `paramString` to provide information about the
    specific new aspects of the JFC components.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JTableHeader`
  + ### getAccessibleContext

    public [AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JTableHeader.
    For JTableHeaders, the AccessibleContext takes the form of an
    AccessibleJTableHeader.
    A new AccessibleJTableHeader instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJTableHeader that serves as the
        AccessibleContext of this JTableHeader