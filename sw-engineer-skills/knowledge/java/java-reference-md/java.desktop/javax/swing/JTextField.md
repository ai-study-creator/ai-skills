Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTextField

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent](text/JTextComponent.md "class in javax.swing.text")

javax.swing.JTextField

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `Scrollable`, `SwingConstants`

Direct Known Subclasses:
:   `DefaultTreeCellEditor.DefaultTextField`, `JFormattedTextField`, `JPasswordField`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UIClassID",
[description](../../java/beans/JavaBean.md#description())="A component which allows for the editing of a single line of text.")
public class JTextField
extends [JTextComponent](text/JTextComponent.md "class in javax.swing.text")
implements [SwingConstants](SwingConstants.md "interface in javax.swing")

`JTextField` is a lightweight component that allows the editing
of a single line of text.
For information on and examples of using text fields,
see
[How to Use Text Fields](https://docs.oracle.com/javase/tutorial/uiswing/components/textfield.html)
in *The Java Tutorial.*

`JTextField` is intended to be source-compatible
with `java.awt.TextField` where it is reasonable to do so. This
component has capabilities not found in the `java.awt.TextField`
class. The superclass should be consulted for additional capabilities.

`JTextField` has a method to establish the string used as the
command string for the action event that gets fired. The
`java.awt.TextField` used the text of the field as the command
string for the `ActionEvent`.
`JTextField` will use the command
string set with the `setActionCommand` method if not `null`,
otherwise it will use the text of the field as a compatibility with
`java.awt.TextField`.

The method `setEchoChar` and `getEchoChar`
are not provided directly to avoid a new implementation of a
pluggable look-and-feel inadvertently exposing password characters.
To provide password-like services a separate class `JPasswordField`
extends `JTextField` to provide this service with an independently
pluggable look-and-feel.

The `java.awt.TextField` could be monitored for changes by adding
a `TextListener` for `TextEvent`'s.
In the `JTextComponent` based
components, changes are broadcasted from the model via a
`DocumentEvent` to `DocumentListeners`.
The `DocumentEvent` gives
the location of the change and the kind of change if desired.
The code fragment might look something like:

```
     DocumentListener myListener = ??;
     JTextField myArea = ??;
     myArea.getDocument().addDocumentListener(myListener);
```

The horizontal alignment of `JTextField` can be set to be left
justified, leading justified, centered, right justified or trailing justified.
Right/trailing justification is useful if the required size
of the field text is smaller than the size allocated to it.
This is determined by the `setHorizontalAlignment`
and `getHorizontalAlignment` methods. The default
is to be leading justified.

How the text field consumes VK\_ENTER events depends
on whether the text field has any action listeners.
If so, then VK\_ENTER results in the listeners
getting an ActionEvent,
and the VK\_ENTER event is consumed.
This is compatible with how AWT text fields handle VK\_ENTER events.
If the text field has no action listeners, then as of v 1.3 the VK\_ENTER
event is not consumed. Instead, the bindings of ancestor components
are processed, which enables the default button feature of
JFC/Swing to work.

Customized fields can easily be created by extending the model and
changing the default model provided. For example, the following piece
of code will create a field that holds only upper case characters. It
will work even if text is pasted into from the clipboard or it is altered via
programmatic changes.

```
 public class UpperCaseField extends JTextField {
 
     public UpperCaseField(int cols) {
         super(cols);
     }
 
     protected Document createDefaultModel() {
         return new UpperCaseDocument();
     }
 
     static class UpperCaseDocument extends PlainDocument {
 
         public void insertString(int offs, String str, AttributeSet a)
             throws BadLocationException {
 
             if (str == null) {
                 return;
             }
             char[] upper = str.toCharArray();
             for (int i = 0; i < upper.length; i++) {
                 upper[i] = Character.toUpperCase(upper[i]);
             }
             super.insertString(offs, new String(upper), a);
         }
     }
 }
```

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
:   * [`setActionCommand(java.lang.String)`](#setActionCommand(java.lang.String))
    * [`JPasswordField`](JPasswordField.md "class in javax.swing")
    * [`addActionListener(java.awt.event.ActionListener)`](#addActionListener(java.awt.event.ActionListener))

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JTextField.AccessibleJTextField`

  This class implements accessibility support for the
  `JTextField` class.

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

  `static final String`

  `notifyAction`

  Name of the action to send notification that the
  contents of the field have been accepted.

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

  `JTextField()`

  Constructs a new `TextField`.

  `JTextField(int columns)`

  Constructs a new empty `TextField` with the specified
  number of columns.

  `JTextField(String text)`

  Constructs a new `TextField` initialized with the
  specified text.

  `JTextField(String text,
  int columns)`

  Constructs a new `TextField` initialized with the
  specified text and columns.

  `JTextField(Document doc,
  String text,
  int columns)`

  Constructs a new `JTextField` that uses the given text
  storage model and the given number of columns.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `actionPropertyChanged(Action action,
  String propertyName)`

  Updates the textfield's state in response to property changes in
  associated action.

  `void`

  `addActionListener(ActionListener l)`

  Adds the specified action listener to receive
  action events from this textfield.

  `protected void`

  `configurePropertiesFromAction(Action a)`

  Sets the properties on this textfield to match those in the specified
  `Action`.

  `protected PropertyChangeListener`

  `createActionPropertyChangeListener(Action a)`

  Creates and returns a `PropertyChangeListener` that is
  responsible for listening for changes from the specified
  `Action` and updating the appropriate properties.

  `protected Document`

  `createDefaultModel()`

  Creates the default implementation of the model
  to be used at construction if one isn't explicitly
  given.

  `protected void`

  `fireActionPerformed()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  `JTextField`.

  `Action`

  `getAction()`

  Returns the currently set `Action` for this
  `ActionEvent` source, or `null`
  if no `Action` is set.

  `ActionListener[]`

  `getActionListeners()`

  Returns an array of all the `ActionListener`s added
  to this JTextField with addActionListener().

  `Action[]`

  `getActions()`

  Fetches the command list for the editor.

  `int`

  `getColumns()`

  Returns the number of columns in this `TextField`.

  `protected int`

  `getColumnWidth()`

  Returns the column width.

  `int`

  `getHorizontalAlignment()`

  Returns the horizontal alignment of the text.

  `BoundedRangeModel`

  `getHorizontalVisibility()`

  Gets the visibility of the text field.

  `Dimension`

  `getPreferredSize()`

  Returns the preferred size `Dimensions` needed for this
  `TextField`.

  `int`

  `getScrollOffset()`

  Gets the scroll offset, in pixels.

  `String`

  `getUIClassID()`

  Gets the class ID for a UI.

  `boolean`

  `isValidateRoot()`

  Calls to `revalidate` that come from within the
  textfield itself will
  be handled by validating the textfield, unless the textfield
  is contained within a `JViewport`,
  in which case this returns false.

  `protected String`

  `paramString()`

  Returns a string representation of this `JTextField`.

  `void`

  `postActionEvent()`

  Processes action events occurring on this textfield by
  dispatching them to any registered `ActionListener` objects.

  `void`

  `removeActionListener(ActionListener l)`

  Removes the specified action listener so that it no longer
  receives action events from this textfield.

  `void`

  `scrollRectToVisible(Rectangle r)`

  Scrolls the field left or right.

  `void`

  `setAction(Action a)`

  Sets the `Action` for the `ActionEvent` source.

  `void`

  `setActionCommand(String command)`

  Sets the command string used for action events.

  `void`

  `setColumns(int columns)`

  Sets the number of columns in this `TextField`,
  and then invalidate the layout.

  `void`

  `setDocument(Document doc)`

  Associates the editor with a text document.

  `void`

  `setFont(Font f)`

  Sets the current font.

  `void`

  `setHorizontalAlignment(int alignment)`

  Sets the horizontal alignment of the text.

  `void`

  `setScrollOffset(int scrollOffset)`

  Sets the scroll offset, in pixels.

  ### Methods inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `addCaretListener, addInputMethodListener, addKeymap, copy, cut, fireCaretUpdate, getCaret, getCaretColor, getCaretListeners, getCaretPosition, getDisabledTextColor, getDocument, getDragEnabled, getDropLocation, getDropMode, getFocusAccelerator, getHighlighter, getInputMethodRequests, getKeymap, getKeymap, getMargin, getNavigationFilter, getPreferredScrollableViewportSize, getPrintable, getScrollableBlockIncrement, getScrollableTracksViewportHeight, getScrollableTracksViewportWidth, getScrollableUnitIncrement, getSelectedText, getSelectedTextColor, getSelectionColor, getSelectionEnd, getSelectionStart, getText, getText, getToolTipText, getUI, isEditable, loadKeymap, modelToView, modelToView2D, moveCaretPosition, paste, print, print, print, processInputMethodEvent, read, removeCaretListener, removeKeymap, removeNotify, replaceSelection, restoreComposedText, saveComposedText, select, selectAll, setCaret, setCaretColor, setCaretPosition, setComponentOrientation, setDisabledTextColor, setDragEnabled, setDropMode, setEditable, setFocusAccelerator, setHighlighter, setKeymap, setMargin, setNavigationFilter, setSelectedTextColor, setSelectionColor, setSelectionEnd, setSelectionStart, setText, setUI, updateUI, viewToModel, viewToModel2D, write`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### notifyAction

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") notifyAction

    Name of the action to send notification that the
    contents of the field have been accepted. Typically
    this is bound to a carriage-return.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JTextField.notifyAction)
* ## Constructor Details

  + ### JTextField

    public JTextField()

    Constructs a new `TextField`. A default model is created,
    the initial string is `null`,
    and the number of columns is set to 0.
  + ### JTextField

    public JTextField([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    Constructs a new `TextField` initialized with the
    specified text. A default model is created and the number of
    columns is 0.

    Parameters:
    :   `text` - the text to be displayed, or `null`
  + ### JTextField

    public JTextField(int columns)

    Constructs a new empty `TextField` with the specified
    number of columns.
    A default model is created and the initial string is set to
    `null`.

    Parameters:
    :   `columns` - the number of columns to use to calculate
        the preferred width; if columns is set to zero, the
        preferred width will be whatever naturally results from
        the component implementation
  + ### JTextField

    public JTextField([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    int columns)

    Constructs a new `TextField` initialized with the
    specified text and columns. A default model is created.

    Parameters:
    :   `text` - the text to be displayed, or `null`
    :   `columns` - the number of columns to use to calculate
        the preferred width; if columns is set to zero, the
        preferred width will be whatever naturally results from
        the component implementation
  + ### JTextField

    public JTextField([Document](text/Document.md "interface in javax.swing.text") doc,
    [String](../../../java.base/java/lang/String.md "class in java.lang") text,
    int columns)

    Constructs a new `JTextField` that uses the given text
    storage model and the given number of columns.
    This is the constructor through which the other constructors feed.
    If the document is `null`, a default model is created.

    Parameters:
    :   `doc` - the text storage to use; if this is `null`,
        a default will be provided by calling the
        `createDefaultModel` method
    :   `text` - the initial string to display, or `null`
    :   `columns` - the number of columns to use to calculate
        the preferred width >= 0; if `columns`
        is set to zero, the preferred width will be whatever
        naturally results from the component implementation

    Throws:
    :   `IllegalArgumentException` - if `columns` < 0
* ## Method Details

  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Gets the class ID for a UI.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "TextFieldUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### setDocument

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="the text document model")
    public void setDocument([Document](text/Document.md "interface in javax.swing.text") doc)

    Associates the editor with a text document.
    The currently registered factory is used to build a view for
    the document, which gets displayed by the editor after revalidation.
    A PropertyChange event ("document") is propagated to each listener.

    Overrides:
    :   `setDocument` in class `JTextComponent`

    Parameters:
    :   `doc` - the document to display/edit

    See Also:
    :   - [`JTextComponent.getDocument()`](text/JTextComponent.md#getDocument())
  + ### isValidateRoot

    public boolean isValidateRoot()

    Calls to `revalidate` that come from within the
    textfield itself will
    be handled by validating the textfield, unless the textfield
    is contained within a `JViewport`,
    in which case this returns false.

    Overrides:
    :   `isValidateRoot` in class `JComponent`

    Returns:
    :   if the parent of this textfield is a `JViewPort`
        return false, otherwise return true

    See Also:
    :   - [`JComponent.revalidate()`](JComponent.md#revalidate())
        - [`JComponent.isValidateRoot()`](JComponent.md#isValidateRoot())
        - [`Container.isValidateRoot()`](../../java/awt/Container.md#isValidateRoot())
  + ### getHorizontalAlignment

    public int getHorizontalAlignment()

    Returns the horizontal alignment of the text.
    Valid keys are:
    - `JTextField.LEFT`- `JTextField.CENTER`- `JTextField.RIGHT`- `JTextField.LEADING`- `JTextField.TRAILING`

    Returns:
    :   the horizontal alignment
  + ### setHorizontalAlignment

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JTextField.LEFT","JTextField.CENTER","JTextField.RIGHT","JTextField.LEADING","JTextField.TRAILING"},
    [description](../../java/beans/BeanProperty.md#description())="Set the field alignment to LEFT, CENTER, RIGHT, LEADING (the default) or TRAILING")
    public void setHorizontalAlignment(int alignment)

    Sets the horizontal alignment of the text.
    Valid keys are:
    - `JTextField.LEFT`- `JTextField.CENTER`- `JTextField.RIGHT`- `JTextField.LEADING`- `JTextField.TRAILING``invalidate` and `repaint` are called when the
    alignment is set,
    and a `PropertyChange` event ("horizontalAlignment") is fired.

    Parameters:
    :   `alignment` - the alignment

    Throws:
    :   `IllegalArgumentException` - if `alignment`
        is not a valid key
  + ### createDefaultModel

    protected [Document](text/Document.md "interface in javax.swing.text") createDefaultModel()

    Creates the default implementation of the model
    to be used at construction if one isn't explicitly
    given. An instance of `PlainDocument` is returned.

    Returns:
    :   the default model implementation
  + ### getColumns

    public int getColumns()

    Returns the number of columns in this `TextField`.

    Returns:
    :   the number of columns >= 0
  + ### setColumns

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="the number of columns preferred for display")
    public void setColumns(int columns)

    Sets the number of columns in this `TextField`,
    and then invalidate the layout.

    Parameters:
    :   `columns` - the number of columns >= 0

    Throws:
    :   `IllegalArgumentException` - if `columns`
        is less than 0
  + ### getColumnWidth

    protected int getColumnWidth()

    Returns the column width.
    The meaning of what a column is can be considered a fairly weak
    notion for some fonts. This method is used to define the width
    of a column. By default this is defined to be the width of the
    character *m* for the font used. This method can be
    redefined to be some alternative amount

    Returns:
    :   the column width >= 1
  + ### getPreferredSize

    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getPreferredSize()

    Returns the preferred size `Dimensions` needed for this
    `TextField`. If a non-zero number of columns has been
    set, the width is set to the columns multiplied by
    the column width.

    Overrides:
    :   `getPreferredSize` in class `JComponent`

    Returns:
    :   the dimension of this textfield

    See Also:
    :   - [`JComponent.setPreferredSize(java.awt.Dimension)`](JComponent.md#setPreferredSize(java.awt.Dimension))
        - [`ComponentUI`](plaf/ComponentUI.md "class in javax.swing.plaf")
  + ### setFont

    public void setFont([Font](../../java/awt/Font.md "class in java.awt") f)

    Sets the current font. This removes cached row height and column
    width so the new font will be reflected.
    `revalidate` is called after setting the font.

    Overrides:
    :   `setFont` in class `JComponent`

    Parameters:
    :   `f` - the new font

    See Also:
    :   - [`Component.getFont()`](../../java/awt/Component.md#getFont())
  + ### addActionListener

    public void addActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Adds the specified action listener to receive
    action events from this textfield.

    Parameters:
    :   `l` - the action listener to be added
  + ### removeActionListener

    public void removeActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Removes the specified action listener so that it no longer
    receives action events from this textfield.

    Parameters:
    :   `l` - the action listener to be removed
  + ### getActionListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event")[] getActionListeners()

    Returns an array of all the `ActionListener`s added
    to this JTextField with addActionListener().

    Returns:
    :   all of the `ActionListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### fireActionPerformed

    protected void fireActionPerformed()

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created.
    The listener list is processed in last to
    first order.

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### setActionCommand

    public void setActionCommand([String](../../../java.base/java/lang/String.md "class in java.lang") command)

    Sets the command string used for action events.

    Parameters:
    :   `command` - the command string
  + ### setAction

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="the Action instance connected with this ActionEvent source")
    public void setAction([Action](Action.md "interface in javax.swing") a)

    Sets the `Action` for the `ActionEvent` source.
    The new `Action` replaces
    any previously set `Action` but does not affect
    `ActionListeners` independently
    added with `addActionListener`.
    If the `Action` is already a registered
    `ActionListener`
    for the `ActionEvent` source, it is not re-registered.

    Setting the `Action` results in immediately changing
    all the properties described in [Swing Components Supporting `Action`](Action.md#buttonActions).
    Subsequently, the textfield's properties are automatically updated
    as the `Action`'s properties change.

    This method uses three other methods to set
    and help track the `Action`'s property values.
    It uses the `configurePropertiesFromAction` method
    to immediately change the textfield's properties.
    To track changes in the `Action`'s property values,
    this method registers the `PropertyChangeListener`
    returned by `createActionPropertyChangeListener`. The
    default `PropertyChangeListener` invokes the
    `actionPropertyChanged` method when a property in the
    `Action` changes.

    Parameters:
    :   `a` - the `Action` for the `JTextField`,
        or `null`

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`getAction()`](#getAction())
        - [`configurePropertiesFromAction(javax.swing.Action)`](#configurePropertiesFromAction(javax.swing.Action))
        - [`createActionPropertyChangeListener(javax.swing.Action)`](#createActionPropertyChangeListener(javax.swing.Action))
        - [`actionPropertyChanged(javax.swing.Action, java.lang.String)`](#actionPropertyChanged(javax.swing.Action,java.lang.String))
  + ### getAction

    public [Action](Action.md "interface in javax.swing") getAction()

    Returns the currently set `Action` for this
    `ActionEvent` source, or `null`
    if no `Action` is set.

    Returns:
    :   the `Action` for this `ActionEvent` source,
        or `null`

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`setAction(javax.swing.Action)`](#setAction(javax.swing.Action))
  + ### configurePropertiesFromAction

    protected void configurePropertiesFromAction([Action](Action.md "interface in javax.swing") a)

    Sets the properties on this textfield to match those in the specified
    `Action`. Refer to [Swing Components Supporting `Action`](Action.md#buttonActions) for more
    details as to which properties this sets.

    Parameters:
    :   `a` - the `Action` from which to get the properties,
        or `null`

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`setAction(javax.swing.Action)`](#setAction(javax.swing.Action))
  + ### actionPropertyChanged

    protected void actionPropertyChanged([Action](Action.md "interface in javax.swing") action,
    [String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Updates the textfield's state in response to property changes in
    associated action. This method is invoked from the
    `PropertyChangeListener` returned from
    `createActionPropertyChangeListener`. Subclasses do not normally
    need to invoke this. Subclasses that support additional `Action`
    properties should override this and
    `configurePropertiesFromAction`.

    Refer to the table at [Swing Components Supporting `Action`](Action.md#buttonActions) for a list of
    the properties this method sets.

    Parameters:
    :   `action` - the `Action` associated with this textfield
    :   `propertyName` - the name of the property that changed

    Since:
    :   1.6

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`configurePropertiesFromAction(javax.swing.Action)`](#configurePropertiesFromAction(javax.swing.Action))
  + ### createActionPropertyChangeListener

    protected [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") createActionPropertyChangeListener([Action](Action.md "interface in javax.swing") a)

    Creates and returns a `PropertyChangeListener` that is
    responsible for listening for changes from the specified
    `Action` and updating the appropriate properties.

    **Warning:** If you subclass this do not create an anonymous
    inner class. If you do the lifetime of the textfield will be tied to
    that of the `Action`.

    Parameters:
    :   `a` - the textfield's action

    Returns:
    :   a `PropertyChangeListener` that is responsible for
        listening for changes from the specified `Action` and
        updating the appropriate properties

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`setAction(javax.swing.Action)`](#setAction(javax.swing.Action))
  + ### getActions

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Action](Action.md "interface in javax.swing")[] getActions()

    Fetches the command list for the editor. This is
    the list of commands supported by the plugged-in UI
    augmented by the collection of commands that the
    editor itself supports. These are useful for binding
    to events, such as in a keymap.

    Overrides:
    :   `getActions` in class `JTextComponent`

    Returns:
    :   the command list
  + ### postActionEvent

    public void postActionEvent()

    Processes action events occurring on this textfield by
    dispatching them to any registered `ActionListener` objects.
    This is normally called by the controller registered with
    textfield.
  + ### getHorizontalVisibility

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing") getHorizontalVisibility()

    Gets the visibility of the text field. This can
    be adjusted to change the location of the visible
    area if the size of the field is greater than
    the area that was allocated to the field.

    The fields look-and-feel implementation manages
    the values of the minimum, maximum, and extent
    properties on the `BoundedRangeModel`.

    Returns:
    :   the visibility

    See Also:
    :   - [`BoundedRangeModel`](BoundedRangeModel.md "interface in javax.swing")
  + ### getScrollOffset

    public int getScrollOffset()

    Gets the scroll offset, in pixels.

    Returns:
    :   the offset >= 0
  + ### setScrollOffset

    public void setScrollOffset(int scrollOffset)

    Sets the scroll offset, in pixels.

    Parameters:
    :   `scrollOffset` - the offset >= 0
  + ### scrollRectToVisible

    public void scrollRectToVisible([Rectangle](../../java/awt/Rectangle.md "class in java.awt") r)

    Scrolls the field left or right.

    Overrides:
    :   `scrollRectToVisible` in class `JComponent`

    Parameters:
    :   `r` - the region to scroll

    See Also:
    :   - [`JViewport`](JViewport.md "class in javax.swing")
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JTextField`.
    This method is intended to be used only for debugging purposes,
    and the content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JTextComponent`

    Returns:
    :   a string representation of this `JTextField`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    `JTextField`. For `JTextFields`,
    the `AccessibleContext` takes the form of an
    `AccessibleJTextField`.
    A new `AccessibleJTextField` instance is created
    if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `JTextComponent`

    Returns:
    :   an `AccessibleJTextField` that serves as the
        `AccessibleContext` of this `JTextField`