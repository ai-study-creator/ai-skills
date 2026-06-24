Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.dom](package-summary.md)

# Class DOMSignContext

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.xml.crypto.dom.DOMCryptoContext](../../dom/DOMCryptoContext.md "class in javax.xml.crypto.dom")

javax.xml.crypto.dsig.dom.DOMSignContext

All Implemented Interfaces:
:   `XMLSignContext`, `XMLCryptoContext`

---

public class DOMSignContext
extends [DOMCryptoContext](../../dom/DOMCryptoContext.md "class in javax.xml.crypto.dom")
implements [XMLSignContext](../XMLSignContext.md "interface in javax.xml.crypto.dsig")

A DOM-specific [`XMLSignContext`](../XMLSignContext.md "interface in javax.xml.crypto.dsig"). This class contains additional methods
to specify the location in a DOM tree where an [`XMLSignature`](../XMLSignature.md "interface in javax.xml.crypto.dsig")
object is to be marshalled when generating the signature.

Note that `DOMSignContext` instances can contain
information and state specific to the XML signature structure it is
used with. The results are unpredictable if a
`DOMSignContext` is used with different signature structures
(for example, you should not use the same `DOMSignContext`
instance to sign two different [`XMLSignature`](../XMLSignature.md "interface in javax.xml.crypto.dsig") objects).

Since:
:   1.6

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DOMSignContext(Key signingKey,
  Node parent)`

  Creates a `DOMSignContext` with the specified signing key
  and parent node.

  `DOMSignContext(Key signingKey,
  Node parent,
  Node nextSibling)`

  Creates a `DOMSignContext` with the specified signing key,
  parent and next sibling nodes.

  `DOMSignContext(KeySelector ks,
  Node parent)`

  Creates a `DOMSignContext` with the specified key selector
  and parent node.

  `DOMSignContext(KeySelector ks,
  Node parent,
  Node nextSibling)`

  Creates a `DOMSignContext` with the specified key selector,
  parent and next sibling nodes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getNextSibling()`

  Returns the nextSibling node.

  `Node`

  `getParent()`

  Returns the parent node.

  `void`

  `setNextSibling(Node nextSibling)`

  Sets the next sibling node.

  `void`

  `setParent(Node parent)`

  Sets the parent node.

  ### Methods inherited from class javax.xml.crypto.dom.[DOMCryptoContext](../../dom/DOMCryptoContext.md "class in javax.xml.crypto.dom")

  `get, getBaseURI, getDefaultNamespacePrefix, getElementById, getKeySelector, getNamespacePrefix, getProperty, getURIDereferencer, iterator, put, putNamespacePrefix, setBaseURI, setDefaultNamespacePrefix, setIdAttributeNS, setKeySelector, setProperty, setURIDereferencer`

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.xml.crypto.[XMLCryptoContext](../../XMLCryptoContext.md "interface in javax.xml.crypto")

  `get, getBaseURI, getDefaultNamespacePrefix, getKeySelector, getNamespacePrefix, getProperty, getURIDereferencer, put, putNamespacePrefix, setBaseURI, setDefaultNamespacePrefix, setKeySelector, setProperty, setURIDereferencer`

* ## Constructor Details

  + ### DOMSignContext

    public DOMSignContext([Key](../../../../../../java.base/java/security/Key.md "interface in java.security") signingKey,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") parent)

    Creates a `DOMSignContext` with the specified signing key
    and parent node. The signing key is stored in a
    [`singleton KeySelector`](../../KeySelector.md#singletonKeySelector(java.security.Key)) that is
    returned by the [`getKeySelector`](../../dom/DOMCryptoContext.md#getKeySelector()) method.
    The marshalled `XMLSignature` will be added as the last
    child element of the specified parent node unless a next sibling node is
    specified by invoking the [`setNextSibling`](#setNextSibling(org.w3c.dom.Node)) method.

    Parameters:
    :   `signingKey` - the signing key
    :   `parent` - the parent node

    Throws:
    :   `NullPointerException` - if `signingKey` or
        `parent` is `null`
  + ### DOMSignContext

    public DOMSignContext([Key](../../../../../../java.base/java/security/Key.md "interface in java.security") signingKey,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") parent,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") nextSibling)

    Creates a `DOMSignContext` with the specified signing key,
    parent and next sibling nodes. The signing key is stored in a
    [`singleton KeySelector`](../../KeySelector.md#singletonKeySelector(java.security.Key)) that is
    returned by the [`getKeySelector`](../../dom/DOMCryptoContext.md#getKeySelector()) method.
    The marshalled `XMLSignature` will be inserted as a child
    element of the specified parent node and immediately before the
    specified next sibling node.

    Parameters:
    :   `signingKey` - the signing key
    :   `parent` - the parent node
    :   `nextSibling` - the next sibling node

    Throws:
    :   `NullPointerException` - if `signingKey`,
        `parent` or `nextSibling` is `null`
  + ### DOMSignContext

    public DOMSignContext([KeySelector](../../KeySelector.md "class in javax.xml.crypto") ks,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") parent)

    Creates a `DOMSignContext` with the specified key selector
    and parent node. The marshalled `XMLSignature` will be added
    as the last child element of the specified parent node unless a next
    sibling node is specified by invoking the
    [`setNextSibling`](#setNextSibling(org.w3c.dom.Node)) method.

    Parameters:
    :   `ks` - the key selector
    :   `parent` - the parent node

    Throws:
    :   `NullPointerException` - if `ks` or `parent`
        is `null`
  + ### DOMSignContext

    public DOMSignContext([KeySelector](../../KeySelector.md "class in javax.xml.crypto") ks,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") parent,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") nextSibling)

    Creates a `DOMSignContext` with the specified key selector,
    parent and next sibling nodes. The marshalled `XMLSignature`
    will be inserted as a child element of the specified parent node and
    immediately before the specified next sibling node.

    Parameters:
    :   `ks` - the key selector
    :   `parent` - the parent node
    :   `nextSibling` - the next sibling node

    Throws:
    :   `NullPointerException` - if `ks`, `parent` or
        `nextSibling` is `null`
* ## Method Details

  + ### setParent

    public void setParent([Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") parent)

    Sets the parent node.

    Parameters:
    :   `parent` - the parent node. The marshalled `XMLSignature`
        will be added as a child element of this node.

    Throws:
    :   `NullPointerException` - if `parent` is `null`

    See Also:
    :   - [`getParent()`](#getParent())
  + ### setNextSibling

    public void setNextSibling([Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") nextSibling)

    Sets the next sibling node.

    Parameters:
    :   `nextSibling` - the next sibling node. The marshalled
        `XMLSignature` will be inserted immediately before this
        node. Specify `null` to remove the current setting.

    See Also:
    :   - [`getNextSibling()`](#getNextSibling())
  + ### getParent

    public [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") getParent()

    Returns the parent node.

    Returns:
    :   the parent node (never `null`)

    See Also:
    :   - [`setParent(Node)`](#setParent(org.w3c.dom.Node))
  + ### getNextSibling

    public [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") getNextSibling()

    Returns the nextSibling node.

    Returns:
    :   the nextSibling node, or `null` if not specified.

    See Also:
    :   - [`setNextSibling(Node)`](#setNextSibling(org.w3c.dom.Node))