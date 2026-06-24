Module [java.desktop](../../../module-summary.md)

Package [javax.swing.table](package-summary.md)

# Class DefaultTableCellRenderer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../JComponent.md "class in javax.swing")

[javax.swing.JLabel](../JLabel.md "class in javax.swing")

javax.swing.table.DefaultTableCellRenderer

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`, `TableCellRenderer`

Direct Known Subclasses:
:   `DefaultTableCellRenderer.UIResource`

---

public class DefaultTableCellRenderer
extends [JLabel](../JLabel.md "class in javax.swing")
implements [TableCellRenderer](TableCellRenderer.md "interface in javax.swing.table"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The standard class for rendering (displaying) individual cells
in a `JTable`.

**Implementation Note:**
This class inherits from `JLabel`, a standard component class.
However `JTable` employs a unique mechanism for rendering
its cells and therefore requires some slightly modified behavior
from its cell renderer.
The table class defines a single cell renderer and uses it as a
as a rubber-stamp for rendering all cells in the table;
it renders the first cell,
changes the contents of that cell renderer,
shifts the origin to the new location, re-draws it, and so on.
The standard `JLabel` component was not
designed to be used this way and we want to avoid
triggering a `revalidate` each time the
cell is drawn. This would greatly decrease performance because the
`revalidate` message would be
passed up the hierarchy of the container to determine whether any other
components would be affected.
As the renderer is only parented for the lifetime of a painting operation
we similarly want to avoid the overhead associated with walking the
hierarchy for painting operations.
So this class
overrides the `validate`, `invalidate`,
`revalidate`, `repaint`, and
`firePropertyChange` methods to be
no-ops and override the `isOpaque` method solely to improve
performance. If you write your own renderer,
please keep this performance consideration in mind.

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

  `static class`

  `DefaultTableCellRenderer.UIResource`

  A subclass of `DefaultTableCellRenderer` that
  implements `UIResource`.

  ## Nested classes/interfaces inherited from class javax.swing.[JLabel](../JLabel.md "class in javax.swing")

  `JLabel.AccessibleJLabel`

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

  `protected static Border`

  `noFocusBorder`

  A border without focus.

  ### Fields inherited from class javax.swing.[JLabel](../JLabel.md "class in javax.swing")

  `labelFor`

  ### Fields inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[SwingConstants](../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultTableCellRenderer()`

  Creates a default table cell renderer.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `firePropertyChange(String propertyName,
  boolean oldValue,
  boolean newValue)`

  Overridden for performance reasons.

  `protected void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Overridden for performance reasons.

  `Component`

  `getTableCellRendererComponent(JTable table,
  Object value,
  boolean isSelected,
  boolean hasFocus,
  int row,
  int column)`

  Returns the default table cell renderer.

  `void`

  `invalidate()`

  Overridden for performance reasons.

  `boolean`

  `isOpaque()`

  Overridden for performance reasons.

  `void`

  `repaint()`

  Overridden for performance reasons.

  `void`

  `repaint(long tm,
  int x,
  int y,
  int width,
  int height)`

  Overridden for performance reasons.

  `void`

  `repaint(Rectangle r)`

  Overridden for performance reasons.

  `void`

  `revalidate()`

  Overridden for performance reasons.

  `void`

  `setBackground(Color c)`

  Overrides `JComponent.setBackground` to assign
  the unselected-background color to the specified color.

  `void`

  `setForeground(Color c)`

  Overrides `JComponent.setForeground` to assign
  the unselected-foreground color to the specified color.

  `protected void`

  `setValue(Object value)`

  Sets the `String` object for the cell being rendered to
  `value`.

  `void`

  `updateUI()`

  Notification from the `UIManager` that the look and feel
  [L&F] has changed.

  `void`

  `validate()`

  Overridden for performance reasons.

  ### Methods inherited from class javax.swing.[JLabel](../JLabel.md "class in javax.swing")

  `checkHorizontalKey, checkVerticalKey, getAccessibleContext, getDisabledIcon, getDisplayedMnemonic, getDisplayedMnemonicIndex, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getLabelFor, getText, getUI, getUIClassID, getVerticalAlignment, getVerticalTextPosition, imageUpdate, paramString, setDisabledIcon, setDisplayedMnemonic, setDisplayedMnemonic, setDisplayedMnemonicIndex, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabelFor, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### noFocusBorder

    protected static [Border](../border/Border.md "interface in javax.swing.border") noFocusBorder

    A border without focus.
* ## Constructor Details

  + ### DefaultTableCellRenderer

    public DefaultTableCellRenderer()

    Creates a default table cell renderer.
