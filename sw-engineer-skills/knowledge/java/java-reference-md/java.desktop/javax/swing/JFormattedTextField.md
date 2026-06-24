Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JFormattedTextField

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent](text/JTextComponent.md "class in javax.swing.text")

[javax.swing.JTextField](JTextField.md "class in javax.swing")

javax.swing.JFormattedTextField

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `Scrollable`, `SwingConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")
public class JFormattedTextField
extends [JTextField](JTextField.md "class in javax.swing")

`JFormattedTextField` extends `JTextField` adding
support for formatting arbitrary values, as well as retrieving a particular
object once the user has edited the text. The following illustrates
configuring a `JFormattedTextField` to edit dates:

```
   JFormattedTextField ftf = new JFormattedTextField();
   ftf.setValue(new Date());
```

Once a `JFormattedTextField` has been created, you can
listen for editing changes by way of adding
a `PropertyChangeListener` and listening for
`PropertyChangeEvent`s with the property name `value`.

`JFormattedTextField` allows
configuring what action should be taken when focus is lost. The possible
configurations are:

Possible JFormattedTextField configurations and their descriptions

| Value Description | |
| --- | --- |
| JFormattedTextField.REVERT Revert the display to match that of `getValue`, possibly losing the current edit.| JFormattedTextField.COMMIT Commits the current value. If the value being edited isn't considered a legal value by the `AbstractFormatter` that is, a `ParseException` is thrown, then the value will not change, and then edited value will persist.| JFormattedTextField.COMMIT\_OR\_REVERT Similar to `COMMIT`, but if the value isn't legal, behave like `REVERT`.| JFormattedTextField.PERSIST Do nothing, don't obtain a new `AbstractFormatter`, and don't update the value. | | | | | | | |

The default is `JFormattedTextField.COMMIT_OR_REVERT`,
refer to [`setFocusLostBehavior(int)`](#setFocusLostBehavior(int)) for more information on this.

`JFormattedTextField` allows the focus to leave, even if
the currently edited value is invalid. To lock the focus down while the
`JFormattedTextField` is an invalid edit state
you can attach an `InputVerifier`. The following code snippet
shows a potential implementation of such an `InputVerifier`:

```
 public class FormattedTextFieldVerifier extends InputVerifier {
     public boolean verify(JComponent input) {
         if (input instanceof JFormattedTextField) {
             JFormattedTextField ftf = (JFormattedTextField)input;
             AbstractFormatter formatter = ftf.getFormatter();
             if (formatter != null) {
                 String text = ftf.getText();
                 try {
                      formatter.stringToValue(text);
                      return true;
                  } catch (ParseException pe) {
                      return false;
                  }
              }
          }
          return true;
      }
      public boolean shouldYieldFocus(JComponent input) {
          return verify(input);
      }
  }
```

Alternatively, you could invoke `commitEdit`, which would also
commit the value.

`JFormattedTextField` does not do the formatting it self,
rather formatting is done through an instance of
`JFormattedTextField.AbstractFormatter` which is obtained from
an instance of `JFormattedTextField.AbstractFormatterFactory`.
Instances of `JFormattedTextField.AbstractFormatter` are
notified when they become active by way of the
`install` method, at which point the
`JFormattedTextField.AbstractFormatter` can install whatever
it needs to, typically a `DocumentFilter`. Similarly when
`JFormattedTextField` no longer
needs the `AbstractFormatter`, it will invoke
`uninstall`.

`JFormattedTextField` typically
queries the `AbstractFormatterFactory` for an
`AbstractFormat` when it gains or loses focus. Although this
can change based on the focus lost policy. If the focus lost
policy is `JFormattedTextField.PERSIST`
and the `JFormattedTextField` has been edited, the
`AbstractFormatterFactory` will not be queried until the
value has been committed. Similarly if the focus lost policy is
`JFormattedTextField.COMMIT` and an exception
is thrown from `stringToValue`, the
`AbstractFormatterFactory` will not be queried when focus is
lost or gained.

`JFormattedTextField.AbstractFormatter`
is also responsible for determining when values are committed to
the `JFormattedTextField`. Some
`JFormattedTextField.AbstractFormatter`s will make new values
available on every edit, and others will never commit the value. You can
force the current value to be obtained
from the current `JFormattedTextField.AbstractFormatter`
by way of invoking `commitEdit`. `commitEdit` will
be invoked whenever return is pressed in the
`JFormattedTextField`.

If an `AbstractFormatterFactory` has not been explicitly
set, one will be set based on the `Class` of the value type after
`setValue` has been invoked (assuming value is non-null).
For example, in the following code an appropriate
`AbstractFormatterFactory` and `AbstractFormatter`
will be created to handle formatting of numbers:

```
   JFormattedTextField tf = new JFormattedTextField();
   tf.setValue(100);
