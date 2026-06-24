Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class TextArea.AccessibleAWTTextArea

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.TextComponent.AccessibleAWTTextComponent](TextComponent.AccessibleAWTTextComponent.md "class in java.awt")

java.awt.TextArea.AccessibleAWTTextArea

All Implemented Interfaces:
:   `TextListener`, `Serializable`, `EventListener`, `AccessibleComponent`, `AccessibleText`

Enclosing class:
:   `TextArea`

---

protected class TextArea.AccessibleAWTTextArea
extends [TextComponent.AccessibleAWTTextComponent](TextComponent.AccessibleAWTTextComponent.md "class in java.awt")

This class implements accessibility support for the
`TextArea` class. It provides an implementation of the
Java Accessibility API appropriate to text area user-interface elements.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.TextArea.AccessibleAWTTextArea)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler, Component.AccessibleAWTComponent.AccessibleAWTFocusHandler`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `accessibleAWTComponentHandler, accessibleAWTFocusHandler`

  ### Fields inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `ACCESSIBLE_ACTION_PROPERTY, ACCESSIBLE_ACTIVE_DESCENDANT_PROPERTY, ACCESSIBLE_CARET_PROPERTY, ACCESSIBLE_CHILD_PROPERTY, ACCESSIBLE_COMPONENT_BOUNDS_CHANGED, ACCESSIBLE_DESCRIPTION_PROPERTY, ACCESSIBLE_HYPERTEXT_OFFSET, ACCESSIBLE_INVALIDATE_CHILDREN, ACCESSIBLE_NAME_PROPERTY, ACCESSIBLE_SELECTION_PROPERTY, ACCESSIBLE_STATE_PROPERTY, ACCESSIBLE_TABLE_CAPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_COLUMN_HEADER_CHANGED, ACCESSIBLE_TABLE_MODEL_CHANGED, ACCESSIBLE_TABLE_ROW_DESCRIPTION_CHANGED, ACCESSIBLE_TABLE_ROW_HEADER_CHANGED, ACCESSIBLE_TABLE_SUMMARY_CHANGED, ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED, ACCESSIBLE_TEXT_PROPERTY, ACCESSIBLE_VALUE_PROPERTY, ACCESSIBLE_VISIBLE_DATA_PROPERTY, accessibleDescription, accessibleName, accessibleParent`

  ### Fields inherited from interface javax.accessibility.[AccessibleText](../../javax/accessibility/AccessibleText.md "interface in javax.accessibility")

  `CHARACTER, SENTENCE, WORD`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleAWTTextArea()`

  Constructs an `AccessibleAWTTextArea`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state set of this object.

  ### Methods inherited from class java.awt.[TextComponent.AccessibleAWTTextComponent](TextComponent.AccessibleAWTTextComponent.md "class in java.awt")

  `getAccessibleRole, getAccessibleText, getAfterIndex, getAtIndex, getBeforeIndex, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getIndexAtPoint, getSelectedText, getSelectionEnd, getSelectionStart, textValueChanged`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, addPropertyChangeListener, contains, getAccessibleAt, getAccessibleChild, getAccessibleChildrenCount, getAccessibleComponent, getAccessibleDescription, getAccessibleIndexInParent, getAccessibleName, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, removePropertyChangeListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleAction, getAccessibleEditableText, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTTextArea

    protected AccessibleAWTTextArea()

    Constructs an `AccessibleAWTTextArea`.
* ## Method Details

  + ### getAccessibleStateSet

    public [AccessibleStateSet](../../javax/accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state set of this object.

    Overrides:
    :   `getAccessibleStateSet` in class `TextComponent.AccessibleAWTTextComponent`

    Returns:
    :   an instance of AccessibleStateSet describing the states
        of the object

    See Also:
    :   - [`AccessibleStateSet`](../../javax/accessibility/AccessibleStateSet.md "class in javax.accessibility")