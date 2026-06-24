Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleEditableText

All Superinterfaces:
:   `AccessibleText`

All Known Implementing Classes:
:   `JEditorPane.AccessibleJEditorPane`, `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`, `JPasswordField.AccessibleJPasswordField`, `JSpinner.AccessibleJSpinner`, `JTextArea.AccessibleJTextArea`, `JTextComponent.AccessibleJTextComponent`, `JTextField.AccessibleJTextField`

---

public interface AccessibleEditableText
extends [AccessibleText](AccessibleText.md "interface in javax.accessibility")

The `AccessibleEditableText` interface should be implemented by all
classes that present editable textual information on the display. Along with
the `AccessibleText` interface, this interface provides the standard
mechanism for an assistive technology to access that text via its content,
attributes, and spatial location. Applications can determine if an object
supports the `AccessibleEditableText` interface by first obtaining its
`AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and then calling the
[`AccessibleContext.getAccessibleEditableText()`](AccessibleContext.md#getAccessibleEditableText()) method of
`AccessibleContext`. If the return value is not `null`, the
object supports this interface.

Since:
:   1.4

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.getAccessibleText()`](AccessibleContext.md#getAccessibleText())
    * [`AccessibleContext.getAccessibleEditableText()`](AccessibleContext.md#getAccessibleEditableText())

* ## Field Summary

  ### Fields inherited from interface javax.accessibility.[AccessibleText](AccessibleText.md "interface in javax.accessibility")

  `CHARACTER, SENTENCE, WORD`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

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

  Deletes the text between two indices.

  `String`

  `getTextRange(int startIndex,
  int endIndex)`

  Returns the text string between two indices.

  `void`

  `insertTextAtIndex(int index,
  String s)`

  Inserts the specified string at the given index.

  `void`

  `paste(int startIndex)`

  Pastes the text from the system clipboard into the text starting at the
  specified index.

  `void`

  `replaceText(int startIndex,
  int endIndex,
  String s)`

  Replaces the text between two indices with the specified string.

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

  ### Methods inherited from interface javax.accessibility.[AccessibleText](AccessibleText.md "interface in javax.accessibility")

  `getAfterIndex, getAtIndex, getBeforeIndex, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getIndexAtPoint, getSelectedText, getSelectionEnd, getSelectionStart`

* ## Method Details

  + ### setTextContents

    void setTextContents([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Sets the text contents to the specified string.

    Parameters:
    :   `s` - the string to set the text contents
  + ### insertTextAtIndex

    void insertTextAtIndex(int index,
    [String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Inserts the specified string at the given index.

    Parameters:
    :   `index` - the index in the text where the string will be inserted
    :   `s` - the string to insert in the text
  + ### getTextRange

    [String](../../../java.base/java/lang/String.md "class in java.lang") getTextRange(int startIndex,
    int endIndex)

    Returns the text string between two indices.

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text

    Returns:
    :   the text string between the indices
  + ### delete

    void delete(int startIndex,
    int endIndex)

    Deletes the text between two indices.

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
  + ### cut

    void cut(int startIndex,
    int endIndex)

    Cuts the text between two indices into the system clipboard.

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
  + ### paste

    void paste(int startIndex)

    Pastes the text from the system clipboard into the text starting at the
    specified index.

    Parameters:
    :   `startIndex` - the starting index in the text
  + ### replaceText

    void replaceText(int startIndex,
    int endIndex,
    [String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Replaces the text between two indices with the specified string.

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
    :   `s` - the string to replace the text between two indices
  + ### selectText

    void selectText(int startIndex,
    int endIndex)

    Selects the text between two indices.

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
  + ### setAttributes

    void setAttributes(int startIndex,
    int endIndex,
    [AttributeSet](../swing/text/AttributeSet.md "interface in javax.swing.text") as)

    Sets attributes for the text between two indices.

    Parameters:
    :   `startIndex` - the starting index in the text
    :   `endIndex` - the ending index in the text
    :   `as` - the attribute set

    See Also:
    :   - [`AttributeSet`](../swing/text/AttributeSet.md "interface in javax.swing.text")