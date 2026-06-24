Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Interface XPathNodes

All Superinterfaces:
:   `Iterable<Node>`

---

public interface XPathNodes
extends [Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")<[Node](../../../org/w3c/dom/Node.md "interface in org.w3c.dom")>

XPathNodes represents a set of nodes selected by a location path as specified
in [XML Path Language (XPath)
Version 1.0, 3.3 Node-sets](http://www.w3.org/TR/xpath/#node-sets).

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Node`

  `get(int index)`

  Returns a Node at the specified position

  `Iterator<Node>`

  `iterator()`

  Returns an iterator of the Nodes.

  `int`

  `size()`

  Returns the number of items in the result

  ### Methods inherited from interface java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Method Details

  + ### iterator

    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<[Node](../../../org/w3c/dom/Node.md "interface in org.w3c.dom")> iterator()

    Returns an iterator of the Nodes.

    Specified by:
    :   `iterator` in interface `Iterable<Node>`

    Returns:
    :   an Iterator.
  + ### size

    int size()

    Returns the number of items in the result

    Returns:
    :   The number of items in the result
  + ### get

    [Node](../../../org/w3c/dom/Node.md "interface in org.w3c.dom") get(int index)
    throws [XPathException](XPathException.md "class in javax.xml.xpath")

    Returns a Node at the specified position

    Parameters:
    :   `index` - Index of the element to return.

    Returns:
    :   The Node at the specified position.

    Throws:
    :   `XPathException` - If the index is out of range
        (index < 0 || index >= size())