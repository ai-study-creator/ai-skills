Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JEditorPane.AccessibleJEditorPane

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

javax.swing.JEditorPane.AccessibleJEditorPane

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleEditableText`, `AccessibleExtendedComponent`, `AccessibleExtendedText`, `AccessibleText`, `CaretListener`, `DocumentListener`

Direct Known Subclasses:
:   `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`

Enclosing class:
:   `JEditorPane`

---

protected class JEditorPane.AccessibleJEditorPane
extends [JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

This class implements accessibility support for the
`JEditorPane` class. It provides an implementation of the
Java Accessibility API appropriate to editor pane user-interface
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

  `AccessibleJEditorPane()`

  Constructs an `AccessibleJEditorPane`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAccessibleDescription()`

  Gets the accessibleDescription property of this object.

  `AccessibleStateSet`

  `getAccessibleStateSet()`

  Gets the state set of this object.

  ### Methods inherited from class javax.swing.text.[JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

  `caretUpdate, changedUpdate, cut, delete, doAccessibleAction, getAccessibleAction, getAccessibleActionCount, getAccessibleActionDescription, getAccessibleEditableText, getAccessibleRole, getAccessibleText, getAfterIndex, getAtIndex, getBeforeIndex, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getIndexAtPoint, getSelectedText, getSelectionEnd, getSelectionStart, getTextBounds, getTextRange, getTextSequenceAfter, getTextSequenceAt, getTextSequenceBefore, insertTextAtIndex, insertUpdate, paste, removeUpdate, replaceText, selectText, setAttributes, setTextContents`

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleChild, getAccessibleChildrenCount, getAccessibleKeyBinding, getAccessibleName, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

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

  + ### AccessibleJEditorPane

    protected AccessibleJEditorPane()

    Constructs an `AccessibleJEditorPane`.
* ## Method Details

  + ### getAccessibleDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleDescription()

    Gets the accessibleDescription property of this object. If this
    property isn't set, returns the content type of this
    `JEditorPane` instead (e.g. "plain/text", "html/text").

    Overrides:
    :   `getAccessibleDescription` in class `JComponent.AccessibleJComponent`

    Returns:
    :   the localized description of the object; `null`
        if this object does not have a description

    See Also:
    :   - [`AccessibleContext.setAccessibleName(java.lang.String)`](../accessibility/AccessibleContext.md#setAccessibleName(java.lang.String))
  + ### getAccessibleStateSet

    public [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet()

    Gets the state set of this object.

    Overrides:
    :   `getAccessibleStateSet` in class `JTextComponent.AccessibleJTextComponent`

    Returns:
    :   an instance of AccessibleStateSet describing the states
        of the object

    See Also:
    :   - [`AccessibleStateSet`](../accessibility/AccessibleStateSet.md "class in javax.accessibility")