Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JToolBar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JToolBar

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A component which displays commonly used controls or Actions.")
public class JToolBar
extends [JComponent](JComponent.md "class in javax.swing")
implements [SwingConstants](SwingConstants.md "interface in javax.swing"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

`JToolBar` provides a component that is useful for
displaying commonly used `Action`s or controls.
For examples and information on using tool bars see
[How to Use Tool Bars](https://docs.oracle.com/javase/tutorial/uiswing/components/toolbar.html),
a section in *The Java Tutorial*.

With most look and feels,
the user can drag out a tool bar into a separate window
(unless the `floatable` property is set to `false`).
For drag-out to work correctly, it is recommended that you add
`JToolBar` instances to one of the four "sides" of a
container whose layout manager is a `BorderLayout`,
and do not add children to any of the other four "sides".

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
:   * [`Action`](Action.md "interface in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JToolBar.AccessibleJToolBar`

  This class implements accessibility support for the
  `JToolBar` class.

  `static class`

  `JToolBar.Separator`

  A toolbar-specific separator.

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

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

  `JToolBar()`

  Creates a new tool bar; orientation defaults to `HORIZONTAL`.

  `JToolBar(int orientation)`

  Creates a new tool bar with the specified `orientation`.

  `JToolBar(String name)`

  Creates a new tool bar with the specified `name`.

  `JToolBar(String name,
  int orientation)`

  Creates a new tool bar with a specified `name` and
  `orientation`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `JButton`

  `add(Action a)`

  Adds a new `JButton` which dispatches the action.

  `protected void`

  `addImpl(Component comp,
  Object constraints,
  int index)`

  If a `JButton` is being added, it is initially
  set to be disabled.

  `void`

  `addSeparator()`

  Appends a separator of default size to the end of the tool bar.

  `void`

  `addSeparator(Dimension size)`

  Appends a separator of a specified size to the end
  of the tool bar.

  `protected PropertyChangeListener`

  `createActionChangeListener(JButton b)`

  Returns a properly configured `PropertyChangeListener`
  which updates the control as changes to the `Action` occur,
  or `null` if the default
  property change listener for the control is desired.

  `protected JButton`

  `createActionComponent(Action a)`

  Factory method which creates the `JButton` for
  `Action`s added to the `JToolBar`.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JToolBar.

  `Component`

  `getComponentAtIndex(int i)`

  Returns the component at the specified index.

  `int`

  `getComponentIndex(Component c)`

  Returns the index of the specified component.

  `Insets`

  `getMargin()`

  Returns the margin between the tool bar's border and
  its buttons.

  `int`

  `getOrientation()`

  Returns the current orientation of the tool bar.

  `ToolBarUI`

  `getUI()`

  Returns the tool bar's current UI.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `boolean`

  `isBorderPainted()`

  Gets the `borderPainted` property.

  `boolean`

  `isFloatable()`

  Gets the `floatable` property.

  `boolean`

  `isRollover()`

  Returns the rollover state.

  `protected void`

  `paintBorder(Graphics g)`

  Paints the tool bar's border if the `borderPainted` property
  is `true`.

  `protected String`

  `paramString()`

  Returns a string representation of this `JToolBar`.

  `void`

  `setBorderPainted(boolean b)`

  Sets the `borderPainted` property, which is
  `true` if the border should be painted.

  `void`

  `setFloatable(boolean b)`

  Sets the `floatable` property,
  which must be `true` for the user to move the tool bar.

  `void`

  `setLayout(LayoutManager mgr)`

  Sets the layout manager for this container.

  `void`

  `setMargin(Insets m)`

  Sets the margin between the tool bar's border and
  its buttons.

  `void`

  `setOrientation(int o)`

  Sets the orientation of the tool bar.

  `void`

  `setRollover(boolean rollover)`

  Sets the rollover state of this toolbar.

  `void`

  `setUI(ToolBarUI ui)`

  Sets the L&F object that renders this component.

  `void`

  `updateUI()`

  Notification from the `UIFactory` that the L&F has changed.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JToolBar

    public JToolBar()

    Creates a new tool bar; orientation defaults to `HORIZONTAL`.
  + ### JToolBar

    public JToolBar(int orientation)

    Creates a new tool bar with the specified `orientation`.
    The `orientation` must be either `HORIZONTAL`
    or `VERTICAL`.

    Parameters:
    :   `orientation` - the orientation desired
  + ### JToolBar

    public JToolBar([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a new tool bar with the specified `name`. The
    name is used as the title of the undocked tool bar. The default
    orientation is `HORIZONTAL`.

    Parameters:
    :   `name` - the name of the tool bar

    Since:
    :   1.3
  + ### JToolBar

    public JToolBar([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    int orientation)

    Creates a new tool bar with a specified `name` and
    `orientation`.
    All other constructors call this constructor.
    If `orientation` is an invalid value, an exception will
    be thrown.

    Parameters:
    :   `name` - the name of the tool bar
    :   `orientation` - the initial orientation -- it must be
        either `HORIZONTAL` or `VERTICAL`

    Throws:
    :   `IllegalArgumentException` - if orientation is neither
        `HORIZONTAL` nor `VERTICAL`

    Since:
    :   1.3
* ## Method Details

  + ### getUI

    public [ToolBarUI](plaf/ToolBarUI.md "class in javax.swing.plaf") getUI()

    Returns the tool bar's current UI.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the tool bar's current UI.

    See Also:
    :   - [`setUI(javax.swing.plaf.ToolBarUI)`](#setUI(javax.swing.plaf.ToolBarUI))
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([ToolBarUI](plaf/ToolBarUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the `ToolBarUI` L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Notification from the `UIFactory` that the L&F has changed.
    Called to replace the UI with the latest version from the
    `UIFactory`.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ToolBarUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getComponentIndex

    public int getComponentIndex([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the index of the specified component.
    (Note: Separators occupy index positions.)

    Parameters:
    :   `c` - the `Component` to find

    Returns:
    :   an integer indicating the component's position,
        where 0 is first
  + ### getComponentAtIndex

    public [Component](../../java/awt/Component.md "class in java.awt") getComponentAtIndex(int i)

    Returns the component at the specified index.

    Parameters:
    :   `i` - the component's position, where 0 is first

    Returns:
    :   the `Component` at that position,
        or `null` for an invalid index
  + ### setMargin

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The margin between the tool bar\'s border and contents")
    public void setMargin([Insets](../../java/awt/Insets.md "class in java.awt") m)

    Sets the margin between the tool bar's border and
    its buttons. Setting to `null` causes the tool bar to
    use the default margins. The tool bar's default `Border`
    object uses this value to create the proper margin.
    However, if a non-default border is set on the tool bar,
    it is that `Border` object's responsibility to create the
    appropriate margin space (otherwise this property will
    effectively be ignored).

    Parameters:
    :   `m` - an `Insets` object that defines the space
        between the border and the buttons

    See Also:
    :   - [`Insets`](../../java/awt/Insets.md "class in java.awt")
  + ### getMargin

    public [Insets](../../java/awt/Insets.md "class in java.awt") getMargin()

    Returns the margin between the tool bar's border and
    its buttons.

    Returns:
    :   an `Insets` object containing the margin values

    See Also:
    :   - [`Insets`](../../java/awt/Insets.md "class in java.awt")
  + ### isBorderPainted

    public boolean isBorderPainted()

    Gets the `borderPainted` property.

    Returns:
    :   the value of the `borderPainted` property

    See Also:
    :   - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
  + ### setBorderPainted

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="Does the tool bar paint its borders?")
    public void setBorderPainted(boolean b)

    Sets the `borderPainted` property, which is
    `true` if the border should be painted.
    The default value for this property is `true`.
    Some look and feels might not implement painted borders;
    they will ignore this property.

    Parameters:
    :   `b` - if true, the border is painted

    See Also:
    :   - [`isBorderPainted()`](#isBorderPainted())
  + ### paintBorder

    protected void paintBorder([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Paints the tool bar's border if the `borderPainted` property
    is `true`.

    Overrides:
    :   `paintBorder` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` context in which the painting
        is done

    See Also:
    :   - [`JComponent.paint(java.awt.Graphics)`](JComponent.md#paint(java.awt.Graphics))
        - [`JComponent.setBorder(javax.swing.border.Border)`](JComponent.md#setBorder(javax.swing.border.Border))
  + ### isFloatable

    public boolean isFloatable()

    Gets the `floatable` property.

    Returns:
    :   the value of the `floatable` property

    See Also:
    :   - [`setFloatable(boolean)`](#setFloatable(boolean))
  + ### setFloatable

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Can the tool bar be made to float by the user?")
    public void setFloatable(boolean b)

    Sets the `floatable` property,
    which must be `true` for the user to move the tool bar.
    Typically, a floatable tool bar can be
    dragged into a different position within the same container
    or out into its own window.
    The default value of this property is `true`.
    Some look and feels might not implement floatable tool bars;
    they will ignore this property.

    Parameters:
    :   `b` - if `true`, the tool bar can be moved;
        `false` otherwise

    See Also:
    :   - [`isFloatable()`](#isFloatable())
  + ### getOrientation

    public int getOrientation()

    Returns the current orientation of the tool bar. The value is either
    `HORIZONTAL` or `VERTICAL`.

    Returns:
    :   an integer representing the current orientation -- either
        `HORIZONTAL` or `VERTICAL`

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### setOrientation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"SwingConstants.HORIZONTAL","SwingConstants.VERTICAL"},
    [description](../../java/beans/BeanProperty.md#description())="The current orientation of the tool bar")
    public void setOrientation(int o)

    Sets the orientation of the tool bar. The orientation must have
    either the value `HORIZONTAL` or `VERTICAL`.
    If `orientation` is
    an invalid value, an exception will be thrown.

    Parameters:
    :   `o` - the new orientation -- either `HORIZONTAL` or
        `VERTICAL`

    Throws:
    :   `IllegalArgumentException` - if orientation is neither
        `HORIZONTAL` nor `VERTICAL`

    See Also:
    :   - [`getOrientation()`](#getOrientation())
  + ### setRollover

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Will draw rollover button borders in the toolbar.")
    public void setRollover(boolean rollover)

    Sets the rollover state of this toolbar. If the rollover state is true
    then the border of the toolbar buttons will be drawn only when the
    mouse pointer hovers over them. The default value of this property
    is false.

    The implementation of a look and feel may choose to ignore this
    property.

    Parameters:
    :   `rollover` - true for rollover toolbar buttons; otherwise false

    Since:
    :   1.4
  + ### isRollover

    public boolean isRollover()

    Returns the rollover state.

    Returns:
    :   true if rollover toolbar buttons are to be drawn; otherwise false

    Since:
    :   1.4

    See Also:
    :   - [`setRollover(boolean)`](#setRollover(boolean))
  + ### addSeparator

    public void addSeparator()

    Appends a separator of default size to the end of the tool bar.
    The default size is determined by the current look and feel.
  + ### addSeparator

    public void addSeparator([Dimension](../../java/awt/Dimension.md "class in java.awt") size)

    Appends a separator of a specified size to the end
    of the tool bar.

    Parameters:
    :   `size` - the `Dimension` of the separator
  + ### add

    public [JButton](JButton.md "class in javax.swing") add([Action](Action.md "interface in javax.swing") a)

    Adds a new `JButton` which dispatches the action.

    Parameters:
    :   `a` - the `Action` object to add as a new menu item

    Returns:
    :   the new button which dispatches the action
  + ### createActionComponent

    protected [JButton](JButton.md "class in javax.swing") createActionComponent([Action](Action.md "interface in javax.swing") a)

    Factory method which creates the `JButton` for
    `Action`s added to the `JToolBar`.
    The default name is empty if a `null` action is passed.

    Parameters:
    :   `a` - the `Action` for the button to be added

    Returns:
    :   the newly created button

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
  + ### createActionChangeListener

    protected [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") createActionChangeListener([JButton](JButton.md "class in javax.swing") b)

    Returns a properly configured `PropertyChangeListener`
    which updates the control as changes to the `Action` occur,
    or `null` if the default
    property change listener for the control is desired.

    Parameters:
    :   `b` - a `JButton`

    Returns:
    :   `null`
  + ### addImpl

    protected void addImpl([Component](../../java/awt/Component.md "class in java.awt") comp,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") constraints,
    int index)

    If a `JButton` is being added, it is initially
    set to be disabled.

    Overrides:
    :   `addImpl` in class `Container`

    Parameters:
    :   `comp` - the component to be enhanced
    :   `constraints` - the constraints to be enforced on the component
    :   `index` - the index of the component

    See Also:
    :   - [`Container.add(Component)`](../../java/awt/Container.md#add(java.awt.Component))
        - [`Container.add(Component, int)`](../../java/awt/Container.md#add(java.awt.Component,int))
        - [`Container.add(Component, java.lang.Object)`](../../java/awt/Container.md#add(java.awt.Component,java.lang.Object))
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
        - [`LayoutManager`](../../java/awt/LayoutManager.md "interface in java.awt")
        - [`LayoutManager2`](../../java/awt/LayoutManager2.md "interface in java.awt")
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JToolBar`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JToolBar`.
  + ### setLayout

    public void setLayout([LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt") mgr)

    Description copied from class: `Container`

    Sets the layout manager for this container.

    This method changes layout-related information, and therefore,
    invalidates the component hierarchy.

    Overrides:
    :   `setLayout` in class `Container`

    Parameters:
    :   `mgr` - the specified layout manager

    See Also:
    :   - [`Container.doLayout()`](../../java/awt/Container.md#doLayout())
        - [`Container.getLayout()`](../../java/awt/Container.md#getLayout())
        - [`Container.invalidate()`](../../java/awt/Container.md#invalidate())
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JToolBar.
    For tool bars, the AccessibleContext takes the form of an
    AccessibleJToolBar.
    A new AccessibleJToolBar instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJToolBar that serves as the
        AccessibleContext of this JToolBar