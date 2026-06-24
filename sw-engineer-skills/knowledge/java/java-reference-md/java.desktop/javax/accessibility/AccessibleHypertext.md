Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleHypertext

All Superinterfaces:
:   `AccessibleText`

All Known Implementing Classes:
:   `JEditorPane.JEditorPaneAccessibleHypertextSupport`

---

public interface AccessibleHypertext
extends [AccessibleText](AccessibleText.md "interface in javax.accessibility")

The `AccessibleHypertext` class is the base class for all classes that
present hypertext information on the display. This class provides the
standard mechanism for an assistive technology to access that text via its
content, attributes, and spatial location. It also provides standard
mechanisms for manipulating hyperlinks. Applications can determine if an
object supports the `AccessibleHypertext` interface by first obtaining
its `AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and then calling the
[`AccessibleContext.getAccessibleText()`](AccessibleContext.md#getAccessibleText()) method of
`AccessibleContext`. If the return value is a class which extends
`AccessibleHypertext`, then that object supports
`AccessibleHypertext`.

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleText`](AccessibleText.md "interface in javax.accessibility")
    * [`AccessibleContext.getAccessibleText()`](AccessibleContext.md#getAccessibleText())

* ## Field Summary

  ### Fields inherited from interface javax.accessibility.[AccessibleText](AccessibleText.md "interface in javax.accessibility")

  `CHARACTER, SENTENCE, WORD`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AccessibleHyperlink`

  `getLink(int linkIndex)`

  Returns the nth Link of this Hypertext document.

  `int`

  `getLinkCount()`

  Returns the number of links within this hypertext document.

  `int`

  `getLinkIndex(int charIndex)`

  Returns the index into an array of hyperlinks that is associated with
  this character index, or -1 if there is no hyperlink associated with this
  index.

  ### Methods inherited from interface javax.accessibility.[AccessibleText](AccessibleText.md "interface in javax.accessibility")

  `getAfterIndex, getAtIndex, getBeforeIndex, getCaretPosition, getCharacterAttribute, getCharacterBounds, getCharCount, getIndexAtPoint, getSelectedText, getSelectionEnd, getSelectionStart`

* ## Method Details

  + ### getLinkCount

    int getLinkCount()

    Returns the number of links within this hypertext document.

    Returns:
    :   number of links in this hypertext doc
  + ### getLink

    [AccessibleHyperlink](AccessibleHyperlink.md "class in javax.accessibility") getLink(int linkIndex)

    Returns the nth Link of this Hypertext document.

    Parameters:
    :   `linkIndex` - within the links of this Hypertext

    Returns:
    :   Link object encapsulating the nth link(s)
  + ### getLinkIndex

    int getLinkIndex(int charIndex)

    Returns the index into an array of hyperlinks that is associated with
    this character index, or -1 if there is no hyperlink associated with this
    index.

    Parameters:
    :   `charIndex` - index within the text

    Returns:
    :   index into the set of hyperlinks for this hypertext doc