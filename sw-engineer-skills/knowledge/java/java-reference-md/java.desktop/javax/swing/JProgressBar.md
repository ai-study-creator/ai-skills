Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JProgressBar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JProgressBar

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A component that displays an integer value.")
public class JProgressBar
extends [JComponent](JComponent.md "class in javax.swing")
implements [SwingConstants](SwingConstants.md "interface in javax.swing"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A component that visually displays the progress of some task. As the task
progresses towards completion, the progress bar displays the
task's percentage of completion.
This percentage is typically represented visually by a rectangle which
starts out empty and gradually becomes filled in as the task progresses.
In addition, the progress bar can display a textual representation of this
percentage.

`JProgressBar` uses a `BoundedRangeModel` as its data model,
with the `value` property representing the "current" state of the task,
and the `minimum` and `maximum` properties representing the
beginning and end points, respectively.

To indicate that a task of unknown length is executing,
you can put a progress bar into indeterminate mode.
While the bar is in indeterminate mode,
it animates constantly to show that work is occurring.
As soon as you can determine the task's length and amount of progress,
you should update the progress bar's value
and switch it back to determinate mode.

Here is an example of creating a progress bar,
where `task` is an object (representing some piece of work)
which returns information about the progress of the task:

```
progressBar = new JProgressBar(0, task.getLengthOfTask());
progressBar.setValue(0);
progressBar.setStringPainted(true);
```

Here is an example of querying the current state of the task, and using
the returned value to update the progress bar:

```
progressBar.setValue(task.getCurrent());
```

Here is an example of putting a progress bar into
indeterminate mode,
and then switching back to determinate mode
once the length of the task is known:

```
progressBar = new JProgressBar();
...//when the task of (initially) unknown length begins:
progressBar.setIndeterminate(true);
...//do some work; get length of task...
progressBar.setMaximum(newLength);
progressBar.setValue(newValue);
progressBar.setIndeterminate(false);
```

For complete examples and further documentation see
[How to Monitor Progress](https://docs.oracle.com/javase/tutorial/uiswing/components/progress.html),
a section in *The Java Tutorial.*

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
:   * [`BasicProgressBarUI`](plaf/basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")
    * [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
    * [`SwingWorker`](SwingWorker.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JProgressBar.AccessibleJProgressBar`

  This class implements accessibility support for the
  `JProgressBar` class.

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

  `protected ChangeEvent`

  `changeEvent`

  Only one `ChangeEvent` is needed per instance since the
  event's only interesting property is the immutable source, which
  is the progress bar.

  `protected ChangeListener`

  `changeListener`

  Listens for change events sent by the progress bar's model,
  redispatching them
  to change-event listeners registered upon
  this progress bar.

  `protected BoundedRangeModel`

  `model`

  The object that holds the data for the progress bar.

  `protected int`

  `orientation`

  Whether the progress bar is horizontal or vertical.

  `protected boolean`

  `paintBorder`

  Whether to display a border around the progress bar.

  `protected boolean`

  `paintString`

  Whether to display a string of text on the progress bar.

  `protected String`

  `progressString`

  An optional string that can be displayed on the progress bar.

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

  `JProgressBar()`

  Creates a horizontal progress bar
  that displays a border but no progress string.

  `JProgressBar(int orient)`

  Creates a progress bar with the specified orientation,
  which can be
  either `SwingConstants.VERTICAL` or
  `SwingConstants.HORIZONTAL`.

  `JProgressBar(int min,
  int max)`

  Creates a horizontal progress bar
  with the specified minimum and maximum.

  `JProgressBar(int orient,
  int min,
  int max)`

  Creates a progress bar using the specified orientation,
  minimum, and maximum.

  `JProgressBar(BoundedRangeModel newModel)`

  Creates a horizontal progress bar
  that uses the specified model
  to hold the progress bar's data.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds the specified `ChangeListener` to the progress bar.

  `protected ChangeListener`

  `createChangeListener()`

  Subclasses that want to handle change events
  from the model differently
  can override this to return
  an instance of a custom `ChangeListener` implementation.

  `protected void`

  `fireStateChanged()`

  Send a `ChangeEvent`, whose source is this `JProgressBar`, to
  all `ChangeListener`s that have registered interest in
  `ChangeEvent`s.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  `JProgressBar`.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this progress bar with `addChangeListener`.

  `int`

  `getMaximum()`

  Returns the progress bar's `maximum` value
  from the `BoundedRangeModel`.

  `int`

  `getMinimum()`

  Returns the progress bar's `minimum` value
  from the `BoundedRangeModel`.

  `BoundedRangeModel`

  `getModel()`

  Returns the data model used by this progress bar.

  `int`

  `getOrientation()`

  Returns `SwingConstants.VERTICAL` or
  `SwingConstants.HORIZONTAL`, depending on the orientation
  of the progress bar.

  `double`

  `getPercentComplete()`

  Returns the percent complete for the progress bar.

  `String`

  `getString()`

  Returns a `String` representation of the current progress.

  `ProgressBarUI`

  `getUI()`

  Returns the look-and-feel object that renders this component.

  `String`

  `getUIClassID()`

  Returns the name of the look-and-feel class that renders this component.

  `int`

  `getValue()`

  Returns the progress bar's current `value`
  from the `BoundedRangeModel`.

  `boolean`

  `isBorderPainted()`

  Returns the `borderPainted` property.

  `boolean`

  `isIndeterminate()`

  Returns the value of the `indeterminate` property.

  `boolean`

  `isStringPainted()`

  Returns the value of the `stringPainted` property.

  `protected void`

  `paintBorder(Graphics g)`

  Paints the progress bar's border if the `borderPainted`
  property is `true`.

  `protected String`

  `paramString()`

  Returns a string representation of this `JProgressBar`.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a `ChangeListener` from the progress bar.

  `void`

  `setBorderPainted(boolean b)`

  Sets the `borderPainted` property, which is
  `true` if the progress bar should paint its border.

  `void`

  `setIndeterminate(boolean newValue)`

  Sets the `indeterminate` property of the progress bar,
  which determines whether the progress bar is in determinate
  or indeterminate mode.

  `void`

  `setMaximum(int n)`

  Sets the progress bar's maximum value
  (stored in the progress bar's data model) to `n`.

  `void`

  `setMinimum(int n)`

  Sets the progress bar's minimum value
  (stored in the progress bar's data model) to `n`.

  `void`

  `setModel(BoundedRangeModel newModel)`

  Sets the data model used by the `JProgressBar`.

  `void`

  `setOrientation(int newOrientation)`

  Sets the progress bar's orientation to `newOrientation`,
  which must be `SwingConstants.VERTICAL` or
  `SwingConstants.HORIZONTAL`.

  `void`

  `setString(String s)`

  Sets the value of the progress string.

  `void`

  `setStringPainted(boolean b)`

  Sets the value of the `stringPainted` property,
  which determines whether the progress bar
  should render a progress string.

  `void`

  `setUI(ProgressBarUI ui)`

  Sets the look-and-feel object that renders this component.

  `void`

  `setValue(int n)`

  Sets the progress bar's current value to `n`.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### orientation

    protected int orientation

    Whether the progress bar is horizontal or vertical.
    The default is `HORIZONTAL`.

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### paintBorder

    protected boolean paintBorder

    Whether to display a border around the progress bar.
    The default is `true`.

    See Also:
    :   - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
  + ### model

    protected [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") model

    The object that holds the data for the progress bar.

    See Also:
    :   - [`setModel(javax.swing.BoundedRangeModel)`](#setModel(javax.swing.BoundedRangeModel))
  + ### progressString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") progressString

    An optional string that can be displayed on the progress bar.
    The default is `null`. Setting this to a non-`null`
    value does not imply that the string will be displayed.
    To display the string, `paintString` must be `true`.

    See Also:
    :   - [`setString(java.lang.String)`](#setString(java.lang.String))
        - [`setStringPainted(boolean)`](#setStringPainted(boolean))
  + ### paintString

    protected boolean paintString

    Whether to display a string of text on the progress bar.
    The default is `false`.
    Setting this to `true` causes a textual
    display of the progress to be rendered on the progress bar. If
    the `progressString` is `null`,
    the percentage of completion is displayed on the progress bar.
    Otherwise, the `progressString` is
    rendered on the progress bar.

    See Also:
    :   - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`setString(java.lang.String)`](#setString(java.lang.String))
  + ### changeEvent

    protected transient [ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") changeEvent

    Only one `ChangeEvent` is needed per instance since the
    event's only interesting property is the immutable source, which
    is the progress bar.
    The event is lazily created the first time that an
    event notification is fired.

    See Also:
    :   - [`fireStateChanged()`](#fireStateChanged())
  + ### changeListener

    protected [ChangeListener](event/ChangeListener.md "interface in javax.swing.event") changeListener

    Listens for change events sent by the progress bar's model,
    redispatching them
    to change-event listeners registered upon
    this progress bar.

    See Also:
    :   - [`createChangeListener()`](#createChangeListener())
* ## Constructor Details

  + ### JProgressBar

    public JProgressBar()

    Creates a horizontal progress bar
    that displays a border but no progress string.
    The initial and minimum values are 0,
    and the maximum is 100.

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
        - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
        - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`setString(java.lang.String)`](#setString(java.lang.String))
        - [`setIndeterminate(boolean)`](#setIndeterminate(boolean))
  + ### JProgressBar

    public JProgressBar(int orient)

    Creates a progress bar with the specified orientation,
    which can be
    either `SwingConstants.VERTICAL` or
    `SwingConstants.HORIZONTAL`.
    By default, a border is painted but a progress string is not.
    The initial and minimum values are 0,
    and the maximum is 100.

    Parameters:
    :   `orient` - the desired orientation of the progress bar

    Throws:
    :   `IllegalArgumentException` - if `orient` is an illegal value

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
        - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
        - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`setString(java.lang.String)`](#setString(java.lang.String))
        - [`setIndeterminate(boolean)`](#setIndeterminate(boolean))
  + ### JProgressBar

    public JProgressBar(int min,
    int max)

    Creates a horizontal progress bar
    with the specified minimum and maximum.
    Sets the initial value of the progress bar to the specified minimum.
    By default, a border is painted but a progress string is not.

    The `BoundedRangeModel` that holds the progress bar's data
    handles any issues that may arise from improperly setting the
    minimum, initial, and maximum values on the progress bar.
    See the `BoundedRangeModel` documentation for details.

    Parameters:
    :   `min` - the minimum value of the progress bar
    :   `max` - the maximum value of the progress bar

    See Also:
    :   - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
        - [`setOrientation(int)`](#setOrientation(int))
        - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
        - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`setString(java.lang.String)`](#setString(java.lang.String))
        - [`setIndeterminate(boolean)`](#setIndeterminate(boolean))
  + ### JProgressBar

    public JProgressBar(int orient,
    int min,
    int max)

    Creates a progress bar using the specified orientation,
    minimum, and maximum.
    By default, a border is painted but a progress string is not.
    Sets the initial value of the progress bar to the specified minimum.

    The `BoundedRangeModel` that holds the progress bar's data
    handles any issues that may arise from improperly setting the
    minimum, initial, and maximum values on the progress bar.
    See the `BoundedRangeModel` documentation for details.

    Parameters:
    :   `orient` - the desired orientation of the progress bar
    :   `min` - the minimum value of the progress bar
    :   `max` - the maximum value of the progress bar

    Throws:
    :   `IllegalArgumentException` - if `orient` is an illegal value

    See Also:
    :   - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
        - [`setOrientation(int)`](#setOrientation(int))
        - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
        - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`setString(java.lang.String)`](#setString(java.lang.String))
        - [`setIndeterminate(boolean)`](#setIndeterminate(boolean))
  + ### JProgressBar

    public JProgressBar([BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") newModel)

    Creates a horizontal progress bar
    that uses the specified model
    to hold the progress bar's data.
    By default, a border is painted but a progress string is not.

    Parameters:
    :   `newModel` - the data model for the progress bar

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
        - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
        - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`setString(java.lang.String)`](#setString(java.lang.String))
        - [`setIndeterminate(boolean)`](#setIndeterminate(boolean))
* ## Method Details

  + ### getOrientation

    public int getOrientation()

    Returns `SwingConstants.VERTICAL` or
    `SwingConstants.HORIZONTAL`, depending on the orientation
    of the progress bar. The default orientation is
    `SwingConstants.HORIZONTAL`.

    Returns:
    :   `HORIZONTAL` or `VERTICAL`

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### setOrientation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Set the progress bar\'s orientation.")
    public void setOrientation(int newOrientation)

    Sets the progress bar's orientation to `newOrientation`,
    which must be `SwingConstants.VERTICAL` or
    `SwingConstants.HORIZONTAL`. The default orientation
    is `SwingConstants.HORIZONTAL`.

    Parameters:
    :   `newOrientation` - `HORIZONTAL` or `VERTICAL`

    Throws:
    :   `IllegalArgumentException` - if `newOrientation`
        is an illegal value

    See Also:
    :   - [`getOrientation()`](#getOrientation())
  + ### isStringPainted

    public boolean isStringPainted()

    Returns the value of the `stringPainted` property.

    Returns:
    :   the value of the `stringPainted` property

    See Also:
    :   - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`setString(java.lang.String)`](#setString(java.lang.String))
  + ### setStringPainted

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Whether the progress bar should render a string.")
    public void setStringPainted(boolean b)

    Sets the value of the `stringPainted` property,
    which determines whether the progress bar
    should render a progress string.
    The default is `false`, meaning
    no string is painted.
    Some look and feels might not support progress strings
    or might support them only when the progress bar is in determinate mode.

    Parameters:
    :   `b` - `true` if the progress bar should render a string

    See Also:
    :   - [`isStringPainted()`](#isStringPainted())
        - [`setString(java.lang.String)`](#setString(java.lang.String))
  + ### getString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getString()

    Returns a `String` representation of the current progress.
    By default, this returns a simple percentage `String` based on
    the value returned from `getPercentComplete`. An example
    would be the "42%". You can change this by calling `setString`.

    Returns:
    :   the value of the progress string, or a simple percentage string
        if the progress string is `null`

    See Also:
    :   - [`setString(java.lang.String)`](#setString(java.lang.String))
  + ### setString

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Specifies the progress string to paint")
    public void setString([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the value of the progress string. By default,
    this string is `null`, implying the built-in behavior of
    using a simple percent string.
    If you have provided a custom progress string and want to revert to
    the built-in behavior, set the string back to `null`.

    The progress string is painted only if
    the `isStringPainted` method returns `true`.

    Parameters:
    :   `s` - the value of the progress string

    See Also:
    :   - [`getString()`](#getString())
        - [`setStringPainted(boolean)`](#setStringPainted(boolean))
        - [`isStringPainted()`](#isStringPainted())
  + ### getPercentComplete

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public double getPercentComplete()

    Returns the percent complete for the progress bar.
    Note that this number is between 0.0 and 1.0.

    Returns:
    :   the percent complete for this progress bar
  + ### isBorderPainted

    public boolean isBorderPainted()

    Returns the `borderPainted` property.

    Returns:
    :   the value of the `borderPainted` property

    See Also:
    :   - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
  + ### setBorderPainted

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Whether the progress bar should paint its border.")
    public void setBorderPainted(boolean b)

    Sets the `borderPainted` property, which is
    `true` if the progress bar should paint its border.
    The default value for this property is `true`.
    Some look and feels might not implement painted borders;
    they will ignore this property.

    Parameters:
    :   `b` - `true` if the progress bar
        should paint its border;
        otherwise, `false`

    See Also:
    :   - [`isBorderPainted()`](#isBorderPainted())
  + ### paintBorder

    protected void paintBorder([Graphics](../../java/awt/Graphics.md "class in java.awt") g)

    Paints the progress bar's border if the `borderPainted`
    property is `true`.

    Overrides:
    :   `paintBorder` in class `JComponent`

    Parameters:
    :   `g` - the `Graphics` context within which to paint the border

    See Also:
    :   - [`JComponent.paint(java.awt.Graphics)`](JComponent.md#paint(java.awt.Graphics))
        - [`JComponent.setBorder(javax.swing.border.Border)`](JComponent.md#setBorder(javax.swing.border.Border))
        - [`isBorderPainted()`](#isBorderPainted())
        - [`setBorderPainted(boolean)`](#setBorderPainted(boolean))
  + ### getUI

    public [ProgressBarUI](plaf/ProgressBarUI.md "class in javax.swing.plaf") getUI()

    Returns the look-and-feel object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `ProgressBarUI` object that renders this component
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([ProgressBarUI](plaf/ProgressBarUI.md "class in javax.swing.plaf") ui)

    Sets the look-and-feel object that renders this component.

    Parameters:
    :   `ui` - a `ProgressBarUI` object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="A string that specifies the name of the look-and-feel class.")
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the look-and-feel class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ProgressBarUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### createChangeListener

    protected [ChangeListener](event/ChangeListener.md "interface in javax.swing.event") createChangeListener()

    Subclasses that want to handle change events
    from the model differently
    can override this to return
    an instance of a custom `ChangeListener` implementation.
    The default `ChangeListener` simply calls the
    `fireStateChanged` method to forward `ChangeEvent`s
    to the `ChangeListener`s that have been added directly to the
    progress bar.

    Returns:
    :   the instance of a custom `ChangeListener` implementation.

    See Also:
    :   - [`changeListener`](#changeListener)
        - [`fireStateChanged()`](#fireStateChanged())
        - [`ChangeListener`](event/ChangeListener.md "interface in javax.swing.event")
        - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
  + ### addChangeListener

    public void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Adds the specified `ChangeListener` to the progress bar.

    Parameters:
    :   `l` - the `ChangeListener` to add
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a `ChangeListener` from the progress bar.

    Parameters:
    :   `l` - the `ChangeListener` to remove
  + ### getChangeListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this progress bar with `addChangeListener`.

    Returns:
    :   all of the `ChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireStateChanged

    protected void fireStateChanged()

    Send a `ChangeEvent`, whose source is this `JProgressBar`, to
    all `ChangeListener`s that have registered interest in
    `ChangeEvent`s.
    This method is called each time a `ChangeEvent` is received from
    the model.

    The event instance is created if necessary, and stored in
    `changeEvent`.

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### getModel

    public [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") getModel()

    Returns the data model used by this progress bar.

    Returns:
    :   the `BoundedRangeModel` currently in use

    See Also:
    :   - [`setModel(javax.swing.BoundedRangeModel)`](#setModel(javax.swing.BoundedRangeModel))
        - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
  + ### setModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The data model used by the JProgressBar.")
    public void setModel([BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") newModel)

    Sets the data model used by the `JProgressBar`.
    Note that the `BoundedRangeModel`'s `extent` is not used,
    and is set to `0`.

    Parameters:
    :   `newModel` - the `BoundedRangeModel` to use
  + ### getValue

    public int getValue()

    Returns the progress bar's current `value`
    from the `BoundedRangeModel`.
    The value is always between the
    minimum and maximum values, inclusive.

    Returns:
    :   the current value of the progress bar

    See Also:
    :   - [`setValue(int)`](#setValue(int))
        - [`BoundedRangeModel.getValue()`](BoundedRangeModel.md#getValue())
  + ### getMinimum

    public int getMinimum()

    Returns the progress bar's `minimum` value
    from the `BoundedRangeModel`.

    Returns:
    :   the progress bar's minimum value

    See Also:
    :   - [`setMinimum(int)`](#setMinimum(int))
        - [`BoundedRangeModel.getMinimum()`](BoundedRangeModel.md#getMinimum())
  + ### getMaximum

    public int getMaximum()

    Returns the progress bar's `maximum` value
    from the `BoundedRangeModel`.

    Returns:
    :   the progress bar's maximum value

    See Also:
    :   - [`setMaximum(int)`](#setMaximum(int))
        - [`BoundedRangeModel.getMaximum()`](BoundedRangeModel.md#getMaximum())
  + ### setValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The progress bar\'s current value.")
    public void setValue(int n)

    Sets the progress bar's current value to `n`. This method
    forwards the new value to the model.

    The data model (an instance of `BoundedRangeModel`)
    handles any mathematical
    issues arising from assigning faulty values. See the
    `BoundedRangeModel` documentation for details.

    If the new value is different from the previous value,
    all change listeners are notified.

    Parameters:
    :   `n` - the new value

    See Also:
    :   - [`getValue()`](#getValue())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`BoundedRangeModel.setValue(int)`](BoundedRangeModel.md#setValue(int))
  + ### setMinimum

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The progress bar\'s minimum value.")
    public void setMinimum(int n)

    Sets the progress bar's minimum value
    (stored in the progress bar's data model) to `n`.

    The data model (a `BoundedRangeModel` instance)
    handles any mathematical
    issues arising from assigning faulty values.
    See the `BoundedRangeModel` documentation for details.

    If the minimum value is different from the previous minimum,
    all change listeners are notified.

    Parameters:
    :   `n` - the new minimum

    See Also:
    :   - [`getMinimum()`](#getMinimum())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`BoundedRangeModel.setMinimum(int)`](BoundedRangeModel.md#setMinimum(int))
  + ### setMaximum

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The progress bar\'s maximum value.")
    public void setMaximum(int n)

    Sets the progress bar's maximum value
    (stored in the progress bar's data model) to `n`.

    The underlying `BoundedRangeModel` handles any mathematical
    issues arising from assigning faulty values.
    See the `BoundedRangeModel` documentation for details.

    If the maximum value is different from the previous maximum,
    all change listeners are notified.

    Parameters:
    :   `n` - the new maximum

    See Also:
    :   - [`getMaximum()`](#getMaximum())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`BoundedRangeModel.setMaximum(int)`](BoundedRangeModel.md#setMaximum(int))
  + ### setIndeterminate

    public void setIndeterminate(boolean newValue)

    Sets the `indeterminate` property of the progress bar,
    which determines whether the progress bar is in determinate
    or indeterminate mode.
    An indeterminate progress bar continuously displays animation
    indicating that an operation of unknown length is occurring.
    By default, this property is `false`.
    Some look and feels might not support indeterminate progress bars;
    they will ignore this property.

    See
    [How to Monitor Progress](https://docs.oracle.com/javase/tutorial/uiswing/components/progress.html)
    for examples of using indeterminate progress bars.

    Parameters:
    :   `newValue` - `true` if the progress bar
        should change to indeterminate mode;
        `false` if it should revert to normal.

    Since:
    :   1.4

    See Also:
    :   - [`isIndeterminate()`](#isIndeterminate())
        - [`BasicProgressBarUI`](plaf/basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")
  + ### isIndeterminate

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="Is the progress bar indeterminate (true) or normal (false)?")
    public boolean isIndeterminate()

    Returns the value of the `indeterminate` property.

    Returns:
    :   the value of the `indeterminate` property

    Since:
    :   1.4

    See Also:
    :   - [`setIndeterminate(boolean)`](#setIndeterminate(boolean))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JProgressBar`.
    This method is intended to be used only for debugging purposes. The
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JProgressBar`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The AccessibleContext associated with this ProgressBar.")
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    `JProgressBar`. For progress bars, the
    `AccessibleContext` takes the form of an
    `AccessibleJProgressBar`.
    A new `AccessibleJProgressBar` instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an `AccessibleJProgressBar` that serves as the
        `AccessibleContext` of this `JProgressBar`