```

**Warning:** As the `AbstractFormatter` will
typically install a `DocumentFilter` on the
`Document`, and a `NavigationFilter` on the
`JFormattedTextField` you should not install your own. If you do,
you are likely to see odd behavior in that the editing policy of the
`AbstractFormatter` will not be enforced.

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

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `JFormattedTextField.AbstractFormatter`

  Instances of `AbstractFormatter` are used by
  `JFormattedTextField` to handle the conversion both
  from an Object to a String, and back from a String to an Object.

  `static class`

  `JFormattedTextField.AbstractFormatterFactory`

  Instances of `AbstractFormatterFactory` are used by
  `JFormattedTextField` to obtain instances of
  `AbstractFormatter` which in turn are used to format values.

  ## Nested classes/interfaces inherited from class javax.swing.[JTextField](JTextField.md "class in javax.swing")

  `JTextField.AccessibleJTextField`

  ## Nested classes/interfaces inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `JTextComponent.AccessibleJTextComponent, JTextComponent.DropLocation, JTextComponent.KeyBinding`

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

  `static final int`

  `COMMIT`

  Constant identifying that when focus is lost,
  `commitEdit` should be invoked.

  `static final int`

  `COMMIT_OR_REVERT`

  Constant identifying that when focus is lost,
  `commitEdit` should be invoked.

  `static final int`

  `PERSIST`

  Constant identifying that when focus is lost, the edited value
  should be left.

  `static final int`

  `REVERT`

  Constant identifying that when focus is lost, editing value should
  be reverted to current value set on the
  `JFormattedTextField`.

  ### Fields inherited from class javax.swing.[JTextField](JTextField.md "class in javax.swing")

  `notifyAction`

  ### Fields inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `DEFAULT_KEYMAP, FOCUS_ACCELERATOR_KEY`

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

  `JFormattedTextField()`

  Creates a `JFormattedTextField` with no
  `AbstractFormatterFactory`.

  `JFormattedTextField(Object value)`

  Creates a JFormattedTextField with the specified value.

  `JFormattedTextField(Format format)`

  Creates a `JFormattedTextField`.

  `JFormattedTextField(JFormattedTextField.AbstractFormatter formatter)`

  Creates a `JFormattedTextField` with the specified
  `AbstractFormatter`.

  `JFormattedTextField(JFormattedTextField.AbstractFormatterFactory factory)`

  Creates a `JFormattedTextField` with the specified
  `AbstractFormatterFactory`.

  `JFormattedTextField(JFormattedTextField.AbstractFormatterFactory factory,
  Object currentValue)`

  Creates a `JFormattedTextField` with the specified
  `AbstractFormatterFactory` and initial value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `commitEdit()`

  Forces the current value to be taken from the
  `AbstractFormatter` and set as the current value.

  `Action[]`

  `getActions()`

  Fetches the command list for the editor.

  `int`

  `getFocusLostBehavior()`

  Returns the behavior when focus is lost.

  `JFormattedTextField.AbstractFormatter`

  `getFormatter()`

  Returns the `AbstractFormatter` that is used to format and
  parse the current value.

  `JFormattedTextField.AbstractFormatterFactory`

  `getFormatterFactory()`

  Returns the current `AbstractFormatterFactory`.

  `String`

  `getUIClassID()`

  Gets the class ID for a UI.

  `Object`

  `getValue()`

  Returns the last valid value.

  `protected void`

  `invalidEdit()`

  Invoked when the user inputs an invalid value.

  `boolean`

  `isEditValid()`

  Returns true if the current value being edited is valid.

  `protected void`

  `processFocusEvent(FocusEvent e)`

  Processes any focus events, such as
  `FocusEvent.FOCUS_GAINED` or
  `FocusEvent.FOCUS_LOST`.

  `protected void`

  `processInputMethodEvent(InputMethodEvent e)`

  Processes any input method events, such as
  `InputMethodEvent.INPUT_METHOD_TEXT_CHANGED` or
  `InputMethodEvent.CARET_POSITION_CHANGED`.

  `void`

  `setDocument(Document doc)`

  Associates the editor with a text document.

  `void`

  `setFocusLostBehavior(int behavior)`

  Sets the behavior when focus is lost.

  `protected void`

  `setFormatter(JFormattedTextField.AbstractFormatter format)`

  Sets the current `AbstractFormatter`.

  `void`

  `setFormatterFactory(JFormattedTextField.AbstractFormatterFactory tf)`

  Sets the `AbstractFormatterFactory`.

  `void`

  `setValue(Object value)`

  Sets the value that will be formatted by an
  `AbstractFormatter` obtained from the current
  `AbstractFormatterFactory`.

  ### Methods inherited from class javax.swing.[JTextField](JTextField.md "class in javax.swing")

  `actionPropertyChanged, addActionListener, configurePropertiesFromAction, createActionPropertyChangeListener, createDefaultModel, fireActionPerformed, getAccessibleContext, getAction, getActionListeners, getColumns, getColumnWidth, getHorizontalAlignment, getHorizontalVisibility, getPreferredSize, getScrollOffset, isValidateRoot, paramString, postActionEvent, removeActionListener, scrollRectToVisible, setAction, setActionCommand, setColumns, setFont, setHorizontalAlignment, setScrollOffset`

  ### Methods inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `addCaretListener, addInputMethodListener, addKeymap, copy, cut, fireCaretUpdate, getCaret, getCaretColor, getCaretListeners, getCaretPosition, getDisabledTextColor, getDocument, getDragEnabled, getDropLocation, getDropMode, getFocusAccelerator, getHighlighter, getInputMethodRequests, getKeymap, getKeymap, getMargin, getNavigationFilter, getPreferredScrollableViewportSize, getPrintable, getScrollableBlockIncrement, getScrollableTracksViewportHeight, getScrollableTracksViewportWidth, getScrollableUnitIncrement, getSelectedText, getSelectedTextColor, getSelectionColor, getSelectionEnd, getSelectionStart, getText, getText, getToolTipText, getUI, isEditable, loadKeymap, modelToView, modelToView2D, moveCaretPosition, paste, print, print, print, read, removeCaretListener, removeKeymap, removeNotify, replaceSelection, restoreComposedText, saveComposedText, select, selectAll, setCaret, setCaretColor, setCaretPosition, setComponentOrientation, setDisabledTextColor, setDragEnabled, setDropMode, setEditable, setFocusAccelerator, setHighlighter, setKeymap, setMargin, setNavigationFilter, setSelectedTextColor, setSelectionColor, setSelectionEnd, setSelectionStart, setText, setUI, updateUI, viewToModel, viewToModel2D, write`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processHierarchyBoundsEvent, processHierarchyEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### COMMIT

    public static final int COMMIT

    Constant identifying that when focus is lost,
    `commitEdit` should be invoked. If in committing the
    new value a `ParseException` is thrown, the invalid
    value will remain.

    See Also:
    :   - [`setFocusLostBehavior(int)`](#setFocusLostBehavior(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JFormattedTextField.COMMIT)
  + ### COMMIT\_OR\_REVERT

    public static final int COMMIT\_OR\_REVERT

    Constant identifying that when focus is lost,
    `commitEdit` should be invoked. If in committing the new
    value a `ParseException` is thrown, the value will be
    reverted.

    See Also:
    :   - [`setFocusLostBehavior(int)`](#setFocusLostBehavior(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JFormattedTextField.COMMIT_OR_REVERT)
  + ### REVERT

    public static final int REVERT

    Constant identifying that when focus is lost, editing value should
    be reverted to current value set on the
    `JFormattedTextField`.

    See Also:
    :   - [`setFocusLostBehavior(int)`](#setFocusLostBehavior(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JFormattedTextField.REVERT)
  + ### PERSIST

    public static final int PERSIST

    Constant identifying that when focus is lost, the edited value
    should be left.

    See Also:
    :   - [`setFocusLostBehavior(int)`](#setFocusLostBehavior(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JFormattedTextField.PERSIST)
* ## Constructor Details

  + ### JFormattedTextField

    public JFormattedTextField()

    Creates a `JFormattedTextField` with no
    `AbstractFormatterFactory`. Use `setMask` or
    `setFormatterFactory` to configure the
    `JFormattedTextField` to edit a particular type of
    value.
  + ### JFormattedTextField

    public JFormattedTextField([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Creates a JFormattedTextField with the specified value. This will
    create an `AbstractFormatterFactory` based on the
    type of `value`.

    Parameters:
    :   `value` - Initial value for the JFormattedTextField
  + ### JFormattedTextField

    public JFormattedTextField([Format](../../../java.base/java/text/Format.md "class in java.text") format)

    Creates a `JFormattedTextField`. `format` is
    wrapped in an appropriate `AbstractFormatter` which is
    then wrapped in an `AbstractFormatterFactory`.

    Parameters:
    :   `format` - Format used to look up an AbstractFormatter
  + ### JFormattedTextField

    public JFormattedTextField([JFormattedTextField.AbstractFormatter](JFormattedTextField.AbstractFormatter.md "class in javax.swing") formatter)

    Creates a `JFormattedTextField` with the specified
    `AbstractFormatter`. The `AbstractFormatter`
    is placed in an `AbstractFormatterFactory`.

    Parameters:
    :   `formatter` - AbstractFormatter to use for formatting.
  + ### JFormattedTextField

    public JFormattedTextField([JFormattedTextField.AbstractFormatterFactory](JFormattedTextField.AbstractFormatterFactory.md "class in javax.swing") factory)

    Creates a `JFormattedTextField` with the specified
    `AbstractFormatterFactory`.

    Parameters:
    :   `factory` - AbstractFormatterFactory used for formatting.
  + ### JFormattedTextField

    public JFormattedTextField([JFormattedTextField.AbstractFormatterFactory](JFormattedTextField.AbstractFormatterFactory.md "class in javax.swing") factory,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") currentValue)

    Creates a `JFormattedTextField` with the specified
    `AbstractFormatterFactory` and initial value.

    Parameters:
    :   `factory` - `AbstractFormatterFactory` used for
        formatting.
    :   `currentValue` - Initial value to use
* ## Method Details

  + ### setFocusLostBehavior

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JFormattedTextField.COMMIT","JFormattedTextField.COMMIT\_OR\_REVERT","JFormattedTextField.REVERT","JFormattedTextField.PERSIST"},
    [description](../../java/beans/BeanProperty.md#description())="Behavior when component loses focus")
    public void setFocusLostBehavior(int behavior)

    Sets the behavior when focus is lost. This will be one of
    `JFormattedTextField.COMMIT_OR_REVERT`,
    `JFormattedTextField.REVERT`,
    `JFormattedTextField.COMMIT` or
    `JFormattedTextField.PERSIST`
    Note that some `AbstractFormatter`s may push changes as
    they occur, so that the value of this will have no effect.

    This will throw an `IllegalArgumentException` if the object
    passed in is not one of the afore mentioned values.

    The default value of this property is
    `JFormattedTextField.COMMIT_OR_REVERT`.

    Parameters:
    :   `behavior` - Identifies behavior when focus is lost

    Throws:
    :   `IllegalArgumentException` - if behavior is not one of the known
        values
  + ### getFocusLostBehavior

    public int getFocusLostBehavior()

    Returns the behavior when focus is lost. This will be one of
    `COMMIT_OR_REVERT`,
    `COMMIT`,
    `REVERT` or
    `PERSIST`
    Note that some `AbstractFormatter`s may push changes as
    they occur, so that the value of this will have no effect.

    Returns:
    :   returns behavior when focus is lost
  + ### setFormatterFactory

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="AbstractFormatterFactory, responsible for returning an AbstractFormatter that can format the current value.")
    public void setFormatterFactory([JFormattedTextField.AbstractFormatterFactory](JFormattedTextField.AbstractFormatterFactory.md "class in javax.swing") tf)

    Sets the `AbstractFormatterFactory`.
    `AbstractFormatterFactory` is
    able to return an instance of `AbstractFormatter` that is
    used to format a value for display, as well an enforcing an editing
    policy.

    If you have not explicitly set an `AbstractFormatterFactory`
    by way of this method (or a constructor) an
    `AbstractFormatterFactory` and consequently an
    `AbstractFormatter` will be used based on the
    `Class` of the value. `NumberFormatter` will
    be used for `Number`s, `DateFormatter` will
    be used for `Dates`, otherwise `DefaultFormatter`
    will be used.

    This is a JavaBeans bound property.

    Parameters:
    :   `tf` - `AbstractFormatterFactory` used to lookup
        instances of `AbstractFormatter`
  + ### getFormatterFactory

    public [JFormattedTextField.AbstractFormatterFactory](JFormattedTextField.AbstractFormatterFactory.md "class in javax.swing") getFormatterFactory()

    Returns the current `AbstractFormatterFactory`.

    Returns:
    :   `AbstractFormatterFactory` used to determine
        `AbstractFormatter`s

    See Also:
    :   - [`setFormatterFactory(javax.swing.JFormattedTextField.AbstractFormatterFactory)`](#setFormatterFactory(javax.swing.JFormattedTextField.AbstractFormatterFactory))
  + ### setFormatter

    protected void setFormatter([JFormattedTextField.AbstractFormatter](JFormattedTextField.AbstractFormatter.md "class in javax.swing") format)

    Sets the current `AbstractFormatter`.

    You should not normally invoke this, instead set the
    `AbstractFormatterFactory` or set the value.
    `JFormattedTextField` will
    invoke this as the state of the `JFormattedTextField`
    changes and requires the value to be reset.
    `JFormattedTextField` passes in the
    `AbstractFormatter` obtained from the
    `AbstractFormatterFactory`.

    This is a JavaBeans bound property.

    Parameters:
    :   `format` - AbstractFormatter to use for formatting

    See Also:
    :   - [`setFormatterFactory(javax.swing.JFormattedTextField.AbstractFormatterFactory)`](#setFormatterFactory(javax.swing.JFormattedTextField.AbstractFormatterFactory))
  + ### getFormatter

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="TextFormatter, responsible for formatting the current value")
    public [JFormattedTextField.AbstractFormatter](JFormattedTextField.AbstractFormatter.md "class in javax.swing") getFormatter()

    Returns the `AbstractFormatter` that is used to format and
    parse the current value.

    Returns:
    :   AbstractFormatter used for formatting
  + ### setValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The value to be formatted.")
    public void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the value that will be formatted by an
    `AbstractFormatter` obtained from the current
    `AbstractFormatterFactory`. If no
    `AbstractFormatterFactory` has been specified, this will
    attempt to create one based on the type of `value`.

    The default value of this property is null.

    This is a JavaBeans bound property.

    Parameters:
    :   `value` - Current value to display
  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Returns the last valid value. Based on the editing policy of
    the `AbstractFormatter` this may not return the current
    value. The currently edited value can be obtained by invoking
    `commitEdit` followed by `getValue`.

    Returns:
    :   Last valid value
  + ### commitEdit

    public void commitEdit()
    throws [ParseException](../../../java.base/java/text/ParseException.md "class in java.text")

    Forces the current value to be taken from the
    `AbstractFormatter` and set as the current value.
    This has no effect if there is no current
    `AbstractFormatter` installed.

    Throws:
    :   `ParseException` - if the `AbstractFormatter` is not able
        to format the current value
  + ### isEditValid

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean isEditValid()

    Returns true if the current value being edited is valid. The value of
    this is managed by the current `AbstractFormatter`, as such
    there is no public setter for it.

    Returns:
    :   true if the current value being edited is valid.
  + ### invalidEdit

    protected void invalidEdit()

    Invoked when the user inputs an invalid value. This gives the
    component a chance to provide feedback. The default
    implementation beeps.
  + ### processInputMethodEvent

    protected void processInputMethodEvent([InputMethodEvent](../../java/awt/event/InputMethodEvent.md "class in java.awt.event") e)

    Processes any input method events, such as
    `InputMethodEvent.INPUT_METHOD_TEXT_CHANGED` or
    `InputMethodEvent.CARET_POSITION_CHANGED`.

    Overrides:
    :   `processInputMethodEvent` in class `JTextComponent`

    Parameters:
    :   `e` - the `InputMethodEvent`

    See Also:
    :   - [`InputMethodEvent`](../../java/awt/event/InputMethodEvent.md "class in java.awt.event")
  + ### processFocusEvent

    protected void processFocusEvent([FocusEvent](../../java/awt/event/FocusEvent.md "class in java.awt.event") e)

    Processes any focus events, such as
    `FocusEvent.FOCUS_GAINED` or
    `FocusEvent.FOCUS_LOST`.

    Overrides:
    :   `processFocusEvent` in class `Component`

    Parameters:
    :   `e` - the `FocusEvent`

    See Also:
    :   - [`FocusEvent`](../../java/awt/event/FocusEvent.md "class in java.awt.event")
  + ### getActions

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Action](Action.md "interface in javax.swing")[] getActions()

    Fetches the command list for the editor. This is
    the list of commands supported by the plugged-in UI
    augmented by the collection of commands that the
    editor itself supports. These are useful for binding
    to events, such as in a keymap.

    Overrides:
    :   `getActions` in class `JTextField`

    Returns:
    :   the command list
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Gets the class ID for a UI.

    Overrides:
    :   `getUIClassID` in class `JTextField`

    Returns:
    :   the string "FormattedTextFieldUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
  + ### setDocument

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="the text document model")
    public void setDocument([Document](text/Document.md "interface in javax.swing.text") doc)

    Associates the editor with a text document.
    The currently registered factory is used to build a view for
    the document, which gets displayed by the editor after revalidation.
    A PropertyChange event ("document") is propagated to each listener.

    Overrides:
    :   `setDocument` in class `JTextField`

    Parameters:
    :   `doc` - the document to display/edit

    See Also:
    :   - [`JTextComponent.getDocument()`](text/JTextComponent.md#getDocument())