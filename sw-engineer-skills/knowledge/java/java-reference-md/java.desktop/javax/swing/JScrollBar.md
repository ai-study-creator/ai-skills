Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JScrollBar

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JScrollBar

All Implemented Interfaces:
:   `Adjustable`, `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

Direct Known Subclasses:
:   `JScrollPane.ScrollBar`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A component that helps determine the visible content range of an area.")
public class JScrollBar
extends [JComponent](JComponent.md "class in javax.swing")
implements [Adjustable](../../java/awt/Adjustable.md "interface in java.awt"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

An implementation of a scrollbar. The user positions the knob in the
scrollbar to determine the contents of the viewing area. The
program typically adjusts the display so that the end of the
scrollbar represents the end of the displayable contents, or 100%
of the contents. The start of the scrollbar is the beginning of the
displayable contents, or 0%. The position of the knob within
those bounds then translates to the corresponding percentage of
the displayable contents.

Typically, as the position of the knob in the scrollbar changes
a corresponding change is made to the position of the JViewport on
the underlying view, changing the contents of the JViewport.

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
:   * [`JScrollPane`](JScrollPane.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JScrollBar.AccessibleJScrollBar`

  This class implements accessibility support for the
  `JScrollBar` class.

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

  `protected int`

  `blockIncrement`

  Stores the amount by which the value of the scrollbar is changed
  upon a block (usually "page") up/down request.

  `protected BoundedRangeModel`

  `model`

  The model that represents the scrollbar's minimum, maximum, extent
  (aka "visibleAmount") and current value.

  `protected int`

  `orientation`

  Orientation of this scrollBar.

  `protected int`

  `unitIncrement`

  Stores the amount by which the value of the scrollbar is changed
  upon a unit up/down request.

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.[Adjustable](../../java/awt/Adjustable.md "interface in java.awt")

  `HORIZONTAL, NO_ORIENTATION, VERTICAL`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JScrollBar()`

  Creates a vertical scrollbar with the following initial values:

  `JScrollBar(int orientation)`

  Creates a scrollbar with the specified orientation
  and the following initial values:

  `JScrollBar(int orientation,
  int value,
  int extent,
  int min,
  int max)`

  Creates a scrollbar with the specified orientation,
  value, extent, minimum, and maximum.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAdjustmentListener(AdjustmentListener l)`

  Adds an AdjustmentListener.

  `protected void`

  `fireAdjustmentValueChanged(int id,
  int type,
  int value)`

  Notify listeners that the scrollbar's model has changed.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JScrollBar.

  `AdjustmentListener[]`

  `getAdjustmentListeners()`

  Returns an array of all the `AdjustmentListener`s added
  to this JScrollBar with addAdjustmentListener().

  `int`

  `getBlockIncrement()`

  For backwards compatibility with java.awt.Scrollbar.

  `int`

  `getBlockIncrement(int direction)`

  Returns the amount to change the scrollbar's value by,
  given a block (usually "page") up/down request.

  `int`

  `getMaximum()`

  The maximum value of the scrollbar is maximum - extent.

  `Dimension`

  `getMaximumSize()`

  The scrollbar is flexible along it's scrolling axis and
  rigid along the other axis.

  `int`

  `getMinimum()`

  Returns the minimum value supported by the scrollbar
  (usually zero).

  `Dimension`

  `getMinimumSize()`

  The scrollbar is flexible along it's scrolling axis and
  rigid along the other axis.

  `BoundedRangeModel`

  `getModel()`

  Returns data model that handles the scrollbar's four
  fundamental properties: minimum, maximum, value, extent.

  `int`

  `getOrientation()`

  Returns the component's orientation (horizontal or vertical).

  `ScrollBarUI`

  `getUI()`

  Returns the delegate that implements the look and feel for
  this component.

  `String`

  `getUIClassID()`

  Returns the name of the LookAndFeel class for this component.

  `int`

  `getUnitIncrement()`

  For backwards compatibility with java.awt.Scrollbar.

  `int`

  `getUnitIncrement(int direction)`

  Returns the amount to change the scrollbar's value by,
  given a unit up/down request.

  `int`

  `getValue()`

  Returns the scrollbar's value.

  `boolean`

  `getValueIsAdjusting()`

  True if the scrollbar knob is being dragged.

  `int`

  `getVisibleAmount()`

  Returns the scrollbar's extent, aka its "visibleAmount".

  `protected String`

  `paramString()`

  Returns a string representation of this JScrollBar.

  `void`

  `removeAdjustmentListener(AdjustmentListener l)`

  Removes an AdjustmentEvent listener.

  `void`

  `setBlockIncrement(int blockIncrement)`

  Sets the blockIncrement property.

  `void`

  `setEnabled(boolean x)`

  Enables the component so that the knob position can be changed.

  `void`

  `setMaximum(int maximum)`

  Sets the model's maximum property.

  `void`

  `setMinimum(int minimum)`

  Sets the model's minimum property.

  `void`

  `setModel(BoundedRangeModel newModel)`

  Sets the model that handles the scrollbar's four
  fundamental properties: minimum, maximum, value, extent.

  `void`

  `setOrientation(int orientation)`

  Set the scrollbar's orientation to either VERTICAL or
  HORIZONTAL.

  `void`

  `setUI(ScrollBarUI ui)`

  Sets the L&F object that renders this component.

  `void`

  `setUnitIncrement(int unitIncrement)`

  Sets the unitIncrement property.

  `void`

  `setValue(int value)`

  Sets the scrollbar's value.

  `void`

  `setValueIsAdjusting(boolean b)`

  Sets the model's valueIsAdjusting property.

  `void`

  `setValues(int newValue,
  int newExtent,
  int newMin,
  int newMax)`

  Sets the four BoundedRangeModel properties after forcing
  the arguments to obey the usual constraints:

  `void`

  `setVisibleAmount(int extent)`

  Set the model's extent property.

  `void`

  `updateUI()`

  Overrides `JComponent.updateUI`.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### model

    protected [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") model

    The model that represents the scrollbar's minimum, maximum, extent
    (aka "visibleAmount") and current value.

    See Also:
    :   - [`setModel(javax.swing.BoundedRangeModel)`](#setModel(javax.swing.BoundedRangeModel))
  + ### orientation

    protected int orientation

    Orientation of this scrollBar.

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
  + ### unitIncrement

    protected int unitIncrement

    Stores the amount by which the value of the scrollbar is changed
    upon a unit up/down request.

    See Also:
    :   - [`setUnitIncrement(int)`](#setUnitIncrement(int))
  + ### blockIncrement

    protected int blockIncrement

    Stores the amount by which the value of the scrollbar is changed
    upon a block (usually "page") up/down request.

    See Also:
    :   - [`setBlockIncrement(int)`](#setBlockIncrement(int))
* ## Constructor Details

  + ### JScrollBar

    public JScrollBar(int orientation,
    int value,
    int extent,
    int min,
    int max)

    Creates a scrollbar with the specified orientation,
    value, extent, minimum, and maximum.
    The "extent" is the size of the viewable area. It is also known
    as the "visible amount".

    Note: Use `setBlockIncrement` to set the block
    increment to a size slightly smaller than the view's extent.
    That way, when the user jumps the knob to an adjacent position,
    one or two lines of the original contents remain in view.

    Parameters:
    :   `orientation` - an orientation of the `JScrollBar`
    :   `value` - an int giving the current value
    :   `extent` - an int giving the amount by which the value can "jump"
    :   `min` - an int giving the minimum value
    :   `max` - an int giving the maximum value

    Throws:
    :   `IllegalArgumentException` - if orientation is not one of VERTICAL, HORIZONTAL

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
        - [`setValue(int)`](#setValue(int))
        - [`setVisibleAmount(int)`](#setVisibleAmount(int))
        - [`setMinimum(int)`](#setMinimum(int))
        - [`setMaximum(int)`](#setMaximum(int))
  + ### JScrollBar

    public JScrollBar(int orientation)

    Creates a scrollbar with the specified orientation
    and the following initial values:

    ```
     minimum = 0
     maximum = 100
     value = 0
     extent = 10
    ```

    Parameters:
    :   `orientation` - an orientation of the `JScrollBar`
  + ### JScrollBar

    public JScrollBar()

    Creates a vertical scrollbar with the following initial values:

    ```
     minimum = 0
     maximum = 100
     value = 0
     extent = 10
    ```
* ## Method Details

  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel")
    public void setUI([ScrollBarUI](plaf/ScrollBarUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the `ScrollBarUI` L&F object

    Since:
    :   1.4

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getUI

    public [ScrollBarUI](plaf/ScrollBarUI.md "class in javax.swing.plaf") getUI()

    Returns the delegate that implements the look and feel for
    this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the scroll bar's current UI.

    See Also:
    :   - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](JComponent.md#setUI(javax.swing.plaf.ComponentUI))
  + ### updateUI

    public void updateUI()

    Overrides `JComponent.updateUI`.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the LookAndFeel class for this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ScrollBarUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getOrientation

    public int getOrientation()

    Returns the component's orientation (horizontal or vertical).

    Specified by:
    :   `getOrientation` in interface `Adjustable`

    Returns:
    :   VERTICAL or HORIZONTAL

    See Also:
    :   - [`setOrientation(int)`](#setOrientation(int))
        - [`Adjustable.getOrientation()`](../../java/awt/Adjustable.md#getOrientation())
  + ### setOrientation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JScrollBar.VERTICAL","JScrollBar.HORIZONTAL"},
    [description](../../java/beans/BeanProperty.md#description())="The scrollbar\'s orientation.")
    public void setOrientation(int orientation)

    Set the scrollbar's orientation to either VERTICAL or
    HORIZONTAL.

    Parameters:
    :   `orientation` - an orientation of the `JScrollBar`

    Throws:
    :   `IllegalArgumentException` - if orientation is not one of VERTICAL, HORIZONTAL

    See Also:
    :   - [`getOrientation()`](#getOrientation())
  + ### getModel

    public [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") getModel()

    Returns data model that handles the scrollbar's four
    fundamental properties: minimum, maximum, value, extent.

    Returns:
    :   the data model

    See Also:
    :   - [`setModel(javax.swing.BoundedRangeModel)`](#setModel(javax.swing.BoundedRangeModel))
  + ### setModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The scrollbar\'s BoundedRangeModel.")
    public void setModel([BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") newModel)

    Sets the model that handles the scrollbar's four
    fundamental properties: minimum, maximum, value, extent.

    Parameters:
    :   `newModel` - a new model

    See Also:
    :   - [`getModel()`](#getModel())
  + ### getUnitIncrement

    public int getUnitIncrement(int direction)

    Returns the amount to change the scrollbar's value by,
    given a unit up/down request. A ScrollBarUI implementation
    typically calls this method when the user clicks on a scrollbar
    up/down arrow and uses the result to update the scrollbar's
    value. Subclasses may override this method to compute
    a value, e.g. the change required to scroll one
    (variable height) line of text or one row in a table.

    The JScrollPane component creates scrollbars (by default)
    that override this method and delegate to the viewports
    Scrollable view, if it has one. The Scrollable interface
    provides a more specialized version of this method.

    Some look and feel implementations that provide custom scrolling
    behavior ignore this property.

    Parameters:
    :   `direction` - is -1 or 1 for up/down respectively

    Returns:
    :   the value of the unitIncrement property

    See Also:
    :   - [`setUnitIncrement(int)`](#setUnitIncrement(int))
        - [`setValue(int)`](#setValue(int))
        - [`Scrollable.getScrollableUnitIncrement(java.awt.Rectangle, int, int)`](Scrollable.md#getScrollableUnitIncrement(java.awt.Rectangle,int,int))
  + ### setUnitIncrement

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The scrollbar\'s unit increment.")
    public void setUnitIncrement(int unitIncrement)

    Sets the unitIncrement property.

    Note, that if the argument is equal to the value of Integer.MIN\_VALUE,
    then most look and feel implementations will not provide scrolling
    to the right/down.

    Some look and feel implementations that provide custom scrolling
    behavior ignore this property.

    Specified by:
    :   `setUnitIncrement` in interface `Adjustable`

    Parameters:
    :   `unitIncrement` - the unit increment

    See Also:
    :   - [`getUnitIncrement(int)`](#getUnitIncrement(int))
  + ### getBlockIncrement

    public int getBlockIncrement(int direction)

    Returns the amount to change the scrollbar's value by,
    given a block (usually "page") up/down request. A ScrollBarUI
    implementation typically calls this method when the user clicks
    outside the scrollbar "knob" to scroll up or down by a large amount.
    Subclasses may override this method to compute a
    value, e.g. the change required to scroll one paragraph
    in a text document.

    The JScrollPane component creates scrollbars (by default)
    that override this method and delegate to the viewports
    Scrollable view, if it has one. The Scrollable interface
    provides a more specialized version of this method.

    Some look and feel implementations that provide custom scrolling
    behavior ignore this property.

    Parameters:
    :   `direction` - is -1 or 1 for up/down respectively

    Returns:
    :   the value of the blockIncrement property

    See Also:
    :   - [`setBlockIncrement(int)`](#setBlockIncrement(int))
        - [`setValue(int)`](#setValue(int))
        - [`Scrollable.getScrollableBlockIncrement(java.awt.Rectangle, int, int)`](Scrollable.md#getScrollableBlockIncrement(java.awt.Rectangle,int,int))
  + ### setBlockIncrement

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The scrollbar\'s block increment.")
    public void setBlockIncrement(int blockIncrement)

    Sets the blockIncrement property.

    Note, that if the argument is equal to the value of Integer.MIN\_VALUE,
    then most look and feel implementations will not provide scrolling
    to the right/down.

    Some look and feel implementations that provide custom scrolling
    behavior ignore this property.

    Specified by:
    :   `setBlockIncrement` in interface `Adjustable`

    Parameters:
    :   `blockIncrement` - the block increment

    See Also:
    :   - [`getBlockIncrement()`](#getBlockIncrement())
  + ### getUnitIncrement

    public int getUnitIncrement()

    For backwards compatibility with java.awt.Scrollbar.

    Specified by:
    :   `getUnitIncrement` in interface `Adjustable`

    Returns:
    :   the unit value increment for the adjustable object

    See Also:
    :   - [`Adjustable.getUnitIncrement()`](../../java/awt/Adjustable.md#getUnitIncrement())
        - [`getUnitIncrement(int)`](#getUnitIncrement(int))
  + ### getBlockIncrement

    public int getBlockIncrement()

    For backwards compatibility with java.awt.Scrollbar.

    Specified by:
    :   `getBlockIncrement` in interface `Adjustable`

    Returns:
    :   the block value increment for the adjustable object

    See Also:
    :   - [`Adjustable.getBlockIncrement()`](../../java/awt/Adjustable.md#getBlockIncrement())
        - [`getBlockIncrement(int)`](#getBlockIncrement(int))
  + ### getValue

    public int getValue()

    Returns the scrollbar's value.

    Specified by:
    :   `getValue` in interface `Adjustable`

    Returns:
    :   the model's value property

    See Also:
    :   - [`setValue(int)`](#setValue(int))
  + ### setValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The scrollbar\'s current value.")
    public void setValue(int value)

    Sets the scrollbar's value. This method just forwards the value
    to the model.

    Specified by:
    :   `setValue` in interface `Adjustable`

    Parameters:
    :   `value` - the current value, between `minimum`
        and `maximum` - `visibleAmount`

    See Also:
    :   - [`getValue()`](#getValue())
        - [`BoundedRangeModel.setValue(int)`](BoundedRangeModel.md#setValue(int))
  + ### getVisibleAmount

    public int getVisibleAmount()

    Returns the scrollbar's extent, aka its "visibleAmount". In many
    scrollbar look and feel implementations the size of the
    scrollbar "knob" or "thumb" is proportional to the extent.

    Specified by:
    :   `getVisibleAmount` in interface `Adjustable`

    Returns:
    :   the value of the model's extent property

    See Also:
    :   - [`setVisibleAmount(int)`](#setVisibleAmount(int))
  + ### setVisibleAmount

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The amount of the view that is currently visible.")
    public void setVisibleAmount(int extent)

    Set the model's extent property.

    Specified by:
    :   `setVisibleAmount` in interface `Adjustable`

    Parameters:
    :   `extent` - the length of the indicator

    See Also:
    :   - [`getVisibleAmount()`](#getVisibleAmount())
        - [`BoundedRangeModel.setExtent(int)`](BoundedRangeModel.md#setExtent(int))
  + ### getMinimum

    public int getMinimum()

    Returns the minimum value supported by the scrollbar
    (usually zero).

    Specified by:
    :   `getMinimum` in interface `Adjustable`

    Returns:
    :   the value of the model's minimum property

    See Also:
    :   - [`setMinimum(int)`](#setMinimum(int))
  + ### setMinimum

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The scrollbar\'s minimum value.")
    public void setMinimum(int minimum)

    Sets the model's minimum property.

    Specified by:
    :   `setMinimum` in interface `Adjustable`

    Parameters:
    :   `minimum` - the minimum value

    See Also:
    :   - [`getMinimum()`](#getMinimum())
        - [`BoundedRangeModel.setMinimum(int)`](BoundedRangeModel.md#setMinimum(int))
  + ### getMaximum

    public int getMaximum()

    The maximum value of the scrollbar is maximum - extent.

    Specified by:
    :   `getMaximum` in interface `Adjustable`

    Returns:
    :   the value of the model's maximum property

    See Also:
    :   - [`setMaximum(int)`](#setMaximum(int))
  + ### setMaximum

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The scrollbar\'s maximum value.")
    public void setMaximum(int maximum)

    Sets the model's maximum property. Note that the scrollbar's value
    can only be set to maximum - extent.

    Specified by:
    :   `setMaximum` in interface `Adjustable`

    Parameters:
    :   `maximum` - the maximum value

    See Also:
    :   - [`getMaximum()`](#getMaximum())
        - [`BoundedRangeModel.setMaximum(int)`](BoundedRangeModel.md#setMaximum(int))
  + ### getValueIsAdjusting

    public boolean getValueIsAdjusting()

    True if the scrollbar knob is being dragged.

    Returns:
    :   the value of the model's valueIsAdjusting property

    See Also:
    :   - [`setValueIsAdjusting(boolean)`](#setValueIsAdjusting(boolean))
  + ### setValueIsAdjusting

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="True if the scrollbar thumb is being dragged.")
    public void setValueIsAdjusting(boolean b)

    Sets the model's valueIsAdjusting property. Scrollbar look and
    feel implementations should set this property to true when
    a knob drag begins, and to false when the drag ends. The
    scrollbar model will not generate ChangeEvents while
    valueIsAdjusting is true.

    Parameters:
    :   `b` - `true` if the upcoming changes to the value property are part of a series

    See Also:
    :   - [`getValueIsAdjusting()`](#getValueIsAdjusting())
        - [`BoundedRangeModel.setValueIsAdjusting(boolean)`](BoundedRangeModel.md#setValueIsAdjusting(boolean))
  + ### setValues

    public void setValues(int newValue,
    int newExtent,
    int newMin,
    int newMax)

    Sets the four BoundedRangeModel properties after forcing
    the arguments to obey the usual constraints:

    ```
     minimum ≤ value ≤ value+extent ≤ maximum
    ```

    Parameters:
    :   `newValue` - an int giving the current value
    :   `newExtent` - an int giving the amount by which the value can "jump"
    :   `newMin` - an int giving the minimum value
    :   `newMax` - an int giving the maximum value

    See Also:
    :   - [`BoundedRangeModel.setRangeProperties(int, int, int, int, boolean)`](BoundedRangeModel.md#setRangeProperties(int,int,int,int,boolean))
        - [`setValue(int)`](#setValue(int))
        - [`setVisibleAmount(int)`](#setVisibleAmount(int))
        - [`setMinimum(int)`](#setMinimum(int))
        - [`setMaximum(int)`](#setMaximum(int))
  + ### addAdjustmentListener

    public void addAdjustmentListener([AdjustmentListener](../../java/awt/event/AdjustmentListener.md "interface in java.awt.event") l)

    Adds an AdjustmentListener. Adjustment listeners are notified
    each time the scrollbar's model changes. Adjustment events are
    provided for backwards compatibility with java.awt.Scrollbar.

    Note that the AdjustmentEvents type property will always have a
    placeholder value of AdjustmentEvent.TRACK because all changes
    to a BoundedRangeModels value are considered equivalent. To change
    the value of a BoundedRangeModel one just sets its value property,
    i.e. model.setValue(123). No information about the origin of the
    change, e.g. it's a block decrement, is provided. We don't try to
    fabricate the origin of the change here.

    Specified by:
    :   `addAdjustmentListener` in interface `Adjustable`

    Parameters:
    :   `l` - the AdjustmentLister to add

    See Also:
    :   - [`removeAdjustmentListener(java.awt.event.AdjustmentListener)`](#removeAdjustmentListener(java.awt.event.AdjustmentListener))
        - [`BoundedRangeModel.addChangeListener(javax.swing.event.ChangeListener)`](BoundedRangeModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### removeAdjustmentListener

    public void removeAdjustmentListener([AdjustmentListener](../../java/awt/event/AdjustmentListener.md "interface in java.awt.event") l)

    Removes an AdjustmentEvent listener.

    Specified by:
    :   `removeAdjustmentListener` in interface `Adjustable`

    Parameters:
    :   `l` - the AdjustmentLister to remove

    See Also:
    :   - [`addAdjustmentListener(java.awt.event.AdjustmentListener)`](#addAdjustmentListener(java.awt.event.AdjustmentListener))
  + ### getAdjustmentListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AdjustmentListener](../../java/awt/event/AdjustmentListener.md "interface in java.awt.event")[] getAdjustmentListeners()

    Returns an array of all the `AdjustmentListener`s added
    to this JScrollBar with addAdjustmentListener().

    Returns:
    :   all of the `AdjustmentListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireAdjustmentValueChanged

    protected void fireAdjustmentValueChanged(int id,
    int type,
    int value)

    Notify listeners that the scrollbar's model has changed.

    Parameters:
    :   `id` - an integer indicating the type of event.
    :   `type` - an integer indicating the adjustment type.
    :   `value` - the current value of the adjustment

    See Also:
    :   - [`addAdjustmentListener(java.awt.event.AdjustmentListener)`](#addAdjustmentListener(java.awt.event.AdjustmentListener))
        - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### getMinimumSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getMinimumSize()

    The scrollbar is flexible along it's scrolling axis and
    rigid along the other axis.

    Overrides:
    :   `getMinimumSize` in class `JComponent`

    Returns:
    :   the value of the `minimumSize` property

    See Also:
    :   - [`JComponent.setMinimumSize(java.awt.Dimension)`](JComponent.md#setMinimumSize(java.awt.Dimension))
        - [`ComponentUI`](plaf/ComponentUI.md "class in javax.swing.plaf")
  + ### getMaximumSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getMaximumSize()

    The scrollbar is flexible along it's scrolling axis and
    rigid along the other axis.

    Overrides:
    :   `getMaximumSize` in class `JComponent`

    Returns:
    :   the value of the `maximumSize` property

    See Also:
    :   - [`JComponent.setMaximumSize(java.awt.Dimension)`](JComponent.md#setMaximumSize(java.awt.Dimension))
        - [`ComponentUI`](plaf/ComponentUI.md "class in javax.swing.plaf")
  + ### setEnabled

    public void setEnabled(boolean x)

    Enables the component so that the knob position can be changed.
    When the disabled, the knob position cannot be changed.

    Overrides:
    :   `setEnabled` in class `JComponent`

    Parameters:
    :   `x` - a boolean value, where true enables the component and
        false disables it

    See Also:
    :   - [`Component.isEnabled()`](../../java/awt/Component.md#isEnabled())
        - [`Component.isLightweight()`](../../java/awt/Component.md#isLightweight())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this JScrollBar. This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this JScrollBar.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JScrollBar.
    For JScrollBar, the AccessibleContext takes the form of an
    AccessibleJScrollBar.
    A new AccessibleJScrollBar instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJScrollBar that serves as the
        AccessibleContext of this JScrollBar