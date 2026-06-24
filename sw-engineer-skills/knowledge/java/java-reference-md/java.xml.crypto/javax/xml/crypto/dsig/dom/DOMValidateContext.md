Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.dom](package-summary.md)

# Class DOMValidateContext

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.xml.crypto.dom.DOMCryptoContext](../../dom/DOMCryptoContext.md "class in javax.xml.crypto.dom")

javax.xml.crypto.dsig.dom.DOMValidateContext

All Implemented Interfaces:
:   `XMLValidateContext`, `XMLCryptoContext`

---

public class DOMValidateContext
extends [DOMCryptoContext](../../dom/DOMCryptoContext.md "class in javax.xml.crypto.dom")
implements [XMLValidateContext](../XMLValidateContext.md "interface in javax.xml.crypto.dsig")

A DOM-specific [`XMLValidateContext`](../XMLValidateContext.md "interface in javax.xml.crypto.dsig"). This class contains additional
methods to specify the location in a DOM tree where an [`XMLSignature`](../XMLSignature.md "interface in javax.xml.crypto.dsig")
is to be unmarshalled and validated from.

Note that the behavior of an unmarshalled `XMLSignature`
is undefined if the contents of the underlying DOM tree are modified by the
caller after the `XMLSignature` is created.

Also, note that `DOMValidateContext` instances can contain
information and state specific to the XML signature structure it is
used with. The results are unpredictable if a
`DOMValidateContext` is used with different signature structures
(for example, you should not use the same `DOMValidateContext`
instance to validate two different [`XMLSignature`](../XMLSignature.md "interface in javax.xml.crypto.dsig") objects).

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.unmarshalXMLSignature(XMLValidateContext)`](../XMLSignatureFactory.md#unmarshalXMLSignature(javax.xml.crypto.dsig.XMLValidateContext))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DOMValidateContext(Key validatingKey,
  Node node)`

  Creates a `DOMValidateContext` containing the specified key
  and node.

  `DOMValidateContext(KeySelector ks,
  Node node)`

  Creates a `DOMValidateContext` containing the specified key
  selector and node.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getNode()`

  Returns the node.

  `void`

  `setNode(Node node)`

  Sets the node.

  ### Methods inherited from class javax.xml.crypto.dom.[DOMCryptoContext](../../dom/DOMCryptoContext.md "class in javax.xml.crypto.dom")

  `get, getBaseURI, getDefaultNamespacePrefix, getElementById, getKeySelector, getNamespacePrefix, getProperty, getURIDereferencer, iterator, put, putNamespacePrefix, setBaseURI, setDefaultNamespacePrefix, setIdAttributeNS, setKeySelector, setProperty, setURIDereferencer`

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.xml.crypto.[XMLCryptoContext](../../XMLCryptoContext.md "interface in javax.xml.crypto")

  `get, getBaseURI, getDefaultNamespacePrefix, getKeySelector, getNamespacePrefix, getProperty, getURIDereferencer, put, putNamespacePrefix, setBaseURI, setDefaultNamespacePrefix, setKeySelector, setProperty, setURIDereferencer`

* ## Constructor Details

  + ### DOMValidateContext

    public DOMValidateContext([KeySelector](../../KeySelector.md "class in javax.xml.crypto") ks,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") node)

    Creates a `DOMValidateContext` containing the specified key
    selector and node.

    Parameters:
    :   `ks` - a key selector for finding a validation key
    :   `node` - the node

    Throws:
    :   `NullPointerException` - if `ks` or `node` is
        `null`
  + ### DOMValidateContext

    public DOMValidateContext([Key](../../../../../../java.base/java/security/Key.md "interface in java.security") validatingKey,
    [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") node)

    Creates a `DOMValidateContext` containing the specified key
    and node. The validating key will be stored in a
    [`singleton KeySelector`](../../KeySelector.md#singletonKeySelector(java.security.Key)) that
    is returned when the [`getKeySelector`](../../dom/DOMCryptoContext.md#getKeySelector())
    method is called.

    Parameters:
    :   `validatingKey` - the validating key
    :   `node` - the node

    Throws:
    :   `NullPointerException` - if `validatingKey` or
        `node` is `null`
* ## Method Details

  + ### setNode

    public void setNode([Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") node)

    Sets the node.

    Parameters:
    :   `node` - the node

    Throws:
    :   `NullPointerException` - if `node` is `null`

    See Also:
    :   - [`getNode()`](#getNode())
  + ### getNode

    public [Node](../../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") getNode()

    Returns the node.

    Returns:
    :   the node (never `null`)

    See Also:
    :   - [`setNode(Node)`](#setNode(org.w3c.dom.Node))