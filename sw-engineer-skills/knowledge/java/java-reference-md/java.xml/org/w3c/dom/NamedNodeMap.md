Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface NamedNodeMap

---

public interface NamedNodeMap

Objects implementing the `NamedNodeMap` interface are used to
represent collections of nodes that can be accessed by name. Note that
`NamedNodeMap` does not inherit from `NodeList`;
`NamedNodeMaps` are not maintained in any particular order.
Objects contained in an object implementing `NamedNodeMap` may
also be accessed by an ordinal index, but this is simply to allow
convenient enumeration of the contents of a `NamedNodeMap`,
and does not imply that the DOM specifies an order to these Nodes.

`NamedNodeMap` objects in the DOM are live.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getLength()`

  The number of nodes in this map.

  `Node`

  `getNamedItem(String name)`

  Retrieves a node specified by name.

  `Node`

  `getNamedItemNS(String namespaceURI,
  String localName)`

  Retrieves a node specified by local name and namespace URI.

  `Node`

  `item(int index)`

  Returns the `index`th item in the map.

  `Node`

  `removeNamedItem(String name)`

  Removes a node specified by name.

  `Node`

  `removeNamedItemNS(String namespaceURI,
  String localName)`

  Removes a node specified by local name and namespace URI.

  `Node`

  `setNamedItem(Node arg)`

  Adds a node using its `nodeName` attribute.

  `Node`

  `setNamedItemNS(Node arg)`

  Adds a node using its `namespaceURI` and
  `localName`.

* ## Method Details

  + ### getNamedItem

    [Node](Node.md "interface in org.w3c.dom") getNamedItem([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Retrieves a node specified by name.

    Parameters:
    :   `name` - The `nodeName` of a node to retrieve.

    Returns:
    :   A `Node` (of any type) with the specified
        `nodeName`, or `null` if it does not identify
        any node in this map.
  + ### setNamedItem

    [Node](Node.md "interface in org.w3c.dom") setNamedItem([Node](Node.md "interface in org.w3c.dom") arg)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    Adds a node using its `nodeName` attribute. If a node with
    that name is already present in this map, it is replaced by the new
    one. Replacing a node by itself has no effect.
      
    As the `nodeName` attribute is used to derive the name
    which the node must be stored under, multiple nodes of certain types
    (those that have a "special" string value) cannot be stored as the
    names would clash. This is seen as preferable to allowing nodes to be
    aliased.

    Parameters:
    :   `arg` - A node to store in this map. The node will later be
        accessible using the value of its `nodeName` attribute.

    Returns:
    :   If the new `Node` replaces an existing node the
        replaced `Node` is returned, otherwise `null`
        is returned.

    Throws:
    :   `DOMException` - WRONG\_DOCUMENT\_ERR: Raised if `arg` was created from a
        different document than the one that created this map.
          
        NO\_MODIFICATION\_ALLOWED\_ERR: Raised if this map is readonly.
          
        INUSE\_ATTRIBUTE\_ERR: Raised if `arg` is an
        `Attr` that is already an attribute of another
        `Element` object. The DOM user must explicitly clone
        `Attr` nodes to re-use them in other elements.
          
        HIERARCHY\_REQUEST\_ERR: Raised if an attempt is made to add a node
        doesn't belong in this NamedNodeMap. Examples would include trying
        to insert something other than an Attr node into an Element's map
        of attributes, or a non-Entity node into the DocumentType's map of
        Entities.
  + ### removeNamedItem

    [Node](Node.md "interface in org.w3c.dom") removeNamedItem([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    Removes a node specified by name. When this map contains the attributes
    attached to an element, if the removed attribute is known to have a
    default value, an attribute immediately appears containing the
    default value as well as the corresponding namespace URI, local name,
    and prefix when applicable.

    Parameters:
    :   `name` - The `nodeName` of the node to remove.

    Returns:
    :   The node removed from this map if a node with such a name
        exists.

    Throws:
    :   `DOMException` - NOT\_FOUND\_ERR: Raised if there is no node named `name` in
        this map.
          
        NO\_MODIFICATION\_ALLOWED\_ERR: Raised if this map is readonly.
  + ### item

    [Node](Node.md "interface in org.w3c.dom") item(int index)

    Returns the `index`th item in the map. If `index`
    is greater than or equal to the number of nodes in this map, this
    returns `null`.

    Parameters:
    :   `index` - Index into this map.

    Returns:
    :   The node at the `index`th position in the map, or
        `null` if that is not a valid index.
  + ### getLength

    int getLength()

    The number of nodes in this map. The range of valid child node indices
    is `0` to `length-1` inclusive.
  + ### getNamedItemNS

    [Node](Node.md "interface in org.w3c.dom") getNamedItemNS([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    Retrieves a node specified by local name and namespace URI.
      
    Per [[XML Namespaces](http://www.w3.org/TR/1999/REC-xml-names-19990114/)]
    , applications must use the value null as the namespaceURI parameter
    for methods if they wish to have no namespace.

    Parameters:
    :   `namespaceURI` - The namespace URI of the node to retrieve.
    :   `localName` - The local name of the node to retrieve.

    Returns:
    :   A `Node` (of any type) with the specified local
        name and namespace URI, or `null` if they do not
        identify any node in this map.

    Throws:
    :   `DOMException` - NOT\_SUPPORTED\_ERR: May be raised if the implementation does not
        support the feature "XML" and the language exposed through the
        Document does not support XML Namespaces (such as [[HTML 4.01](http://www.w3.org/TR/1999/REC-html401-19991224/)]).

    Since:
    :   1.4, DOM Level 2
  + ### setNamedItemNS

    [Node](Node.md "interface in org.w3c.dom") setNamedItemNS([Node](Node.md "interface in org.w3c.dom") arg)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    Adds a node using its `namespaceURI` and
    `localName`. If a node with that namespace URI and that
    local name is already present in this map, it is replaced by the new
    one. Replacing a node by itself has no effect.
      
    Per [[XML Namespaces](http://www.w3.org/TR/1999/REC-xml-names-19990114/)]
    , applications must use the value null as the namespaceURI parameter
    for methods if they wish to have no namespace.

    Parameters:
    :   `arg` - A node to store in this map. The node will later be
        accessible using the value of its `namespaceURI` and
        `localName` attributes.

    Returns:
    :   If the new `Node` replaces an existing node the
        replaced `Node` is returned, otherwise `null`
        is returned.

    Throws:
    :   `DOMException` - WRONG\_DOCUMENT\_ERR: Raised if `arg` was created from a
        different document than the one that created this map.
          
        NO\_MODIFICATION\_ALLOWED\_ERR: Raised if this map is readonly.
          
        INUSE\_ATTRIBUTE\_ERR: Raised if `arg` is an
        `Attr` that is already an attribute of another
        `Element` object. The DOM user must explicitly clone
        `Attr` nodes to re-use them in other elements.
          
        HIERARCHY\_REQUEST\_ERR: Raised if an attempt is made to add a node
        doesn't belong in this NamedNodeMap. Examples would include trying
        to insert something other than an Attr node into an Element's map
        of attributes, or a non-Entity node into the DocumentType's map of
        Entities.
          
        NOT\_SUPPORTED\_ERR: May be raised if the implementation does not
        support the feature "XML" and the language exposed through the
        Document does not support XML Namespaces (such as [[HTML 4.01](http://www.w3.org/TR/1999/REC-html401-19991224/)]).

    Since:
    :   1.4, DOM Level 2
  + ### removeNamedItemNS

    [Node](Node.md "interface in org.w3c.dom") removeNamedItemNS([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localName)
    throws [DOMException](DOMException.md "class in org.w3c.dom")

    Removes a node specified by local name and namespace URI. A removed
    attribute may be known to have a default value when this map contains
    the attributes attached to an element, as returned by the attributes
    attribute of the `Node` interface. If so, an attribute
    immediately appears containing the default value as well as the
    corresponding namespace URI, local name, and prefix when applicable.
      
    Per [[XML Namespaces](http://www.w3.org/TR/1999/REC-xml-names-19990114/)]
    , applications must use the value null as the namespaceURI parameter
    for methods if they wish to have no namespace.

    Parameters:
    :   `namespaceURI` - The namespace URI of the node to remove.
    :   `localName` - The local name of the node to remove.

    Returns:
    :   The node removed from this map if a node with such a local
        name and namespace URI exists.

    Throws:
    :   `DOMException` - NOT\_FOUND\_ERR: Raised if there is no node with the specified
        `namespaceURI` and `localName` in this map.
          
        NO\_MODIFICATION\_ALLOWED\_ERR: Raised if this map is readonly.
          
        NOT\_SUPPORTED\_ERR: May be raised if the implementation does not
        support the feature "XML" and the language exposed through the
        Document does not support XML Namespaces (such as [[HTML 4.01](http://www.w3.org/TR/1999/REC-html401-19991224/)]).

    Since:
    :   1.4, DOM Level 2