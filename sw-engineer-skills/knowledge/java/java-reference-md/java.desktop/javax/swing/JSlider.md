Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JSlider

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JSlider

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `SwingConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A component that supports selecting a integer value from a range.")
public class JSlider
extends [JComponent](JComponent.md "class in javax.swing")
implements [SwingConstants](SwingConstants.md "interface in javax.swing"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A component that lets the user graphically select a value by sliding
a knob within a bounded interval. The knob is always positioned
at the points that match integer values within the specified interval.

The slider can show both
major tick marks, and minor tick marks between the major ones. The number of
values between the tick marks is controlled with
`setMajorTickSpacing` and `setMinorTickSpacing`.
Painting of tick marks is controlled by `setPaintTicks`.

Sliders can also print text labels at regular intervals (or at
arbitrary locations) along the slider track. Painting of labels is
controlled by `setLabelTable` and `setPaintLabels`.

For further information and examples see
[How to Use Sliders](https://docs.oracle.com/javase/tutorial/uiswing/components/slider.html),
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

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JSlider.AccessibleJSlider`

  This class implements accessibility support for the
  `JSlider` class.

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

  Only one `ChangeEvent` is needed per slider instance since the
  event's only (read-only) state is the source property.

  `protected ChangeListener`

  `changeListener`

  The changeListener (no suffix) is the listener we add to the
  slider's model.

  `protected int`

  `majorTickSpacing`

  The number of values between the major tick marks -- the
  larger marks that break up the minor tick marks.

  `protected int`

  `minorTickSpacing`

  The number of values between the minor tick marks -- the
  smaller marks that occur between the major tick marks.

  `protected int`

  `orientation`

  Whether the slider is horizontal or vertical
  The default is horizontal.

  `protected BoundedRangeModel`

  `sliderModel`

  The data model that handles the numeric maximum value,
  minimum value, and current-position value for the slider.

  `protected boolean`

  `snapToTicks`

  If true, the knob (and the data value it represents)
  resolve to the closest tick mark next to where the user
  positioned the knob.

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

  `JSlider()`

  Creates a horizontal slider with the range 0 to 100 and
  an initial value of 50.

  `JSlider(int orientation)`

  Creates a slider using the specified orientation with the
  range `0` to `100` and an initial value of `50`.

  `JSlider(int min,
  int max)`

  Creates a horizontal slider using the specified min and max
  with an initial value equal to the average of the min plus max.

  `JSlider(int min,
  int max,
  int value)`

  Creates a horizontal slider using the specified min, max and value.

  `JSlider(int orientation,
  int min,
  int max,
  int value)`

  Creates a slider with the specified orientation and the
  specified minimum, maximum, and initial values.

  `JSlider(BoundedRangeModel brm)`

  Creates a horizontal slider using the specified
  BoundedRangeModel.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a ChangeListener to the slider.

  `protected ChangeListener`

  `createChangeListener()`

  Subclasses that want to handle `ChangeEvent`s
  from the model differently
  can override this to return
  an instance of a custom `ChangeListener` implementation.

  `Hashtable<Integer,JComponent>`

  `createStandardLabels(int increment)`

  Creates a `Hashtable` of numerical text labels, starting at the
  slider minimum, and using the increment specified.

  `Hashtable<Integer,JComponent>`

  `createStandardLabels(int increment,
  int start)`

  Creates a `Hashtable` of numerical text labels, starting at the
  starting point specified, and using the increment specified.

  `protected void`

  `fireStateChanged()`

  Send a `ChangeEvent`, whose source is this `JSlider`, to
  all `ChangeListener`s that have registered interest in
  `ChangeEvent`s.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JSlider.

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this JSlider with addChangeListener().

  `int`

  `getExtent()`

  Returns the "extent" from the `BoundedRangeModel`.

  `boolean`

  `getInverted()`

  Returns true if the value-range shown for the slider is reversed,

  `Dictionary`

  `getLabelTable()`

  Returns the dictionary of what labels to draw at which values.

  `int`

  `getMajorTickSpacing()`

  This method returns the major tick spacing.

  `int`

  `getMaximum()`

  Returns the maximum value supported by the slider
  from the `BoundedRangeModel`.

  `int`

  `getMinimum()`

  Returns the minimum value supported by the slider
  from the `BoundedRangeModel`.

  `int`

  `getMinorTickSpacing()`

  This method returns the minor tick spacing.

  `BoundedRangeModel`

  `getModel()`

  Returns the `BoundedRangeModel` that handles the slider's three
  fundamental properties: minimum, maximum, value.

  `int`

  `getOrientation()`

  Return this slider's vertical or horizontal orientation.

  `boolean`

  `getPaintLabels()`

  Tells if labels are to be painted.

  `boolean`

  `getPaintTicks()`

  Tells if tick marks are to be painted.

  `boolean`

  `getPaintTrack()`

  Tells if the track (area the slider slides in) is to be painted.

  `boolean`

  `getSnapToTicks()`

  Returns true if the knob (and the data value it represents)
  resolve to the closest tick mark next to where the user
  positioned the knob.

  `SliderUI`

  `getUI()`

  Gets the UI object which implements the L&F for this component.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `int`

  `getValue()`

  Returns the slider's current value
  from the `BoundedRangeModel`.

  `boolean`

  `getValueIsAdjusting()`

  Returns the `valueIsAdjusting` property from the model.

  `boolean`

  `imageUpdate(Image img,
  int infoflags,
  int x,
  int y,
  int w,
  int h)`

  Repaints the component when the image has changed.

  `protected String`

  `paramString()`

  Returns a string representation of this JSlider.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a ChangeListener from the slider.

  `void`

  `setExtent(int extent)`

  Sets the size of the range "covered" by the knob.

  `void`

  `setFont(Font font)`

  Sets the font for this component.

  `void`

  `setInverted(boolean b)`

  Specify true to reverse the value-range shown for the slider and false to
  put the value range in the normal order.

  `void`

  `setLabelTable(Dictionary labels)`

  Used to specify what label will be drawn at any given value.

  `void`

  `setMajorTickSpacing(int n)`

  This method sets the major tick spacing.

  `void`

  `setMaximum(int maximum)`

  Sets the slider's maximum value to `maximum`.

  `void`

  `setMinimum(int minimum)`

  Sets the slider's minimum value to `minimum`.

  `void`

  `setMinorTickSpacing(int n)`

  This method sets the minor tick spacing.

  `void`

  `setModel(BoundedRangeModel newModel)`

  Sets the `BoundedRangeModel` that handles the slider's three
  fundamental properties: minimum, maximum, value.

  `void`

  `setOrientation(int orientation)`

  Set the slider's orientation to either `SwingConstants.VERTICAL` or
  `SwingConstants.HORIZONTAL`.

  `void`

  `setPaintLabels(boolean b)`

  Determines whether labels are painted on the slider.

  `void`

  `setPaintTicks(boolean b)`

  Determines whether tick marks are painted on the slider.

  `void`

  `setPaintTrack(boolean b)`

  Determines whether the track is painted on the slider.

  `void`

  `setSnapToTicks(boolean b)`

  Specifying true makes the knob (and the data value it represents)
  resolve to the closest tick mark next to where the user
  positioned the knob.

  `void`

  `setUI(SliderUI ui)`

  Sets the UI object which implements the L&F for this component.

  `void`

  `setValue(int n)`

  Sets the slider's current value to `n`.

  `void`

  `setValueIsAdjusting(boolean b)`

  Sets the model's `valueIsAdjusting` property.

  `protected void`

  `updateLabelUIs()`

  Updates the UIs for the labels in the label table by calling
  `updateUI` on each label.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### sliderModel

    protected [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") sliderModel

    The data model that handles the numeric maximum value,
    minimum value, and current-position value for the slider.
  + ### majorTickSpacing

    protected int majorTickSpacing

    The number of values between the major tick marks -- the
    larger marks that break up the minor tick marks.
  + ### minorTickSpacing

    protected int minorTickSpacing

    The number of values between the minor tick marks -- the
    smaller marks that occur between the major tick marks.

    See Also:
    :   - [`setMinorTickSpacing(int)`](#setMinorTickSpacing(int))
  + ### snapToTicks

    protected boolean snapToTicks

    If true, the knob (and the data value it represents)
    resolve to the closest tick mark next to where the user
    positioned the knob. The default is false.

    See Also:
    :   - [`setSnapToTicks(boolean)`](#setSnapToTicks(boolean))
  + ### orientation

    protected int orientation

    Whether the slider is horizontal or vertical
    The default is horizontal.

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### changeListener

    protected [ChangeListener](event/ChangeListener.md "interface in javax.swing.event") changeListener

    The changeListener (no suffix) is the listener we add to the
    slider's model. This listener is initialized to the
    `ChangeListener` returned from `createChangeListener`,
    which by default just forwards events
    to `ChangeListener`s (if any) added directly to the slider.

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`createChangeListener()`](#createChangeListener())
  + ### changeEvent

    protected transient [ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") changeEvent

    Only one `ChangeEvent` is needed per slider instance since the
    event's only (read-only) state is the source property. The source
    of events generated here is always "this". The event is lazily
    created the first time that an event notification is fired.

    See Also:
    :   - [`fireStateChanged()`](#fireStateChanged())
* ## Constructor Details

  + ### JSlider

    public JSlider()

    Creates a horizontal slider with the range 0 to 100 and
    an initial value of 50.
  + ### JSlider

    public JSlider(int orientation)

    Creates a slider using the specified orientation with the
    range `0` to `100` and an initial value of `50`.
    The orientation can be
    either `SwingConstants.VERTICAL` or
    `SwingConstants.HORIZONTAL`.

    Parameters:
    :   `orientation` - the orientation of the slider

    Throws:
    :   `IllegalArgumentException` - if orientation is not one of `VERTICAL`, `HORIZONTAL`

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### JSlider

    public JSlider(int min,
    int max)

    Creates a horizontal slider using the specified min and max
    with an initial value equal to the average of the min plus max.

    The `BoundedRangeModel` that holds the slider's data
    handles any issues that may arise from improperly setting the
    minimum and maximum values on the slider. See the
    `BoundedRangeModel` documentation for details.

    Parameters:
    :   `min` - the minimum value of the slider
    :   `max` - the maximum value of the slider

    See Also:
    :   - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
        - [`setMinimum(int)`](#setMinimum(int))
        - [`setMaximum(int)`](#setMaximum(int))
  + ### JSlider

    public JSlider(int min,
    int max,
    int value)

    Creates a horizontal slider using the specified min, max and value.

    The `BoundedRangeModel` that holds the slider's data
    handles any issues that may arise from improperly setting the
    minimum, initial, and maximum values on the slider. See the
    `BoundedRangeModel` documentation for details.

    Parameters:
    :   `min` - the minimum value of the slider
    :   `max` - the maximum value of the slider
    :   `value` - the initial value of the slider

    See Also:
    :   - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
        - [`setMinimum(int)`](#setMinimum(int))
        - [`setMaximum(int)`](#setMaximum(int))
        - [`setValue(int)`](#setValue(int))
  + ### JSlider

    public JSlider(int orientation,
    int min,
    int max,
    int value)

    Creates a slider with the specified orientation and the
    specified minimum, maximum, and initial values.
    The orientation can be
    either `SwingConstants.VERTICAL` or
    `SwingConstants.HORIZONTAL`.

    The `BoundedRangeModel` that holds the slider's data
    handles any issues that may arise from improperly setting the
    minimum, initial, and maximum values on the slider. See the
    `BoundedRangeModel` documentation for details.

    Parameters:
    :   `orientation` - the orientation of the slider
    :   `min` - the minimum value of the slider
    :   `max` - the maximum value of the slider
    :   `value` - the initial value of the slider

    Throws:
    :   `IllegalArgumentException` - if orientation is not one of `VERTICAL`, `HORIZONTAL`

    See Also:
    :   - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
        - [`setOrientation(int)`](#setOrientation(int))
        - [`setMinimum(int)`](#setMinimum(int))
        - [`setMaximum(int)`](#setMaximum(int))
        - [`setValue(int)`](#setValue(int))
  + ### JSlider

    public JSlider([BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") brm)

    Creates a horizontal slider using the specified
    BoundedRangeModel.

    Parameters:
    :   `brm` - a `BoundedRangeModel` for the slider
* ## Method Details

  + ### getUI

    public [SliderUI](plaf/SliderUI.md "class in javax.swing.plaf") getUI()

    Gets the UI object which implements the L&F for this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the SliderUI object that implements the Slider L&F
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the slider\'s LookAndFeel.")
    public void setUI([SliderUI](plaf/SliderUI.md "class in javax.swing.plaf") ui)

    Sets the UI object which implements the L&F for this component.

    Parameters:
    :   `ui` - the SliderUI L&F object

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

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "SliderUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### createChangeListener

    protected [ChangeListener](event/ChangeListener.md "interface in javax.swing.event") createChangeListener()

    Subclasses that want to handle `ChangeEvent`s
    from the model differently
    can override this to return
    an instance of a custom `ChangeListener` implementation.
    The default `ChangeListener` simply calls the
    `fireStateChanged` method to forward `ChangeEvent`s
    to the `ChangeListener`s that have been added directly to the
    slider.

    Returns:
    :   a instance of new `ChangeListener`

    See Also:
    :   - [`changeListener`](#changeListener)
        - [`fireStateChanged()`](#fireStateChanged())
        - [`ChangeListener`](event/ChangeListener.md "interface in javax.swing.event")
        - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
  + ### addChangeListener

    public void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a ChangeListener to the slider.

    Parameters:
    :   `l` - the ChangeListener to add

    See Also:
    :   - [`fireStateChanged()`](#fireStateChanged())
        - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a ChangeListener from the slider.

    Parameters:
    :   `l` - the ChangeListener to remove

    See Also:
    :   - [`fireStateChanged()`](#fireStateChanged())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
  + ### getChangeListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this JSlider with addChangeListener().

    Returns:
    :   all of the `ChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireStateChanged

    protected void fireStateChanged()

    Send a `ChangeEvent`, whose source is this `JSlider`, to
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

    Returns the `BoundedRangeModel` that handles the slider's three
    fundamental properties: minimum, maximum, value.

    Returns:
    :   the data model for this component

    See Also:
    :   - [`setModel(javax.swing.BoundedRangeModel)`](#setModel(javax.swing.BoundedRangeModel))
        - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
  + ### setModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The sliders BoundedRangeModel.")
    public void setModel([BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") newModel)

    Sets the `BoundedRangeModel` that handles the slider's three
    fundamental properties: minimum, maximum, value.

    Attempts to pass a `null` model to this method result in
    undefined behavior, and, most likely, exceptions.

    Parameters:
    :   `newModel` - the new, `non-null` `BoundedRangeModel` to use

    See Also:
    :   - [`getModel()`](#getModel())
        - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
  + ### getValue

    public int getValue()

    Returns the slider's current value
    from the `BoundedRangeModel`.

    Returns:
    :   the current value of the slider

    See Also:
    :   - [`setValue(int)`](#setValue(int))
        - [`BoundedRangeModel.getValue()`](BoundedRangeModel.md#getValue())
  + ### setValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The sliders current value.")
    public void setValue(int n)

    Sets the slider's current value to `n`. This method
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
  + ### getMinimum

    public int getMinimum()

    Returns the minimum value supported by the slider
    from the `BoundedRangeModel`.

    Returns:
    :   the value of the model's minimum property

    See Also:
    :   - [`setMinimum(int)`](#setMinimum(int))
        - [`BoundedRangeModel.getMinimum()`](BoundedRangeModel.md#getMinimum())
  + ### setMinimum

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The sliders minimum value.")
    public void setMinimum(int minimum)

    Sets the slider's minimum value to `minimum`. This method
    forwards the new minimum value to the model.

    The data model (an instance of `BoundedRangeModel`)
    handles any mathematical
    issues arising from assigning faulty values. See the
    `BoundedRangeModel` documentation for details.

    If the new minimum value is different from the previous minimum value,
    all change listeners are notified.

    Parameters:
    :   `minimum` - the new minimum

    See Also:
    :   - [`getMinimum()`](#getMinimum())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`BoundedRangeModel.setMinimum(int)`](BoundedRangeModel.md#setMinimum(int))
  + ### getMaximum

    public int getMaximum()

    Returns the maximum value supported by the slider
    from the `BoundedRangeModel`.

    Returns:
    :   the value of the model's maximum property

    See Also:
    :   - [`setMaximum(int)`](#setMaximum(int))
        - [`BoundedRangeModel.getMaximum()`](BoundedRangeModel.md#getMaximum())
  + ### setMaximum

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The sliders maximum value.")
    public void setMaximum(int maximum)

    Sets the slider's maximum value to `maximum`. This method
    forwards the new maximum value to the model.

    The data model (an instance of `BoundedRangeModel`)
    handles any mathematical
    issues arising from assigning faulty values. See the
    `BoundedRangeModel` documentation for details.

    If the new maximum value is different from the previous maximum value,
    all change listeners are notified.

    Parameters:
    :   `maximum` - the new maximum

    See Also:
    :   - [`getMaximum()`](#getMaximum())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`BoundedRangeModel.setMaximum(int)`](BoundedRangeModel.md#setMaximum(int))
  + ### getValueIsAdjusting

    public boolean getValueIsAdjusting()

    Returns the `valueIsAdjusting` property from the model. For
    details on how this is used, see the `setValueIsAdjusting`
    documentation.

    Returns:
    :   the value of the model's `valueIsAdjusting` property

    See Also:
    :   - [`setValueIsAdjusting(boolean)`](#setValueIsAdjusting(boolean))
  + ### setValueIsAdjusting

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="True if the slider knob is being dragged.")
    public void setValueIsAdjusting(boolean b)

    Sets the model's `valueIsAdjusting` property. Slider look and
    feel implementations should set this property to `true` when
    a knob drag begins, and to `false` when the drag ends.

    Parameters:
    :   `b` - the new value for the `valueIsAdjusting` property

    See Also:
    :   - [`getValueIsAdjusting()`](#getValueIsAdjusting())
        - [`BoundedRangeModel.setValueIsAdjusting(boolean)`](BoundedRangeModel.md#setValueIsAdjusting(boolean))
  + ### getExtent

    public int getExtent()

    Returns the "extent" from the `BoundedRangeModel`.
    This represents the range of values "covered" by the knob.

    Returns:
    :   an int representing the extent

    See Also:
    :   - [`setExtent(int)`](#setExtent(int))
        - [`BoundedRangeModel.getExtent()`](BoundedRangeModel.md#getExtent())
  + ### setExtent

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="Size of the range covered by the knob.")
    public void setExtent(int extent)

    Sets the size of the range "covered" by the knob. Most look
    and feel implementations will change the value by this amount
    if the user clicks on either side of the knob. This method just
    forwards the new extent value to the model.

    The data model (an instance of `BoundedRangeModel`)
    handles any mathematical
    issues arising from assigning faulty values. See the
    `BoundedRangeModel` documentation for details.

    If the new extent value is different from the previous extent value,
    all change listeners are notified.

    Parameters:
    :   `extent` - the new extent

    See Also:
    :   - [`getExtent()`](#getExtent())
        - [`BoundedRangeModel.setExtent(int)`](BoundedRangeModel.md#setExtent(int))
  + ### getOrientation

    public int getOrientation()

    Return this slider's vertical or horizontal orientation.

    Returns:
    :   `SwingConstants.VERTICAL` or
        `SwingConstants.HORIZONTAL`

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### setOrientation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JSlider.VERTICAL","JSlider.HORIZONTAL"},
    [description](../../java/beans/BeanProperty.md#description())="Set the scrollbars orientation to either VERTICAL or HORIZONTAL.")
    public void setOrientation(int orientation)

    Set the slider's orientation to either `SwingConstants.VERTICAL` or
    `SwingConstants.HORIZONTAL`.

    Parameters:
    :   `orientation` - `HORIZONTAL` or `VERTICAL`

    Throws:
    :   `IllegalArgumentException` - if orientation is not one of `VERTICAL`, `HORIZONTAL`

    See Also:
    :   - [`getOrientation()`](#getOrientation())
  + ### setFont

    public void setFont([Font](../../java/awt/Font.md "class in java.awt") font)

    Sets the font for this component.

    Overrides:
    :   `setFont` in class `JComponent`

    Parameters:
    :   `font` - the desired `Font` for this component

    Since:
    :   1.6

    See Also:
    :   - [`Component.getFont()`](../../java/awt/Component.md#getFont())
  + ### imageUpdate

    public boolean imageUpdate([Image](../../java/awt/Image.md "class in java.awt") img,
    int infoflags,
    int x,
    int y,
    int w,
    int h)

    Repaints the component when the image has changed.
    This `imageUpdate` method of an `ImageObserver`
    is called when more information about an
    image which had been previously requested using an asynchronous
    routine such as the `drawImage` method of
    `Graphics` becomes available.
    See the definition of `imageUpdate` for
    more information on this method and its arguments.

    The `imageUpdate` method of `Component`
    incrementally draws an image on the component as more of the bits
    of the image are available.

    If the system property `awt.image.incrementaldraw`
    is missing or has the value `true`, the image is
    incrementally drawn. If the system property has any other value,
    then the image is not drawn until it has been completely loaded.

    Also, if incremental drawing is in effect, the value of the
    system property `awt.image.redrawrate` is interpreted
    as an integer to give the maximum redraw rate, in milliseconds. If
    the system property is missing or cannot be interpreted as an
    integer, the redraw rate is once every 100ms.

    The interpretation of the `x`, `y`,
    `width`, and `height` arguments depends on
    the value of the `infoflags` argument.

    Specified by:
    :   `imageUpdate` in interface `ImageObserver`

    Overrides:
    :   `imageUpdate` in class `Component`

    Parameters:
    :   `img` - the image being observed
    :   `infoflags` - see `imageUpdate` for more information
    :   `x` - the *x* coordinate
    :   `y` - the *y* coordinate
    :   `w` - the width
    :   `h` - the height

    Returns:
    :   `false` if the infoflags indicate that the
        image is completely loaded; `true` otherwise.

    Since:
    :   1.7

    See Also:
    :   - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`Graphics.drawImage(Image, int, int, Color, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,java.awt.Color,java.awt.image.ImageObserver))
        - [`Graphics.drawImage(Image, int, int, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,java.awt.image.ImageObserver))
        - [`Graphics.drawImage(Image, int, int, int, int, Color, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,int,int,java.awt.Color,java.awt.image.ImageObserver))
        - [`Graphics.drawImage(Image, int, int, int, int, java.awt.image.ImageObserver)`](../../java/awt/Graphics.md#drawImage(java.awt.Image,int,int,int,int,java.awt.image.ImageObserver))
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### getLabelTable

    public [Dictionary](../../../java.base/java/util/Dictionary.md "class in java.util") getLabelTable()

    Returns the dictionary of what labels to draw at which values.

    Returns:
    :   the `Dictionary` containing labels and
        where to draw them
  + ### setLabelTable

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Specifies what labels will be drawn for any given value.")
    public void setLabelTable([Dictionary](../../../java.base/java/util/Dictionary.md "class in java.util") labels)

    Used to specify what label will be drawn at any given value.
    The key-value pairs are of this format:
    `{ Integer value, java.swing.JComponent label }`.

    An easy way to generate a standard table of value labels is by using the
    `createStandardLabels` method.

    Once the labels have been set, this method calls [`updateLabelUIs()`](#updateLabelUIs()).
    Note that the labels are only painted if the `paintLabels`
    property is `true`.

    Parameters:
    :   `labels` - new `Dictionary` of labels, or `null` to
        remove all labels

    See Also:
    :   - [`createStandardLabels(int)`](#createStandardLabels(int))
        - [`getLabelTable()`](#getLabelTable())
        - [`setPaintLabels(boolean)`](#setPaintLabels(boolean))
  + ### updateLabelUIs

    protected void updateLabelUIs()

    Updates the UIs for the labels in the label table by calling
    `updateUI` on each label. The UIs are updated from
    the current look and feel. The labels are also set to their
    preferred size.

    See Also:
    :   - [`setLabelTable(java.util.Dictionary)`](#setLabelTable(java.util.Dictionary))
        - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### createStandardLabels

    public [Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<[Integer](../../../java.base/java/lang/Integer.md "class in java.lang"),[JComponent](JComponent.md "class in javax.swing")> createStandardLabels(int increment)

    Creates a `Hashtable` of numerical text labels, starting at the
    slider minimum, and using the increment specified.
    For example, if you call `createStandardLabels( 10 )`
    and the slider minimum is zero,
    then labels will be created for the values 0, 10, 20, 30, and so on.

    For the labels to be drawn on the slider, the returned `Hashtable`
    must be passed into `setLabelTable`, and `setPaintLabels`
    must be set to `true`.

    For further details on the makeup of the returned `Hashtable`, see
    the `setLabelTable` documentation.

    Parameters:
    :   `increment` - distance between labels in the generated hashtable

    Returns:
    :   a new `Hashtable` of labels

    Throws:
    :   `IllegalArgumentException` - if `increment` is less than or
        equal to zero

    See Also:
    :   - [`setLabelTable(java.util.Dictionary)`](#setLabelTable(java.util.Dictionary))
        - [`setPaintLabels(boolean)`](#setPaintLabels(boolean))
  + ### createStandardLabels

    public [Hashtable](../../../java.base/java/util/Hashtable.md "class in java.util")<[Integer](../../../java.base/java/lang/Integer.md "class in java.lang"),[JComponent](JComponent.md "class in javax.swing")> createStandardLabels(int increment,
    int start)

    Creates a `Hashtable` of numerical text labels, starting at the
    starting point specified, and using the increment specified.
    For example, if you call
    `createStandardLabels( 10, 2 )`,
    then labels will be created for the values 2, 12, 22, 32, and so on.

    For the labels to be drawn on the slider, the returned `Hashtable`
    must be passed into `setLabelTable`, and `setPaintLabels`
    must be set to `true`.

    For further details on the makeup of the returned `Hashtable`, see
    the `setLabelTable` documentation.

    Parameters:
    :   `increment` - distance between labels in the generated hashtable
    :   `start` - value at which the labels will begin

    Returns:
    :   a new `Hashtable` of labels

    Throws:
    :   `IllegalArgumentException` - if `start` is
        out of range, or if `increment` is less than or equal
        to zero

    See Also:
    :   - [`setLabelTable(java.util.Dictionary)`](#setLabelTable(java.util.Dictionary))
        - [`setPaintLabels(boolean)`](#setPaintLabels(boolean))
  + ### getInverted

    public boolean getInverted()

    Returns true if the value-range shown for the slider is reversed,

    Returns:
    :   true if the slider values are reversed from their normal order

    See Also:
    :   - [`setInverted(boolean)`](#setInverted(boolean))
  + ### setInverted

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="If true reverses the slider values from their normal order")
    public void setInverted(boolean b)

    Specify true to reverse the value-range shown for the slider and false to
    put the value range in the normal order. The order depends on the
    slider's `ComponentOrientation` property. Normal (non-inverted)
    horizontal sliders with a `ComponentOrientation` value of
    `LEFT_TO_RIGHT` have their maximum on the right.
    Normal horizontal sliders with a `ComponentOrientation` value of
    `RIGHT_TO_LEFT` have their maximum on the left. Normal vertical
    sliders have their maximum on the top. These labels are reversed when the
    slider is inverted.

    By default, the value of this property is `false`.

    Parameters:
    :   `b` - true to reverse the slider values from their normal order
  + ### getMajorTickSpacing

    public int getMajorTickSpacing()

    This method returns the major tick spacing. The number that is returned
    represents the distance, measured in values, between each major tick mark.
    If you have a slider with a range from 0 to 50 and the major tick spacing
    is set to 10, you will get major ticks next to the following values:
    0, 10, 20, 30, 40, 50.

    Returns:
    :   the number of values between major ticks

    See Also:
    :   - [`setMajorTickSpacing(int)`](#setMajorTickSpacing(int))
  + ### setMajorTickSpacing

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the number of values between major tick marks.")
    public void setMajorTickSpacing(int n)

    This method sets the major tick spacing. The number that is passed in
    represents the distance, measured in values, between each major tick mark.
    If you have a slider with a range from 0 to 50 and the major tick spacing
    is set to 10, you will get major ticks next to the following values:
    0, 10, 20, 30, 40, 50.

    In order for major ticks to be painted, `setPaintTicks` must be
    set to `true`.

    This method will also set up a label table for you.
    If there is not already a label table, and the major tick spacing is
    `> 0`, and `getPaintLabels` returns
    `true`, a standard label table will be generated (by calling
    `createStandardLabels`) with labels at the major tick marks.
    For the example above, you would get text labels: "0",
    "10", "20", "30", "40", "50".
    The label table is then set on the slider by calling
    `setLabelTable`.

    Parameters:
    :   `n` - new value for the `majorTickSpacing` property

    See Also:
    :   - [`getMajorTickSpacing()`](#getMajorTickSpacing())
        - [`setPaintTicks(boolean)`](#setPaintTicks(boolean))
        - [`setLabelTable(java.util.Dictionary)`](#setLabelTable(java.util.Dictionary))
        - [`createStandardLabels(int)`](#createStandardLabels(int))
  + ### getMinorTickSpacing

    public int getMinorTickSpacing()

    This method returns the minor tick spacing. The number that is returned
    represents the distance, measured in values, between each minor tick mark.
    If you have a slider with a range from 0 to 50 and the minor tick spacing
    is set to 10, you will get minor ticks next to the following values:
    0, 10, 20, 30, 40, 50.

    Returns:
    :   the number of values between minor ticks

    See Also:
    :   - [`getMinorTickSpacing()`](#getMinorTickSpacing())
  + ### setMinorTickSpacing

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the number of values between minor tick marks.")
    public void setMinorTickSpacing(int n)

    This method sets the minor tick spacing. The number that is passed in
    represents the distance, measured in values, between each minor tick mark.
    If you have a slider with a range from 0 to 50 and the minor tick spacing
    is set to 10, you will get minor ticks next to the following values:
    0, 10, 20, 30, 40, 50.

    In order for minor ticks to be painted, `setPaintTicks` must be
    set to `true`.

    Parameters:
    :   `n` - new value for the `minorTickSpacing` property

    See Also:
    :   - [`getMinorTickSpacing()`](#getMinorTickSpacing())
        - [`setPaintTicks(boolean)`](#setPaintTicks(boolean))
  + ### getSnapToTicks

    public boolean getSnapToTicks()

    Returns true if the knob (and the data value it represents)
    resolve to the closest tick mark next to where the user
    positioned the knob.

    Returns:
    :   true if the value snaps to the nearest tick mark, else false

    See Also:
    :   - [`setSnapToTicks(boolean)`](#setSnapToTicks(boolean))
  + ### setSnapToTicks

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="If true snap the knob to the nearest tick mark.")
    public void setSnapToTicks(boolean b)

    Specifying true makes the knob (and the data value it represents)
    resolve to the closest tick mark next to where the user
    positioned the knob.
    By default, this property is `false`.

    Parameters:
    :   `b` - true to snap the knob to the nearest tick mark

    See Also:
    :   - [`getSnapToTicks()`](#getSnapToTicks())
  + ### getPaintTicks

    public boolean getPaintTicks()

    Tells if tick marks are to be painted.

    Returns:
    :   true if tick marks are painted, else false

    See Also:
    :   - [`setPaintTicks(boolean)`](#setPaintTicks(boolean))
  + ### setPaintTicks

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="If true tick marks are painted on the slider.")
    public void setPaintTicks(boolean b)

    Determines whether tick marks are painted on the slider.
    By default, this property is `false`.

    Parameters:
    :   `b` - whether or not tick marks should be painted

    See Also:
    :   - [`getPaintTicks()`](#getPaintTicks())
  + ### getPaintTrack

    public boolean getPaintTrack()

    Tells if the track (area the slider slides in) is to be painted.

    Returns:
    :   true if track is painted, else false

    See Also:
    :   - [`setPaintTrack(boolean)`](#setPaintTrack(boolean))
  + ### setPaintTrack

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="If true, the track is painted on the slider.")
    public void setPaintTrack(boolean b)

    Determines whether the track is painted on the slider. By default, this
    property is `true`. It is up to the look and feel to honor this
    property, some may choose to ignore it.

    Parameters:
    :   `b` - whether or not to paint the slider track

    See Also:
    :   - [`getPaintTrack()`](#getPaintTrack())
  + ### getPaintLabels

    public boolean getPaintLabels()

    Tells if labels are to be painted.

    Returns:
    :   true if labels are painted, else false

    See Also:
    :   - [`setPaintLabels(boolean)`](#setPaintLabels(boolean))
  + ### setPaintLabels

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="If true labels are painted on the slider.")
    public void setPaintLabels(boolean b)

    Determines whether labels are painted on the slider.

    This method will also set up a label table for you.
    If there is not already a label table, and the major tick spacing is
    `> 0`,
    a standard label table will be generated (by calling
    `createStandardLabels`) with labels at the major tick marks.
    The label table is then set on the slider by calling
    `setLabelTable`.

    By default, this property is `false`.

    Parameters:
    :   `b` - whether or not to paint labels

    See Also:
    :   - [`getPaintLabels()`](#getPaintLabels())
        - [`getLabelTable()`](#getLabelTable())
        - [`createStandardLabels(int)`](#createStandardLabels(int))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this JSlider. This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this JSlider.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JSlider.
    For sliders, the AccessibleContext takes the form of an
    AccessibleJSlider.
    A new AccessibleJSlider instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJSlider that serves as the
        AccessibleContext of this JSlider