Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxButton

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../../JComponent.md "class in javax.swing")

[javax.swing.AbstractButton](../../AbstractButton.md "class in javax.swing")

[javax.swing.JButton](../../JButton.md "class in javax.swing")

javax.swing.plaf.metal.MetalComboBoxButton

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`

---

public class MetalComboBoxButton
extends [JButton](../../JButton.md "class in javax.swing")

JButton subclass to help out MetalComboBoxUI

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`MetalComboBoxButton`](MetalComboBoxButton.md "class in javax.swing.plaf.metal")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JButton](../../JButton.md "class in javax.swing")

  `JButton.AccessibleJButton`

  ## Nested classes/interfaces inherited from class javax.swing.[AbstractButton](../../AbstractButton.md "class in javax.swing")

  `AbstractButton.AccessibleAbstractButton, AbstractButton.ButtonChangeListener`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected JComboBox<Object>`

  `comboBox`

  The instance of `JComboBox`.

  `protected Icon`

  `comboIcon`

  The icon.

  `protected boolean`

  `iconOnly`

  The `iconOnly` value.

  `protected JList<Object>`

  `listBox`

  The instance of `JList`.

  `protected CellRendererPane`

  `rendererPane`

  The instance of `CellRendererPane`.

  ### Fields inherited from class javax.swing.[AbstractButton](../../AbstractButton.md "class in javax.swing")

  `actionListener, BORDER_PAINTED_CHANGED_PROPERTY, changeEvent, changeListener, CONTENT_AREA_FILLED_CHANGED_PROPERTY, DISABLED_ICON_CHANGED_PROPERTY, DISABLED_SELECTED_ICON_CHANGED_PROPERTY, FOCUS_PAINTED_CHANGED_PROPERTY, HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY, HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY, ICON_CHANGED_PROPERTY, itemListener, MARGIN_CHANGED_PROPERTY, MNEMONIC_CHANGED_PROPERTY, model, MODEL_CHANGED_PROPERTY, PRESSED_ICON_CHANGED_PROPERTY, ROLLOVER_ENABLED_CHANGED_PROPERTY, ROLLOVER_ICON_CHANGED_PROPERTY, ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY, SELECTED_ICON_CHANGED_PROPERTY, TEXT_CHANGED_PROPERTY, VERTICAL_ALIGNMENT_CHANGED_PROPERTY, VERTICAL_TEXT_POSITION_CHANGED_PROPERTY`

  ### Fields inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`

  ### Fields inherited from interface javax.swing.[SwingConstants](../../SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalComboBoxButton(JComboBox<Object> cb,
  Icon i,
  boolean onlyIcon,
  CellRendererPane pane,
  JList<Object> list)`

  Constructs a new instance of `MetalComboBoxButton`.

  `MetalComboBoxButton(JComboBox<Object> cb,
  Icon i,
  CellRendererPane pane,
  JList<Object> list)`

  Constructs a new instance of `MetalComboBoxButton`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final JComboBox<Object>`

  `getComboBox()`

  Returns the `JComboBox`.

  `final Icon`

  `getComboIcon()`

  Returns the icon of the `JComboBox`.

  `Dimension`

  `getMinimumSize()`

  If the minimum size has been set to a non-`null` value
  just returns it.

  `boolean`

  `isFocusTraversable()`

  Returns whether this `Component` can become the focus
  owner.

  `final boolean`

  `isIconOnly()`

  Returns the `isIconOnly` value.

  `void`

  `paintComponent(Graphics g)`

  Calls the UI delegate's paint method, if the UI delegate
  is non-`null`.

  `final void`

  `setComboBox(JComboBox<Object> cb)`

  Sets the `JComboBox`.

  `final void`

  `setComboIcon(Icon i)`

  Sets the icon of the `JComboBox`.

  `void`

  `setEnabled(boolean enabled)`

  Enables (or disables) the button.

  `final void`

  `setIconOnly(boolean isIconOnly)`

  If `isIconOnly` is `true` then only icon is painted.

  ### Methods inherited from class javax.swing.[JButton](../../JButton.md "class in javax.swing")

  `getAccessibleContext, getUIClassID, isDefaultButton, isDefaultCapable, paramString, removeNotify, setDefaultCapable, updateUI`

  ### Methods inherited from class javax.swing.[AbstractButton](../../AbstractButton.md "class in javax.swing")

  `actionPropertyChanged, addActionListener, addChangeListener, addImpl, addItemListener, checkHorizontalKey, checkVerticalKey, configurePropertiesFromAction, createActionListener, createActionPropertyChangeListener, createChangeListener, createItemListener, doClick, doClick, fireActionPerformed, fireItemStateChanged, fireStateChanged, getAction, getActionCommand, getActionListeners, getChangeListeners, getDisabledIcon, getDisabledSelectedIcon, getDisplayedMnemonicIndex, getHideActionText, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getItemListeners, getLabel, getMargin, getMnemonic, getModel, getMultiClickThreshhold, getPressedIcon, getRolloverIcon, getRolloverSelectedIcon, getSelectedIcon, getSelectedObjects, getText, getUI, getVerticalAlignment, getVerticalTextPosition, imageUpdate, init, isBorderPainted, isContentAreaFilled, isFocusPainted, isRolloverEnabled, isSelected, paintBorder, removeActionListener, removeChangeListener, removeItemListener, setAction, setActionCommand, setBorderPainted, setContentAreaFilled, setDisabledIcon, setDisabledSelectedIcon, setDisplayedMnemonicIndex, setFocusPainted, setHideActionText, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabel, setLayout, setMargin, setMnemonic, setMnemonic, setModel, setMultiClickThreshhold, setPressedIcon, setRolloverEnabled, setRolloverIcon, setRolloverSelectedIcon, setSelected, setSelectedIcon, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### comboBox

    protected [JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> comboBox

    The instance of `JComboBox`.
  + ### listBox

    protected [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> listBox

    The instance of `JList`.
  + ### rendererPane

    protected [CellRendererPane](../../CellRendererPane.md "class in javax.swing") rendererPane

    The instance of `CellRendererPane`.
  + ### comboIcon

    protected [Icon](../../Icon.md "interface in javax.swing") comboIcon

    The icon.
  + ### iconOnly

    protected boolean iconOnly

    The `iconOnly` value.
* ## Constructor Details

  + ### MetalComboBoxButton

    public MetalComboBoxButton([JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> cb,
    [Icon](../../Icon.md "interface in javax.swing") i,
    [CellRendererPane](../../CellRendererPane.md "class in javax.swing") pane,
    [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> list)

    Constructs a new instance of `MetalComboBoxButton`.

    Parameters:
    :   `cb` - an instance of `JComboBox`
    :   `i` - an icon
    :   `pane` - an instance of `CellRendererPane`
    :   `list` - an instance of `JList`
  + ### MetalComboBoxButton

    public MetalComboBoxButton([JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> cb,
    [Icon](../../Icon.md "interface in javax.swing") i,
    boolean onlyIcon,
    [CellRendererPane](../../CellRendererPane.md "class in javax.swing") pane,
    [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> list)

    Constructs a new instance of `MetalComboBoxButton`.

    Parameters:
    :   `cb` - an instance of `JComboBox`
    :   `i` - an icon
    :   `onlyIcon` - if `true` only icon is painted
    :   `pane` - an instance of `CellRendererPane`
    :   `list` - an instance of `JList`
* ## Method Details

  + ### getComboBox

    public final [JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getComboBox()

    Returns the `JComboBox`.

    Returns:
    :   the `JComboBox`
  + ### setComboBox

    public final void setComboBox([JComboBox](../../JComboBox.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> cb)

    Sets the `JComboBox`.

    Parameters:
    :   `cb` - the `JComboBox`
  + ### getComboIcon

    public final [Icon](../../Icon.md "interface in javax.swing") getComboIcon()

    Returns the icon of the `JComboBox`.

    Returns:
    :   the icon of the `JComboBox`
  + ### setComboIcon

    public final void setComboIcon([Icon](../../Icon.md "interface in javax.swing") i)

    Sets the icon of the `JComboBox`.

    Parameters:
    :   `i` - the icon of the `JComboBox`
  + ### isIconOnly

    public final boolean isIconOnly()

    Returns the `isIconOnly` value.

    Returns:
    :   the `isIconOnly` value
  + ### setIconOnly

    public final void setIconOnly(boolean isIconOnly)

    If `isIconOnly` is `true` then only icon is painted.

    Parameters:
    :   `isIconOnly` - if `true` then only icon is painted
  + ### isFocusTraversable

    public boolean isFocusTraversable()

    Description copied from class: `Component`

    Returns whether this `Component` can become the focus
    owner.

    Overrides:
    :   `isFocusTraversable` in class `Component`

    Returns:
    :   `true` if this `Component` is
        focusable; `false` otherwise

    See Also:
    :   - [`Component.setFocusable(boolean)`](../../../../java/awt/Component.md#setFocusable(boolean))
  + ### setEnabled

    public void setEnabled(boolean enabled)

    Description copied from class: `AbstractButton`

    Enables (or disables) the button.

    Overrides:
    :   `setEnabled` in class `AbstractButton`

    Parameters:
    :   `enabled` - true to enable the button, otherwise false

    See Also:
    :   - [`Component.isEnabled()`](../../../../java/awt/Component.md#isEnabled())
        - [`Component.isLightweight()`](../../../../java/awt/Component.md#isLightweight())
  + ### paintComponent

    public void paintComponent([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Description copied from class: `JComponent`

    Calls the UI delegate's paint method, if the UI delegate
    is non-`null`. We pass the delegate a copy of the
    `Graphics` object to protect the rest of the
    paint code from irrevocable changes
    (for example, `Graphics.translate`).

    If you override this in a subclass you should not make permanent
    changes to the passed in `Graphics`. For example, you
    should not alter the clip `Rectangle` or modify the
    transform. If you need to do these operations you may find it
    easier to create a new `Graphics` from the passed in
    `Graphics` and manipulate it. Further, if you do not
    invoke super's implementation you must honor the opaque property, that is
    if this component is opaque, you must completely fill in the background
    in an opaque color. If you do not honor the opaque property you
    will likely see visual artifacts.

    The passed in `Graphics` object might
    have a transform other than the identify transform
    installed on it. In this case, you might get
    unexpected results if you cumulatively apply
    another transform.

    Overrides:
    :   `paintComponent` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` object to protect

    See Also:
    :   - [`JComponent.paint(java.awt.Graphics)`](../../JComponent.md#paint(java.awt.Graphics))
        - [`ComponentUI`](../ComponentUI.md "class in javax.swing.plaf")
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize()

    Description copied from class: `JComponent`

    If the minimum size has been set to a non-`null` value
    just returns it. If the UI delegate's `getMinimumSize`
    method returns a non-`null` value then return that; otherwise
    defer to the component's layout manager.

    Overrides:
    :   `getMinimumSize` in class `JComponent`

    Returns:
    :   the value of the `minimumSize` property

    See Also:
    :   - [`JComponent.setMinimumSize(java.awt.Dimension)`](../../JComponent.md#setMinimumSize(java.awt.Dimension))
        - [`ComponentUI`](../ComponentUI.md "class in javax.swing.plaf")