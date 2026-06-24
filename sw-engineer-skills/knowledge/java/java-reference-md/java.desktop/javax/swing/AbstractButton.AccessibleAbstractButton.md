Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class AbstractButton.AccessibleAbstractButton

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

javax.swing.AbstractButton.AccessibleAbstractButton

All Implemented Interfaces:
:   `Serializable`, `AccessibleAction`, `AccessibleComponent`, `AccessibleExtendedComponent`, `AccessibleText`, `AccessibleValue`

Direct Known Subclasses:
:   `JButton.AccessibleJButton`, `JMenuItem.AccessibleJMenuItem`, `JToggleButton.AccessibleJToggleButton`

Enclosing class:
:   `AbstractButton`

---

protected abstract class AbstractButton.AccessibleAbstractButton
extends [JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")
implements [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility"), [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility"), [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility"), [AccessibleExtendedComponent](../accessibility/AccessibleExtendedComponent.md "interface in javax.accessibility")

This class implements accessibility support for the
`AbstractButton` class. It provides an implementation of the
Java Accessibility API appropriate to button and menu item
user-interface elements.

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

  `AccessibleAbstractButton()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `doAccessibleAction(int i)`

  Perform the specified Action on the object

  `AccessibleAction`

  `getAccessibleAction()`

  Get the AccessibleAction associated with this object.

  `int`

  `getAccessibleActionCount()`

  Returns the number of Actions available in this object.

  `String`

  `getAccessibleActionDescription(int i)`

  Return a description of the specified action of the object.

  `AccessibleIcon[]`

  `getAccessibleIcon()`

  Get the AccessibleIcons associated with this object if one
  or more exist.

  `AccessibleKeyBinding`

  `getAccessibleKeyBinding()`

  Returns key bindings associated with this object

  `String`

  `getAccessibleName()`

  Returns the accessible name of this object.

  `AccessibleRelationSet`

  `getAccessibleRelationSet()`

  Get the AccessibleRelationSet associated with this object if one
  exists.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Get the state set of this object.

  `AccessibleText`

  `getAccessibleText()`

  Gets the `AccessibleText` associated with this object presenting
  text on the display.

  `AccessibleValue`

  `getAccessibleValue()`

  Get the AccessibleValue associated with this object.

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

  Return the zero-based offset of the caret.

  `AttributeSet`

  `getCharacterAttribute(int i)`

  Return the AttributeSet for a given character at a given index

  `Rectangle`

  `getCharacterBounds(int i)`

  Determine the bounding box of the character at the given
  index into the string.

  `int`

  `getCharCount()`

  Return the number of characters (valid indices)

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

  `getTitledBorderText()`

  Returns the titled border text

  `String`

  `getToolTipText()`

  Returns the tool tip text

  `boolean`

  `setCurrentAccessibleValue(Number n)`

  Set the value of this object as a Number.

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleChild, getAccessibleChildrenCount, getAccessibleDescription, getAccessibleRole, getBorderTitle, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleEditableText, getAccessibleSelection, getAccessibleTable, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleAbstractButton

    protected AccessibleAbstractButton()

    Constructor for subclasses to call.
* ## Method Details

  + ### getAccessibleName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleName()

    Returns the accessible name of this object.

    Overrides:
    :   `getAccessibleName` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the localized name of the object -- can be
        `null` if this
        object does not have a name

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### getAccessibleIcon

    public [AccessibleIcon](../accessibility/AccessibleIcon.md "interface in javax.accessibility")[] getAccessibleIcon()

    Get the AccessibleIcons associated with this object if one
    or more exist. Otherwise return null.

    Overrides:
    :   `getAccessibleIcon` in class `AccessibleContext`

    Returns:
    :   an array of `AccessibleIcon` if supported by object;
        otherwise return `null`

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleIcon`](../accessibility/AccessibleIcon.md "interface in javax.accessibility")
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Get the state set of this object.

    Overrides:
    :   `getAccessibleStateSet` in class `JComponent.AccessibleJComponent`

    Returns:
    :   an instance of AccessibleState containing the current state
        of the object

    See Also:
    :   - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
  + ### getAccessibleRelationSet

    public [AccessibleRelationSet](../accessibility/AccessibleRelationSet.md "class in javax.accessibility") getAccessibleRelationSet()

    Get the AccessibleRelationSet associated with this object if one
    exists. Otherwise return null.

    Overrides:
    :   `getAccessibleRelationSet` in class `AccessibleContext`

    Returns:
    :   an `AccessibleRelationSet` if supported by object;
        otherwise return `null`

    Since:
    :   1.3

    See Also:
    :   - [`AccessibleRelation`](../accessibility/AccessibleRelation.md "class in javax.accessibility")
  + ### getAccessibleAction

    public [AccessibleAction](../accessibility/AccessibleAction.md "interface in javax.accessibility") getAccessibleAction()

    Get the AccessibleAction associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleAction interface on behalf of itself.

    Overrides:
    :   `getAccessibleAction` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleAction`](../accessibility/AccessibleAction.md "interface in javax.accessibility")
  + ### getAccessibleValue

    public [AccessibleValue](../accessibility/AccessibleValue.md "interface in javax.accessibility") getAccessibleValue()

    Get the AccessibleValue associated with this object. In the
    implementation of the Java Accessibility API for this class,
    return this object, which is responsible for implementing the
    AccessibleValue interface on behalf of itself.

    Overrides:
    :   `getAccessibleValue` in class `AccessibleContext`

    Returns:
    :   this object

    See Also:
    :   - [`AccessibleValue`](../accessibility/AccessibleValue.md "interface in javax.accessibility")
  + ### getAccessibleActionCount

    public int getAccessibleActionCount()

    Returns the number of Actions available in this object. The
    default behavior of a button is to have one action - toggle
    the button.

    Specified by:
    :   `getAccessibleActionCount` in interface `AccessibleAction`

    Returns:
    :   1, the number of Actions in this object
  + ### getAccessibleActionDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Return a description of the specified action of the object.

    Specified by:
    :   `getAccessibleActionDescription` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a `String` description of the action

    See Also:
    :   - [`AccessibleAction.getAccessibleActionCount()`](../accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### doAccessibleAction

    public boolean doAccessibleAction(int i)

    Perform the specified Action on the object

    Specified by:
    :   `doAccessibleAction` in interface `AccessibleAction`

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   true if the action was performed; else false.

    See Also:
    :   - [`AccessibleAction.getAccessibleActionCount()`](../accessibility/AccessibleAction.md#getAccessibleActionCount())
  + ### getCurrentAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getCurrentAccessibleValue()

    Get the value of this object as a Number.

    Specified by:
    :   `getCurrentAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   An Integer of 0 if this isn't selected or an Integer of 1 if
        this is selected.

    See Also:
    :   - [`AbstractButton.isSelected()`](AbstractButton.md#isSelected())
  + ### setCurrentAccessibleValue

    public boolean setCurrentAccessibleValue([Number](../../../java.base/java/lang/Number.md "class in java.lang") n)

    Set the value of this object as a Number.

    Specified by:
    :   `setCurrentAccessibleValue` in interface `AccessibleValue`

    Parameters:
    :   `n` - the number to use for the value

    Returns:
    :   True if the value was set.

    See Also:
    :   - [`AccessibleValue.getCurrentAccessibleValue()`](../accessibility/AccessibleValue.md#getCurrentAccessibleValue())
  + ### getMinimumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMinimumAccessibleValue()

    Get the minimum value of this object as a Number.

    Specified by:
    :   `getMinimumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   an Integer of 0.

    See Also:
    :   - [`AccessibleValue.getMaximumAccessibleValue()`](../accessibility/AccessibleValue.md#getMaximumAccessibleValue())
  + ### getMaximumAccessibleValue

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getMaximumAccessibleValue()

    Get the maximum value of this object as a Number.

    Specified by:
    :   `getMaximumAccessibleValue` in interface `AccessibleValue`

    Returns:
    :   An Integer of 1.

    See Also:
    :   - [`AccessibleValue.getMinimumAccessibleValue()`](../accessibility/AccessibleValue.md#getMinimumAccessibleValue())
  + ### getAccessibleText

    public [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Description copied from class: `AccessibleContext`

    Gets the `AccessibleText` associated with this object presenting
    text on the display.

    Overrides:
    :   `getAccessibleText` in class `AccessibleContext`

    Returns:
    :   `AccessibleText` if supported by object; else return
        `null`

    See Also:
    :   - [`AccessibleText`](../accessibility/AccessibleText.md "interface in javax.accessibility")
  + ### getIndexAtPoint

    public int getIndexAtPoint([Point](../../java/awt/Point.md "class in java.awt") p)

    Given a point in local coordinates, return the zero-based index
    of the character under that Point. If the point is invalid,
    this method returns -1.
    Note: the AbstractButton must have a valid size (e.g. have
    been added to a parent container whose ancestor container
    is a valid top-level window) for this method to be able
    to return a meaningful value.

    Specified by:
    :   `getIndexAtPoint` in interface `AccessibleText`

    Parameters:
    :   `p` - the Point in local coordinates

    Returns:
    :   the zero-based index of the character under Point p; if
        Point is invalid returns -1.

    Since:
    :   1.3
  + ### getCharacterBounds

    public [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getCharacterBounds(int i)

    Determine the bounding box of the character at the given
    index into the string. The bounds are returned in local
    coordinates. If the index is invalid an empty rectangle is
    returned.
    Note: the AbstractButton must have a valid size (e.g. have
    been added to a parent container whose ancestor container
    is a valid top-level window) for this method to be able
    to return a meaningful value.

    Specified by:
    :   `getCharacterBounds` in interface `AccessibleText`

    Parameters:
    :   `i` - the index into the String

    Returns:
    :   the screen coordinates of the character's the bounding box,
        if index is invalid returns an empty rectangle.

    Since:
    :   1.3
  + ### getCharCount

    public int getCharCount()

    Return the number of characters (valid indices)

    Specified by:
    :   `getCharCount` in interface `AccessibleText`

    Returns:
    :   the number of characters

    Since:
    :   1.3
  + ### getCaretPosition

    public int getCaretPosition()

    Return the zero-based offset of the caret.
    Note: That to the right of the caret will have the same index
    value as the offset (the caret is between two characters).

    Specified by:
    :   `getCaretPosition` in interface `AccessibleText`

    Returns:
    :   the zero-based offset of the caret.

    Since:
    :   1.3
  + ### getAtIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAtIndex(int part,
    int index)

    Returns the String at a given index.

    Specified by:
    :   `getAtIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the AccessibleText.CHARACTER, AccessibleText.WORD,
        or AccessibleText.SENTENCE to retrieve
    :   `index` - an index within the text >= 0

    Returns:
    :   the letter, word, or sentence,
        null for an invalid index or part

    Since:
    :   1.3
  + ### getAfterIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAfterIndex(int part,
    int index)

    Returns the String after a given index.

    Specified by:
    :   `getAfterIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the AccessibleText.CHARACTER, AccessibleText.WORD,
        or AccessibleText.SENTENCE to retrieve
    :   `index` - an index within the text >= 0

    Returns:
    :   the letter, word, or sentence, null for an invalid
        index or part

    Since:
    :   1.3
  + ### getBeforeIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getBeforeIndex(int part,
    int index)

    Returns the String before a given index.

    Specified by:
    :   `getBeforeIndex` in interface `AccessibleText`

    Parameters:
    :   `part` - the AccessibleText.CHARACTER, AccessibleText.WORD,
        or AccessibleText.SENTENCE to retrieve
    :   `index` - an index within the text >= 0

    Returns:
    :   the letter, word, or sentence, null for an invalid index
        or part

    Since:
    :   1.3
  + ### getCharacterAttribute

    public [AttributeSet](text/AttributeSet.md "interface in javax.swing.text") getCharacterAttribute(int i)

    Return the AttributeSet for a given character at a given index

    Specified by:
    :   `getCharacterAttribute` in interface `AccessibleText`

    Parameters:
    :   `i` - the zero-based index into the text

    Returns:
    :   the AttributeSet of the character

    Since:
    :   1.3
  + ### getSelectionStart

    public int getSelectionStart()

    Returns the start offset within the selected text.
    If there is no selection, but there is
    a caret, the start and end offsets will be the same.

    Specified by:
    :   `getSelectionStart` in interface `AccessibleText`

    Returns:
    :   the index into the text of the start of the selection

    Since:
    :   1.3
  + ### getSelectionEnd

    public int getSelectionEnd()

    Returns the end offset within the selected text.
    If there is no selection, but there is
    a caret, the start and end offsets will be the same.

    Specified by:
    :   `getSelectionEnd` in interface `AccessibleText`

    Returns:
    :   the index into the text of the end of the selection

    Since:
    :   1.3
  + ### getSelectedText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getSelectedText()

    Returns the portion of the text that is selected.

    Specified by:
    :   `getSelectedText` in interface `AccessibleText`

    Returns:
    :   the String portion of the text that is selected

    Since:
    :   1.3
  + ### getToolTipText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getToolTipText()

    Returns the tool tip text

    Specified by:
    :   `getToolTipText` in interface `AccessibleExtendedComponent`

    Overrides:
    :   `getToolTipText` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the tool tip text, if supported, of the object;
        otherwise, null

    Since:
    :   1.4
  + ### getTitledBorderText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getTitledBorderText()

    Returns the titled border text

    Specified by:
    :   `getTitledBorderText` in interface `AccessibleExtendedComponent`

    Overrides:
    :   `getTitledBorderText` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the titled border text, if supported, of the object;
        otherwise, null

    Since:
    :   1.4
  + ### getAccessibleKeyBinding

    public [AccessibleKeyBinding](../accessibility/AccessibleKeyBinding.md "interface in javax.accessibility") getAccessibleKeyBinding()

    Returns key bindings associated with this object

    Specified by:
    :   `getAccessibleKeyBinding` in interface `AccessibleExtendedComponent`

    Overrides:
    :   `getAccessibleKeyBinding` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the key bindings, if supported, of the object;
        otherwise, null

    Since:
    :   1.4

    See Also:
    :   - [`AccessibleKeyBinding`](../accessibility/AccessibleKeyBinding.md "interface in javax.accessibility")