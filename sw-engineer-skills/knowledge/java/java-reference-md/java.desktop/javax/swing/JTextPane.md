Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTextPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent](text/JTextComponent.md "class in javax.swing.text")

[javax.swing.JEditorPane](JEditorPane.md "class in javax.swing")

javax.swing.JTextPane

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `Scrollable`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([description](../../java/beans/JavaBean.md#description())="A text component that can be marked up with attributes that are graphically represented.")
public class JTextPane
extends [JEditorPane](JEditorPane.md "class in javax.swing")

A text component that can be marked up with attributes that are
represented graphically.
You can find how-to information and examples of using text panes in
[Using Text Components](https://docs.oracle.com/javase/tutorial/uiswing/components/text.html),
a section in *The Java Tutorial.*

This component models paragraphs
that are composed of runs of character level attributes. Each
paragraph may have a logical style attached to it which contains
the default attributes to use if not overridden by attributes set
on the paragraph or character run. Components and images may
be embedded in the flow of text.

**Newlines**: For a discussion on how newlines are handled, see [DefaultEditorKit](text/DefaultEditorKit.md).

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
:   * [`StyledEditorKit`](text/StyledEditorKit.md "class in javax.swing.text")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JEditorPane](JEditorPane.md "class in javax.swing")

  `JEditorPane.AccessibleJEditorPane, JEditorPane.AccessibleJEditorPaneHTML, JEditorPane.JEditorPaneAccessibleHypertextSupport`

  ## Nested classes/interfaces inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `JTextComponent.AccessibleJTextComponent, JTextComponent.DropLocation, JTextComponent.KeyBinding`

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JEditorPane](JEditorPane.md "class in javax.swing")

  `HONOR_DISPLAY_PROPERTIES, W3C_LENGTH_UNITS`

  ### Fields inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `DEFAULT_KEYMAP, FOCUS_ACCELERATOR_KEY`

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

  `JTextPane()`

  Creates a new `JTextPane`.

  `JTextPane(StyledDocument doc)`

  Creates a new `JTextPane`, with a specified document model.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Style`

  `addStyle(String nm,
  Style parent)`

  Adds a new style into the logical style hierarchy.

  `protected EditorKit`

  `createDefaultEditorKit()`

  Creates the `EditorKit` to use by default.

  `AttributeSet`

  `getCharacterAttributes()`

  Fetches the character attributes in effect at the
  current location of the caret, or `null`.

  `MutableAttributeSet`

  `getInputAttributes()`

  Gets the input attributes for the pane.

  `Style`

  `getLogicalStyle()`

  Fetches the logical style assigned to the paragraph represented
  by the current position of the caret, or `null`.

  `AttributeSet`

  `getParagraphAttributes()`

  Fetches the current paragraph attributes in effect
  at the location of the caret, or `null` if none.

  `Style`

  `getStyle(String nm)`

  Fetches a named non-`null` style previously added.

  `StyledDocument`

  `getStyledDocument()`

  Fetches the model associated with the editor.

  `protected final StyledEditorKit`

  `getStyledEditorKit()`

  Gets the editor kit.

  `String`

  `getUIClassID()`

  Returns the class ID for the UI.

  `void`

  `insertComponent(Component c)`

  Inserts a component into the document as a replacement
  for the currently selected content.

  `void`

  `insertIcon(Icon g)`

  Inserts an icon into the document as a replacement
  for the currently selected content.

  `protected String`

  `paramString()`

  Returns a string representation of this `JTextPane`.

  `void`

  `removeStyle(String nm)`

  Removes a named non-`null` style previously added to
  the document.

  `void`

  `replaceSelection(String content)`

  Replaces the currently selected content with new content
  represented by the given string.

  `void`

  `setCharacterAttributes(AttributeSet attr,
  boolean replace)`

  Applies the given attributes to character
  content.

  `void`

  `setDocument(Document doc)`

  Associates the editor with a text document.

  `final void`

  `setEditorKit(EditorKit kit)`

  Sets the currently installed kit for handling
  content.

  `void`

  `setLogicalStyle(Style s)`

  Sets the logical style to use for the paragraph at the
  current caret position.

  `void`

  `setParagraphAttributes(AttributeSet attr,
  boolean replace)`

  Applies the given attributes to paragraphs.

  `void`

  `setStyledDocument(StyledDocument doc)`

  Associates the editor with a text document.

  ### Methods inherited from class javax.swing.[JEditorPane](JEditorPane.md "class in javax.swing")

  `addHyperlinkListener, createEditorKitForContentType, fireHyperlinkUpdate, getAccessibleContext, getContentType, getEditorKit, getEditorKitClassNameForContentType, getEditorKitForContentType, getHyperlinkListeners, getPage, getPreferredSize, getScrollableTracksViewportHeight, getScrollableTracksViewportWidth, getStream, getText, read, registerEditorKitForContentType, registerEditorKitForContentType, removeHyperlinkListener, scrollToReference, setContentType, setEditorKitForContentType, setPage, setPage, setText`

  ### Methods inherited from class javax.swing.text.[JTextComponent](text/JTextComponent.md "class in javax.swing.text")

  `addCaretListener, addInputMethodListener, addKeymap, copy, cut, fireCaretUpdate, getActions, getCaret, getCaretColor, getCaretListeners, getCaretPosition, getDisabledTextColor, getDocument, getDragEnabled, getDropLocation, getDropMode, getFocusAccelerator, getHighlighter, getInputMethodRequests, getKeymap, getKeymap, getMargin, getNavigationFilter, getPreferredScrollableViewportSize, getPrintable, getScrollableBlockIncrement, getScrollableUnitIncrement, getSelectedText, getSelectedTextColor, getSelectionColor, getSelectionEnd, getSelectionStart, getText, getToolTipText, getUI, isEditable, loadKeymap, modelToView, modelToView2D, moveCaretPosition, paste, print, print, print, processInputMethodEvent, read, removeCaretListener, removeKeymap, removeNotify, restoreComposedText, saveComposedText, select, selectAll, setCaret, setCaretColor, setCaretPosition, setComponentOrientation, setDisabledTextColor, setDragEnabled, setDropMode, setEditable, setFocusAccelerator, setHighlighter, setKeymap, setMargin, setNavigationFilter, setSelectedTextColor, setSelectionColor, setSelectionEnd, setSelectionStart, setUI, updateUI, viewToModel, viewToModel2D, write`

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JTextPane

    public JTextPane()

    Creates a new `JTextPane`. A new instance of
    `StyledEditorKit` is
    created and set, and the document model set to `null`.
  + ### JTextPane

    public JTextPane([StyledDocument](text/StyledDocument.md "interface in javax.swing.text") doc)

    Creates a new `JTextPane`, with a specified document model.
    A new instance of `javax.swing.text.StyledEditorKit`
    is created and set.

    Parameters:
    :   `doc` - the document model
* ## Method Details

  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the class ID for the UI.

    Overrides:
    :   `getUIClassID` in class `JEditorPane`

    Returns:
    :   the string "TextPaneUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### setDocument

    public void setDocument([Document](text/Document.md "interface in javax.swing.text") doc)

    Associates the editor with a text document. This
    must be a `StyledDocument`.

    Overrides:
    :   `setDocument` in class `JTextComponent`

    Parameters:
    :   `doc` - the document to display/edit

    Throws:
    :   `IllegalArgumentException` - if `doc` can't
        be narrowed to a `StyledDocument` which is the
        required type of model for this text component

    See Also:
    :   - [`JTextComponent.getDocument()`](text/JTextComponent.md#getDocument())
  + ### setStyledDocument

    public void setStyledDocument([StyledDocument](text/StyledDocument.md "interface in javax.swing.text") doc)

    Associates the editor with a text document.
    The currently registered factory is used to build a view for
    the document, which gets displayed by the editor.

    Parameters:
    :   `doc` - the document to display/edit
  + ### getStyledDocument

    public [StyledDocument](text/StyledDocument.md "interface in javax.swing.text") getStyledDocument()

    Fetches the model associated with the editor.

    Returns:
    :   the model
  + ### replaceSelection

    public void replaceSelection([String](../../../java.base/java/lang/String.md "class in java.lang") content)

    Replaces the currently selected content with new content
    represented by the given string. If there is no selection
    this amounts to an insert of the given text. If there
    is no replacement text this amounts to a removal of the
    current selection. The replacement text will have the
    attributes currently defined for input at the point of
    insertion. If the document is not editable, beep and return.

    Overrides:
    :   `replaceSelection` in class `JEditorPane`

    Parameters:
    :   `content` - the content to replace the selection with
  + ### insertComponent

    public void insertComponent([Component](../../java/awt/Component.md "class in java.awt") c)

    Inserts a component into the document as a replacement
    for the currently selected content. If there is no
    selection the component is effectively inserted at the
    current position of the caret. This is represented in
    the associated document as an attribute of one character
    of content.

    The component given is the actual component used by the
    JTextPane. Since components cannot be a child of more than
    one container, this method should not be used in situations
    where the model is shared by text components.

    The component is placed relative to the text baseline
    according to the value returned by
    `Component.getAlignmentY`. For Swing components
    this value can be conveniently set using the method
    `JComponent.setAlignmentY`. For example, setting
    a value of `0.75` will cause 75 percent of the
    component to be above the baseline, and 25 percent of the
    component to be below the baseline.

    Parameters:
    :   `c` - the component to insert
  + ### insertIcon

    public void insertIcon([Icon](Icon.md "interface in javax.swing") g)

    Inserts an icon into the document as a replacement
    for the currently selected content. If there is no
    selection the icon is effectively inserted at the
    current position of the caret. This is represented in
    the associated document as an attribute of one character
    of content.

    Parameters:
    :   `g` - the icon to insert

    See Also:
    :   - [`Icon`](Icon.md "interface in javax.swing")
  + ### addStyle

    public [Style](text/Style.md "interface in javax.swing.text") addStyle([String](../../../java.base/java/lang/String.md "class in java.lang") nm,
    [Style](text/Style.md "interface in javax.swing.text") parent)

    Adds a new style into the logical style hierarchy. Style attributes
    resolve from bottom up so an attribute specified in a child
    will override an attribute specified in the parent.

    Parameters:
    :   `nm` - the name of the style (must be unique within the
        collection of named styles). The name may be `null`
        if the style is unnamed, but the caller is responsible
        for managing the reference returned as an unnamed style can't
        be fetched by name. An unnamed style may be useful for things
        like character attribute overrides such as found in a style
        run.
    :   `parent` - the parent style. This may be `null`
        if unspecified
        attributes need not be resolved in some other style.

    Returns:
    :   the new `Style`
  + ### removeStyle

    public void removeStyle([String](../../../java.base/java/lang/String.md "class in java.lang") nm)

    Removes a named non-`null` style previously added to
    the document.

    Parameters:
    :   `nm` - the name of the style to remove
  + ### getStyle

    public [Style](text/Style.md "interface in javax.swing.text") getStyle([String](../../../java.base/java/lang/String.md "class in java.lang") nm)

    Fetches a named non-`null` style previously added.

    Parameters:
    :   `nm` - the name of the style

    Returns:
    :   the `Style`
  + ### setLogicalStyle

    public void setLogicalStyle([Style](text/Style.md "interface in javax.swing.text") s)

    Sets the logical style to use for the paragraph at the
    current caret position. If attributes aren't explicitly set
    for character and paragraph attributes they will resolve
    through the logical style assigned to the paragraph, which
    in term may resolve through some hierarchy completely
    independent of the element hierarchy in the document.

    Parameters:
    :   `s` - the logical style to assign to the paragraph,
        or `null` for no style
  + ### getLogicalStyle

    public [Style](text/Style.md "interface in javax.swing.text") getLogicalStyle()

    Fetches the logical style assigned to the paragraph represented
    by the current position of the caret, or `null`.

    Returns:
    :   the `Style`
  + ### getCharacterAttributes

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AttributeSet](text/AttributeSet.md "interface in javax.swing.text") getCharacterAttributes()

    Fetches the character attributes in effect at the
    current location of the caret, or `null`.

    Returns:
    :   the attributes, or `null`
  + ### setCharacterAttributes

    public void setCharacterAttributes([AttributeSet](text/AttributeSet.md "interface in javax.swing.text") attr,
    boolean replace)

    Applies the given attributes to character
    content. If there is a selection, the attributes
    are applied to the selection range. If there
    is no selection, the attributes are applied to
    the input attribute set which defines the attributes
    for any new text that gets inserted.

    Parameters:
    :   `attr` - the attributes
    :   `replace` - if true, then replace the existing attributes first
  + ### getParagraphAttributes

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AttributeSet](text/AttributeSet.md "interface in javax.swing.text") getParagraphAttributes()

    Fetches the current paragraph attributes in effect
    at the location of the caret, or `null` if none.

    Returns:
    :   the attributes
  + ### setParagraphAttributes

    public void setParagraphAttributes([AttributeSet](text/AttributeSet.md "interface in javax.swing.text") attr,
    boolean replace)

    Applies the given attributes to paragraphs. If
    there is a selection, the attributes are applied
    to the paragraphs that intersect the selection.
    If there is no selection, the attributes are applied
    to the paragraph at the current caret position.

    Parameters:
    :   `attr` - the non-`null` attributes
    :   `replace` - if true, replace the existing attributes first
  + ### getInputAttributes

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [MutableAttributeSet](text/MutableAttributeSet.md "interface in javax.swing.text") getInputAttributes()

    Gets the input attributes for the pane.

    Returns:
    :   the attributes
  + ### getStyledEditorKit

    protected final [StyledEditorKit](text/StyledEditorKit.md "class in javax.swing.text") getStyledEditorKit()

    Gets the editor kit.

    Returns:
    :   the editor kit
  + ### createDefaultEditorKit

    protected [EditorKit](text/EditorKit.md "class in javax.swing.text") createDefaultEditorKit()

    Creates the `EditorKit` to use by default. This
    is implemented to return `javax.swing.text.StyledEditorKit`.

    Overrides:
    :   `createDefaultEditorKit` in class `JEditorPane`

    Returns:
    :   the editor kit
  + ### setEditorKit

    public final void setEditorKit([EditorKit](text/EditorKit.md "class in javax.swing.text") kit)

    Sets the currently installed kit for handling
    content. This is the bound property that
    establishes the content type of the editor.

    Overrides:
    :   `setEditorKit` in class `JEditorPane`

    Parameters:
    :   `kit` - the desired editor behavior

    Throws:
    :   `IllegalArgumentException` - if kit is not a
        `StyledEditorKit`

    See Also:
    :   - [`JEditorPane.getEditorKit()`](JEditorPane.md#getEditorKit())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JTextPane`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JEditorPane`

    Returns:
    :   a string representation of this `JTextPane`