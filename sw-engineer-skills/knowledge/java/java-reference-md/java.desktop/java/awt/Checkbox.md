Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Checkbox

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](Component.md "class in java.awt")

java.awt.Checkbox

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`

---

public class Checkbox
extends [Component](Component.md "class in java.awt")
implements [ItemSelectable](ItemSelectable.md "interface in java.awt"), [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility")

A check box is a graphical component that can be in either an
"on" (`true`) or "off" (`false`) state.
Clicking on a check box changes its state from
"on" to "off," or from "off" to "on."

The following code example creates a set of check boxes in
a grid layout:

---

> ```
>  setLayout(new GridLayout(3, 1));
>  add(new Checkbox("one", null, true));
>  add(new Checkbox("two"));
>  add(new Checkbox("three"));
> ```

---

This image depicts the check boxes and grid layout
created by this code example:

![The following context describes the
 graphic.](doc-files/Checkbox-1.gif)

The button labeled `one` is in the "on" state, and the
other two are in the "off" state. In this example, which uses the
`GridLayout` class, the states of the three check
boxes are set independently.

Alternatively, several check boxes can be grouped together under
the control of a single object, using the
`CheckboxGroup` class.
In a check box group, at most one button can be in the "on"
state at any given time. Clicking on a check box to turn it on
forces any other check box in the same group that is on
into the "off" state.

Since:
:   1.0

See Also:
:   * [`GridLayout`](GridLayout.md "class in java.awt")
    * [`CheckboxGroup`](CheckboxGroup.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.Checkbox)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `Checkbox.AccessibleAWTCheckbox`

  This class implements accessibility support for the
  `Checkbox` class.

  ## Nested classes/interfaces inherited from class java.awt.[Component](Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component](Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Checkbox()`

  Creates a check box with an empty string for its label.

  `Checkbox(String label)`

  Creates a check box with the specified label.

  `Checkbox(String label,
  boolean state)`

  Creates a check box with the specified label
  and sets the specified state.

  `Checkbox(String label,
  boolean state,
  CheckboxGroup group)`

  Constructs a Checkbox with the specified label, set to the
  specified state, and in the specified check box group.

  `Checkbox(String label,
  CheckboxGroup group,
  boolean state)`

  Creates a check box with the specified label, in the specified
  check box group, and set to the specified state.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addItemListener(ItemListener l)`

  Adds the specified item listener to receive item events from
  this check box.

  `void`

  `addNotify()`

  Creates the peer of the Checkbox.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this Checkbox.

  `CheckboxGroup`

  `getCheckboxGroup()`

  Determines this check box's group.

  `ItemListener[]`

  `getItemListeners()`

  Returns an array of all the item listeners
  registered on this checkbox.

  `String`

  `getLabel()`

  Gets the label of this check box.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered
  as `FooListener`s
  upon this `Checkbox`.

  `Object[]`

  `getSelectedObjects()`

  Returns an array (length 1) containing the checkbox
  label or null if the checkbox is not selected.

  `boolean`

  `getState()`

  Determines whether this check box is in the "on" or "off" state.

  `protected String`

  `paramString()`

  Returns a string representing the state of this `Checkbox`.

  `protected void`

  `processEvent(AWTEvent e)`

  Processes events on this check box.

  `protected void`

  `processItemEvent(ItemEvent e)`

  Processes item events occurring on this check box by
  dispatching them to any registered
  `ItemListener` objects.

  `void`

  `removeItemListener(ItemListener l)`

  Removes the specified item listener so that the item listener
  no longer receives item events from this check box.

  `void`

  `setCheckboxGroup(CheckboxGroup g)`

  Sets this check box's group to the specified check box group.

  `void`

  `setLabel(String label)`

  Sets this check box's label to be the string argument.

  `void`

  `setState(boolean state)`

  Sets the state of this check box to the specified state.

  ### Methods inherited from class java.awt.[Component](Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, deliverEvent, disable, disableEvents, dispatchEvent, doLayout, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getAlignmentX, getAlignmentY, getBackground, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentAt, getComponentAt, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeys, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocation, getLocationOnScreen, getMaximumSize, getMinimumSize, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPreferredSize, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getToolkit, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, hide, imageUpdate, inside, invalidate, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusCycleRoot, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isOpaque, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, layout, list, list, list, list, list, locate, location, lostFocus, minimumSize, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paint, paintAll, postEvent, preferredSize, prepareImage, prepareImage, print, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removeNotify, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, reshape, resize, resize, revalidate, setBackground, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeys, setFocusTraversalKeysEnabled, setFont, setForeground, setIgnoreRepaint, setLocale, setLocation, setLocation, setMaximumSize, setMinimumSize, setMixingCutoutShape, setName, setPreferredSize, setSize, setSize, setVisible, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle, update, validate`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Checkbox

    public Checkbox()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a check box with an empty string for its label.
    The state of this check box is set to "off," and it is not
    part of any check box group.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Checkbox

    public Checkbox([String](../../../java.base/java/lang/String.md "class in java.lang") label)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a check box with the specified label. The state
    of this check box is set to "off," and it is not part of
    any check box group.

    Parameters:
    :   `label` - a string label for this check box,
        or `null` for no label.

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless`
        returns `true`

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Checkbox

    public Checkbox([String](../../../java.base/java/lang/String.md "class in java.lang") label,
    boolean state)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a check box with the specified label
    and sets the specified state.
    This check box is not part of any check box group.

    Parameters:
    :   `label` - a string label for this check box,
        or `null` for no label
    :   `state` - the initial state of this check box

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless`
        returns `true`

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Checkbox

    public Checkbox([String](../../../java.base/java/lang/String.md "class in java.lang") label,
    boolean state,
    [CheckboxGroup](CheckboxGroup.md "class in java.awt") group)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a Checkbox with the specified label, set to the
    specified state, and in the specified check box group.

    Parameters:
    :   `label` - a string label for this check box,
        or `null` for no label.
    :   `state` - the initial state of this check box.
    :   `group` - a check box group for this check box,
        or `null` for no group.

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless`
        returns `true`

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Checkbox

    public Checkbox([String](../../../java.base/java/lang/String.md "class in java.lang") label,
    [CheckboxGroup](CheckboxGroup.md "class in java.awt") group,
    boolean state)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a check box with the specified label, in the specified
    check box group, and set to the specified state.

    Parameters:
    :   `label` - a string label for this check box,
        or `null` for no label.
    :   `group` - a check box group for this check box,
        or `null` for no group.
    :   `state` - the initial state of this check box.

    Throws:
    :   `HeadlessException` - if
        `GraphicsEnvironment.isHeadless`
        returns `true`

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### addNotify

    public void addNotify()

    Creates the peer of the Checkbox. The peer allows you to change the
    look of the Checkbox without changing its functionality.

    Overrides:
    :   `addNotify` in class `Component`

    See Also:
    :   - [`Component.getToolkit()`](Component.md#getToolkit())
  + ### getLabel

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getLabel()

    Gets the label of this check box.

    Returns:
    :   the label of this check box, or `null`
        if this check box has no label.

    See Also:
    :   - [`setLabel(String)`](#setLabel(java.lang.String))
  + ### setLabel

    public void setLabel([String](../../../java.base/java/lang/String.md "class in java.lang") label)

    Sets this check box's label to be the string argument.

    Parameters:
    :   `label` - a string to set as the new label, or
        `null` for no label.

    See Also:
    :   - [`getLabel()`](#getLabel())
  + ### getState

    public boolean getState()

    Determines whether this check box is in the "on" or "off" state.
    The boolean value `true` indicates the "on" state,
    and `false` indicates the "off" state.

    Returns:
    :   the state of this check box, as a boolean value

    See Also:
    :   - [`setState(boolean)`](#setState(boolean))
  + ### setState

    public void setState(boolean state)

    Sets the state of this check box to the specified state.
    The boolean value `true` indicates the "on" state,
    and `false` indicates the "off" state.

    Note that this method should be primarily used to
    initialize the state of the checkbox. Programmatically
    setting the state of the checkbox will *not* trigger
    an `ItemEvent`. The only way to trigger an
    `ItemEvent` is by user interaction.

    Parameters:
    :   `state` - the boolean state of the check box

    See Also:
    :   - [`getState()`](#getState())
  + ### getSelectedObjects

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getSelectedObjects()

    Returns an array (length 1) containing the checkbox
    label or null if the checkbox is not selected.

    Specified by:
    :   `getSelectedObjects` in interface `ItemSelectable`

    Returns:
    :   the list of selected objects, or `null`

    See Also:
    :   - [`ItemSelectable`](ItemSelectable.md "interface in java.awt")
  + ### getCheckboxGroup

    public [CheckboxGroup](CheckboxGroup.md "class in java.awt") getCheckboxGroup()

    Determines this check box's group.

    Returns:
    :   this check box's group, or `null`
        if the check box is not part of a check box group.

    See Also:
    :   - [`setCheckboxGroup(CheckboxGroup)`](#setCheckboxGroup(java.awt.CheckboxGroup))
  + ### setCheckboxGroup

    public void setCheckboxGroup([CheckboxGroup](CheckboxGroup.md "class in java.awt") g)

    Sets this check box's group to the specified check box group.
    If this check box is already in a different check box group,
    it is first taken out of that group.

    If the state of this check box is `true` and the new
    group already has a check box selected, this check box's state
    is changed to `false`. If the state of this check
    box is `true` and the new group has no check box
    selected, this check box becomes the selected checkbox for
    the new group and its state is `true`.

    Parameters:
    :   `g` - the new check box group, or `null`
        to remove this check box from any check box group

    See Also:
    :   - [`getCheckboxGroup()`](#getCheckboxGroup())
  + ### addItemListener

    public void addItemListener([ItemListener](event/ItemListener.md "interface in java.awt.event") l)

    Adds the specified item listener to receive item events from
    this check box. Item events are sent to listeners in response
    to user input, but not in response to calls to setState().
    If l is null, no exception is thrown and no action is performed.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Specified by:
    :   `addItemListener` in interface `ItemSelectable`

    Parameters:
    :   `l` - the item listener

    Since:
    :   1.1

    See Also:
    :   - [`removeItemListener(java.awt.event.ItemListener)`](#removeItemListener(java.awt.event.ItemListener))
        - [`getItemListeners()`](#getItemListeners())
        - [`setState(boolean)`](#setState(boolean))
        - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
  + ### removeItemListener

    public void removeItemListener([ItemListener](event/ItemListener.md "interface in java.awt.event") l)

    Removes the specified item listener so that the item listener
    no longer receives item events from this check box.
    If l is null, no exception is thrown and no action is performed.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Specified by:
    :   `removeItemListener` in interface `ItemSelectable`

    Parameters:
    :   `l` - the item listener

    Since:
    :   1.1

    See Also:
    :   - [`addItemListener(java.awt.event.ItemListener)`](#addItemListener(java.awt.event.ItemListener))
        - [`getItemListeners()`](#getItemListeners())
        - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
  + ### getItemListeners

    public [ItemListener](event/ItemListener.md "interface in java.awt.event")[] getItemListeners()

    Returns an array of all the item listeners
    registered on this checkbox.

    Returns:
    :   all of this checkbox's `ItemListener`s
        or an empty array if no item
        listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addItemListener(java.awt.event.ItemListener)`](#addItemListener(java.awt.event.ItemListener))
        - [`removeItemListener(java.awt.event.ItemListener)`](#removeItemListener(java.awt.event.ItemListener))
        - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
  + ### getListeners

    public <T extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered
    as `FooListener`s
    upon this `Checkbox`.
    `FooListener`s are registered using the
    `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal, such as
    `FooListener.class`.
    For example, you can query a
    `Checkbox c`
    for its item listeners with the following code:

    ```
    ItemListener[] ils = (ItemListener[])(c.getListeners(ItemListener.class));
    ```

    If no such listeners exist, this method returns an empty array.

    Overrides:
    :   `getListeners` in class `Component`

    Type Parameters:
    :   `T` - the type of the listeners

    Parameters:
    :   `listenerType` - the type of listeners requested; this parameter
        should specify an interface that descends from
        `java.util.EventListener`

    Returns:
    :   an array of all objects registered as
        `FooListener`s on this checkbox,
        or an empty array if no such
        listeners have been added

    Throws:
    :   `ClassCastException` - if `listenerType`
        doesn't specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.3

    See Also:
    :   - [`getItemListeners()`](#getItemListeners())
  + ### processEvent

    protected void processEvent([AWTEvent](AWTEvent.md "class in java.awt") e)

    Processes events on this check box.
    If the event is an instance of `ItemEvent`,
    this method invokes the `processItemEvent` method.
    Otherwise, it calls its superclass's `processEvent` method.

    Note that if the event parameter is `null`
    the behavior is unspecified and may result in an
    exception.

    Overrides:
    :   `processEvent` in class `Component`

    Parameters:
    :   `e` - the event

    Since:
    :   1.1

    See Also:
    :   - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`processItemEvent(java.awt.event.ItemEvent)`](#processItemEvent(java.awt.event.ItemEvent))
  + ### processItemEvent

    protected void processItemEvent([ItemEvent](event/ItemEvent.md "class in java.awt.event") e)

    Processes item events occurring on this check box by
    dispatching them to any registered
    `ItemListener` objects.

    This method is not called unless item events are
    enabled for this component. Item events are enabled
    when one of the following occurs:
    - An `ItemListener` object is registered
      via `addItemListener`.- Item events are enabled via `enableEvents`.

    Note that if the event parameter is `null`
    the behavior is unspecified and may result in an
    exception.

    Parameters:
    :   `e` - the item event

    Since:
    :   1.1

    See Also:
    :   - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
        - [`addItemListener(java.awt.event.ItemListener)`](#addItemListener(java.awt.event.ItemListener))
        - [`Component.enableEvents(long)`](Component.md#enableEvents(long))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representing the state of this `Checkbox`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Overrides:
    :   `paramString` in class `Component`

    Returns:
    :   the parameter string of this check box
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this Checkbox.
    For checkboxes, the AccessibleContext takes the form of an
    AccessibleAWTCheckbox.
    A new AccessibleAWTCheckbox is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleAWTCheckbox that serves as the
        AccessibleContext of this Checkbox

    Since:
    :   1.3