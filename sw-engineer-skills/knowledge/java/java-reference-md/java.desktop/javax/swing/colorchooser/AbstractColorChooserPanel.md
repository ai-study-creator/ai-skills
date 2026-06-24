Module [java.desktop](../../../module-summary.md)

Package [javax.swing.colorchooser](package-summary.md)

# Class AbstractColorChooserPanel

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../JComponent.md "class in javax.swing")

[javax.swing.JPanel](../JPanel.md "class in javax.swing")

javax.swing.colorchooser.AbstractColorChooserPanel

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

public abstract class AbstractColorChooserPanel
extends [JPanel](../JPanel.md "class in javax.swing")

This is the abstract superclass for color choosers. If you want to add
a new color chooser panel into a `JColorChooser`, subclass
this class.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JPanel](../JPanel.md "class in javax.swing")

  `JPanel.AccessibleJPanel`

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

  `static final String`

  `TRANSPARENCY_ENABLED_PROPERTY`

  Identifies that the transparency of the color (alpha value) can be
  selected

  ### Fields inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractColorChooserPanel()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract void`

  `buildChooser()`

  Builds a new chooser panel.

  `protected Color`

  `getColorFromModel()`

  Returns the color that is currently selected.

  `ColorSelectionModel`

  `getColorSelectionModel()`

  Returns the model that the chooser panel is editing.

  `int`

  `getDisplayedMnemonicIndex()`

  Provides a hint to the look and feel as to the index of the character in
  `getDisplayName` that should be visually identified as the
  mnemonic.

  `abstract String`

  `getDisplayName()`

  Returns a string containing the display name of the panel.

  `abstract Icon`

  `getLargeDisplayIcon()`

  Returns the large display icon for the panel.

  `int`

  `getMnemonic()`

  Provides a hint to the look and feel as to the
  `KeyEvent.VK` constant that can be used as a mnemonic to
  access the panel.

  `abstract Icon`

  `getSmallDisplayIcon()`

  Returns the small display icon for the panel.

  `void`

  `installChooserPanel(JColorChooser enclosingChooser)`

  Invoked when the panel is added to the chooser.

  `boolean`

  `isColorTransparencySelectionEnabled()`

  Gets whether color chooser panel allows to select the transparency
  (alpha value) of a color.

  `void`

  `paint(Graphics g)`

  Draws the panel.

  `void`

  `setColorTransparencySelectionEnabled(boolean b)`

  Sets whether color chooser panel allows to select the transparency
  (alpha value) of a color.

  `void`

  `uninstallChooserPanel(JColorChooser enclosingChooser)`

  Invoked when the panel is removed from the chooser.

  `abstract void`

  `updateChooser()`

  Invoked automatically when the model's state changes.

  ### Methods inherited from class javax.swing.[JPanel](../JPanel.md "class in javax.swing")

  `getAccessibleContext, getUI, getUIClassID, paramString, setUI, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### TRANSPARENCY\_ENABLED\_PROPERTY

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") TRANSPARENCY\_ENABLED\_PROPERTY

    Identifies that the transparency of the color (alpha value) can be
    selected

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.colorchooser.AbstractColorChooserPanel.TRANSPARENCY_ENABLED_PROPERTY)
* ## Constructor Details

  + ### AbstractColorChooserPanel

    protected AbstractColorChooserPanel()

    Constructor for subclasses to call.
* ## Method Details

  + ### updateChooser

    public abstract void updateChooser()

    Invoked automatically when the model's state changes.
    It is also called by `installChooserPanel` to allow
    you to set up the initial state of your chooser.
    Override this method to update your `ChooserPanel`.
  + ### buildChooser

    protected abstract void buildChooser()

    Builds a new chooser panel.
  + ### getDisplayName

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getDisplayName()

    Returns a string containing the display name of the panel.

    Returns:
    :   the name of the display panel
  + ### getMnemonic

    public int getMnemonic()

    Provides a hint to the look and feel as to the
    `KeyEvent.VK` constant that can be used as a mnemonic to
    access the panel. A return value <= 0 indicates there is no mnemonic.

    The return value here is a hint, it is ultimately up to the look
    and feel to honor the return value in some meaningful way.

    This implementation returns 0, indicating the
    `AbstractColorChooserPanel` does not support a mnemonic,
    subclasses wishing a mnemonic will need to override this.

    Returns:
    :   KeyEvent.VK constant identifying the mnemonic; <= 0 for no
        mnemonic

    Since:
    :   1.4

    See Also:
    :   - [`getDisplayedMnemonicIndex()`](#getDisplayedMnemonicIndex())
  + ### getDisplayedMnemonicIndex

    public int getDisplayedMnemonicIndex()

    Provides a hint to the look and feel as to the index of the character in
    `getDisplayName` that should be visually identified as the
    mnemonic. The look and feel should only use this if
    `getMnemonic` returns a value > 0.

    The return value here is a hint, it is ultimately up to the look
    and feel to honor the return value in some meaningful way. For example,
    a look and feel may wish to render each
    `AbstractColorChooserPanel` in a `JTabbedPane`,
    and further use this return value to underline a character in
    the `getDisplayName`.

    This implementation returns -1, indicating the
    `AbstractColorChooserPanel` does not support a mnemonic,
    subclasses wishing a mnemonic will need to override this.

    Returns:
    :   Character index to render mnemonic for; -1 to provide no
        visual identifier for this panel.

    Since:
    :   1.4

    See Also:
    :   - [`getMnemonic()`](#getMnemonic())
  + ### getSmallDisplayIcon

    public abstract [Icon](../Icon.md "interface in javax.swing") getSmallDisplayIcon()

    Returns the small display icon for the panel.

    Returns:
    :   the small display icon
  + ### getLargeDisplayIcon

    public abstract [Icon](../Icon.md "interface in javax.swing") getLargeDisplayIcon()

    Returns the large display icon for the panel.

    Returns:
    :   the large display icon
  + ### installChooserPanel

    public void installChooserPanel([JColorChooser](../JColorChooser.md "class in javax.swing") enclosingChooser)

    Invoked when the panel is added to the chooser.
    If you override this, be sure to call `super`.

    Parameters:
    :   `enclosingChooser` - the chooser to which the panel is to be added

    Throws:
    :   `RuntimeException` - if the chooser panel has already been
        installed
  + ### uninstallChooserPanel

    public void uninstallChooserPanel([JColorChooser](../JColorChooser.md "class in javax.swing") enclosingChooser)

    Invoked when the panel is removed from the chooser.
    If override this, be sure to call `super`.

    Parameters:
    :   `enclosingChooser` - the chooser from which the panel is to be removed
  + ### getColorSelectionModel

    public [ColorSelectionModel](ColorSelectionModel.md "interface in javax.swing.colorchooser") getColorSelectionModel()

    Returns the model that the chooser panel is editing.

    Returns:
    :   the `ColorSelectionModel` model this panel
        is editing
  + ### getColorFromModel

    protected [Color](../../../java/awt/Color.md "class in java.awt") getColorFromModel()

    Returns the color that is currently selected.

    Returns:
    :   the `Color` that is selected
  + ### setColorTransparencySelectionEnabled

    [@BeanProperty](../../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../../java/beans/BeanProperty.md#description())="Sets the transparency of a color selection on or off.")
    public void setColorTransparencySelectionEnabled(boolean b)

    Sets whether color chooser panel allows to select the transparency
    (alpha value) of a color.
    This method fires a property-changed event, using the string value of
    `TRANSPARENCY_ENABLED_PROPERTY` as the name
    of the property.

    The value is a hint and may not be applicable to all types of chooser
    panel.

    The default value is `true`.

    Parameters:
    :   `b` - true if the transparency of a color can be selected

    See Also:
    :   - [`isColorTransparencySelectionEnabled()`](#isColorTransparencySelectionEnabled())
  + ### isColorTransparencySelectionEnabled

    public boolean isColorTransparencySelectionEnabled()

    Gets whether color chooser panel allows to select the transparency
    (alpha value) of a color.

    Returns:
    :   true if the transparency of a color can be selected

    See Also:
    :   - [`setColorTransparencySelectionEnabled(boolean)`](#setColorTransparencySelectionEnabled(boolean))
  + ### paint

    public void paint([Graphics](../../../java/awt/Graphics.md "class in java.awt") g)

    Draws the panel.

    Overrides:
    :   `paint` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` object

    See Also:
    :   - [`JComponent.paintComponent(java.awt.Graphics)`](../JComponent.md#paintComponent(java.awt.Graphics))
        - [`JComponent.paintBorder(java.awt.Graphics)`](../JComponent.md#paintBorder(java.awt.Graphics))
        - [`JComponent.paintChildren(java.awt.Graphics)`](../JComponent.md#paintChildren(java.awt.Graphics))
        - [`JComponent.getComponentGraphics(java.awt.Graphics)`](../JComponent.md#getComponentGraphics(java.awt.Graphics))
        - [`JComponent.repaint(long, int, int, int, int)`](../JComponent.md#repaint(long,int,int,int,int))