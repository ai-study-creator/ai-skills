Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JCheckBox

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.AbstractButton](AbstractButton.md "class in javax.swing")

[javax.swing.JToggleButton](JToggleButton.md "class in javax.swing")

javax.swing.JCheckBox

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([description](../../java/beans/JavaBean.md#description())="A component which can be selected or deselected.")
public class JCheckBox
extends [JToggleButton](JToggleButton.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

An implementation of a check box -- an item that can be selected or
deselected, and which displays its state to the user.
By convention, any number of check boxes in a group can be selected.
See [How to Use Buttons, Check Boxes, and Radio Buttons](https://docs.oracle.com/javase/tutorial/uiswing/components/button.html)
in *The Java Tutorial*
for examples and information on using check boxes.

Buttons can be configured, and to some degree controlled, by
`Action`s. Using an
`Action` with a button has many benefits beyond directly
configuring a button. Refer to [Swing Components Supporting `Action`](Action.md#buttonActions) for more
details, and you can find more information in [How
to Use Actions](https://docs.oracle.com/javase/tutorial/uiswing/misc/action.html), a section in *The Java Tutorial*.

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

See Also:
:   * [`JRadioButton`](JRadioButton.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JCheckBox.AccessibleJCheckBox`

  This class implements accessibility support for the
  `JCheckBox` class.

  ## Nested classes/interfaces inherited from class javax.swing.[JToggleButton](JToggleButton.md "class in javax.swing")

  `JToggleButton.AccessibleJToggleButton, JToggleButton.ToggleButtonModel`

  ## Nested classes/interfaces inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `AbstractButton.AccessibleAbstractButton, AbstractButton.ButtonChangeListener`

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

  `static final String`

  `BORDER_PAINTED_FLAT_CHANGED_PROPERTY`

  Identifies a change to the flat property.

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

  `JCheckBox()`

  Creates an initially unselected check box button with no text, no icon.

  `JCheckBox(String text)`

  Creates an initially unselected check box with text.

  `JCheckBox(String text,
  boolean selected)`

  Creates a check box with text and specifies whether
  or not it is initially selected.

  `JCheckBox(String text,
  Icon icon)`

  Creates an initially unselected check box with
  the specified text and icon.

  `JCheckBox(String text,
  Icon icon,
  boolean selected)`

  Creates a check box with text and icon,
  and specifies whether or not it is initially selected.

  `JCheckBox(Action a)`

  Creates a check box where properties are taken from the
  Action supplied.

  `JCheckBox(Icon icon)`

  Creates an initially unselected check box with an icon.

  `JCheckBox(Icon icon,
  boolean selected)`

  Creates a check box with an icon and specifies whether
  or not it is initially selected.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JCheckBox.

  `String`

  `getUIClassID()`

  Returns a string that specifies the name of the L&F class
  that renders this component.

  `boolean`

  `isBorderPaintedFlat()`

  Gets the value of the `borderPaintedFlat` property.

  `protected String`

  `paramString()`

  Returns a string representation of this JCheckBox.

  `void`

  `setBorderPaintedFlat(boolean b)`

  Sets the `borderPaintedFlat` property,
  which gives a hint to the look and feel as to the
  appearance of the check box border.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JToggleButton](JToggleButton.md "class in javax.swing")

  `requestFocus, requestFocusInWindow`

  ### Methods inherited from class javax.swing.[AbstractButton](AbstractButton.md "class in javax.swing")

  `actionPropertyChanged, addActionListener, addChangeListener, addImpl, addItemListener, checkHorizontalKey, checkVerticalKey, configurePropertiesFromAction, createActionListener, createActionPropertyChangeListener, createChangeListener, createItemListener, doClick, doClick, fireActionPerformed, fireItemStateChanged, fireStateChanged, getAction, getActionCommand, getActionListeners, getChangeListeners, getDisabledIcon, getDisabledSelectedIcon, getDisplayedMnemonicIndex, getHideActionText, getHorizontalAlignment, getHorizontalTextPosition, getIcon, getIconTextGap, getItemListeners, getLabel, getMargin, getMnemonic, getModel, getMultiClickThreshhold, getPressedIcon, getRolloverIcon, getRolloverSelectedIcon, getSelectedIcon, getSelectedObjects, getText, getUI, getVerticalAlignment, getVerticalTextPosition, imageUpdate, init, isBorderPainted, isContentAreaFilled, isFocusPainted, isRolloverEnabled, isSelected, paintBorder, removeActionListener, removeChangeListener, removeItemListener, removeNotify, setAction, setActionCommand, setBorderPainted, setContentAreaFilled, setDisabledIcon, setDisabledSelectedIcon, setDisplayedMnemonicIndex, setEnabled, setFocusPainted, setHideActionText, setHorizontalAlignment, setHorizontalTextPosition, setIcon, setIconTextGap, setLabel, setLayout, setMargin, setMnemonic, setMnemonic, setModel, setMultiClickThreshhold, setPressedIcon, setRolloverEnabled, setRolloverIcon, setRolloverSelectedIcon, setSelected, setSelectedIcon, setText, setUI, setVerticalAlignment, setVerticalTextPosition`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### BORDER\_PAINTED\_FLAT\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") BORDER\_PAINTED\_FLAT\_CHANGED\_PROPERTY

    Identifies a change to the flat property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JCheckBox.BORDER_PAINTED_FLAT_CHANGED_PROPERTY)
* ## Constructor Details

  + ### JCheckBox

    public JCheckBox()

    Creates an initially unselected check box button with no text, no icon.
  + ### JCheckBox

    public JCheckBox([Icon](Icon.md "interface in javax.swing") icon)

    Creates an initially unselected check box with an icon.

    Parameters:
    :   `icon` - the Icon image to display
  + ### JCheckBox

    public JCheckBox([Icon](Icon.md "interface in javax.swing") icon,
    boolean selected)

    Creates a check box with an icon and specifies whether
    or not it is initially selected.

    Parameters:
    :   `icon` - the Icon image to display
    :   `selected` - a boolean value indicating the initial selection
        state. If `true` the check box is selected
  + ### JCheckBox

    public JCheckBox([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    Creates an initially unselected check box with text.

    Parameters:
    :   `text` - the text of the check box.
  + ### JCheckBox

    public JCheckBox([Action](Action.md "interface in javax.swing") a)

    Creates a check box where properties are taken from the
    Action supplied.

    Parameters:
    :   `a` - the `Action` used to specify the new check box

    Since:
    :   1.3
  + ### JCheckBox

    public JCheckBox([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    boolean selected)

    Creates a check box with text and specifies whether
    or not it is initially selected.

    Parameters:
    :   `text` - the text of the check box.
    :   `selected` - a boolean value indicating the initial selection
        state. If `true` the check box is selected
  + ### JCheckBox

    public JCheckBox([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon)

    Creates an initially unselected check box with
    the specified text and icon.

    Parameters:
    :   `text` - the text of the check box.
    :   `icon` - the Icon image to display
  + ### JCheckBox

    public JCheckBox([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon,
    boolean selected)

    Creates a check box with text and icon,
    and specifies whether or not it is initially selected.

    Parameters:
    :   `text` - the text of the check box.
    :   `icon` - the Icon image to display
    :   `selected` - a boolean value indicating the initial selection
        state. If `true` the check box is selected
* ## Method Details

  + ### setBorderPaintedFlat

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Whether the border is painted flat.")
    public void setBorderPaintedFlat(boolean b)

    Sets the `borderPaintedFlat` property,
    which gives a hint to the look and feel as to the
    appearance of the check box border.
    This is usually set to `true` when a
    `JCheckBox` instance is used as a
    renderer in a component such as a `JTable` or
    `JTree`. The default value for the
    `borderPaintedFlat` property is `false`.
    This method fires a property changed event.
    Some look and feels might not implement flat borders;
    they will ignore this property.

    Parameters:
    :   `b` - `true` requests that the border be painted flat;
        `false` requests normal borders

    Since:
    :   1.3

    See Also:
    :   - [`isBorderPaintedFlat()`](#isBorderPaintedFlat())
  + ### isBorderPaintedFlat

    public boolean isBorderPaintedFlat()

    Gets the value of the `borderPaintedFlat` property.

    Returns:
    :   the value of the `borderPaintedFlat` property

    Since:
    :   1.3

    See Also:
    :   - [`setBorderPaintedFlat(boolean)`](#setBorderPaintedFlat(boolean))
  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JToggleButton`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="A string that specifies the name of the L&F class")
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns a string that specifies the name of the L&F class
    that renders this component.

    Overrides:
    :   `getUIClassID` in class `JToggleButton`

    Returns:
    :   the string "CheckBoxUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this JCheckBox. This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.
    specific new aspects of the JFC components.

    Overrides:
    :   `paramString` in class `JToggleButton`

    Returns:
    :   a string representation of this JCheckBox.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The AccessibleContext associated with this CheckBox.")
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JCheckBox.
    For JCheckBoxes, the AccessibleContext takes the form of an
    AccessibleJCheckBox.
    A new AccessibleJCheckBox instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `JToggleButton`

    Returns:
    :   an AccessibleJCheckBox that serves as the
        AccessibleContext of this JCheckBox