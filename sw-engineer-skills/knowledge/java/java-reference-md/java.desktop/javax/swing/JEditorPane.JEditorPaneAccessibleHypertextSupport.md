Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JEditorPane.JEditorPaneAccessibleHypertextSupport

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.accessibility.AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility")

[java.awt.Component.AccessibleAWTComponent](../../java/awt/Component.AccessibleAWTComponent.md "class in java.awt")

[java.awt.Container.AccessibleAWTContainer](../../java/awt/Container.AccessibleAWTContainer.md "class in java.awt")

[javax.swing.JComponent.AccessibleJComponent](JComponent.AccessibleJComponent.md "class in javax.swing")

[javax.swing.text.JTextComponent.AccessibleJTextComponent](text/JTextComponent.AccessibleJTextComponent.md "class in javax.swing.text")

[javax.swing.JEditorPane.AccessibleJEditorPane](JEditorPane.AccessibleJEditorPane.md "class in javax.swing")

javax.swing.JEditorPane.JEditorPaneAccessibleHypertextSupport

All Implemented Interfaces:
:   `Serializable`, `EventListener`, `AccessibleAction`, `AccessibleComponent`, `AccessibleEditableText`, `AccessibleExtendedComponent`, `AccessibleExtendedText`, `AccessibleHypertext`, `AccessibleText`, `CaretListener`, `DocumentListener`

Enclosing class:
:   `JEditorPane`

---

protected class JEditorPane.JEditorPaneAccessibleHypertextSupport
extends [JEditorPane.AccessibleJEditorPane](JEditorPane.AccessibleJEditorPane.md "class in javax.swing")
implements [AccessibleHypertext](../accessibility/AccessibleHypertext.md "interface in javax.accessibility")

What's returned by
`AccessibleJEditorPaneHTML.getAccessibleText`.
Provides support for `AccessibleHypertext` in case
there is an HTML document being displayed in this
`JEditorPane`.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `class`

  `JEditorPane.JEditorPaneAccessibleHypertextSupport.HTMLLink`

  An HTML link.

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

  Constructor

  Description

  `JEditorPaneAccessibleHypertextSupport()`

  Constructs a `JEditorPaneAccessibleHypertextSupport`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AccessibleHyperlink`

  `getLink(int linkIndex)`

  Returns the index into an array of hyperlinks that
  index.

  `int`

  `getLinkCount()`

  Returns the number of links within this hypertext doc.

  `int`

  `getLinkIndex(int charIndex)`

  Returns the index into an array of hyperlinks that
  is associated with this character index, or -1 if there
  is no hyperlink associated with this index.

  `String`

  `getLinkText(int linkIndex)`

  Returns the contiguous text within the document that
  is associated with this hyperlink.

  ### Methods inherited from class javax.swing.[JEditorPane.AccessibleJEditorPane](JEditorPane.AccessibleJEditorPane.md "class in javax.swing")

  `getAccessibleDescription, getAccessibleStateSet`

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

  ### Methods inherited from interface javax.accessibility.[AccessibleText](../accessibility/AccessibleText.md "interface in javax.accessibility")

  `getAfterIndex, getAtIndex, getBeforeIndex, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getIndexAtPoint, getSelectedText, getSelectionEnd, getSelectionStart`

* ## Constructor Details

  + ### JEditorPaneAccessibleHypertextSupport

    public JEditorPaneAccessibleHypertextSupport()

    Constructs a `JEditorPaneAccessibleHypertextSupport`.
* ## Method Details

  + ### getLinkCount

    public int getLinkCount()

    Returns the number of links within this hypertext doc.

    Specified by:
    :   `getLinkCount` in interface `AccessibleHypertext`

    Returns:
    :   number of links in this hypertext doc.
  + ### getLinkIndex

    public int getLinkIndex(int charIndex)

    Returns the index into an array of hyperlinks that
    is associated with this character index, or -1 if there
    is no hyperlink associated with this index.

    Specified by:
    :   `getLinkIndex` in interface `AccessibleHypertext`

    Parameters:
    :   `charIndex` - index within the text

    Returns:
    :   index into the set of hyperlinks for this hypertext doc.
  + ### getLink

    public [AccessibleHyperlink](../accessibility/AccessibleHyperlink.md "class in javax.accessibility") getLink(int linkIndex)

    Returns the index into an array of hyperlinks that
    index. If there is no hyperlink at this index, it returns
    null.

    Specified by:
    :   `getLink` in interface `AccessibleHypertext`

    Parameters:
    :   `linkIndex` - into the set of hyperlinks for this hypertext doc.

    Returns:
    :   string representation of the hyperlink
  + ### getLinkText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getLinkText(int linkIndex)

    Returns the contiguous text within the document that
    is associated with this hyperlink.

    Parameters:
    :   `linkIndex` - into the set of hyperlinks for this hypertext doc.

    Returns:
    :   the contiguous text sharing the link at this index