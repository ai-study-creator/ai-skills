Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dom](package-summary.md)

# Class DOMStructure

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dom.DOMStructure

All Implemented Interfaces:
:   `XMLStructure`

---

public class DOMStructure
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [XMLStructure](../XMLStructure.md "interface in javax.xml.crypto")

A DOM-specific [`XMLStructure`](../XMLStructure.md "interface in javax.xml.crypto"). The purpose of this class is to
allow a DOM node to be used to represent extensible content (any elements
or mixed content) in XML Signature structures.

If a sequence of nodes is needed, the node contained in the
`DOMStructure` is the first node of the sequence and successive
nodes can be accessed by invoking [`Node.getNextSibling()`](../../../../../java.xml/org/w3c/dom/Node.md#getNextSibling()).

If the owner document of the `DOMStructure` is different than
the target document of an `XMLSignature`, the
[`XMLSignature.sign(XMLSignContext)`](../dsig/XMLSignature.md#sign(javax.xml.crypto.dsig.XMLSignContext)) method imports the node into the
target document before generating the signature.

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DOMStructure(Node node)`

  Creates a `DOMStructure` containing the specified node.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getNode()`

  Returns the node contained in this `DOMStructure`.

  `boolean`

  `isFeatureSupported(String feature)`

  Indicates whether a specified feature is supported.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DOMStructure

    public DOMStructure([Node](../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") node)

    Creates a `DOMStructure` containing the specified node.

    Parameters:
    :   `node` - the node

    Throws:
    :   `NullPointerException` - if `node` is `null`
* ## Method Details

  + ### getNode

    public [Node](../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") getNode()

    Returns the node contained in this `DOMStructure`.

    Returns:
    :   the node
  + ### isFeatureSupported

    public boolean isFeatureSupported([String](../../../../../java.base/java/lang/String.md "class in java.lang") feature)

    Description copied from interface: `XMLStructure`

    Indicates whether a specified feature is supported.

    Specified by:
    :   `isFeatureSupported` in interface `XMLStructure`

    Parameters:
    :   `feature` - the feature name (as an absolute URI)

    Returns:
    :   `true` if the specified feature is supported,
        `false` otherwise

    Throws:
    :   `NullPointerException` - if `feature` is `null`