Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JButton

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.AbstractButton](AbstractButton.md "class in javax.swing")

javax.swing.JButton

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`

Direct Known Subclasses:
:   `BasicArrowButton`, `MetalComboBoxButton`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UIClassID",
[description](../../java/beans/JavaBean.md#description())="An implementation of a \"push\" button.")
public class JButton
extends [AbstractButton](AbstractButton.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

An implementation of a "push" button.

Buttons can be configured, and to some degree controlled, by
`Action`s. Using an
`Action` with a button has many benefits beyond directly
configuring a button. Refer to [Swing Components Supporting `Action`](Action.md#buttonActions) for more
details, and you can find more information in [How
to Use Actions](https://docs.oracle.com/javase/tutorial/uiswing/misc/action.html), a section in *The Java Tutorial*.

See [How to Use Buttons, Check Boxes, and Radio Buttons](https://docs.oracle.com/javase/tutorial/uiswing/components/button.html)
in *The Java Tutorial*
for information and examples of using buttons.

**Warning:** Swing is not thread safe. For more
information see [Swing's Threading
Policy](package-summary.md#threading).

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

  `protected class`

  `JButton.AccessibleJButton`

  This class implements accessibility support for the
  `JButton` class.

  ## Nested classes/interfaces inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `AbstractButton.AccessibleAbstractButton, AbstractButton.ButtonChangeListener`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `actionListener, BORDER_PAINTED_CHANGED_PROPERTY, changeEvent, changeListener, CONTENT_AREA_FILLED_CHANGED_PROPERTY, DISABLED_ICON_CHANGED_PROPERTY, DISABLED_SELECTED_ICON_CHANGED_PROPERTY, FOCUS_PAINTED_CHANGED_PROPERTY, HORIZONTAL_ALIGNMENT_CHANGED_PROPERTY, HORIZONTAL_TEXT_POSITION_CHANGED_PROPERTY, ICON_CHANGED_PROPERTY, itemListener, MARGIN_CHANGED_PROPERTY, MNEMONIC_CHANGED_PROPERTY, model, MODEL_CHANGED_PROPERTY, PRESSED_ICON_CHANGED_PROPERTY, ROLLOVER_ENABLED_CHANGED_PROPERTY, ROLLOVER_ICON_CHANGED_PROPERTY, ROLLOVER_SELECTED_ICON_CHANGED_PROPERTY, SELECTED_ICON_CHANGED_PROPERTY, TEXT_CHANGED_PROPERTY, VERTICAL_ALIGNMENT_CHANGED_PROPERTY, VERTICAL_TEXT_POSITION_CHANGED_PROPERTY`

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

  `JButton()`

  Creates a button with no set text or icon.

  `JButton(String text)`

  Creates a button with text.

  `JButton(String text,
  Icon icon)`

  Creates a button with initial text and an icon.

  `JButton(Action a)`

  Creates a button where properties are taken from the
  `Action` supplied.

  `JButton(Icon icon)`

  Creates a button with an icon.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  `JButton`.

  `String`

  `getUIClassID()`

  Returns a string that specifies the name of the L&F class
  that renders this component.

  `boolean`

  `isDefaultButton()`

  Gets the value of the `defaultButton` property,
  which if `true` means that this button is the current
  default button for its `JRootPane`.

  `boolean`

  `isDefaultCapable()`

  Gets the value of the `defaultCapable` property.

  `protected String`

  `paramString()`

  Returns a string representation of this `JButton`.

  `void`

  `removeNotify()`

  Overrides `JComponent.removeNotify` to check if
  this button is currently set as the default button on the
  `RootPane`, and if so, sets the `RootPane`'s
  default button to `null` to ensure the
  `RootPane` doesn't hold onto an invalid button reference.

  `void`

  `setDefaultCapable(boolean defaultCapable)`

  Sets the `defaultCapable` property,
  which determines whether this button can be
  made the default button for its root pane.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and
  feel.

  ### Methods inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `actionPropertyChanged, addActionListener, addChangeListener, addImpl, addItemListener, checkHorizontalKey, checkVerticalKey, configurePropertiesFromAction, createActionListener, createActionPropertyChangeListener, createChangeListener, createItemListener, doClick, doClick, fireActionPerformed, fireItemStateChanged, fireStateChanged, getAction, getActionCommand, getActionListeners, getChangeListeners, getDisabledIcon, getDisabledSelectedIcon, getDisplayedMnemonicIndex, getHideActionText, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getItemListeners, getLabel, getMargin, getMnemonic, getModel, getMultiClickThreshhold, getPressedIcon, getRolloverIcon, getRolloverSelectedIcon, getSelectedIcon, getSelectedObjects, getText, getUI, getVerticalAlignment, getVerticalTextPosition, imageUpdate, init, isBorderPainted, isContentAreaFilled, isFocusPainted, isRolloverEnabled, isSelected, paintBorder, removeActionListener, removeChangeListener, removeItemListener, setAction, setActionCommand, setBorderPainted, setContentAreaFilled, setDisabledIcon, setDisabledSelectedIcon, setDisplayedMnemonicIndex, setEnabled, setFocusPainted, setHideActionText, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabel, setLayout, setMargin, setMnemonic, setMnemonic, setModel, setMultiClickThreshhold, setPressedIcon, setRolloverEnabled, setRolloverIcon, setRolloverSelectedIcon, setSelected, setSelectedIcon, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JButton

    public JButton()

    Creates a button with no set text or icon.
  + ### JButton

    public JButton([Icon](Icon.md "interface in javax.swing") icon)

    Creates a button with an icon.

    Parameters:
    :   `icon` - the Icon image to display on the button
  + ### JButton

    [@ConstructorProperties](../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("text")
    public JButton([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    Creates a button with text.

    Parameters:
    :   `text` - the text of the button
  + ### JButton

    public JButton([Action](Action.md "interface in javax.swing") a)

    Creates a button where properties are taken from the
    `Action` supplied.

    Parameters:
    :   `a` - the `Action` used to specify the new button

    Since:
    :   1.3
  + ### JButton

    public JButton([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon)

    Creates a button with initial text and an icon.

    Parameters:
    :   `text` - the text of the button
    :   `icon` - the Icon image to display on the button
* ## Method Details

  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and
    feel.

    Overrides:
    :   `updateUI` in class `AbstractButton`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="A string that specifies the name of the L&F class.")
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns a string that specifies the name of the L&F class
    that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ButtonUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### isDefaultButton

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="Whether or not this button is the default button")
    public boolean isDefaultButton()

    Gets the value of the `defaultButton` property,
    which if `true` means that this button is the current
    default button for its `JRootPane`.
    Most look and feels render the default button
    differently, and may potentially provide bindings
    to access the default button.

    Returns:
    :   the value of the `defaultButton` property

    See Also:
    :   - [`JRootPane.setDefaultButton(javax.swing.JButton)`](JRootPane.md#setDefaultButton(javax.swing.JButton))
        - [`isDefaultCapable()`](#isDefaultCapable())
  + ### isDefaultCapable

    public boolean isDefaultCapable()

    Gets the value of the `defaultCapable` property.

    Returns:
    :   the value of the `defaultCapable` property

    See Also:
    :   - [`setDefaultCapable(boolean)`](#setDefaultCapable(boolean))
        - [`isDefaultButton()`](#isDefaultButton())
        - [`JRootPane.setDefaultButton(javax.swing.JButton)`](JRootPane.md#setDefaultButton(javax.swing.JButton))
  + ### setDefaultCapable

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Whether or not this button can be the default button")
    public void setDefaultCapable(boolean defaultCapable)

    Sets the `defaultCapable` property,
    which determines whether this button can be
    made the default button for its root pane.
    The default value of the `defaultCapable`
    property is `true` unless otherwise
    specified by the look and feel.

    Parameters:
    :   `defaultCapable` - `true` if this button will be
        capable of being the default button on the
        `RootPane`; otherwise `false`

    See Also:
    :   - [`isDefaultCapable()`](#isDefaultCapable())
  + ### removeNotify

    public void removeNotify()

    Overrides `JComponent.removeNotify` to check if
    this button is currently set as the default button on the
    `RootPane`, and if so, sets the `RootPane`'s
    default button to `null` to ensure the
    `RootPane` doesn't hold onto an invalid button reference.

    Overrides:
    :   `removeNotify` in class `AbstractButton`

    See Also:
    :   - [`JComponent.registerKeyboardAction(java.awt.event.ActionListener, java.lang.String, javax.swing.KeyStroke, int)`](JComponent.md#registerKeyboardAction(java.awt.event.ActionListener,java.lang.String,javax.swing.KeyStroke,int))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JButton`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `AbstractButton`

    Returns:
    :   a string representation of this `JButton`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The AccessibleContext associated with this Button.")
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    `JButton`. For `JButton`s,
    the `AccessibleContext` takes the form of an
    `AccessibleJButton`.
    A new `AccessibleJButton` instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an `AccessibleJButton` that serves as the
        `AccessibleContext` of this `JButton`