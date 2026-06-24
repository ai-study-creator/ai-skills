Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.dom](package-summary.md)

# Class DOMResult

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.dom.DOMResult

All Implemented Interfaces:
:   `Result`

---

public class DOMResult
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Result](../Result.md "interface in javax.xml.transform")

Acts as a holder for a transformation result tree
in the form of a Document Object Model (DOM) tree.

If no output DOM source is set, the transformation will create
a Document node as the holder for the result of the transformation,
which may be retrieved with [`getNode()`](#getNode()).

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FEATURE`

  If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns `true` when passed this value as an argument,
  the `Transformer` supports `Result` output of this type.

  ### Fields inherited from interface javax.xml.transform.[Result](../Result.md "interface in javax.xml.transform")

  `PI_DISABLE_OUTPUT_ESCAPING, PI_ENABLE_OUTPUT_ESCAPING`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DOMResult()`

  Zero-argument default constructor.

  `DOMResult(Node node)`

  Use a DOM node to create a new output target.

  `DOMResult(Node node,
  String systemId)`

  Use a DOM node to create a new output target with the specified System ID.

  `DOMResult(Node node,
  Node nextSibling)`

  Use a DOM node to create a new output target specifying
  the child node where the result nodes should be inserted before.

  `DOMResult(Node node,
  Node nextSibling,
  String systemId)`

  Use a DOM node to create a new output target specifying the child
  node where the result nodes should be inserted before and
  the specified System ID.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getNextSibling()`

  Get the child node before which the result nodes will be inserted.

  `Node`

  `getNode()`

  Get the node that will contain the result DOM tree.

  `String`

  `getSystemId()`

  Get the System Identifier.

  `void`

  `setNextSibling(Node nextSibling)`

  Set the child node before which the result nodes will be inserted.

  `void`

  `setNode(Node node)`

  Set the node that will contain the result DOM tree.

  `void`

  `setSystemId(String systemId)`

  Set the systemId that may be used in association with the node.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns `true` when passed this value as an argument,
    the `Transformer` supports `Result` output of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.dom.DOMResult.FEATURE)
* ## Constructor Details

  + ### DOMResult

    public DOMResult()

    Zero-argument default constructor.

    `node`,
    `siblingNode` and
    `systemId`
    will be set to `null`.
  + ### DOMResult

    public DOMResult([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") node)

    Use a DOM node to create a new output target.

    In practice, the node should be
    a [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom") node,
    a [`DocumentFragment`](../../../../org/w3c/dom/DocumentFragment.md "interface in org.w3c.dom") node, or
    a [`Element`](../../../../org/w3c/dom/Element.md "interface in org.w3c.dom") node.
    In other words, a node that accepts children.

    `siblingNode` and
    `systemId`
    will be set to `null`.

    Parameters:
    :   `node` - The DOM node that will contain the result tree.
  + ### DOMResult

    public DOMResult([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") node,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Use a DOM node to create a new output target with the specified System ID.

    In practice, the node should be
    a [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom") node,
    a [`DocumentFragment`](../../../../org/w3c/dom/DocumentFragment.md "interface in org.w3c.dom") node, or
    a [`Element`](../../../../org/w3c/dom/Element.md "interface in org.w3c.dom") node.
    In other words, a node that accepts children.

    `siblingNode` will be set to `null`.

    Parameters:
    :   `node` - The DOM node that will contain the result tree.
    :   `systemId` - The system identifier which may be used in association with this node.
  + ### DOMResult

    public DOMResult([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") node,
    [Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") nextSibling)

    Use a DOM node to create a new output target specifying
    the child node where the result nodes should be inserted before.

    In practice, `node` and `nextSibling` should be
    a [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom") node,
    a [`DocumentFragment`](../../../../org/w3c/dom/DocumentFragment.md "interface in org.w3c.dom") node, or
    a [`Element`](../../../../org/w3c/dom/Element.md "interface in org.w3c.dom") node.
    In other words, a node that accepts children.

    Use `nextSibling` to specify the child node
    where the result nodes should be inserted before.
    If `nextSibling` is not a sibling of `node`,
    then an `IllegalArgumentException` is thrown.
    If `node` is `null` and `nextSibling` is not `null`,
    then an `IllegalArgumentException` is thrown.
    If `nextSibling` is `null`,
    then the behavior is the same as calling [`DOMResult(Node node)`](#%3Cinit%3E(org.w3c.dom.Node)),
    i.e. append the result nodes as the last child of the specified `node`.

    `systemId` will be set to `null`.

    Parameters:
    :   `node` - The DOM node that will contain the result tree.
    :   `nextSibling` - The child node where the result nodes should be inserted before.

    Throws:
    :   `IllegalArgumentException` - If `nextSibling` is not a sibling of `node` or
        `node` is `null` and `nextSibling`
        is not `null`.

    Since:
    :   1.5
  + ### DOMResult

    public DOMResult([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") node,
    [Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") nextSibling,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Use a DOM node to create a new output target specifying the child
    node where the result nodes should be inserted before and
    the specified System ID.

    In practice, `node` and `nextSibling` should be
    a [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom") node,
    a [`DocumentFragment`](../../../../org/w3c/dom/DocumentFragment.md "interface in org.w3c.dom") node, or a
    [`Element`](../../../../org/w3c/dom/Element.md "interface in org.w3c.dom") node.
    In other words, a node that accepts children.

    Use `nextSibling` to specify the child node
    where the result nodes should be inserted before.
    If `nextSibling` is not a sibling of `node`,
    then an `IllegalArgumentException` is thrown.
    If `node` is `null` and `nextSibling` is not `null`,
    then an `IllegalArgumentException` is thrown.
    If `nextSibling` is `null`,
    then the behavior is the same as calling [`DOMResult(Node node, String systemId)`](#%3Cinit%3E(org.w3c.dom.Node,java.lang.String)),
    i.e. append the result nodes as the last child of the specified
    node and use the specified System ID.

    Parameters:
    :   `node` - The DOM node that will contain the result tree.
    :   `nextSibling` - The child node where the result nodes should be inserted before.
    :   `systemId` - The system identifier which may be used in association with this node.

    Throws:
    :   `IllegalArgumentException` - If `nextSibling` is not a
        sibling of `node` or
        `node` is `null` and `nextSibling`
        is not `null`.

    Since:
    :   1.5
* ## Method Details

  + ### setNode

    public void setNode([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") node)

    Set the node that will contain the result DOM tree.

    In practice, the node should be
    a [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom") node,
    a [`DocumentFragment`](../../../../org/w3c/dom/DocumentFragment.md "interface in org.w3c.dom") node, or
    a [`Element`](../../../../org/w3c/dom/Element.md "interface in org.w3c.dom") node.
    In other words, a node that accepts children.

    An `IllegalStateException` is thrown if
    `nextSibling` is not `null` and
    `node` is not a parent of `nextSibling`.
    An `IllegalStateException` is thrown if `node` is `null` and
    `nextSibling` is not `null`.

    Parameters:
    :   `node` - The node to which the transformation will be appended.

    Throws:
    :   `IllegalStateException` - If `nextSibling` is not
        `null` and
        `nextSibling` is not a child of `node` or
        `node` is `null` and
        `nextSibling` is not `null`.
  + ### getNode

    public [Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") getNode()

    Get the node that will contain the result DOM tree.

    If no node was set via
    [`DOMResult(Node node)`](#%3Cinit%3E(org.w3c.dom.Node)),
    [`DOMResult(Node node, String systeId)`](#%3Cinit%3E(org.w3c.dom.Node,java.lang.String)),
    [`DOMResult(Node node, Node nextSibling)`](#%3Cinit%3E(org.w3c.dom.Node,org.w3c.dom.Node)),
    [`DOMResult(Node node, Node nextSibling, String systemId)`](#%3Cinit%3E(org.w3c.dom.Node,org.w3c.dom.Node,java.lang.String)) or
    [`setNode(Node node)`](#setNode(org.w3c.dom.Node)),
    then the node will be set by the transformation, and may be obtained from this method once the transformation is complete.
    Calling this method before the transformation will return `null`.

    Returns:
    :   The node to which the transformation will be appended.
  + ### setNextSibling

    public void setNextSibling([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") nextSibling)

    Set the child node before which the result nodes will be inserted.

    Use `nextSibling` to specify the child node
    before which the result nodes should be inserted.
    If `nextSibling` is not a descendant of `node`,
    then an `IllegalArgumentException` is thrown.
    If `node` is `null` and `nextSibling` is not `null`,
    then an `IllegalStateException` is thrown.
    If `nextSibling` is `null`,
    then the behavior is the same as calling [`DOMResult(Node node)`](#%3Cinit%3E(org.w3c.dom.Node)),
    i.e. append the result nodes as the last child of the specified `node`.

    Parameters:
    :   `nextSibling` - The child node before which the result nodes will be inserted.

    Throws:
    :   `IllegalArgumentException` - If `nextSibling` is not a
        descendant of `node`.
    :   `IllegalStateException` - If `node` is `null`
        and `nextSibling` is not `null`.

    Since:
    :   1.5
  + ### getNextSibling

    public [Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") getNextSibling()

    Get the child node before which the result nodes will be inserted.

    If no node was set via
    [`DOMResult(Node node, Node nextSibling)`](#%3Cinit%3E(org.w3c.dom.Node,org.w3c.dom.Node)),
    [`DOMResult(Node node, Node nextSibling, String systemId)`](#%3Cinit%3E(org.w3c.dom.Node,org.w3c.dom.Node,java.lang.String)) or
    [`setNextSibling(Node nextSibling)`](#setNextSibling(org.w3c.dom.Node)),
    then `null` will be returned.

    Returns:
    :   The child node before which the result nodes will be inserted.

    Since:
    :   1.5
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Set the systemId that may be used in association with the node.

    Specified by:
    :   `setSystemId` in interface `Result`

    Parameters:
    :   `systemId` - The system identifier as a URI string.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the System Identifier.

    If no System ID was set via
    [`DOMResult(Node node, String systemId)`](#%3Cinit%3E(org.w3c.dom.Node,java.lang.String)),
    [`DOMResult(Node node, Node nextSibling, String systemId)`](#%3Cinit%3E(org.w3c.dom.Node,org.w3c.dom.Node,java.lang.String)) or
    [`setSystemId(String systemId)`](#setSystemId(java.lang.String)),
    then `null` will be returned.

    Specified by:
    :   `getSystemId` in interface `Result`

    Returns:
    :   The system identifier.