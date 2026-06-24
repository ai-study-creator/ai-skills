Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleText

All Known Subinterfaces:
:   `AccessibleEditableText`, `AccessibleHypertext`

All Known Implementing Classes:
:   `AbstractButton.AccessibleAbstractButton`, `JButton.AccessibleJButton`, `JCheckBox.AccessibleJCheckBox`, `JCheckBoxMenuItem.AccessibleJCheckBoxMenuItem`, `JEditorPane.AccessibleJEditorPane`, `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`, `JLabel.AccessibleJLabel`, `JMenu.AccessibleJMenu`, `JMenuItem.AccessibleJMenuItem`, `JPasswordField.AccessibleJPasswordField`, `JRadioButton.AccessibleJRadioButton`, `JRadioButtonMenuItem.AccessibleJRadioButtonMenuItem`, `JSpinner.AccessibleJSpinner`, `JTextArea.AccessibleJTextArea`, `JTextComponent.AccessibleJTextComponent`, `JTextField.AccessibleJTextField`, `JToggleButton.AccessibleJToggleButton`, `ProgressMonitor.AccessibleProgressMonitor`, `TextArea.AccessibleAWTTextArea`, `TextComponent.AccessibleAWTTextComponent`, `TextField.AccessibleAWTTextField`

---

public interface AccessibleText

The `AccessibleText` interface should be implemented by all classes
that present textual information on the display. This interface provides the
standard mechanism for an assistive technology to access that text via its
content, attributes, and spatial location. Applications can determine if an
object supports the `AccessibleText` interface by first obtaining its
`AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and then calling the
[`AccessibleContext.getAccessibleText()`](AccessibleContext.md#getAccessibleText()) method of
`AccessibleContext`. If the return value is not `null`, the
object supports this interface.

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.getAccessibleText()`](AccessibleContext.md#getAccessibleText())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CHARACTER`

  Constant used to indicate that the part of the text that should be
  retrieved is a character.

  `static final int`

  `SENTENCE`

  Constant used to indicate that the part of the text that should be
  retrieved is a sentence.

  `static final int`

  `WORD`

  Constant used to indicate that the part of the text that should be
  retrieved is a word.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAfterIndex(int part,
  int index)`

  Returns the `String` after a given index.

  `String`

  `getAtIndex(int part,
  int index)`

  Returns the `String` at a given index.

  `String`

  `getBeforeIndex(int part,
  int index)`

  Returns the `String` before a given index.

  `int`

  `getCaretPosition()`

  Returns the zero-based offset of the caret.

  `AttributeSet`

  `getCharacterAttribute(int i)`

  Returns the `AttributeSet` for a given character at a given index.

  `Rectangle`

  `getCharacterBounds(int i)`

  Determines the bounding box of the character at the given index into the
  string.

  `int`

  `getCharCount()`

  Returns the number of characters (valid indices).

  `int`

  `getIndexAtPoint(Point p)`

  Given a point in local coordinates, return the zero-based index of the
  character under that point.

  `String`

  `getSelectedText()`

  Returns the portion of the text that is selected.

  `int`

  `getSelectionEnd()`

  Returns the end offset within the selected text.

  `int`

  `getSelectionStart()`

  Returns the start offset within the selected text.

* ## Field Details

  + ### CHARACTER

    static final int CHARACTER

    Constant used to indicate that the part of the text that should be
    retrieved is a character.

    See Also:
    :   - [`getAtIndex(int, int)`](#getAtIndex(int,int))
        - [`getAfterIndex(int, int)`](#getAfterIndex(int,int))
        - [`getBeforeIndex(int, int)`](#getBeforeIndex(int,int))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleText.CHARACTER)
  + ### WORD

    static final int WORD

    Constant used to indicate that the part of the text that should be
    retrieved is a word.

    See Also:
    :   - [`getAtIndex(int, int)`](#getAtIndex(int,int))
        - [`getAfterIndex(int, int)`](#getAfterIndex(int,int))
        - [`getBeforeIndex(int, int)`](#getBeforeIndex(int,int))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleText.WORD)
  + ### SENTENCE

    static final int SENTENCE

    Constant used to indicate that the part of the text that should be
    retrieved is a sentence.

    A sentence is a string of words which expresses an assertion, a question,
    a command, a wish, an exclamation, or the performance of an action. In
    English locales, the string usually begins with a capital letter and
    concludes with appropriate end punctuation; such as a period, question or
    exclamation mark. Other locales may use different capitalization and/or
    punctuation.

    See Also:
    :   - [`getAtIndex(int, int)`](#getAtIndex(int,int))
        - [`getAfterIndex(int, int)`](#getAfterIndex(int,int))
        - [`getBeforeIndex(int, int)`](#getBeforeIndex(int,int))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleText.SENTENCE)
* ## Method Details

  + ### getIndexAtPoint

    int getIndexAtPoint([Point](../../java/awt/Point.md "class in java.awt") p)

    Given a point in local coordinates, return the zero-based index of the
    character under that point. If the point is invalid, this method returns
    -1.

    Parameters:
    :   `p` - the point in local coordinates

    Returns:
    :   the zero-based index of the character under `Point p`; if
        point is invalid return -1.
  + ### getCharacterBounds

    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getCharacterBounds(int i)

    Determines the bounding box of the character at the given index into the
    string. The bounds are returned in local coordinates. If the index is
    invalid an empty rectangle is returned.

    Parameters:
    :   `i` - the index into the string

    Returns:
    :   the screen coordinates of the character's bounding box, if index
        is invalid return an empty rectangle.
  + ### getCharCount

    int getCharCount()

    Returns the number of characters (valid indices).

    Returns:
    :   the number of characters
  + ### getCaretPosition

    int getCaretPosition()

    Returns the zero-based offset of the caret.

    Note: That to the right of the caret will have the same index value as
    the offset (the caret is between two characters).

    Returns:
    :   the zero-based offset of the caret
  + ### getAtIndex

    [String](../../../java.base/java/lang/String.md "class in java.lang") getAtIndex(int part,
    int index)

    Returns the `String` at a given index.

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence
  + ### getAfterIndex

    [String](../../../java.base/java/lang/String.md "class in java.lang") getAfterIndex(int part,
    int index)

    Returns the `String` after a given index.

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence
  + ### getBeforeIndex

    [String](../../../java.base/java/lang/String.md "class in java.lang") getBeforeIndex(int part,
    int index)

    Returns the `String` before a given index.

    Parameters:
    :   `part` - the CHARACTER, WORD, or SENTENCE to retrieve
    :   `index` - an index within the text

    Returns:
    :   the letter, word, or sentence
  + ### getCharacterAttribute

    [AttributeSet](../swing/text/AttributeSet.md "interface in javax.swing.text") getCharacterAttribute(int i)

    Returns the `AttributeSet` for a given character at a given index.

    Parameters:
    :   `i` - the zero-based index into the text

    Returns:
    :   the `AttributeSet` of the character
  + ### getSelectionStart

    int getSelectionStart()

    Returns the start offset within the selected text. If there is no
    selection, but there is a caret, the start and end offsets will be the
    same.

    Returns:
    :   the index into the text of the start of the selection
  + ### getSelectionEnd

    int getSelectionEnd()

    Returns the end offset within the selected text. If there is no
    selection, but there is a caret, the start and end offsets will be the
    same.

    Returns:
    :   the index into the text of the end of the selection
  + ### getSelectedText

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSelectedText()

    Returns the portion of the text that is selected.

    Returns:
    :   the `String` portion of the text that is selected