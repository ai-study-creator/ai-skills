Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface Element

All Known Implementing Classes:
:   `AbstractDocument.AbstractElement`, `AbstractDocument.BranchElement`, `AbstractDocument.LeafElement`, `DefaultStyledDocument.SectionElement`, `HTMLDocument.BlockElement`, `HTMLDocument.RunElement`

---

public interface Element

Interface to describe a structural piece of a document. It
is intended to capture the spirit of an SGML element.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AttributeSet`

  `getAttributes()`

  Fetches the collection of attributes this element contains.

  `Document`

  `getDocument()`

  Fetches the document associated with this element.

  `Element`

  `getElement(int index)`

  Fetches the child element at the given index.

  `int`

  `getElementCount()`

  Gets the number of child elements contained by this element.

  `int`

  `getElementIndex(int offset)`

  Gets the child element index closest to the given offset.

  `int`

  `getEndOffset()`

  Fetches the offset from the beginning of the document
  that this element ends at.

  `String`

  `getName()`

  Fetches the name of the element.

  `Element`

  `getParentElement()`

  Fetches the parent element.

  `int`

  `getStartOffset()`

  Fetches the offset from the beginning of the document
  that this element begins at.

  `boolean`

  `isLeaf()`

  Is this element a leaf element? An element that
  *may* have children, even if it currently
  has no children, would return `false`.

* ## Method Details

  + ### getDocument

    [Document](Document.md "interface in javax.swing.text") getDocument()

    Fetches the document associated with this element.

    Returns:
    :   the document
  + ### getParentElement

    [Element](Element.md "interface in javax.swing.text") getParentElement()

    Fetches the parent element. If the element is a root level
    element returns `null`.

    Returns:
    :   the parent element
  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Fetches the name of the element. If the element is used to
    represent some type of structure, this would be the type
    name.

    Returns:
    :   the element name
  + ### getAttributes

    [AttributeSet](AttributeSet.md "interface in javax.swing.text") getAttributes()

    Fetches the collection of attributes this element contains.

    Returns:
    :   the attributes for the element
  + ### getStartOffset

    int getStartOffset()

    Fetches the offset from the beginning of the document
    that this element begins at. If this element has
    children, this will be the offset of the first child.
    As a document position, there is an implied forward bias.

    Returns:
    :   the starting offset >= 0 and < getEndOffset();

    See Also:
    :   - [`Document`](Document.md "interface in javax.swing.text")
        - [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")
  + ### getEndOffset

    int getEndOffset()

    Fetches the offset from the beginning of the document
    that this element ends at. If this element has
    children, this will be the end offset of the last child.
    As a document position, there is an implied backward bias.

    All the default `Document` implementations
    descend from `AbstractDocument`.
    `AbstractDocument` models an implied break at the end of
    the document. As a result of this, it is possible for this to
    return a value greater than the length of the document.

    Returns:
    :   the ending offset > getStartOffset() and
        <= getDocument().getLength() + 1

    See Also:
    :   - [`Document`](Document.md "interface in javax.swing.text")
        - [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")
  + ### getElementIndex

    int getElementIndex(int offset)

    Gets the child element index closest to the given offset.
    The offset is specified relative to the beginning of the
    document. Returns `-1` if the
    `Element` is a leaf, otherwise returns
    the index of the `Element` that best represents
    the given location. Returns `0` if the location
    is less than the start offset. Returns
    `getElementCount() - 1` if the location is
    greater than or equal to the end offset.

    Parameters:
    :   `offset` - the specified offset >= 0

    Returns:
    :   the element index >= 0
  + ### getElementCount

    int getElementCount()

    Gets the number of child elements contained by this element.
    If this element is a leaf, a count of zero is returned.

    Returns:
    :   the number of child elements >= 0
  + ### getElement

    [Element](Element.md "interface in javax.swing.text") getElement(int index)

    Fetches the child element at the given index.

    Parameters:
    :   `index` - the specified index >= 0

    Returns:
    :   the child element
  + ### isLeaf

    boolean isLeaf()

    Is this element a leaf element? An element that
    *may* have children, even if it currently
    has no children, would return `false`.

    Returns:
    :   true if a leaf element else false