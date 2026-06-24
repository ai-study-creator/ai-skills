Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JSpinner.AccessibleJSpinner

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.JSpinner.AccessibleJSpinner

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleEditableText`, `AccessibleExtendedComponent`, `AccessibleText`, `AccessibleValue`, `ChangeListener`

Enclosing class:
:   `JSpinner`

---

protected class JSpinner.AccessibleJSpinner
extends [JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility"), [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility"), [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility"), [AccessibleEditableText](../accessibility/AccessibleEditableText.md "interface in javax.accessibility"), [ChangeListener](event/ChangeListener.md "interface in javax.swing.event")

`AccessibleJSpinner` implements accessibility
support for the `JSpinner` class.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent.AccessibleContainerHandler, JComponent.AccessibleJComponent.AccessibleFocusHandler`

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `accessibleFocusHandler`

  ### Fields inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `accessibleContainerHandler`

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`

  ### Fields inherited from interface javax.accessibility.[AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility")

  `CLICK, DECREMENT, INCREMENT, TOGGLE_EXPAND, TOGGLE_POPUP`

  ### Fields inherited from interface javax.accessibility.[AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility")

  `CHARACTER, SENTENCE, WORD`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleJSpinner()`

  AccessibleJSpinner constructor
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  Gets the AccessibleAction associated with this object that supports
  one or more actions.

  `int`

  `getAccessibleActionCount()`

  Returns the number of accessible actions available in this object
  If there are more than one, the first one is considered the "default"
  action of the object.

  `String`

  `getAccessibleActionDescription(int i)`

  Returns a description of the specified action of the object.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the specified Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children of the object.

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleText`

  `getAccessibleText()`

  Gets the AccessibleText associated with this object presenting
  text on the display.

  `AccessibleValue`

  `getAccessibleValue()`

  Gets the AccessibleValue associated with this object.

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

  Returns the AttributeSet for a given character at a given index

  `Rectangle`

  `getCharacterBounds(int i)`

  Determines the bounding box of the character at the given
  index into the string.

  `int`

  `getCharCount()`

  Returns the number of characters (valid indices)

  `Number`

  `getCurrentAccessibleValue()`

  Get the value of this object as a Number.

  `int`

  `getIndexAtPoint(Point p)`

  Given a point in local coordinates, return the zero-based index
  of the character under that Point.

  `Number`

  `getMaximumAccessibleValue()`

  Get the maximum value of this object as a Number.

  `Number`

  `getMinimumAccessibleValue()`

  Get the minimum value of this object as a Number.

  `String`

  `getSelectedText()`

  Returns the portion of the text that is selected.

  `int`

  `getSelectionEnd()`

  Returns the end offset within the selected text.

  `int`

  `getSelectionStart()`

  Returns the start offset within the selected text.

  `String`

  `getTextRange(int startIndex,
  int endIndex)`

  Returns the text string between two indices.

  `void`

  `insertTextAtIndex(int index,
  String s)`

  Inserts the specified string at the given index/

  `void`

  `paste(int startIndex)`

  Pastes the text from the system clipboard into the text
  starting at the specified index.

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

  `boolean`

  `setCurrentAccessibleValue(Number n)`

  Set the value of this object as a Number.

  `void`

  `setTextContents(String s)`

  Sets the text contents to the specified string.

  `void`

  `stateChanged(ChangeEvent e)`

  Invoked when the target of the listener has changed its state.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getAccessibleStateSet, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJSpinner

    protected AccessibleJSpinner()

    AccessibleJSpinner constructor
* ## Method Details

  + ### stateChanged

    public void stateChanged([ChangeEvent](event/ChangeEvent.md "class in javax.swing.event") e)

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a `ChangeEvent` object. Must not be null.

    Throws:
    :   `NullPointerException` - if the parameter is null.
  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object. The role of the object is the generic
    purpose or use of the class of this object. For example, the role
    of a push button is AccessibleRole.PUSH\_BUTTON. The roles in
    AccessibleRole are provided so component developers can pick from
    a set of predefined roles. This enables assistive technologies to
    provide a consistent interface to various tweaked subclasses of
    components (e.g., use AccessibleRole.PUSH\_BUTTON for all components
    that act like a push button) as well as distinguish between subclasses
    that behave differently (e.g., AccessibleRole.CHECK\_BOX for check boxes
    and AccessibleRole.RADIO\_BUTTON for radio buttons).

    Note that the AccessibleRole class is also extensible, so
    custom component developers can define their own AccessibleRole's
    if the set of predefined roles is inadequate.

    Overrides:
    :   `getAccessibleRole` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the object

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleChildrenCount

    public int getAccessibleChildrenCount()

    Returns the number of accessible children of the object.

    Overrides:
    :   `getAccessibleChildrenCount` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the number of accessible children of the object.
  + ### getAccessibleChild

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild(int i)

    Returns the specified Accessible child of the object. The Accessible
    children of an Accessible object are zero-based, so the first child
    of an Accessible child is at index 0, the second child is at index 1,
    and so on.

    Overrides:
    :   `getAccessibleChild` in class `JComponent.AccessibleJComponent`

    Parameters:
    :   `i` - zero-based index of child

    Returns:
    :   the Accessible child of the object

    See Also:
    :   - [`getAccessibleChildrenCount()`](#getAccessibleChildrenCount())
  + ### getAccessibleAction

    public [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Gets the AccessibleAction associated with this object that supports
    one or more actions.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   AccessibleAction if supported by object; else return null

    See Also:
    :   - [`AccessibleAction`](../accessibility/AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleText

    public [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Gets the AccessibleText associated with this object presenting
    text on the display.

    Overrides:
    :   `getAccessibleText` in class `AccessibleContext`

    Returns:
    :   AccessibleText if supported by object; else return null

    See Also:
    :   - [`AccessibleText`](../accessibility/AccessibleText.md "interface in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Gets the AccessibleValue associated with this object.

    Overrides:
    :   `getAccessibleValue` in class `AccessibleContext`

    Returns:
    :   AccessibleValue if supported by object; else return null

    See Also:
    :   - [`AccessibleValue`](../accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getCurrentAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getCurrentAccessibleValue()

    Get the value of this object as a Number. If the value has not been
    set, the return value will be null.

    Specified by:
    :   `getCurrentAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   value of the object

    See Also:
    :   - [`setCurrentAccessibleValue(java.lang.Number)`](#setCurrentAccessibleValue(java.lang.Number))
  + ### setCurrentAccessibleValue

    public boolean setCurrentAccessibleValue([Number](../../../java.base/java/lang/Number.md "class in java.lang") n)

    Set the value of this object as a Number.

    Specified by:
    :   `setCurrentAccessibleValue` in interface `AccessibleValue`

    Parameters:
    :   `n` - the value to set for this object

    Returns:
    :   true if the value was set; else False

    See Also:
    :   - [`getCurrentAccessibleValue()`](#getCurrentAccessibleValue())
  + ### getMinimumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMinimumAccessibleValue()

    Get the minimum value of this object as a Number.

    Specified by:
    :   `getMinimumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   Minimum value of the object; null if this object does not
        have a minimum value

    See Also:
    :   - [`getMaximumAccessibleValue()`](#getMaximumAccessibleValue())
  + ### getMaximumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMaximumAccessibleValue()

    Get the maximum value of this object as a Number.

    Specified by:
    :   `getMaximumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   Maximum value of the object; null if this object does not
        have a maximum value

    See Also:
    :   - [`getMinimumAccessibleValue()`](#getMinimumAccessibleValue())
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of accessible actions available in this object
    If there are more than one, the first one is considered the "default"
    action of the object.
    Two actions are supported: AccessibleAction.INCREMENT which
    increments the spinner value and AccessibleAction.DECREMENT
    which decrements the spinner value

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   the zero-based number of Actions in this object
  + ### getAccessibleActionDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Returns a description of the specified action of the object.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a String description of the action

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### doAccessibleAction

    public boolean doAccessibleAction(int i)

    Performs the specified Action on the object

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions. The first action
        (index 0) is AccessibleAction.INCREMENT and the second
        action (index 1) is AccessibleAction.DECREMENT.

    Returns:
    :   true if the action was performed; otherwise false.

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### getIndexAtPoint

    public int getIndexAtPoint([Point](../../java/awt/Point.md "class in java.awt") p)

    Given a point in local coordinates, return the zero-based index
    of the character under that Point. If the point is invalid,
    this method returns -1.

    Specified by:
    :   `getIndexAtPoint` in interface `AccessibleText`

    Parameters:
    :   `p` - the Point in local coordinates

    Returns:
    :   the zero-based index of the character under Point p; if
        Point is invalid return -1.
  + ### getCharacterBounds

    public [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getCharacterBounds(int i)

    Determines the bounding box of the character at the given
    index into the string. The bounds are returned in local
    coordinates. If the index is invalid an empty rectangle is
    returned.

    Specified by:
    :   `getCharacterBounds` in interface `AccessibleText`

    Parameters:
    :   `i` - the index into the String

    Returns:
    :   the screen coordinates of the character's bounding box,
        if index is invalid return an empty rectangle.
  + ### getCharCount

    public int getCharCount()

    Returns the number of characters (valid indices)

    Specified by:
    :   `getCharCount` in interface `AccessibleText`

    Returns:
    :   the number of characters
  + ### getCaretPosition

    public int getCaretPosition()

    Returns the zero-based offset of the caret.
    Note: That to the right of the caret will have the same index
    value as the offset (the caret is between two characters).

    Specified by:
    :   `getCaretPosition` in interface `AccessibleText`

    Returns:
    :   the zero-based offset of the caret.
  + ### getAtIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAtIndex(int part,
    int index)

    Returns the String at a given index.

    Specified by:
    :   `getAtIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence
  + ### getAfterIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAfterIndex(int part,
    int index)

    Returns the String after a given index.

    Specified by:
    :   `getAfterIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence
  + ### getBeforeIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getBeforeIndex(int part,
    int index)

    Returns the String before a given index.

    Specified by:
    :   `getBeforeIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence
  + ### getCharacterAttribute

    public [AttributeSet](text/AttributeSet.md "interface in javax.swing.text") getCharacterAttribute(int i)

    Returns the AttributeSet for a given character at a given index

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

    Specified by:
    :   `getSelectionStart` in interface `AccessibleText`

    Returns:
    :   the index into the text of the start of the selection
  + ### getSelectionEnd

    public int getSelectionEnd()

    Returns the end offset within the selected text.
    If there is no selection, but there is
    a caret, the start and end offsets will be the same.

    Specified by:
    :   `getSelectionEnd` in interface `AccessibleText`

    Returns:
    :   the index into the text of the end of the selection
  + ### getSelectedText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getSelectedText()

    Returns the portion of the text that is selected.

    Specified by:
    :   `getSelectedText` in interface `AccessibleText`

    Returns:
    :   the String portion of the text that is selected
  + ### setTextContents

    public void setTextContents([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the text contents to the specified string.

    Specified by:
    :   `setTextContents` in interface `AccessibleEditableText`

    Parameters:
    :   `s` - the string to set the text contents
  + ### insertTextAtIndex

    public void insertTextAtIndex(int index,
    [String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Inserts the specified string at the given index/

    Specified by:
    :   `insertTextAtIndex` in interface `AccessibleEditableText`

    Parameters:
    :   `index` - the index in the text where the string will
        be inserted
    :   `s` - the string to insert in the text
  + ### getTextRange

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getTextRange(int startIndex,
    int endIndex)

    Returns the text string between two indices.

    Specified by:
    :   `getTextRange` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text

    Returns:
    :   the text string between the indices
  + ### delete

    public void delete(int startIndex,
    int endIndex)

    Deletes the text between two indices

    Specified by:
    :   `delete` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
  + ### cut

    public void cut(int startIndex,
    int endIndex)

    Cuts the text between two indices into the system clipboard.

    Specified by:
    :   `cut` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
  + ### paste

    public void paste(int startIndex)

    Pastes the text from the system clipboard into the text
    starting at the specified index.

    Specified by:
    :   `paste` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
  + ### replaceText

    public void replaceText(int startIndex,
    int endIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Replaces the text between two indices with the specified
    string.

    Specified by:
    :   `replaceText` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
    :   `s` - the string to replace the text between two indices
  + ### selectText

    public void selectText(int startIndex,
    int endIndex)

    Selects the text between two indices.

    Specified by:
    :   `selectText` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
  + ### setAttributes

    public void setAttributes(int startIndex,
    int endIndex,
    [AttributeSet](text/AttributeSet.md "interface in javax.swing.text") as)

    Sets attributes for the text between two indices.

    Specified by:
    :   `setAttributes` in interface `AccessibleEditableText`

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
    :   `as` - the attribute set

    See Also:
    :   - [`AttributeSet`](text/AttributeSet.md "interface in javax.swing.text")