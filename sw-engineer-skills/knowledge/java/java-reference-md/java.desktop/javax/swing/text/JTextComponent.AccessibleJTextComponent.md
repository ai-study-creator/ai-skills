Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class JTextComponent.AccessibleJTextComponent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.text.JTextComponent.AccessibleJTextComponent

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleEditableText`, `AccessibleExtendedComponent`, `AccessibleExtendedText`, `AccessibleText`, `CaretListener`, `DocumentListener`

Direct Known Subclasses:
:   `JEditorPane.AccessibleJEditorPane`, `JTextArea.AccessibleJTextArea`, `JTextField.AccessibleJTextField`

Enclosing class:
:   `JTextComponent`

---

public class JTextComponent.AccessibleJTextComponent
extends [JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleText](../../accessibility/AccessibleText.md "interface in javax.accessibility"), [CaretListener](../event/CaretListener.md "interface in javax.swing.event"), [DocumentListener](../event/DocumentListener.md "interface in javax.swing.event"), [AccessibleAction](../../accessibility/AccessibleAction.md "interface in javax.accessibility"), [AccessibleEditableText](../../accessibility/AccessibleEditableText.md "interface in javax.accessibility"), [AccessibleExtendedText](../../accessibility/AccessibleExtendedText.md "interface in javax.accessibility")

This class implements accessibility support for the
`JTextComponent` class. It provides an implementation of
the Java Accessibility API appropriate to menu user-interface elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent.AccessibleContainerHandler, JComponent.AccessibleJComponent.AccessibleFocusHandler`

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

  `accessibleFocusHandler`

  ### Fields inherited from class java.awt.[Container.AccessibleAWTContainer](../../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `accessibleContainerHandler`

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`

  ### Fields inherited from interface javax.accessibility.[AccessibleAction](../../accessibility/AccessibleAction.md "interface in javax.accessibility")

  `CLICK, DECREMENT, INCREMENT, TOGGLE_EXPAND, TOGGLE_POPUP`

  ### Fields inherited from interface javax.accessibility.[AccessibleExtendedText](../../accessibility/AccessibleExtendedText.md "interface in javax.accessibility")

  `ATTRIBUTE_RUN, LINE`

  ### Fields inherited from interface javax.accessibility.[AccessibleText](../../accessibility/AccessibleText.md "interface in javax.accessibility")

  `CHARACTER, SENTENCE, WORD`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleJTextComponent()`

  Constructs an AccessibleJTextComponent.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `caretUpdate(CaretEvent e)`

  Handles caret updates (fire appropriate property change event,
  which are AccessibleContext.ACCESSIBLE\_CARET\_PROPERTY and
  AccessibleContext.ACCESSIBLE\_SELECTION\_PROPERTY).

  `void`

  `changedUpdate(DocumentEvent e)`

  Handles document remove (fire appropriate property change event,
  which is AccessibleContext.ACCESSIBLE\_TEXT\_PROPERTY).

  `void`

  `cut(int startIndex,
  int endIndex)`

  Cuts the text between two indices into the system clipboard.

  `void`

  `delete(int startIndex,
  int endIndex)`

  Deletes the text between two indices

  `boolean`

  `doAccessibleAction(int i)`

  Performs the specified Action on the object

  `AccessibleAction`

  `getAccessibleAction()`

  Gets the `AccessibleAction` associated with this object that
  supports one or more actions.

  `int`

  `getAccessibleActionCount()`

  Returns the number of accessible actions available in this object
  If there are more than one, the first one is considered the
  "default" action of the object.

  `String`

  `getAccessibleActionDescription(int i)`

  Returns a description of the specified action of the object.

  `AccessibleEditableText`

  `getAccessibleEditableText()`

  Returns the AccessibleEditableText interface for
  this text component.

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state set of the JTextComponent.

  `AccessibleText`

  `getAccessibleText()`

  Get the AccessibleText associated with this object.

  `String`

  `getAfterIndex(int part,
  int index)`

  Returns the String after a given index.

  `String`

  `getAtIndex(int part,
  int index)`

  Returns the String at a given index.

  `String`

  `getBeforeIndex(int part,
  int index)`

  Returns the String before a given index.

  `int`

  `getCaretPosition()`

  Returns the zero-based offset of the caret.

  `AttributeSet`

  `getCharacterAttribute(int i)`

  Returns the AttributeSet for a given character (at a given index).

  `Rectangle`

  `getCharacterBounds(int i)`

  Determines the bounding box of the character at the given
  index into the string.

  `int`

  `getCharCount()`

  Returns the number of characters (valid indices)

  `int`

  `getIndexAtPoint(Point p)`

  Given a point in local coordinates, return the zero-based index
  of the character under that Point.

  `String`

  `getSelectedText()`

  Returns the portion of the text that is selected.

  `int`

  `getSelectionEnd()`

  Returns the end offset within the selected text.

  `int`

  `getSelectionStart()`

  Returns the start offset within the selected text.

  `Rectangle`

  `getTextBounds(int startIndex,
  int endIndex)`

  Returns the `Rectangle` enclosing the text between
  two indices.

  `String`

  `getTextRange(int startIndex,
  int endIndex)`

  Returns the text string between two indices.

  `AccessibleTextSequence`

  `getTextSequenceAfter(int part,
  int index)`

  Returns the `AccessibleTextSequence` after a given
  `index`.

  `AccessibleTextSequence`

  `getTextSequenceAt(int part,
  int index)`

  Returns the `AccessibleTextSequence` at a given
  `index`.

  `AccessibleTextSequence`

  `getTextSequenceBefore(int part,
  int index)`

  Returns the `AccessibleTextSequence` before a given
  `index`.

  `void`

  `insertTextAtIndex(int index,
  String s)`

  Inserts the specified string at the given index

  `void`

  `insertUpdate(DocumentEvent e)`

  Handles document insert (fire appropriate property change event
  which is AccessibleContext.ACCESSIBLE\_TEXT\_PROPERTY).

  `void`

  `paste(int startIndex)`

  Pastes the text from the system clipboard into the text
  starting at the specified index.

  `void`

  `removeUpdate(DocumentEvent e)`

  Handles document remove (fire appropriate property change event,
  which is AccessibleContext.ACCESSIBLE\_TEXT\_PROPERTY).

  `void`

  `replaceText(int startIndex,
  int endIndex,
  String s)`

  Replaces the text between two indices with the specified
  string.

  `void`

  `selectText(int startIndex,
  int endIndex)`

  Selects the text between two indices.

  `void`

  `setAttributes(int startIndex,
  int endIndex,
  AttributeSet as)`

  Sets attributes for the text between two indices.

  `void`

  `setTextContents(String s)`

  Sets the text contents to the specified string.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](../JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleChild, getAccessibleChildrenCount, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJTextComponent

    public AccessibleJTextComponent()

    Constructs an AccessibleJTextComponent. Adds a listener to track
    caret change.
* ## Method Details

  + ### caretUpdate

    public void caretUpdate([CaretEvent](../event/CaretEvent.md "class in javax.swing.event") e)

    Handles caret updates (fire appropriate property change event,
    which are AccessibleContext.ACCESSIBLE\_CARET\_PROPERTY and
    AccessibleContext.ACCESSIBLE\_SELECTION\_PROPERTY).
    This keeps track of the dot position internally. When the caret
    moves, the internal position is updated after firing the event.

    Specified by:
    :   `caretUpdate` in interface `CaretListener`

    Parameters:
    :   `e` - the CaretEvent
  + ### insertUpdate

    public void insertUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e)

    Handles document insert (fire appropriate property change event
    which is AccessibleContext.ACCESSIBLE\_TEXT\_PROPERTY).
    This tracks the changed offset via the event.

    Specified by:
    :   `insertUpdate` in interface `DocumentListener`

    Parameters:
    :   `e` - the DocumentEvent
  + ### removeUpdate

    public void removeUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e)

    Handles document remove (fire appropriate property change event,
    which is AccessibleContext.ACCESSIBLE\_TEXT\_PROPERTY).
    This tracks the changed offset via the event.

    Specified by:
    :   `removeUpdate` in interface `DocumentListener`

    Parameters:
    :   `e` - the DocumentEvent
  + ### changedUpdate

    public void changedUpdate([DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event") e)

    Handles document remove (fire appropriate property change event,
    which is AccessibleContext.ACCESSIBLE\_TEXT\_PROPERTY).
    This tracks the changed offset via the event.

    Specified by:
    :   `changedUpdate` in interface `DocumentListener`

    Parameters:
    :   `e` - the DocumentEvent
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state set of the JTextComponent.
    The AccessibleStateSet of an object is composed of a set of
    unique AccessibleState's. A change in the AccessibleStateSet
    of an object will cause a PropertyChangeEvent to be fired
    for the AccessibleContext.ACCESSIBLE\_STATE\_PROPERTY property.

    Overrides:
    :   `getAccessibleStateSet` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleStateSet containing the
        current state set of the object

    See Also:
    :   - [`AccessibleStateSet`](../../accessibility/AccessibleStateSet.md "class in javax.accessibility")
        - [`AccessibleState`](../../accessibility/AccessibleState.md "class in javax.accessibility")
        - [`JComponent.AccessibleJComponent.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../JComponent.AccessibleJComponent.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getAccessibleRole

    public [AccessibleRole](../../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object (AccessibleRole.TEXT)

    See Also:
    :   - [`AccessibleRole`](../../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleText

    public [AccessibleText](../../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Get the AccessibleText associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleText interface on behalf of itself.

    Overrides:
    :   `getAccessibleText` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleText`](../../accessibility/AccessibleText.md "interface in javax.accessibility")
  + ### getIndexAtPoint

    public int getIndexAtPoint([Point](../../../java/awt/Point.md "class in java.awt") p)

    Given a point in local coordinates, return the zero-based index
    of the character under that Point. If the point is invalid,
    this method returns -1.

    Specified by:
    :   `getIndexAtPoint` in interface `AccessibleText`

    Parameters:
    :   `p` - the Point in local coordinates

    Returns:
    :   the zero-based index of the character under Point p.
  + ### getCharacterBounds

    public [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getCharacterBounds(int i)

    Determines the bounding box of the character at the given
    index into the string. The bounds are returned in local
    coordinates. If the index is invalid a null rectangle
    is returned.
    The screen coordinates returned are "unscrolled coordinates"
    if the JTextComponent is contained in a JScrollPane in which
    case the resulting rectangle should be composed with the parent
    coordinates. A good algorithm to use is:

    ```
     Accessible a:
     AccessibleText at = a.getAccessibleText();
     AccessibleComponent ac = a.getAccessibleComponent();
     Rectangle r = at.getCharacterBounds();
     Point p = ac.getLocation();
     r.x += p.x;
     r.y += p.y;
    ```

    Note: the JTextComponent must have a valid size (e.g. have
    been added to a parent container whose ancestor container
    is a valid top-level window) for this method to be able
    to return a meaningful (non-null) value.

    Specified by:
    :   `getCharacterBounds` in interface `AccessibleText`

    Parameters:
    :   `i` - the index into the String ≥ 0

    Returns:
    :   the screen coordinates of the character's bounding box
  + ### getCharCount

    public int getCharCount()

    Returns the number of characters (valid indices)

    Specified by:
    :   `getCharCount` in interface `AccessibleText`

    Returns:
    :   the number of characters ≥ 0
  + ### getCaretPosition

    public int getCaretPosition()

    Returns the zero-based offset of the caret.
    Note: The character to the right of the caret will have the
    same index value as the offset (the caret is between
    two characters).

    Specified by:
    :   `getCaretPosition` in interface `AccessibleText`

    Returns:
    :   the zero-based offset of the caret.
  + ### getCharacterAttribute

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") getCharacterAttribute(int i)

    Returns the AttributeSet for a given character (at a given index).

    Specified by:
    :   `getCharacterAttribute` in interface `AccessibleText`

    Parameters:
    :   `i` - the zero-based index into the text

    Returns:
    :   the AttributeSet of the character
  + ### getSelectionStart

    public int getSelectionStart()

    Returns the start offset within the selected text.
    If there is no selection, but there is
    a caret, the start and end offsets will be the same.
    Return 0 if the text is empty, or the caret position
    if no selection.

    Specified by:
    :   `getSelectionStart` in interface `AccessibleText`

    Returns:
    :   the index into the text of the start of the selection ≥ 0
  + ### getSelectionEnd

    public int getSelectionEnd()

    Returns the end offset within the selected text.
    If there is no selection, but there is
    a caret, the start and end offsets will be the same.
    Return 0 if the text is empty, or the caret position
    if no selection.

    Specified by:
    :   `getSelectionEnd` in interface `AccessibleText`

    Returns:
    :   the index into the text of the end of the selection ≥ 0
  + ### getSelectedText

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getSelectedText()

    Returns the portion of the text that is selected.

    Specified by:
    :   `getSelectedText` in interface `AccessibleText`

    Returns:
    :   the text, null if no selection
  + ### getAtIndex

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAtIndex(int part,
    int index)

    Returns the String at a given index. Whitespace
    between words is treated as a word.

    Specified by:
    :   `getAtIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence.
  + ### getAfterIndex

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAfterIndex(int part,
    int index)

    Returns the String after a given index. Whitespace
    between words is treated as a word.

    Specified by:
    :   `getAfterIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence.
  + ### getBeforeIndex

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getBeforeIndex(int part,
    int index)

    Returns the String before a given index. Whitespace
    between words is treated a word.

    Specified by:
    :   `getBeforeIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence.
  + ### getAccessibleEditableText

    public [AccessibleEditableText](../../accessibility/AccessibleEditableText.md "interface in javax.accessibility") getAccessibleEditableText()

    Returns the AccessibleEditableText interface for
    this text component.

    Overrides:
    :   `getAccessibleEditableText` in class `AccessibleContext`

    Returns:
    :   the AccessibleEditableText interface

    Since:
    :   1.4

    See Also:
    :   - [`AccessibleEditableText`](../../accessibility/AccessibleEditableText.md "interface in javax.accessibility")
  + ### setTextContents

    public void setTextContents([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the text contents to the specified string.

    Specified by:
    :   `setTextContents` in interface `AccessibleEditableText`

    Parameters:
    :   `s` - the string to set the text contents

    Since:
    :   1.4
  + ### insertTextAtIndex

    public void insertTextAtIndex(int index,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Inserts the specified string at the given index

    Specified by:
    :   `insertTextAtIndex` in interface `AccessibleEditableText`

    Parameters:
    :   `index` - the index in the text where the string will
        be inserted
    :   `s` - the string to insert in the text

    Since:
    :   1.4
  + ### getTextRange

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getTextRange(int startIndex,
    int endIndex)

    Returns the text string between two indices.

    Specified by:
    :   `getTextRange` in interface `AccessibleEditableText`

    Specified by:
    :   `getTextRange` in interface `AccessibleExtendedText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text

    Returns:
    :   the text string between the indices

    Since:
    :   1.4
  + ### delete

    public void delete(int startIndex,
    int endIndex)

    Deletes the text between two indices

    Specified by:
    :   `delete` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text

    Since:
    :   1.4
  + ### cut

    public void cut(int startIndex,
    int endIndex)

    Cuts the text between two indices into the system clipboard.

    Specified by:
    :   `cut` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text

    Since:
    :   1.4
  + ### paste

    public void paste(int startIndex)

    Pastes the text from the system clipboard into the text
    starting at the specified index.

    Specified by:
    :   `paste` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text

    Since:
    :   1.4
  + ### replaceText

    public void replaceText(int startIndex,
    int endIndex,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Replaces the text between two indices with the specified
    string.

    Specified by:
    :   `replaceText` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
    :   `s` - the string to replace the text between two indices

    Since:
    :   1.4
  + ### selectText

    public void selectText(int startIndex,
    int endIndex)

    Selects the text between two indices.

    Specified by:
    :   `selectText` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text

    Since:
    :   1.4
  + ### setAttributes

    public void setAttributes(int startIndex,
    int endIndex,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") as)

    Sets attributes for the text between two indices.

    Specified by:
    :   `setAttributes` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
    :   `as` - the attribute set

    Since:
    :   1.4

    See Also:
    :   - [`AttributeSet`](AttributeSet.md "interface in javax.swing.text")
  + ### getTextSequenceAt

    public [AccessibleTextSequence](../../accessibility/AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceAt(int part,
    int index)

    Returns the `AccessibleTextSequence` at a given
    `index`.

    Specified by:
    :   `getTextSequenceAt` in interface `AccessibleExtendedText`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`,
        `SENTENCE`, `LINE` or
        `ATTRIBUTE_RUN` to retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text if
        `part` and `index` are valid. Otherwise,
        `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../../accessibility/AccessibleText.md#SENTENCE)
        - [`AccessibleExtendedText.LINE`](../../accessibility/AccessibleExtendedText.md#LINE)
        - [`AccessibleExtendedText.ATTRIBUTE_RUN`](../../accessibility/AccessibleExtendedText.md#ATTRIBUTE_RUN)
  + ### getTextSequenceAfter

    public [AccessibleTextSequence](../../accessibility/AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceAfter(int part,
    int index)

    Returns the `AccessibleTextSequence` after a given
    `index`.

    Specified by:
    :   `getTextSequenceAfter` in interface `AccessibleExtendedText`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`,
        `SENTENCE`, `LINE` or
        `ATTRIBUTE_RUN` to retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text
        if `part` and `index` are valid. Otherwise,
        `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../../accessibility/AccessibleText.md#SENTENCE)
        - [`AccessibleExtendedText.LINE`](../../accessibility/AccessibleExtendedText.md#LINE)
        - [`AccessibleExtendedText.ATTRIBUTE_RUN`](../../accessibility/AccessibleExtendedText.md#ATTRIBUTE_RUN)
  + ### getTextSequenceBefore

    public [AccessibleTextSequence](../../accessibility/AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceBefore(int part,
    int index)

    Returns the `AccessibleTextSequence` before a given
    `index`.

    Specified by:
    :   `getTextSequenceBefore` in interface `AccessibleExtendedText`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`,
        `SENTENCE`, `LINE` or
        `ATTRIBUTE_RUN` to retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text
        if `part` and `index` are valid. Otherwise,
        `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../../accessibility/AccessibleText.md#SENTENCE)
        - [`AccessibleExtendedText.LINE`](../../accessibility/AccessibleExtendedText.md#LINE)
        - [`AccessibleExtendedText.ATTRIBUTE_RUN`](../../accessibility/AccessibleExtendedText.md#ATTRIBUTE_RUN)
  + ### getTextBounds

    public [Rectangle](../../../java/awt/Rectangle.md "class in java.awt") getTextBounds(int startIndex,
    int endIndex)

    Returns the `Rectangle` enclosing the text between
    two indices.

    Specified by:
    :   `getTextBounds` in interface `AccessibleExtendedText`

    Parameters:
    :   `startIndex` - the start index in the text
    :   `endIndex` - the end index in the text

    Returns:
    :   the bounding rectangle of the text if the indices are valid.
        Otherwise, `null` is returned

    Since:
    :   1.6
  + ### getAccessibleAction

    public [AccessibleAction](../../accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Description copied from class: `AccessibleContext`

    Gets the `AccessibleAction` associated with this object that
    supports one or more actions.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   `AccessibleAction` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleAction`](../../accessibility/AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of accessible actions available in this object
    If there are more than one, the first one is considered the
    "default" action of the object.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   the zero-based number of Actions in this object

    Since:
    :   1.4
  + ### getAccessibleActionDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Returns a description of the specified action of the object.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a String description of the action

    Since:
    :   1.4

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### doAccessibleAction

    public boolean doAccessibleAction(int i)

    Performs the specified Action on the object

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   true if the action was performed; otherwise false.

    Since:
    :   1.4

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())