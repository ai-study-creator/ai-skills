Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JSpinner.DefaultEditor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.JPanel](JPanel.md "class in javax.swing")

javax.swing.JSpinner.DefaultEditor

All Implemented Interfaces:
:   `ImageObserver`, `LayoutManager`, `MenuContainer`, `PropertyChangeListener`, `Serializable`, `EventListener`, `Accessible`, `ChangeListener`

Direct Known Subclasses:
:   `JSpinner.DateEditor`, `JSpinner.ListEditor`, `JSpinner.NumberEditor`

Enclosing class:
:   `JSpinner`

---

public static class JSpinner.DefaultEditor
extends [JPanel](JPanel.md "class in javax.swing")
implements [ChangeListener](event/ChangeListener.md "interface in javax.swing.event"), [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans"), [LayoutManager](../../java/awt/LayoutManager.md "interface in java.awt")

A simple base class for more specialized editors
that displays a read-only view of the model's current
value with a `JFormattedTextField`. Subclasses
can configure the `JFormattedTextField` to create
an editor that's appropriate for the type of model they
support and they may want to override
the `stateChanged` and `propertyChanged`
methods, which keep the model and the text field in sync.

This class defines a `dismiss` method that removes the
editors `ChangeListener` from the `JSpinner`
that it's part of. The `setEditor` method knows about
`DefaultEditor.dismiss`, so if the developer
replaces an editor that's derived from `JSpinner.DefaultEditor`
its `ChangeListener` connection back to the
`JSpinner` will be removed. However after that,
it's up to the developer to manage their editor listeners.
Similarly, if a subclass overrides `createEditor`,
it's up to the subclasser to deal with their editor
subsequently being replaced (with `setEditor`).
We expect that in most cases, and in editor installed
with `setEditor` or created by a `createEditor`
override, will not be replaced anyway.

This class is the `LayoutManager` for it's single
`JFormattedTextField` child. By default the
child is just centered with the parents insets.

Since:
:   1.4

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JPanel](JPanel.md "class in javax.swing")

  `JPanel.AccessibleJPanel`

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
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultEditor(JSpinner spinner)`

  Constructs an editor component for the specified `JSpinner`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLayoutComponent(String name,
  Component child)`

  This `LayoutManager` method does nothing.

  `void`

  `commitEdit()`

  Pushes the currently edited value to the `SpinnerModel`.

  `void`

  `dismiss(JSpinner spinner)`

  Disconnect `this` editor from the specified
  `JSpinner`.

  `int`

  `getBaseline(int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior()`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `JSpinner`

  `getSpinner()`

  Returns the `JSpinner` ancestor of this editor or
  `null` if none of the ancestors are a
  `JSpinner`.

  `JFormattedTextField`

  `getTextField()`

  Returns the `JFormattedTextField` child of this
  editor.

  `void`

  `layoutContainer(Container parent)`

  Resize the one (and only) child to completely fill the area
  within the parents insets.

  `Dimension`

  `minimumLayoutSize(Container parent)`

  Returns the minimum size of first (and only) child plus the
  size of the parents insets.

  `Dimension`

  `preferredLayoutSize(Container parent)`

  Returns the preferred size of first (and only) child plus the
  size of the parents insets.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  Called by the `JFormattedTextField`
  `PropertyChangeListener`.

  `void`

  `removeLayoutComponent(Component child)`

  This `LayoutManager` method does nothing.

  `void`

  `stateChanged(ChangeEvent e)`

  This method is called when the spinner's model's state changes.

  ### Methods inherited from class javax.swing.[JPanel](JPanel.md "class in javax.swing")

  `getAccessibleContext, getUI, getUIClassID, paramString, setUI, updateUI`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DefaultEditor

    public DefaultEditor([JSpinner](JSpinner.md "class in javax.swing") spinner)

    Constructs an editor component for the specified `JSpinner`.
    This `DefaultEditor` is it's own layout manager and
    it is added to the spinner's `ChangeListener` list.
    The constructor creates a single `JFormattedTextField` child,
    initializes it's value to be the spinner model's current value
    and adds it to `this` `DefaultEditor`.

    Parameters:
    :   `spinner` - the spinner whose model `this` editor will monitor

    See Also:
    :   - [`getTextField()`](#getTextField())
        - [`JSpinner.addChangeListener(javax.swing.event.ChangeListener)`](JSpinner.md#addChangeListener(javax.swing.event.ChangeListener))
* ## Method Details

  + ### dismiss

    public void dismiss([JSpinner](JSpinner.md "class in javax.swing") spinner)

    Disconnect `this` editor from the specified
    `JSpinner`. By default, this method removes
    itself from the spinners `ChangeListener` list.

    Parameters:
    :   `spinner` - the `JSpinner` to disconnect this
        editor from; the same spinner as was passed to the constructor.
  + ### getSpinner

    public [JSpinner](JSpinner.md "class in javax.swing") getSpinner()

    Returns the `JSpinner` ancestor of this editor or
    `null` if none of the ancestors are a
    `JSpinner`.
    Typically the editor's parent is a `JSpinner` however
    subclasses of `JSpinner` may override the
    the `createEditor` method and insert one or more containers
    between the `JSpinner` and it's editor.

    Returns:
    :   `JSpinner` ancestor; `null`
        if none of the ancestors are a `JSpinner`

    See Also:
    :   - [`JSpinner.createEditor(javax.swing.SpinnerModel)`](JSpinner.md#createEditor(javax.swing.SpinnerModel))
  + ### getTextField

    public [JFormattedTextField](JFormattedTextField.md "class in javax.swing") getTextField()

    Returns the `JFormattedTextField` child of this
    editor. By default the text field is the first and only
    child of editor.

    Returns:
    :   the `JFormattedTextField` that gives the user
        access to the `SpinnerDateModel's` value.

    See Also:
    :   - [`getSpinner()`](#getSpinner())
        - [`JSpinner.getModel()`](JSpinner.md#getModel())
  + ### stateChanged

    public void stateChanged([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    This method is called when the spinner's model's state changes.
    It sets the `value` of the text field to the current
    value of the spinners model.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - the `ChangeEvent` whose source is the
        `JSpinner` whose model has changed.

    See Also:
    :   - [`getTextField()`](#getTextField())
        - [`JSpinner.getValue()`](JSpinner.md#getValue())
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Called by the `JFormattedTextField`
    `PropertyChangeListener`. When the `"value"`
    property changes, which implies that the user has typed a new
    number, we set the value of the spinners model.

    This class ignores `PropertyChangeEvents` whose
    source is not the `JFormattedTextField`, so subclasses
    may safely make `this` `DefaultEditor` a
    `PropertyChangeListener` on other objects.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - the `PropertyChangeEvent` whose source is
        the `JFormattedTextField` created by this class.

    See Also:
    :   - [`getTextField()`](#getTextField())
  + ### addLayoutComponent

    public void addLayoutComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../java/awt/Component.md "class in java.awt") child)

    This `LayoutManager` method does nothing. We're
    only managing a single child and there's no support
    for layout constraints.

    Specified by:
    :   `addLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `name` - ignored
    :   `child` - ignored
  + ### removeLayoutComponent

    public void removeLayoutComponent([Component](../../java/awt/Component.md "class in java.awt") child)

    This `LayoutManager` method does nothing. There
    isn't any per-child state.

    Specified by:
    :   `removeLayoutComponent` in interface `LayoutManager`

    Parameters:
    :   `child` - ignored
  + ### preferredLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") preferredLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the preferred size of first (and only) child plus the
    size of the parents insets.

    Specified by:
    :   `preferredLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the Container that's managing the layout

    Returns:
    :   the preferred dimensions to lay out the subcomponents
        of the specified container.

    See Also:
    :   - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
  + ### minimumLayoutSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") minimumLayoutSize([Container](../../java/awt/Container.md "class in java.awt") parent)

    Returns the minimum size of first (and only) child plus the
    size of the parents insets.

    Specified by:
    :   `minimumLayoutSize` in interface `LayoutManager`

    Parameters:
    :   `parent` - the Container that's managing the layout

    Returns:
    :   the minimum dimensions needed to lay out the subcomponents
        of the specified container.

    See Also:
    :   - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### layoutContainer

    public void layoutContainer([Container](../../java/awt/Container.md "class in java.awt") parent)

    Resize the one (and only) child to completely fill the area
    within the parents insets.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Parameters:
    :   `parent` - the container to be laid out
  + ### commitEdit

    public void commitEdit()
    throws [ParseException](../../../java.base/java/text/ParseException.md "class in java.text")

    Pushes the currently edited value to the `SpinnerModel`.

    The default implementation invokes `commitEdit` on the
    `JFormattedTextField`.

    Throws:
    :   `ParseException` - if the edited value is not legal
  + ### getBaseline

    public int getBaseline(int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `JComponent`

    Parameters:
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   the baseline or < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int,int)`](JComponent.md#getBaseline(int,int))
        - [`JComponent.getBaselineResizeBehavior()`](JComponent.md#getBaselineResizeBehavior())
  + ### getBaselineResizeBehavior

    public [Component.BaselineResizeBehavior](../../java/awt/Component.BaselineResizeBehavior.md "enum class in java.awt") getBaselineResizeBehavior()

    Returns an enum indicating how the baseline of the component
    changes as the size changes.

    Overrides:
    :   `getBaselineResizeBehavior` in class `JComponent`

    Returns:
    :   an enum indicating how the baseline changes as the component
        size changes

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](JComponent.md#getBaseline(int,int))