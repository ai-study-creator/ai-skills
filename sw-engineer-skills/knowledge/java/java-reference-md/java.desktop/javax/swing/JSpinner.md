Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JSpinner

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JSpinner

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A single line input field that lets the user select a number or an object value from an ordered set.")
public class JSpinner
extends [JComponent](JComponent.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A single line input field that lets the user select a
number or an object value from an ordered sequence. Spinners typically
provide a pair of tiny arrow buttons for stepping through the elements
of the sequence. The keyboard up/down arrow keys also cycle through the
elements. The user may also be allowed to type a (legal) value directly
into the spinner. Although combo boxes provide similar functionality,
spinners are sometimes preferred because they don't require a drop down list
that can obscure important data.

A `JSpinner`'s sequence value is defined by its
`SpinnerModel`.
The `model` can be specified as a constructor argument and
changed with the `model` property. `SpinnerModel`
classes for some common types are provided: `SpinnerListModel`,
`SpinnerNumberModel`, and `SpinnerDateModel`.

A `JSpinner` has a single child component that's
responsible for displaying
and potentially changing the current element or *value* of
the model, which is called the `editor`. The editor is created
by the `JSpinner`'s constructor and can be changed with the
`editor` property. The `JSpinner`'s editor stays
in sync with the model by listening for `ChangeEvent`s. If the
user has changed the value displayed by the `editor` it is
possible for the `model`'s value to differ from that of
the `editor`. To make sure the `model` has the same
value as the editor use the `commitEdit` method, eg:

```
   try {
       spinner.commitEdit();
   }
   catch (ParseException pe) {
       // Edited value is invalid, spinner.getValue() will return
       // the last valid value, you could revert the spinner to show that:
       JComponent editor = spinner.getEditor();
       if (editor instanceof DefaultEditor) {
           ((DefaultEditor)editor).getTextField().setValue(spinner.getValue());
       }
       // reset the value to some known value:
       spinner.setValue(fallbackValue);
       // or treat the last valid value as the current, in which
       // case you don't need to do anything.
   }
   return spinner.getValue();
```

For information and examples of using spinner see
[How to Use Spinners](https://docs.oracle.com/javase/tutorial/uiswing/components/spinner.html),
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
:   1.4

See Also:
:   * [`SpinnerModel`](SpinnerModel.md "interface in javax.swing")
    * [`AbstractSpinnerModel`](AbstractSpinnerModel.md "class in javax.swing")
    * [`SpinnerListModel`](SpinnerListModel.md "class in javax.swing")
    * [`SpinnerNumberModel`](SpinnerNumberModel.md "class in javax.swing")
    * [`SpinnerDateModel`](SpinnerDateModel.md "class in javax.swing")
    * [`JFormattedTextField`](JFormattedTextField.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JSpinner.AccessibleJSpinner`

  `AccessibleJSpinner` implements accessibility
  support for the `JSpinner` class.

  `static class`

  `JSpinner.DateEditor`

  An editor for a `JSpinner` whose model is a
  `SpinnerDateModel`.

  `static class`

  `JSpinner.DefaultEditor`

  A simple base class for more specialized editors
  that displays a read-only view of the model's current
  value with a `JFormattedTextField`.

  `static class`

  `JSpinner.ListEditor`

  An editor for a `JSpinner` whose model is a
  `SpinnerListModel`.

  `static class`

  `JSpinner.NumberEditor`

  An editor for a `JSpinner` whose model is a
  `SpinnerNumberModel`.

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

  `JSpinner()`

  Constructs a spinner with an `Integer SpinnerNumberModel`
  with initial value 0 and no minimum or maximum limits.

  `JSpinner(SpinnerModel model)`

  Constructs a spinner for the given model.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener listener)`

  Adds a listener to the list that is notified each time a change
  to the model occurs.

  `void`

  `commitEdit()`

  Commits the currently edited value to the `SpinnerModel`.

  `protected JComponent`

  `createEditor(SpinnerModel model)`

  This method is called by the constructors to create the
  `JComponent`
  that displays the current value of the sequence.

  `protected void`

  `fireStateChanged()`

  Sends a `ChangeEvent`, whose source is this
  `JSpinner`, to each `ChangeListener`.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` for the `JSpinner`

  `ChangeListener[]`

  `getChangeListeners()`

  Returns an array of all the `ChangeListener`s added
  to this JSpinner with addChangeListener().

  `JComponent`

  `getEditor()`

  Returns the component that displays and potentially
  changes the model's value.

  `SpinnerModel`

  `getModel()`

  Returns the `SpinnerModel` that defines
  this spinners sequence of values.

  `Object`

  `getNextValue()`

  Returns the object in the sequence that comes after the object returned
  by `getValue()`.

  `Object`

  `getPreviousValue()`

  Returns the object in the sequence that comes
  before the object returned by `getValue()`.

  `SpinnerUI`

  `getUI()`

  Returns the look and feel (L&F) object that renders this component.

  `String`

  `getUIClassID()`

  Returns the suffix used to construct the name of the look and feel
  (L&F) class used to render this component.

  `Object`

  `getValue()`

  Returns the current value of the model, typically
  this value is displayed by the `editor`.

  `void`

  `removeChangeListener(ChangeListener listener)`

  Removes a `ChangeListener` from this spinner.

  `void`

  `setEditor(JComponent editor)`

  Changes the `JComponent` that displays the current value
  of the `SpinnerModel`.

  `void`

  `setModel(SpinnerModel model)`

  Changes the model that represents the value of this spinner.

  `void`

  `setUI(SpinnerUI ui)`

  Sets the look and feel (L&F) object that renders this component.

  `void`

  `setValue(Object value)`

  Changes current value of the model, typically
  this value is displayed by the `editor`.

  `void`

  `updateUI()`

  Resets the UI property with the value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, paramString, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JSpinner

    public JSpinner([SpinnerModel](SpinnerModel.md "interface in javax.swing") model)

    Constructs a spinner for the given model. The spinner has
    a set of previous/next buttons, and an editor appropriate
    for the model.

    Parameters:
    :   `model` - a model for the new spinner

    Throws:
    :   `NullPointerException` - if the model is `null`
  + ### JSpinner

    public JSpinner()

    Constructs a spinner with an `Integer SpinnerNumberModel`
    with initial value 0 and no minimum or maximum limits.
* ## Method Details

  + ### getUI

    public [SpinnerUI](plaf/SpinnerUI.md "class in javax.swing.plaf") getUI()

    Returns the look and feel (L&F) object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `SpinnerUI` object that renders this component
  + ### setUI

    public void setUI([SpinnerUI](plaf/SpinnerUI.md "class in javax.swing.plaf") ui)

    Sets the look and feel (L&F) object that renders this component.

    Parameters:
    :   `ui` - the `SpinnerUI` L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the suffix used to construct the name of the look and feel
    (L&F) class used to render this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "SpinnerUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the UI property with the value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`UIManager.getUI(javax.swing.JComponent)`](UIManager.md#getUI(javax.swing.JComponent))
  + ### createEditor

    protected [JComponent](JComponent.md "class in javax.swing") createEditor([SpinnerModel](SpinnerModel.md "interface in javax.swing") model)

    This method is called by the constructors to create the
    `JComponent`
    that displays the current value of the sequence. The editor may
    also allow the user to enter an element of the sequence directly.
    An editor must listen for `ChangeEvents` on the
    `model` and keep the value it displays
    in sync with the value of the model.

    Subclasses may override this method to add support for new
    `SpinnerModel` classes. Alternatively one can just
    replace the editor created here with the `setEditor`
    method. The default mapping from model type to editor is:
    - `SpinnerNumberModel => JSpinner.NumberEditor`- `SpinnerDateModel => JSpinner.DateEditor`- `SpinnerListModel => JSpinner.ListEditor`- *all others* => `JSpinner.DefaultEditor`

    Parameters:
    :   `model` - the value of getModel

    Returns:
    :   a component that displays the current value of the sequence

    See Also:
    :   - [`getModel()`](#getModel())
        - [`setEditor(javax.swing.JComponent)`](#setEditor(javax.swing.JComponent))
  + ### setModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Model that represents the value of this spinner.")
    public void setModel([SpinnerModel](SpinnerModel.md "interface in javax.swing") model)

    Changes the model that represents the value of this spinner.
    If the editor property has not been explicitly set,
    the editor property is (implicitly) set after the `"model"`
    `PropertyChangeEvent` has been fired. The editor
    property is set to the value returned by `createEditor`,
    as in:

    ```
     setEditor(createEditor(model));
    ```

    Parameters:
    :   `model` - the new `SpinnerModel`

    Throws:
    :   `IllegalArgumentException` - if model is `null`

    See Also:
    :   - [`getModel()`](#getModel())
        - [`getEditor()`](#getEditor())
        - [`setEditor(javax.swing.JComponent)`](#setEditor(javax.swing.JComponent))
  + ### getModel

    public [SpinnerModel](SpinnerModel.md "interface in javax.swing") getModel()

    Returns the `SpinnerModel` that defines
    this spinners sequence of values.

    Returns:
    :   the value of the model property

    See Also:
    :   - [`setModel(javax.swing.SpinnerModel)`](#setModel(javax.swing.SpinnerModel))
  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Returns the current value of the model, typically
    this value is displayed by the `editor`. If the
    user has changed the value displayed by the `editor` it is
    possible for the `model`'s value to differ from that of
    the `editor`, refer to the class level javadoc for examples
    of how to deal with this.

    This method simply delegates to the `model`.
    It is equivalent to:

    ```
     getModel().getValue()
    ```

    Returns:
    :   the current value of the model

    See Also:
    :   - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
        - [`SpinnerModel.getValue()`](SpinnerModel.md#getValue())
  + ### setValue

    public void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Changes current value of the model, typically
    this value is displayed by the `editor`.
    If the `SpinnerModel` implementation
    doesn't support the specified value then an
    `IllegalArgumentException` is thrown.

    This method simply delegates to the `model`.
    It is equivalent to:

    ```
     getModel().setValue(value)
    ```

    Parameters:
    :   `value` - new value for the spinner

    Throws:
    :   `IllegalArgumentException` - if `value` isn't allowed

    See Also:
    :   - [`getValue()`](#getValue())
        - [`SpinnerModel.setValue(java.lang.Object)`](SpinnerModel.md#setValue(java.lang.Object))
  + ### getNextValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getNextValue()

    Returns the object in the sequence that comes after the object returned
    by `getValue()`. If the end of the sequence has been reached
    then return `null`.
    Calling this method does not effect `value`.

    This method simply delegates to the `model`.
    It is equivalent to:

    ```
     getModel().getNextValue()
    ```

    Returns:
    :   the next legal value or `null` if one doesn't exist

    See Also:
    :   - [`getValue()`](#getValue())
        - [`getPreviousValue()`](#getPreviousValue())
        - [`SpinnerModel.getNextValue()`](SpinnerModel.md#getNextValue())
  + ### addChangeListener

    public void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") listener)

    Adds a listener to the list that is notified each time a change
    to the model occurs. The source of `ChangeEvents`
    delivered to `ChangeListeners` will be this
    `JSpinner`. Note also that replacing the model
    will not affect listeners added directly to JSpinner.
    Applications can add listeners to the model directly. In that
    case is that the source of the event would be the
    `SpinnerModel`.

    Parameters:
    :   `listener` - the `ChangeListener` to add

    See Also:
    :   - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
        - [`getModel()`](#getModel())
  + ### removeChangeListener

    public void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") listener)

    Removes a `ChangeListener` from this spinner.

    Parameters:
    :   `listener` - the `ChangeListener` to remove

    See Also:
    :   - [`fireStateChanged()`](#fireStateChanged())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
  + ### getChangeListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")[] getChangeListeners()

    Returns an array of all the `ChangeListener`s added
    to this JSpinner with addChangeListener().

    Returns:
    :   all of the `ChangeListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireStateChanged

    protected void fireStateChanged()

    Sends a `ChangeEvent`, whose source is this
    `JSpinner`, to each `ChangeListener`.
    When a `ChangeListener` has been added
    to the spinner, this method is called each time
    a `ChangeEvent` is received from the model.

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
        - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
        - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### getPreviousValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getPreviousValue()

    Returns the object in the sequence that comes
    before the object returned by `getValue()`.
    If the end of the sequence has been reached then
    return `null`. Calling this method does
    not effect `value`.

    This method simply delegates to the `model`.
    It is equivalent to:

    ```
     getModel().getPreviousValue()
    ```

    Returns:
    :   the previous legal value or `null`
        if one doesn't exist

    See Also:
    :   - [`getValue()`](#getValue())
        - [`getNextValue()`](#getNextValue())
        - [`SpinnerModel.getPreviousValue()`](SpinnerModel.md#getPreviousValue())
  + ### setEditor

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="JComponent that displays the current value of the model")
    public void setEditor([JComponent](JComponent.md "class in javax.swing") editor)

    Changes the `JComponent` that displays the current value
    of the `SpinnerModel`. It is the responsibility of this
    method to *disconnect* the old editor from the model and to
    connect the new editor. This may mean removing the
    old editors `ChangeListener` from the model or the
    spinner itself and adding one for the new editor.

    Parameters:
    :   `editor` - the new editor

    Throws:
    :   `IllegalArgumentException` - if editor is `null`

    See Also:
    :   - [`getEditor()`](#getEditor())
        - [`createEditor(javax.swing.SpinnerModel)`](#createEditor(javax.swing.SpinnerModel))
        - [`getModel()`](#getModel())
  + ### getEditor

    public [JComponent](JComponent.md "class in javax.swing") getEditor()

    Returns the component that displays and potentially
    changes the model's value.

    Returns:
    :   the component that displays and potentially
        changes the model's value

    See Also:
    :   - [`setEditor(javax.swing.JComponent)`](#setEditor(javax.swing.JComponent))
        - [`createEditor(javax.swing.SpinnerModel)`](#createEditor(javax.swing.SpinnerModel))
  + ### commitEdit

    public void commitEdit()
    throws [ParseException](../../../java.base/java/text/ParseException.md "class in java.text")

    Commits the currently edited value to the `SpinnerModel`.

    If the editor is an instance of `DefaultEditor`, the
    call if forwarded to the editor, otherwise this does nothing.

    Throws:
    :   `ParseException` - if the currently edited value couldn't
        be committed.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` for the `JSpinner`

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   the `AccessibleContext` for the `JSpinner`

    Since:
    :   1.5