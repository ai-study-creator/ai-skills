Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dom](package-summary.md)

# Interface DOMURIReference

All Superinterfaces:
:   `URIReference`

---

public interface DOMURIReference
extends [URIReference](../URIReference.md "interface in javax.xml.crypto")

A DOM-specific [`URIReference`](../URIReference.md "interface in javax.xml.crypto"). The purpose of this class is to
provide additional context necessary for resolving XPointer URIs or
same-document references.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getHere()`

  Returns the here node.

  ### Methods inherited from interface javax.xml.crypto.[URIReference](../URIReference.md "interface in javax.xml.crypto")

  `getType, getURI`

* ## Method Details

  + ### getHere

    [Node](../../../../../java.xml/org/w3c/dom/Node.md "interface in org.w3c.dom") getHere()

    Returns the here node.

    Returns:
    :   the attribute or processing instruction node or the
        parent element of the text node that directly contains the URI