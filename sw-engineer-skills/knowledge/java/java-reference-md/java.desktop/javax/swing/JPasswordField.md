Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JPasswordField

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent](text/JTextComponent.md "class in javax.swing.text")

[javax.swing.JTextField](JTextField.md "class in javax.swing")

javax.swing.JPasswordField

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `Scrollable`, `SwingConstants`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([description](../../java/beans/JavaBean.md#description())="Allows the editing of a line of text but doesn\'t show the characters.")
public class JPasswordField
extends [JTextField](JTextField.md "class in javax.swing")

`JPasswordField` is a lightweight component that allows
the editing of a single line of text where the view indicates
something was typed, but does not show the original characters.
You can find further information and examples in
[How to Use Text Fields](https://docs.oracle.com/javase/tutorial/uiswing/components/textfield.html),
a section in *The Java Tutorial.*

`JPasswordField` is intended
to be source-compatible with `java.awt.TextField`
used with `echoChar` set. It is provided separately
to make it easier to safely change the UI for the
`JTextField` without affecting password entries.

**NOTE:**
By default, JPasswordField disables input methods; otherwise, input
characters could be visible while they were composed using input methods.
If an application needs the input methods support, please use the
inherited method, `enableInputMethods(true)`.

**Warning:** The `JPasswordField` will not show the
original characters that were typed, instead displaying alternative text or
graphics. However this doesn't prevent the password from appearing in the
system memory. For handling confidential information such as the password
text, refer to the relevant section at
[Secure Coding Guidelines](https://www.oracle.com/java/technologies/javase/seccodeguide.html).

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

  `JPasswordField.AccessibleJPasswordField`

  This class implements accessibility support for the
  `JPasswordField` class.

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

  `JPasswordField()`

  Constructs a new `JPasswordField`,
  with a default document, `null` starting
  text string, and 0 column width.

  `JPasswordField(int columns)`

  Constructs a new empty `JPasswordField` with the specified
  number of columns.

  `JPasswordField(String text)`

  Constructs a new `JPasswordField` initialized
  with the specified text.

  `JPasswordField(String text,
  int columns)`

  Constructs a new `JPasswordField` initialized with
  the specified text and columns.

  `JPasswordField(Document doc,
  String txt,
  int columns)`

  Constructs a new `JPasswordField` that uses the
  given text storage model and the given number of columns.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `copy()`

  Invokes `provideErrorFeedback` on the current
  look and feel, which typically initiates an error beep.

  `void`

  `cut()`

  Invokes `provideErrorFeedback` on the current
  look and feel, which typically initiates an error beep.

  `boolean`

  `echoCharIsSet()`

  Returns true if this `JPasswordField` has a character
  set for echoing.

  `AccessibleContext`

  `getAccessibleContext()`

  Returns the `AccessibleContext` associated with this
  `JPasswordField`.

  `char`

  `getEchoChar()`

  Returns the character to be used for echoing.

  `char[]`

  `getPassword()`

  Returns the text contained in this `TextComponent`.

  `String`

  `getText()`

  Deprecated.

  As of Java 2 platform v1.2,
  replaced by `getPassword`.

  `String`

  `getText(int offs,
  int len)`

  Deprecated.

  As of Java 2 platform v1.2,
  replaced by `getPassword`.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `protected String`

  `paramString()`

  Returns a string representation of this `JPasswordField`.

  `void`

  `setEchoChar(char c)`

  Sets the echo character for this `JPasswordField`.

  `void`

  `setText(String t)`

  Sets the text of this `TextComponent`
  to the specified text.

  `void`

  `updateUI()`

  Reloads the pluggable UI.

  ### Methods inherited from class javax.swing.[JTextField](JTextField.md "class in javax.swing")

  `actionPropertyChanged, addActionListener, configurePropertiesFromAction, createActionPropertyChangeListener, createDefaultModel, fireActionPerformed, getAction, getActionListeners, getActions, getColumns, getColumnWidth, getHorizontalAlignment, getHorizontalVisibility, getPreferredSize, getScrollOffset, isValidateRoot, postActionEvent, removeActionListener, scrollRectToVisible, setAction, setActionCommand, setColumns, setDocument, setFont, setHorizontalAlignment, setScrollOffset`

  ### Methods inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `addCaretListener, addInputMethodListener, addKeymap, fireCaretUpdate, getCaret, getCaretColor, getCaretListeners, getCaretPosition, getDisabledTextColor, getDocument, getDragEnabled, getDropLocation, getDropMode, getFocusAccelerator, getHighlighter, getInputMethodRequests, getKeymap, getKeymap, getMargin, getNavigationFilter, getPreferredScrollableViewportSize, getPrintable, getScrollableBlockIncrement, getScrollableTracksViewportHeight, getScrollableTracksViewportWidth, getScrollableUnitIncrement, getSelectedText, getSelectedTextColor, getSelectionColor, getSelectionEnd, getSelectionStart, getToolTipText, getUI, isEditable, loadKeymap, modelToView, modelToView2D, moveCaretPosition, paste, print, print, print, processInputMethodEvent, read, removeCaretListener, removeKeymap, removeNotify, replaceSelection, restoreComposedText, saveComposedText, select, selectAll, setCaret, setCaretColor, setCaretPosition, setComponentOrientation, setDisabledTextColor, setDragEnabled, setDropMode, setEditable, setFocusAccelerator, setHighlighter, setKeymap, setMargin, setNavigationFilter, setSelectedTextColor, setSelectionColor, setSelectionEnd, setSelectionStart, setUI, viewToModel, viewToModel2D, write`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JPasswordField

    public JPasswordField()

    Constructs a new `JPasswordField`,
    with a default document, `null` starting
    text string, and 0 column width.
  + ### JPasswordField

    public JPasswordField([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    Constructs a new `JPasswordField` initialized
    with the specified text. The document model is set to the
    default, and the number of columns to 0.

    Parameters:
    :   `text` - the text to be displayed, `null` if none
  + ### JPasswordField

    public JPasswordField(int columns)

    Constructs a new empty `JPasswordField` with the specified
    number of columns. A default model is created, and the initial string
    is set to `null`.

    Parameters:
    :   `columns` - the number of columns >= 0
  + ### JPasswordField

    public JPasswordField([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    int columns)

    Constructs a new `JPasswordField` initialized with
    the specified text and columns. The document model is set to
    the default.

    Parameters:
    :   `text` - the text to be displayed, `null` if none
    :   `columns` - the number of columns >= 0
  + ### JPasswordField

    public JPasswordField([Document](text/Document.md "interface in javax.swing.text") doc,
    [String](../../../java.base/java/lang/String.md "class in java.lang") txt,
    int columns)

    Constructs a new `JPasswordField` that uses the
    given text storage model and the given number of columns.
    This is the constructor through which the other constructors feed.
    The echo character is set to '\*', but may be changed by the current
    Look and Feel. If the document model is
    `null`, a default one will be created.

    Parameters:
    :   `doc` - the text storage to use
    :   `txt` - the text to be displayed, `null` if none
    :   `columns` - the number of columns to use to calculate
        the preferred width >= 0; if columns is set to zero, the
        preferred width will be whatever naturally results from
        the component implementation
* ## Method Details

  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JTextField`

    Returns:
    :   the string "PasswordFieldUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Reloads the pluggable UI. The key used to fetch the
    new interface is `getUIClassID()`. The type of
    the UI is `TextUI`. `invalidate`
    is called after setting the UI.

    Overrides:
    :   `updateUI` in class `JTextComponent`

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`UIManager.getLookAndFeel()`](UIManager.md#getLookAndFeel())
        - [`UIManager.getUI(javax.swing.JComponent)`](UIManager.md#getUI(javax.swing.JComponent))
  + ### getEchoChar

    public char getEchoChar()

    Returns the character to be used for echoing. The default is '\*'.
    The default may be different depending on the currently running Look
    and Feel. For example, Metal/Ocean's default is a bullet character.

    Returns:
    :   the echo character, 0 if unset

    See Also:
    :   - [`setEchoChar(char)`](#setEchoChar(char))
        - [`echoCharIsSet()`](#echoCharIsSet())
  + ### setEchoChar

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="character to display in place of the real characters")
    public void setEchoChar(char c)

    Sets the echo character for this `JPasswordField`.
    Note that this is largely a suggestion, since the
    view that gets installed can use whatever graphic techniques
    it desires to represent the field. Setting a value of 0 indicates
    that you wish to see the text as it is typed, similar to
    the behavior of a standard `JTextField`.

    Parameters:
    :   `c` - the echo character to display

    See Also:
    :   - [`echoCharIsSet()`](#echoCharIsSet())
        - [`getEchoChar()`](#getEchoChar())
  + ### echoCharIsSet

    public boolean echoCharIsSet()

    Returns true if this `JPasswordField` has a character
    set for echoing. A character is considered to be set if the echo
    character is not 0.

    Returns:
    :   true if a character is set for echoing

    See Also:
    :   - [`setEchoChar(char)`](#setEchoChar(char))
        - [`getEchoChar()`](#getEchoChar())
  + ### cut

    public void cut()

    Invokes `provideErrorFeedback` on the current
    look and feel, which typically initiates an error beep.
    The normal behavior of transferring the
    currently selected range in the associated text model
    to the system clipboard, and removing the contents from
    the model, is not acceptable for a password field.

    Overrides:
    :   `cut` in class `JTextComponent`

    See Also:
    :   - [`Toolkit.getSystemClipboard()`](../../java/awt/Toolkit.md#getSystemClipboard())
        - [`Clipboard`](../../../java.datatransfer/java/awt/datatransfer/Clipboard.md "class in java.awt.datatransfer")
  + ### copy

    public void copy()

    Invokes `provideErrorFeedback` on the current
    look and feel, which typically initiates an error beep.
    The normal behavior of transferring the
    currently selected range in the associated text model
    to the system clipboard, and leaving the contents from
    the model, is not acceptable for a password field.

    Overrides:
    :   `copy` in class `JTextComponent`

    See Also:
    :   - [`Toolkit.getSystemClipboard()`](../../java/awt/Toolkit.md#getSystemClipboard())
        - [`Clipboard`](../../../java.datatransfer/java/awt/datatransfer/Clipboard.md "class in java.awt.datatransfer")
  + ### getText

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getText()

    Deprecated.

    As of Java 2 platform v1.2,
    replaced by `getPassword`.

    Returns the text contained in this `TextComponent`.
    If the underlying document is `null`, will give a
    `NullPointerException`.

    For security reasons, this method is deprecated. Use the
    `* getPassword` method instead.

    Overrides:
    :   `getText` in class `JTextComponent`

    Returns:
    :   the text

    See Also:
    :   - [`JTextComponent.setText(java.lang.String)`](text/JTextComponent.md#setText(java.lang.String))
  + ### getText

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getText(int offs,
    int len)
    throws [BadLocationException](text/BadLocationException.md "class in javax.swing.text")

    Deprecated.

    As of Java 2 platform v1.2,
    replaced by `getPassword`.

    Fetches a portion of the text represented by the
    component. Returns an empty string if length is 0.

    For security reasons, this method is deprecated. Use the
    `getPassword` method instead.

    Overrides:
    :   `getText` in class `JTextComponent`

    Parameters:
    :   `offs` - the offset >= 0
    :   `len` - the length >= 0

    Returns:
    :   the text

    Throws:
    :   `BadLocationException` - if the offset or length are invalid
  + ### setText

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="the text of this component")
    public void setText([String](../../../java.base/java/lang/String.md "class in java.lang") t)

    Description copied from class: `JTextComponent`

    Sets the text of this `TextComponent`
    to the specified text. If the text is `null`
    or empty, has the effect of simply deleting the old text.
    When text has been inserted, the resulting caret location
    is determined by the implementation of the caret class.

    Note that text is not a bound property, so no `PropertyChangeEvent` is fired when it changes. To listen for changes to the text,
    use `DocumentListener`.

    Overrides:
    :   `setText` in class `JTextComponent`

    Parameters:
    :   `t` - the new text to be set

    See Also:
    :   - [`JTextComponent.getText(int, int)`](text/JTextComponent.md#getText(int,int))
        - [`DefaultCaret`](text/DefaultCaret.md "class in javax.swing.text")
  + ### getPassword

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public char[] getPassword()

    Returns the text contained in this `TextComponent`.
    If the underlying document is `null`, will give a
    `NullPointerException`. For stronger
    security, it is recommended that the returned character array be
    cleared after use by setting each character to zero.

    Returns:
    :   the text
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JPasswordField`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JTextField`

    Returns:
    :   a string representation of this `JPasswordField`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Returns the `AccessibleContext` associated with this
    `JPasswordField`. For password fields, the
    `AccessibleContext` takes the form of an
    `AccessibleJPasswordField`.
    A new `AccessibleJPasswordField` instance is created
    if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `JTextField`

    Returns:
    :   an `AccessibleJPasswordField` that serves as the
        `AccessibleContext` of this
        `JPasswordField`