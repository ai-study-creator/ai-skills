Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface NodeList

All Known Implementing Classes:
:   `IIOMetadataNode`

---

public interface NodeList

The `NodeList` interface provides the abstraction of an ordered
collection of nodes, without defining or constraining how this collection
is implemented. `NodeList` objects in the DOM are live.

The items in the `NodeList` are accessible via an integral
index, starting from 0.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getLength()`

  The number of nodes in the list.

  `Node`

  `item(int index)`

  Returns the `index`th item in the collection.

* ## Method Details

  + ### item

    [Node](Node.md "interface in org.w3c.dom") item(int index)

    Returns the `index`th item in the collection. If
    `index` is greater than or equal to the number of nodes in
    the list, this returns `null`.

    Parameters:
    :   `index` - Index into the collection.

    Returns:
    :   The node at the `index`th position in the
        `NodeList`, or `null` if that is not a valid
        index.
  + ### getLength

    int getLength()

    The number of nodes in the list. The range of valid child node indices
    is 0 to `length-1` inclusive.