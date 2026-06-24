Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface DocumentEvent.ElementChange

All Known Implementing Classes:
:   `AbstractDocument.ElementEdit`

Enclosing interface:
:   `DocumentEvent`

---

public static interface DocumentEvent.ElementChange

Describes changes made to a specific element.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Element[]`

  `getChildrenAdded()`

  Gets the child elements that were added to the given
  parent element.

  `Element[]`

  `getChildrenRemoved()`

  Gets the child elements that were removed from the
  given parent element.

  `Element`

  `getElement()`

  Returns the element represented.

  `int`

  `getIndex()`

  Fetches the index within the element represented.

* ## Method Details

  + ### getElement

    [Element](../text/Element.md "interface in javax.swing.text") getElement()

    Returns the element represented. This is the element
    that was changed.

    Returns:
    :   the element
  + ### getIndex

    int getIndex()

    Fetches the index within the element represented.
    This is the location that children were added
    and/or removed.

    Returns:
    :   the index >= 0
  + ### getChildrenRemoved

    [Element](../text/Element.md "interface in javax.swing.text")[] getChildrenRemoved()

    Gets the child elements that were removed from the
    given parent element. The element array returned is
    sorted in the order that the elements used to lie in
    the document, and must be contiguous.

    Returns:
    :   the child elements
  + ### getChildrenAdded

    [Element](../text/Element.md "interface in javax.swing.text")[] getChildrenAdded()

    Gets the child elements that were added to the given
    parent element. The element array returned is in the
    order that the elements lie in the document, and must
    be contiguous.

    Returns:
    :   the child elements