* ## Method Details

  + ### setForeground

    public void setForeground([Color](../../../java/awt/Color.md "class in java.awt") c)

    Overrides `JComponent.setForeground` to assign
    the unselected-foreground color to the specified color.

    Overrides:
    :   `setForeground` in class `JComponent`

    Parameters:
    :   `c` - set the foreground color to this value

    See Also:
    :   - [`Component.getForeground()`](../../../java/awt/Component.md#getForeground())
  + ### setBackground

    public void setBackground([Color](../../../java/awt/Color.md "class in java.awt") c)

    Overrides `JComponent.setBackground` to assign
    the unselected-background color to the specified color.

    Overrides:
    :   `setBackground` in class `JComponent`

    Parameters:
    :   `c` - set the background color to this value

    See Also:
    :   - [`Component.getBackground()`](../../../java/awt/Component.md#getBackground())
        - [`JComponent.setOpaque(boolean)`](../JComponent.md#setOpaque(boolean))
  + ### updateUI

    public void updateUI()

    Notification from the `UIManager` that the look and feel
    [L&F] has changed.
    Replaces the current UI object with the latest version from the
    `UIManager`.

    Overrides:
    :   `updateUI` in class `JLabel`

    See Also:
    :   - [`JComponent.updateUI()`](../JComponent.md#updateUI())
  + ### getTableCellRendererComponent

    public [Component](../../../java/awt/Component.md "class in java.awt") getTableCellRendererComponent([JTable](../JTable.md "class in javax.swing") table,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value,
    boolean isSelected,
    boolean hasFocus,
    int row,
    int column)

    Returns the default table cell renderer.

    During a printing operation, this method will be called with
    `isSelected` and `hasFocus` values of
    `false` to prevent selection and focus from appearing
    in the printed output. To do other customization based on whether
    or not the table is being printed, check the return value from
    [`JComponent.isPaintingForPrint()`](../JComponent.md#isPaintingForPrint()).

    Specified by:
    :   `getTableCellRendererComponent` in interface `TableCellRenderer`

    Parameters:
    :   `table` - the `JTable`
    :   `value` - the value to assign to the cell at
        `[row, column]`
    :   `isSelected` - true if cell is selected
    :   `hasFocus` - true if cell has focus
    :   `row` - the row of the cell to render
    :   `column` - the column of the cell to render

    Returns:
    :   the default table cell renderer

    See Also:
    :   - [`JComponent.isPaintingForPrint()`](../JComponent.md#isPaintingForPrint())
  + ### isOpaque

    public boolean isOpaque()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `isOpaque` in class `JComponent`

    Returns:
    :   true if this component is completely opaque

    See Also:
    :   - [`JComponent.setOpaque(boolean)`](../JComponent.md#setOpaque(boolean))
  + ### invalidate

    public void invalidate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `invalidate` in class `Container`

    Since:
    :   1.5

    See Also:
    :   - [`Container.validate()`](../../../java/awt/Container.md#validate())
        - [`Container.layout()`](../../../java/awt/Container.md#layout())
        - [`LayoutManager2`](../../../java/awt/LayoutManager2.md "interface in java.awt")
  + ### validate

    public void validate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `validate` in class `Container`

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.invalidate()`](../../../java/awt/Container.md#invalidate())
        - [`Container.isValidateRoot()`](../../../java/awt/Container.md#isValidateRoot())
        - [`JComponent.revalidate()`](../JComponent.md#revalidate())
        - [`Container.validateTree()`](../../../java/awt/Container.md#validateTree())
  + ### revalidate

    public void revalidate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `revalidate` in class `JComponent`

    See Also:
    :   - [`Component.invalidate()`](../../../java/awt/Component.md#invalidate())
        - [`Container.validate()`](../../../java/awt/Container.md#validate())
        - [`JComponent.isValidateRoot()`](../JComponent.md#isValidateRoot())
        - [`RepaintManager.addInvalidComponent(javax.swing.JComponent)`](../RepaintManager.md#addInvalidComponent(javax.swing.JComponent))
  + ### repaint

    public void repaint(long tm,
    int x,
    int y,
    int width,
    int height)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `repaint` in class `JComponent`

    Parameters:
    :   `tm` - this parameter is not used
    :   `x` - the x value of the dirty region
    :   `y` - the y value of the dirty region
    :   `width` - the width of the dirty region
    :   `height` - the height of the dirty region

    See Also:
    :   - [`JComponent.isPaintingOrigin()`](../JComponent.md#isPaintingOrigin())
        - [`Component.isShowing()`](../../../java/awt/Component.md#isShowing())
        - [`RepaintManager.addDirtyRegion(javax.swing.JComponent, int, int, int, int)`](../RepaintManager.md#addDirtyRegion(javax.swing.JComponent,int,int,int,int))
  + ### repaint

    public void repaint([Rectangle](../../../java/awt/Rectangle.md "class in java.awt") r)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `repaint` in class `JComponent`

    Parameters:
    :   `r` - a `Rectangle` containing the dirty region

    See Also:
    :   - [`JComponent.isPaintingOrigin()`](../JComponent.md#isPaintingOrigin())
        - [`Component.isShowing()`](../../../java/awt/Component.md#isShowing())
        - [`RepaintManager.addDirtyRegion(javax.swing.JComponent, int, int, int, int)`](../RepaintManager.md#addDirtyRegion(javax.swing.JComponent,int,int,int,int))
  + ### repaint

    public void repaint()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `repaint` in class `Component`

    Since:
    :   1.5

    See Also:
    :   - [`Component.update(Graphics)`](../../../java/awt/Component.md#update(java.awt.Graphics))
  + ### firePropertyChange

    protected void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the property whose value has changed
    :   `oldValue` - the property's previous value
    :   `newValue` - the property's new value
  + ### firePropertyChange

    public void firePropertyChange([String](../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    boolean oldValue,
    boolean newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `JComponent`

    Parameters:
    :   `propertyName` - the property whose value has changed
    :   `oldValue` - the property's previous value
    :   `newValue` - the property's new value
  + ### setValue

    protected void setValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the `String` object for the cell being rendered to
    `value`.

    Parameters:
    :   `value` - the string value for this cell; if value is
        `null` it sets the text value to an empty string

    See Also:
    :   - [`JLabel.setText(java.lang.String)`](../JLabel.md#setText(java.lang.String))