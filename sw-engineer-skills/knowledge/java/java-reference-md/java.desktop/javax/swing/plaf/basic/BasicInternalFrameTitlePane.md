Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameTitlePane

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](../../JComponent.md "class in javax.swing")

javax.swing.plaf.basic.BasicInternalFrameTitlePane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`

Direct Known Subclasses:
:   `MetalInternalFrameTitlePane`

---

public class BasicInternalFrameTitlePane
extends [JComponent](../../JComponent.md "class in javax.swing")

The class that manages a basic title bar

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `BasicInternalFrameTitlePane.CloseAction`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.IconifyAction`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.MaximizeAction`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.MoveAction`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.PropertyChangeHandler`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.RestoreAction`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.SizeAction`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.SystemMenuBar`

  This class should be treated as a "protected" inner class.

  `class`

  `BasicInternalFrameTitlePane.TitlePaneLayout`

  This class should be treated as a "protected" inner class.

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

  `protected static final String`

  `CLOSE_CMD`

  The close button text property.

  `protected Action`

  `closeAction`

  The instance of a `CloseAction`.

  `protected JButton`

  `closeButton`

  The close button.

  `protected Icon`

  `closeIcon`

  The close icon.

  `protected JInternalFrame`

  `frame`

  The instance of `JInternalFrame`.

  `protected JButton`

  `iconButton`

  The iconify button.

  `protected Icon`

  `iconIcon`

  The iconify icon.

  `protected static final String`

  `ICONIFY_CMD`

  The minimize button text property.

  `protected Action`

  `iconifyAction`

  The instance of an `IconifyAction`.

  `protected JButton`

  `maxButton`

  The maximize button.

  `protected Icon`

  `maxIcon`

  The maximize icon.

  `protected static final String`

  `MAXIMIZE_CMD`

  The maximize button text property.

  `protected Action`

  `maximizeAction`

  The instance of a `MaximizeAction`.

  `protected JMenuBar`

  `menuBar`

  The instance of `JMenuBar`.

  `protected Icon`

  `minIcon`

  The minimize icon.

  `protected static final String`

  `MOVE_CMD`

  The move button text property.

  `protected Action`

  `moveAction`

  The instance of a `MoveAction`.

  `protected Color`

  `notSelectedTextColor`

  The color of a not selected text.

  `protected Color`

  `notSelectedTitleColor`

  The color of a not selected title.

  `protected PropertyChangeListener`

  `propertyChangeListener`

  The instance of a `PropertyChangeListener`.

  `protected static final String`

  `RESTORE_CMD`

  The restore button text property.

  `protected Action`

  `restoreAction`

  The instance of a `RestoreAction`.

  `protected Color`

  `selectedTextColor`

  The color of a selected text.

  `protected Color`

  `selectedTitleColor`

  The color of a selected title.

  `protected static final String`

  `SIZE_CMD`

  The size button text property.

  `protected Action`

  `sizeAction`

  The instance of a `SizeAction`.

  `protected JMenu`

  `windowMenu`

  The instance of `JMenu`.

  ### Fields inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicInternalFrameTitlePane(JInternalFrame f)`

  Constructs a new instance of `BasicInternalFrameTitlePane`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addSubComponents()`

  Adds subcomponents.

  `protected void`

  `addSystemMenuItems(JMenu systemMenu)`

  Adds system menu items to `systemMenu`.

  `protected void`

  `assembleSystemMenu()`

  Assembles system menu.

  `protected void`

  `createActions()`

  Creates actions.

  `protected void`

  `createButtons()`

  Creates buttons.

  `protected LayoutManager`

  `createLayout()`

  Returns a layout manager.

  `protected PropertyChangeListener`

  `createPropertyChangeListener()`

  Returns an instance of `PropertyChangeListener`.

  `protected JMenu`

  `createSystemMenu()`

  Returns a new instance of `JMenu`.

  `protected JMenuBar`

  `createSystemMenuBar()`

  Returns a new instance of `JMenuBar`.

  `protected void`

  `enableActions()`

  Enables actions.

  `protected String`

  `getTitle(String text,
  FontMetrics fm,
  int availTextWidth)`

  Returns the title.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installListeners()`

  Registers listeners.

  `protected void`

  `installTitlePane()`

  Installs the title pane.

  `void`

  `paintComponent(Graphics g)`

  Calls the UI delegate's paint method, if the UI delegate
  is non-`null`.

  `protected void`

  `paintTitleBackground(Graphics g)`

  Invoked from paintComponent.

  `protected void`

  `postClosingEvent(JInternalFrame frame)`

  Post a WINDOW\_CLOSING-like event to the frame, so that it can
  be treated like a regular `Frame`.

  `protected void`

  `setButtonIcons()`

  Sets the button icons.

  `protected void`

  `showSystemMenu()`

  Shows system menu.

  `protected void`

  `uninstallDefaults()`

  Uninstalls default properties.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  ### Methods inherited from class javax.swing.[JComponent](../../JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getUI, getUIClassID, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintImmediately, paintImmediately, paramString, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update, updateUI`

  ### Methods inherited from class java.awt.[Container](../../../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getAccessibleContext, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### menuBar

    protected [JMenuBar](../../JMenuBar.md "class in javax.swing") menuBar

    The instance of `JMenuBar`.
  + ### iconButton

    protected [JButton](../../JButton.md "class in javax.swing") iconButton

    The iconify button.
  + ### maxButton

    protected [JButton](../../JButton.md "class in javax.swing") maxButton

    The maximize button.
  + ### closeButton

    protected [JButton](../../JButton.md "class in javax.swing") closeButton

    The close button.
  + ### windowMenu

    protected [JMenu](../../JMenu.md "class in javax.swing") windowMenu

    The instance of `JMenu`.
  + ### frame

    protected [JInternalFrame](../../JInternalFrame.md "class in javax.swing") frame

    The instance of `JInternalFrame`.
  + ### selectedTitleColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectedTitleColor

    The color of a selected title.
  + ### selectedTextColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") selectedTextColor

    The color of a selected text.
  + ### notSelectedTitleColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") notSelectedTitleColor

    The color of a not selected title.
  + ### notSelectedTextColor

    protected [Color](../../../../java/awt/Color.md "class in java.awt") notSelectedTextColor

    The color of a not selected text.
  + ### maxIcon

    protected [Icon](../../Icon.md "interface in javax.swing") maxIcon

    The maximize icon.
  + ### minIcon

    protected [Icon](../../Icon.md "interface in javax.swing") minIcon

    The minimize icon.
  + ### iconIcon

    protected [Icon](../../Icon.md "interface in javax.swing") iconIcon

    The iconify icon.
  + ### closeIcon

    protected [Icon](../../Icon.md "interface in javax.swing") closeIcon

    The close icon.
  + ### propertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") propertyChangeListener

    The instance of a `PropertyChangeListener`.
  + ### closeAction

    protected [Action](../../Action.md "interface in javax.swing") closeAction

    The instance of a `CloseAction`.
  + ### maximizeAction

    protected [Action](../../Action.md "interface in javax.swing") maximizeAction

    The instance of a `MaximizeAction`.
  + ### iconifyAction

    protected [Action](../../Action.md "interface in javax.swing") iconifyAction

    The instance of an `IconifyAction`.
  + ### restoreAction

    protected [Action](../../Action.md "interface in javax.swing") restoreAction

    The instance of a `RestoreAction`.
  + ### moveAction

    protected [Action](../../Action.md "interface in javax.swing") moveAction

    The instance of a `MoveAction`.
  + ### sizeAction

    protected [Action](../../Action.md "interface in javax.swing") sizeAction

    The instance of a `SizeAction`.
  + ### CLOSE\_CMD

    protected static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") CLOSE\_CMD

    The close button text property.
  + ### ICONIFY\_CMD

    protected static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") ICONIFY\_CMD

    The minimize button text property.
  + ### RESTORE\_CMD

    protected static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") RESTORE\_CMD

    The restore button text property.
  + ### MAXIMIZE\_CMD

    protected static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") MAXIMIZE\_CMD

    The maximize button text property.
  + ### MOVE\_CMD

    protected static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") MOVE\_CMD

    The move button text property.
  + ### SIZE\_CMD

    protected static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") SIZE\_CMD

    The size button text property.
