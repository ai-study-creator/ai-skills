Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JEditorPane.AccessibleJEditorPaneHTML

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

[javax.swing.JEditorPane.AccessibleJEditorPane](JEditorPane.AccessibleJEditorPane.md "class in javax.swing")

javax.swing.JEditorPane.AccessibleJEditorPaneHTML

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleEditableText`, `AccessibleExtendedComponent`, `AccessibleExtendedText`, `AccessibleText`, `CaretListener`, `DocumentListener`

Enclosing class:
:   `JEditorPane`

---

protected class JEditorPane.AccessibleJEditorPaneHTML
extends [JEditorPane.AccessibleJEditorPane](JEditorPane.AccessibleJEditorPane.md "class in javax.swing")

This class provides support for `AccessibleHypertext`,
and is used in instances where the `EditorKit`
installed in this `JEditorPane` is an instance of
`HTMLEditorKit`.

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

  `AccessibleJEditorPaneHTML()`

  Constructs an `AccessibleJEditorPaneHTML`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Accessible`

  `getAccessibleAt(Point p)`

  Returns the Accessible child, if one exists, contained at the local
  coordinate Point.

  `Accessible`

  `getAccessibleChild(int i)`

  Returns the specified Accessible child of the object.

  `int`

  `getAccessibleChildrenCount()`

  Returns the number of accessible children of the object.

  `AccessibleText`

  `getAccessibleText()`

  Returns the accessible text.

  ### Methods inherited from class javax.swing.[JEditorPane.AccessibleJEditorPane](JEditorPane.AccessibleJEditorPane.md "class in javax.swing")

  `getAccessibleDescription, getAccessibleStateSet`

  ### Methods inherited from class javax.swing.text.[JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

  `caretUpdate, changedUpdate, cut, delete, doAccessibleAction, getAccessibleAction, getAccessibleActionCount, getAccessibleActionDescription, getAccessibleEditableText, getAccessibleRole, getAfterIndex, getAtIndex, getBeforeIndex, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getIndexAtPoint, getSelectedText, getSelectionEnd, getSelectionStart, getTextBounds, getTextRange, getTextSequenceAfter, getTextSequenceAt, getTextSequenceBefore, insertTextAtIndex, insertUpdate, paste, removeUpdate, replaceText, selectText, setAttributes, setTextContents`

  ### Methods inherited from class javax.swing.[JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

  `addPropertyChangeListener, getAccessibleKeyBinding, getAccessibleName, getBorderTitle, getTitledBorderText, getToolTipText, removePropertyChangeListener`

  ### Methods inherited from class java.awt.[Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

  `addFocusListener, contains, getAccessibleComponent, getAccessibleIndexInParent, getAccessibleParent, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocale, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

  ### Methods inherited from class javax.accessibility.[AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

  `firePropertyChange, getAccessibleIcon, getAccessibleRelationSet, getAccessibleSelection, getAccessibleTable, getAccessibleValue, setAccessibleDescription, setAccessibleName, setAccessibleParent`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](../accessibility/AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Constructor Details

  + ### AccessibleJEditorPaneHTML

    protected AccessibleJEditorPaneHTML()

    Constructs an `AccessibleJEditorPaneHTML`.
* ## Method Details

  + ### getAccessibleText

    public [AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility") getAccessibleText()

    Returns the accessible text.

    Overrides:
    :   `getAccessibleText` in class `JTextComponent.AccessibleJTextComponent`

    Returns:
    :   the accessible text

    See Also:
    :   - [`AccessibleText`](../accessibility/AccessibleText.md "interface in javax.accessibility")
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
  + ### getAccessibleAt

    public [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Point](../../java/awt/Point.md "class in java.awt") p)

    Returns the Accessible child, if one exists, contained at the local
    coordinate Point.

    Specified by:
    :   `getAccessibleAt` in interface `AccessibleComponent`

    Overrides:
    :   `getAccessibleAt` in class `Container.AccessibleAWTContainer`

    Parameters:
    :   `p` - The point relative to the coordinate system of this object.

    Returns:
    :   the Accessible, if it exists, at the specified location;
        otherwise null