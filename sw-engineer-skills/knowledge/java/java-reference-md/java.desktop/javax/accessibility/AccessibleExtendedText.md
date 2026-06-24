Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleExtendedText

All Known Implementing Classes:
:   `JEditorPane.AccessibleJEditorPane`, `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`, `JPasswordField.AccessibleJPasswordField`, `JTextArea.AccessibleJTextArea`, `JTextComponent.AccessibleJTextComponent`, `JTextField.AccessibleJTextField`

---

public interface AccessibleExtendedText

The `AccessibleExtendedText` interface contains additional methods not
provided by the `AccessibleText` interface.

Applications can determine if an object supports the
`AccessibleExtendedText` interface by first obtaining its
`AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and then calling the
[`AccessibleContext.getAccessibleText()`](AccessibleContext.md#getAccessibleText()) method of
`AccessibleContext`. If the return value is an instance of
`AccessibleExtendedText`, the object supports this interface.

Since:
:   1.5

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

  `ATTRIBUTE_RUN`

  Constant used to indicate that the part of the text that should be
  retrieved is contiguous text with the same text attributes.

  `static final int`

  `LINE`

  Constant used to indicate that the part of the text that should be
  retrieved is a line of text.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Rectangle`

  `getTextBounds(int startIndex,
  int endIndex)`

  Returns the bounding rectangle of the text between two indices.

  `String`

  `getTextRange(int startIndex,
  int endIndex)`

  Returns the text between two indices.

  `AccessibleTextSequence`

  `getTextSequenceAfter(int part,
  int index)`

  Returns the `AccessibleTextSequence` after a given index.

  `AccessibleTextSequence`

  `getTextSequenceAt(int part,
  int index)`

  Returns the `AccessibleTextSequence` at a given index.

  `AccessibleTextSequence`

  `getTextSequenceBefore(int part,
  int index)`

  Returns the `AccessibleTextSequence` before a given index.

* ## Field Details

  + ### LINE

    static final int LINE

    Constant used to indicate that the part of the text that should be
    retrieved is a line of text.

    See Also:
    :   - [`AccessibleText.getAtIndex(int, int)`](AccessibleText.md#getAtIndex(int,int))
        - [`AccessibleText.getAfterIndex(int, int)`](AccessibleText.md#getAfterIndex(int,int))
        - [`AccessibleText.getBeforeIndex(int, int)`](AccessibleText.md#getBeforeIndex(int,int))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleExtendedText.LINE)
  + ### ATTRIBUTE\_RUN

    static final int ATTRIBUTE\_RUN

    Constant used to indicate that the part of the text that should be
    retrieved is contiguous text with the same text attributes.

    See Also:
    :   - [`AccessibleText.getAtIndex(int, int)`](AccessibleText.md#getAtIndex(int,int))
        - [`AccessibleText.getAfterIndex(int, int)`](AccessibleText.md#getAfterIndex(int,int))
        - [`AccessibleText.getBeforeIndex(int, int)`](AccessibleText.md#getBeforeIndex(int,int))
        - [Constant Field Values](../../../constant-values.md#javax.accessibility.AccessibleExtendedText.ATTRIBUTE_RUN)
* ## Method Details

  + ### getTextRange

    [String](../../../java.base/java/lang/String.md "class in java.lang") getTextRange(int startIndex,
    int endIndex)

    Returns the text between two indices.

    Parameters:
    :   `startIndex` - the start index in the text
    :   `endIndex` - the end index in the text

    Returns:
    :   the text string if the indices are valid. Otherwise, `null`
        is returned.
  + ### getTextSequenceAt

    [AccessibleTextSequence](AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceAt(int part,
    int index)

    Returns the `AccessibleTextSequence` at a given index.

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`, `SENTENCE`,
        `LINE` or `ATTRIBUTE_RUN` to retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text if
        `part` and `index` are valid. Otherwise, `null`
        is returned.

    See Also:
    :   - [`AccessibleText.CHARACTER`](AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](AccessibleText.md#SENTENCE)
  + ### getTextSequenceAfter

    [AccessibleTextSequence](AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceAfter(int part,
    int index)

    Returns the `AccessibleTextSequence` after a given index.

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`, `SENTENCE`,
        `LINE` or `ATTRIBUTE_RUN` to retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text if
        `part` and `index` are valid. Otherwise, `null`
        is returned.

    See Also:
    :   - [`AccessibleText.CHARACTER`](AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](AccessibleText.md#SENTENCE)
  + ### getTextSequenceBefore

    [AccessibleTextSequence](AccessibleTextSequence.md "class in javax.accessibility") getTextSequenceBefore(int part,
    int index)

    Returns the `AccessibleTextSequence` before a given index.

    Parameters:
    :   `part` - the `CHARACTER`, `WORD`, `SENTENCE`,
        `LINE` or `ATTRIBUTE_RUN` to retrieve
    :   `index` - an index within the text

    Returns:
    :   an `AccessibleTextSequence` specifying the text if
        `part` and `index` are valid. Otherwise, `null`
        is returned.

    See Also:
    :   - [`AccessibleText.CHARACTER`](AccessibleText.md#CHARACTER)
        - [`AccessibleText.WORD`](AccessibleText.md#WORD)
        - [`AccessibleText.SENTENCE`](AccessibleText.md#SENTENCE)
  + ### getTextBounds

    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getTextBounds(int startIndex,
    int endIndex)

    Returns the bounding rectangle of the text between two indices.

    Parameters:
    :   `startIndex` - the start index in the text
    :   `endIndex` - the end index in the text

    Returns:
    :   the bounding rectangle of the text if the indices are valid.
        Otherwise, `null` is returned.