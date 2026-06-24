Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface ElementTraversal

---

public interface ElementTraversal

The `ElementTraversal` interface is a set of read-only attributes
which allow an author to easily navigate between elements in a document.

In conforming implementations of Element Traversal, all objects that
implement [`Element`](Element.md "interface in org.w3c.dom") must also implement the `ElementTraversal`
interface. Four of the methods,
[`getFirstElementChild()`](#getFirstElementChild()), [`getLastElementChild()`](#getLastElementChild()),
[`getPreviousElementSibling()`](#getPreviousElementSibling()), and [`getNextElementSibling()`](#getNextElementSibling()),
each provides a live reference to another element with the defined
relationship to the current element, if the related element exists. The
fifth method, [`getChildElementCount()`](#getChildElementCount()), exposes the number of child
elements of an element, for preprocessing before navigation.

Since:
:   9

See Also:
:   * [Element Traversal Specification](http://www.w3.org/TR/ElementTraversal/)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getChildElementCount()`

  Returns the current number of child nodes of the element which are of
  the [`Element`](Element.md "interface in org.w3c.dom") type.

  `Element`

  `getFirstElementChild()`

  Returns a reference to the first child node of the element which is of
  the [`Element`](Element.md "interface in org.w3c.dom") type.

  `Element`

  `getLastElementChild()`

  Returns a reference to the last child node of the element which is of
  the [`Element`](Element.md "interface in org.w3c.dom") type.

  `Element`

  `getNextElementSibling()`

  Returns a reference to the sibling node of the element which most immediately
  follows the element in document order, and which is of the [`Element`](Element.md "interface in org.w3c.dom") type.

  `Element`

  `getPreviousElementSibling()`

  Returns a reference to the sibling node of the element which most immediately
  precedes the element in document order, and which is of the [`Element`](Element.md "interface in org.w3c.dom") type.

* ## Method Details

  + ### getFirstElementChild

    [Element](Element.md "interface in org.w3c.dom") getFirstElementChild()

    Returns a reference to the first child node of the element which is of
    the [`Element`](Element.md "interface in org.w3c.dom") type.

    Returns:
    :   a reference to an element child, `null` if the element has
        no child of the [`Element`](Element.md "interface in org.w3c.dom") type.
  + ### getLastElementChild

    [Element](Element.md "interface in org.w3c.dom") getLastElementChild()

    Returns a reference to the last child node of the element which is of
    the [`Element`](Element.md "interface in org.w3c.dom") type.

    Returns:
    :   a reference to an element child, `null` if the element has
        no child of the [`Element`](Element.md "interface in org.w3c.dom") type.
  + ### getPreviousElementSibling

    [Element](Element.md "interface in org.w3c.dom") getPreviousElementSibling()

    Returns a reference to the sibling node of the element which most immediately
    precedes the element in document order, and which is of the [`Element`](Element.md "interface in org.w3c.dom") type.

    Returns:
    :   a reference to an element child, `null` if the element has
        no sibling node of the [`Element`](Element.md "interface in org.w3c.dom") type that comes before this one.
  + ### getNextElementSibling

    [Element](Element.md "interface in org.w3c.dom") getNextElementSibling()

    Returns a reference to the sibling node of the element which most immediately
    follows the element in document order, and which is of the [`Element`](Element.md "interface in org.w3c.dom") type.

    Returns:
    :   a reference to an element child, `null` if the element has
        no sibling node of the [`Element`](Element.md "interface in org.w3c.dom") type that comes after this one.
  + ### getChildElementCount

    int getChildElementCount()

    Returns the current number of child nodes of the element which are of
    the [`Element`](Element.md "interface in org.w3c.dom") type.

    Returns:
    :   the number of element children, or `0` if the element has
        no element children.