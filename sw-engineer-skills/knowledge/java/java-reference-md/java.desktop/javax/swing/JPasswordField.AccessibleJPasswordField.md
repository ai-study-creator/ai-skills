Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JPasswordField.AccessibleJPasswordField

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

[javax.swing.JTextField.AccessibleJTextField](JTextField.AccessibleJTextField.md "class in javax.swing")

javax.swing.JPasswordField.AccessibleJPasswordField

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleEditableText`, `AccessibleExtendedComponent`, `AccessibleExtendedText`, `AccessibleText`, `CaretListener`, `DocumentListener`

Enclosing class:
:   `JPasswordField`

---

protected class JPasswordField.AccessibleJPasswordField
extends [JTextField.AccessibleJTextField](JTextField.AccessibleJTextField.md "class in javax.swing")

This class implements accessibility support for the
`JPasswordField` class. It provides an implementation of the
Java Accessibility API appropriate to password field user-interface
elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

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

  ### Fields inherited from interface javax.accessibility.[AccessibleExtendedText](../accessibility/AccessibleExtendedText.md "interface in javax.accessibility")

  `ATTRIBUTE_RUN, LINE`

  ### Fields inherited from interface javax.accessibility.[AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility")

  `CHARACTER, SENTENCE, WORD`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleJPasswordField()`

  Constructs an `AccessibleJPasswordField`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleRole`

  `getAccessibleRole()`

  Gets the role of this object.

  `AccessibleText`

  `getAccessibleText()`

  Gets the `AccessibleText` for the `JPasswordField`.

  `String`

  `getAfterIndex(int part,
  int index)`

  Returns the `String` after a given `index`.

  `String`

  `getAtIndex(int part,
  int index)`

  Returns the `String` at a given `index`.

  `String`

  `getBeforeIndex(int part,
  int index)`

  Returns the `String` before a given `index`.

  `String`

  `getTextRange(int startIndex,
  int endIndex)`

  Returns the text between two `indices`.

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

  ### Methods inherited from class javax.swing.[JTextField.AccessibleJTextField](JTextField.AccessibleJTextField.md "class in javax.swing")

  `getAccessibleStateSet`

  ### Methods inherited from class javax.swing.text.[JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

  `caretUpdate, changedUpdate, cut, delete, doAccessibleAction, getAccessibleAction, getAccessibleActionCount, getAccessibleActionDescription, getAccessibleEditableText, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getIndexAtPoint, getSelectedText, getSelectionEnd, getSelectionStart, getTextBounds, insertTextAtIndex, insertUpdate, paste, removeUpdate, replaceText, selectText, setAttributes, setTextContents`

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleChild, getAccessibleChildrenCount, getAccessibleDescription, getAccessibleKeyBinding, getAccessibleName, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

  `getAccessibleAt`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJPasswordField

    protected AccessibleJPasswordField()

    Constructs an `AccessibleJPasswordField`.
* ## Method Details

  + ### getAccessibleRole

    public [AccessibleRole](../accessibility/AccessibleRole.md "class in javax.accessibility") getAccessibleRole()

    Gets the role of this object.

    Overrides:
    :   `getAccessibleRole` in class `JTextComponent.AccessibleJTextComponent`

    Returns:
    :   an instance of AccessibleRole describing the role of the
        object (AccessibleRole.PASSWORD\_TEXT)

    See Also:
    :   - [`AccessibleRole`](../accessibility/AccessibleRole.md "class in javax.accessibility")
  + ### getAccessibleText

    public [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Gets the `AccessibleText` for the `JPasswordField`.
    The returned object also implements the
    `AccessibleExtendedText` interface.

    Overrides:
    :   `getAccessibleText` in class `JTextComponent.AccessibleJTextComponent`

    Returns:
    :   `AccessibleText` for the JPasswordField

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleContext`](../accessibility/AccessibleContext.md "class in javax.accessibility")
        - [`AccessibleContext.getAccessibleText()`](../accessibility/AccessibleContext.md#getAccessibleText())
        - [`AccessibleText`](../accessibility/AccessibleText.md "interface in javax.accessibility")
        - [`AccessibleExtendedText`](../accessibility/AccessibleExtendedText.md "interface in javax.accessibility")
  + ### getAtIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAtIndex(int part,
    int index)

    Returns the `String` at a given `index`.

    Specified by:
    :   `getAtIndex` in interface `AccessibleText`

    Overrides:
    :   `getAtIndex` in class `JTextComponent.AccessibleJTextComponent`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD` or
        `SENTENCE` to retrieve
    :   `index` - an index within the text

    Returns:
    :   a `String` if `part` and
        `index` are valid.
        Otherwise, `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../accessibility/AccessibleText.md#SENTENCE)
  + ### getAfterIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAfterIndex(int part,
    int index)

    Returns the `String` after a given `index`.

    Specified by:
    :   `getAfterIndex` in interface `AccessibleText`

    Overrides:
    :   `getAfterIndex` in class `JTextComponent.AccessibleJTextComponent`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD` or
        `SENTENCE` to retrieve
    :   `index` - an index within the text

    Returns:
    :   a `String` if `part` and
        `index` are valid.
        Otherwise, `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../accessibility/AccessibleText.md#SENTENCE)
  + ### getBeforeIndex

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getBeforeIndex(int part,
    int index)

    Returns the `String` before a given `index`.

    Specified by:
    :   `getBeforeIndex` in interface `AccessibleText`

    Overrides:
    :   `getBeforeIndex` in class `JTextComponent.AccessibleJTextComponent`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD` or
        `SENTENCE` to retrieve
    :   `index` - an index within the text

    Returns:
    :   a `String` if `part` and
        `index` are valid.
        Otherwise, `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../accessibility/AccessibleText.md#SENTENCE)
  + ### getTextRange

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getTextRange(int startIndex,
    int endIndex)

    Returns the text between two `indices`.

    Specified by:
    :   `getTextRange` in interface `AccessibleEditableText`

    Specified by:
    :   `getTextRange` in interface `AccessibleExtendedText`

    Overrides:
    :   `getTextRange` in class `JTextComponent.AccessibleJTextComponent`

    Parameters:
    :   `startIndex` - the start index in the text
    :   `endIndex` - the end index in the text

    Returns:
    :   the text string if the indices are valid.
        Otherwise, `null` is returned

    Since:
    :   1.6
  + ### getTextSequenceAt

    public [AccessibleTextSequence](../accessibility/AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceAt(int part,
    int index)

    Returns the `AccessibleTextSequence` at a given
    `index`.

    Specified by:
    :   `getTextSequenceAt` in interface `AccessibleExtendedText`

    Overrides:
    :   `getTextSequenceAt` in class `JTextComponent.AccessibleJTextComponent`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`,
        `SENTENCE`, `LINE` or `ATTRIBUTE_RUN` to
        retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text if
        `part` and `index` are valid. Otherwise,
        `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../accessibility/AccessibleText.md#SENTENCE)
        - [`AccessibleExtendedText.LINE`](../accessibility/AccessibleExtendedText.md#LINE)
        - [`AccessibleExtendedText.ATTRIBUTE_RUN`](../accessibility/AccessibleExtendedText.md#ATTRIBUTE_RUN)
  + ### getTextSequenceAfter

    public [AccessibleTextSequence](../accessibility/AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceAfter(int part,
    int index)

    Returns the `AccessibleTextSequence` after a given
    `index`.

    Specified by:
    :   `getTextSequenceAfter` in interface `AccessibleExtendedText`

    Overrides:
    :   `getTextSequenceAfter` in class `JTextComponent.AccessibleJTextComponent`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`,
        `SENTENCE`, `LINE` or `ATTRIBUTE_RUN` to
        retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text if
        `part` and `index` are valid. Otherwise,
        `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../accessibility/AccessibleText.md#SENTENCE)
        - [`AccessibleExtendedText.LINE`](../accessibility/AccessibleExtendedText.md#LINE)
        - [`AccessibleExtendedText.ATTRIBUTE_RUN`](../accessibility/AccessibleExtendedText.md#ATTRIBUTE_RUN)
  + ### getTextSequenceBefore

    public [AccessibleTextSequence](../accessibility/AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceBefore(int part,
    int index)

    Returns the `AccessibleTextSequence` before a given
    `index`.

    Specified by:
    :   `getTextSequenceBefore` in interface `AccessibleExtendedText`

    Overrides:
    :   `getTextSequenceBefore` in class `JTextComponent.AccessibleJTextComponent`

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`,
        `SENTENCE`, `LINE` or `ATTRIBUTE_RUN` to
        retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text if
        `part` and `index` are valid. Otherwise,
        `null` is returned

    Since:
    :   1.6

    See Also:
    :   - [`AccessibleText.CHARACTER`](../accessibility/AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](../accessibility/AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](../accessibility/AccessibleText.md#SENTENCE)
        - [`AccessibleExtendedText.LINE`](../accessibility/AccessibleExtendedText.md#LINE)
        - [`AccessibleExtendedText.ATTRIBUTE_RUN`](../accessibility/AccessibleExtendedText.md#ATTRIBUTE_RUN)