Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.dom](package-summary.md)

# Class DOMSource

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.dom.DOMSource

All Implemented Interfaces:
:   `Source`

---

public class DOMSource
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Source](../Source.md "interface in javax.xml.transform")

Acts as a holder for a transformation Source tree in the
form of a Document Object Model (DOM) tree.

Note that XSLT requires namespace support. Attempting to transform a DOM
that was not constructed with a namespace-aware parser may result in errors.
Parsers can be made namespace aware by calling
[`DocumentBuilderFactory.setNamespaceAware(boolean awareness)`](../../parsers/DocumentBuilderFactory.md#setNamespaceAware(boolean)).

Since:
:   1.4

See Also:
:   * [Document Object Model (DOM) Level 2 Specification](http://www.w3.org/TR/DOM-Level-2)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FEATURE`

  If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns true when passed this value as an argument,
  the Transformer supports Source input of this type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DOMSource()`

  Zero-argument default constructor.

  `DOMSource(Node n)`

  Create a new input source with a DOM node.

  `DOMSource(Node node,
  String systemID)`

  Create a new input source with a DOM node, and with the
  system ID also passed in as the base URI.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getNode()`

  Get the node that represents a Source DOM tree.

  `String`

  `getSystemId()`

  Get the base ID (URL or system ID) from where URLs
  will be resolved.

  `boolean`

  `isEmpty()`

  Indicates whether the `DOMSource` object is empty.

  `void`

  `setNode(Node node)`

  Set the node that will represents a Source DOM tree.

  `void`

  `setSystemId(String systemID)`

  Set the base ID (URL or system ID) from where URLs
  will be resolved.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the Transformer supports Source input of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.dom.DOMSource.FEATURE)
* ## Constructor Details

  + ### DOMSource

    public DOMSource()

    Zero-argument default constructor. If this constructor is used, and
    no DOM source is set using [`setNode(Node node)`](#setNode(org.w3c.dom.Node)) , then the
    `Transformer` will
    create an empty source [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom") using
    [`DocumentBuilder.newDocument()`](../../parsers/DocumentBuilder.md#newDocument()).

    See Also:
    :   - [`Transformer.transform(Source xmlSource, Result outputTarget)`](../Transformer.md#transform(javax.xml.transform.Source,javax.xml.transform.Result))
  + ### DOMSource

    public DOMSource([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") n)

    Create a new input source with a DOM node. The operation
    will be applied to the subtree rooted at this node. In XSLT,
    a "/" pattern still means the root of the tree (not the subtree),
    and the evaluation of global variables and parameters is done
    from the root node also.

    Parameters:
    :   `n` - The DOM node that will contain the Source tree.
  + ### DOMSource

    public DOMSource([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") node,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemID)

    Create a new input source with a DOM node, and with the
    system ID also passed in as the base URI.

    Parameters:
    :   `node` - The DOM node that will contain the Source tree.
    :   `systemID` - Specifies the base URI associated with node.
* ## Method Details

  + ### setNode

    public void setNode([Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") node)

    Set the node that will represents a Source DOM tree.

    Parameters:
    :   `node` - The node that is to be transformed.
  + ### getNode

    public [Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") getNode()

    Get the node that represents a Source DOM tree.

    Returns:
    :   The node that is to be transformed.
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemID)

    Set the base ID (URL or system ID) from where URLs
    will be resolved.

    Specified by:
    :   `setSystemId` in interface `Source`

    Parameters:
    :   `systemID` - Base URL for this DOM tree.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the base ID (URL or system ID) from where URLs
    will be resolved.

    Specified by:
    :   `getSystemId` in interface `Source`

    Returns:
    :   Base URL for this DOM tree.
  + ### isEmpty

    public boolean isEmpty()

    Indicates whether the `DOMSource` object is empty. Empty is
    defined as follows:
    - if the system identifier and node are `null`;
    - if the system identifier is null, and the `node` has no child nodes.

    Specified by:
    :   `isEmpty` in interface `Source`

    Returns:
    :   true if the `DOMSource` object is empty, false otherwise