* ## Constructor Details

  + ### BasicInternalFrameTitlePane

    public BasicInternalFrameTitlePane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") f)

    Constructs a new instance of `BasicInternalFrameTitlePane`.

    Parameters:
    :   `f` - an instance of `JInternalFrame`
* ## Method Details

  + ### installTitlePane

    protected void installTitlePane()

    Installs the title pane.
  + ### addSubComponents

    protected void addSubComponents()

    Adds subcomponents.
  + ### createActions

    protected void createActions()

    Creates actions.
  + ### installListeners

    protected void installListeners()

    Registers listeners.
  + ### uninstallListeners

    protected void uninstallListeners()

    Unregisters listeners.
  + ### installDefaults

    protected void installDefaults()

    Installs default properties.
  + ### uninstallDefaults

    protected void uninstallDefaults()

    Uninstalls default properties.
  + ### createButtons

    protected void createButtons()

    Creates buttons.
  + ### setButtonIcons

    protected void setButtonIcons()

    Sets the button icons.
  + ### assembleSystemMenu

    protected void assembleSystemMenu()

    Assembles system menu.
  + ### addSystemMenuItems

    protected void addSystemMenuItems([JMenu](../../JMenu.md "class in javax.swing") systemMenu)

    Adds system menu items to `systemMenu`.

    Parameters:
    :   `systemMenu` - an instance of `JMenu`
  + ### createSystemMenu

    protected [JMenu](../../JMenu.md "class in javax.swing") createSystemMenu()

    Returns a new instance of `JMenu`.

    Returns:
    :   a new instance of `JMenu`
  + ### createSystemMenuBar

    protected [JMenuBar](../../JMenuBar.md "class in javax.swing") createSystemMenuBar()

    Returns a new instance of `JMenuBar`.

    Returns:
    :   a new instance of `JMenuBar`
  + ### showSystemMenu

    protected void showSystemMenu()

    Shows system menu.
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
  + ### paintTitleBackground

    protected void paintTitleBackground([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g)

    Invoked from paintComponent.
    Paints the background of the titlepane. All text and icons will
    then be rendered on top of this background.

    Parameters:
    :   `g` - the graphics to use to render the background

    Since:
    :   1.4
  + ### getTitle

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") getTitle([String](../../../../../java.base/java/lang/String.md "class in java.lang") text,
    [FontMetrics](../../../../java/awt/FontMetrics.md "class in java.awt") fm,
    int availTextWidth)

    Returns the title.

    Parameters:
    :   `text` - a text
    :   `fm` - an instance of `FontMetrics`
    :   `availTextWidth` - an available text width

    Returns:
    :   the title.
  + ### postClosingEvent

    protected void postClosingEvent([JInternalFrame](../../JInternalFrame.md "class in javax.swing") frame)

    Post a WINDOW\_CLOSING-like event to the frame, so that it can
    be treated like a regular `Frame`.

    Parameters:
    :   `frame` - an instance of `JInternalFrame`
  + ### enableActions

    protected void enableActions()

    Enables actions.
  + ### createPropertyChangeListener

    protected [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener()

    Returns an instance of `PropertyChangeListener`.

    Returns:
    :   an instance of `PropertyChangeListener`
  + ### createLayout

    protected [LayoutManager](../../../../java/awt/LayoutManager.md "interface in java.awt") createLayout()

    Returns a layout manager.

    Returns:
    :   a layout manager