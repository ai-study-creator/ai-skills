Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DefaultListCellRenderer

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.JLabel](JLabel.md "class in javax.swing")

javax.swing.DefaultListCellRenderer

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `ListCellRenderer<Object>`, `SwingConstants`

Direct Known Subclasses:
:   `DefaultListCellRenderer.UIResource`, `MetalFileChooserUI.FileRenderer`, `MetalFileChooserUI.FilterComboBoxRenderer`

---

public class DefaultListCellRenderer
extends [JLabel](JLabel.md "class in javax.swing")
implements [ListCellRenderer](ListCellRenderer.md "interface in javax.swing")<[Object](../../../java.base/java/lang/Object.md "class in java.lang")>, [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Renders an item in a list.

**Implementation Note:**
This class overrides
`invalidate`,
`validate`,
`revalidate`,
`repaint`,
`isOpaque`,
and
`firePropertyChange`
solely to improve performance.
If not overridden, these frequently called methods would execute code paths
that are unnecessary for the default list cell renderer.
If you write your own renderer,
take care to weigh the benefits and
drawbacks of overriding these methods.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `DefaultListCellRenderer.UIResource`

  A subclass of DefaultListCellRenderer that implements UIResource.

  ## Nested classes/interfaces inherited from class javax.swing.[JLabel](JLabel.md "class in javax.swing")

  `JLabel.AccessibleJLabel`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static Border`

  `noFocusBorder`

  No focus border

  ### Fields inherited from class javax.swing.[JLabel](JLabel.md "class in javax.swing")

  `labelFor`

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[SwingConstants](SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultListCellRenderer()`

  Constructs a default renderer object for an item
  in a list.
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

  `void`

  `firePropertyChange(String propertyName,
  byte oldValue,
  byte newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  char oldValue,
  char newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  double oldValue,
  double newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  float oldValue,
  float newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  int oldValue,
  int newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  long oldValue,
  long newValue)`

  Overridden for performance reasons.

  `void`

  `firePropertyChange(String propertyName,
  short oldValue,
  short newValue)`

  Overridden for performance reasons.

  `protected void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Overridden for performance reasons.

  `Component`

  `getListCellRendererComponent(JList<?> list,
  Object value,
  int index,
  boolean isSelected,
  boolean cellHasFocus)`

  Return a component that has been configured to display the specified
  value.

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

  `validate()`

  Overridden for performance reasons.

  ### Methods inherited from class javax.swing.[JLabel](JLabel.md "class in javax.swing")

  `checkHorizontalKey, checkVerticalKey, getAccessibleContext, getDisabledIcon, getDisplayedMnemonic, getDisplayedMnemonicIndex, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getLabelFor, getText, getUI, getUIClassID, getVerticalAlignment, getVerticalTextPosition, imageUpdate, paramString, setDisabledIcon, setDisplayedMnemonic, setDisplayedMnemonic, setDisplayedMnemonicIndex, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabelFor, setText, setUI, setVerticalAlignment, setVerticalTextPosition, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### noFocusBorder

    protected static [Border](border/Border.md "interface in javax.swing.border") noFocusBorder

    No focus border
* ## Constructor Details

  + ### DefaultListCellRenderer

    public DefaultListCellRenderer()

    Constructs a default renderer object for an item
    in a list.
* ## Method Details

  + ### getListCellRendererComponent

    public [Component](../../java/awt/Component.md "class in java.awt") getListCellRendererComponent([JList](JList.md "class in javax.swing")<?> list,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") value,
    int index,
    boolean isSelected,
    boolean cellHasFocus)

    Description copied from interface: `ListCellRenderer`

    Return a component that has been configured to display the specified
    value. That component's `paint` method is then called to
    "render" the cell. If it is necessary to compute the dimensions
    of a list because the list cells do not have a fixed size, this method
    is called to generate a component on which `getPreferredSize`
    can be invoked.

    Specified by:
    :   `getListCellRendererComponent` in interface `ListCellRenderer<Object>`

    Parameters:
    :   `list` - The JList we're painting.
    :   `value` - The value returned by list.getModel().getElementAt(index).
    :   `index` - The cells index.
    :   `isSelected` - True if the specified cell was selected.
    :   `cellHasFocus` - True if the specified cell has the focus.

    Returns:
    :   A component whose paint() method will render the specified value.

    See Also:
    :   - [`JList`](JList.md "class in javax.swing")
        - [`ListSelectionModel`](ListSelectionModel.md "interface in javax.swing")
        - [`ListModel`](ListModel.md "interface in javax.swing")
  + ### isOpaque

    public boolean isOpaque()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `isOpaque` in class `JComponent`

    Returns:
    :   `true` if the background is completely opaque
        and differs from the JList's background;
        `false` otherwise

    Since:
    :   1.5

    See Also:
    :   - [`JComponent.setOpaque(boolean)`](JComponent.md#setOpaque(boolean))
  + ### validate

    public void validate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `validate` in class `Container`

    See Also:
    :   - [`Container.add(java.awt.Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`Container.isValidateRoot()`](../../java/awt/Container.md#isValidateRoot())
        - [`JComponent.revalidate()`](JComponent.md#revalidate())
        - [`Container.validateTree()`](../../java/awt/Container.md#validateTree())
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
    :   - [`Container.validate()`](../../java/awt/Container.md#validate())
        - [`Container.layout()`](../../java/awt/Container.md#layout())
        - [`LayoutManager2`](../../java/awt/LayoutManager2.md "interface in java.awt")
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
    :   - [`Component.update(Graphics)`](../../java/awt/Component.md#update(java.awt.Graphics))
  + ### revalidate

    public void revalidate()

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `revalidate` in class `JComponent`

    See Also:
    :   - [`Component.invalidate()`](../../java/awt/Component.md#invalidate())
        - [`Container.validate()`](../../java/awt/Container.md#validate())
        - [`JComponent.isValidateRoot()`](JComponent.md#isValidateRoot())
        - [`RepaintManager.addInvalidComponent(javax.swing.JComponent)`](RepaintManager.md#addInvalidComponent(javax.swing.JComponent))
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
    :   - [`JComponent.isPaintingOrigin()`](JComponent.md#isPaintingOrigin())
        - [`Component.isShowing()`](../../java/awt/Component.md#isShowing())
        - [`RepaintManager.addDirtyRegion(javax.swing.JComponent, int, int, int, int)`](RepaintManager.md#addDirtyRegion(javax.swing.JComponent,int,int,int,int))
  + ### repaint

    public void repaint([Rectangle](../../java/awt/Rectangle.md "class in java.awt") r)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `repaint` in class `JComponent`

    Parameters:
    :   `r` - a `Rectangle` containing the dirty region

    See Also:
    :   - [`JComponent.isPaintingOrigin()`](JComponent.md#isPaintingOrigin())
        - [`Component.isShowing()`](../../java/awt/Component.md#isShowing())
        - [`RepaintManager.addDirtyRegion(javax.swing.JComponent, int, int, int, int)`](RepaintManager.md#addDirtyRegion(javax.swing.JComponent,int,int,int,int))
  + ### firePropertyChange

    protected void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

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

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    byte oldValue,
    byte newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a byte)
    :   `newValue` - the new value of the property (as a byte)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    char oldValue,
    char newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `JComponent`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a char)
    :   `newValue` - the new value of the property (as a char)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    short oldValue,
    short newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a short)
    :   `newValue` - the new value of the property (as a short)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    int oldValue,
    int newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `JComponent`

    Parameters:
    :   `propertyName` - the property whose value has changed
    :   `oldValue` - the property's previous value
    :   `newValue` - the property's new value
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    long oldValue,
    long newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a long)
    :   `newValue` - the new value of the property (as a long)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    float oldValue,
    float newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a float)
    :   `newValue` - the new value of the property (as a float)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    double oldValue,
    double newValue)

    Overridden for performance reasons.
    See the [Implementation Note](#override)
    for more information.

    Overrides:
    :   `firePropertyChange` in class `Component`

    Parameters:
    :   `propertyName` - the programmatic name of the property
        that was changed
    :   `oldValue` - the old value of the property (as a double)
    :   `newValue` - the new value of the property (as a double)

    See Also:
    :   - [`Component.firePropertyChange(java.lang.String, java.lang.Object, java.lang.Object)`](../../java/awt/Component.md#firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object))
  + ### firePropertyChange

    public void firePropertyChange([String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
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