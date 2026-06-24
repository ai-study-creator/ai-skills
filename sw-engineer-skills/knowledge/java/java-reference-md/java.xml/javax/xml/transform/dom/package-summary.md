Module [java.xml](../../../../module-summary.md)

# Package javax.xml.transform.dom

---

package javax.xml.transform.dom

Provides DOM specific transformation classes.

The [`DOMSource`](DOMSource.md "class in javax.xml.transform.dom") class allows the
client of the implementation of this API to specify a DOM
[`Node`](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") as the source of the input tree. The model of
how the Transformer deals with the DOM tree in terms of mismatches with the
[XSLT data model](http://www.w3.org/TR/xslt#data-model) or
other data models is beyond the scope of this document. Any of the nodes
derived from [`Node`](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") are legal input.

The [`DOMResult`](DOMResult.md "class in javax.xml.transform.dom") class allows
a [`Node`](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") to be specified to which result DOM nodes will
be appended. If an output node is not specified, the transformer will use
[`DocumentBuilder.newDocument()`](../../parsers/DocumentBuilder.md#newDocument()) to create an
output [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom") node. If a node is specified, it
should be one of the following: [`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom"),
[`Element`](../../../../org/w3c/dom/Element.md "interface in org.w3c.dom"), or
[`DocumentFragment`](../../../../org/w3c/dom/DocumentFragment.md "interface in org.w3c.dom"). Specification of any other node
type is implementation dependent and undefined by this API. If the result is a
[`Document`](../../../../org/w3c/dom/Document.md "interface in org.w3c.dom"), the output of the transformation must have
a single element root to set as the document element.

The [`DOMLocator`](DOMLocator.md "interface in javax.xml.transform.dom") node may be passed
to [`TransformerException`](../TransformerException.md "class in javax.xml.transform") objects, and
retrieved by trying to cast the result of the
[`TransformerException.getLocator()`](../TransformerException.md#getLocator()) method.
The implementation has no responsibility to use a DOMLocator instead of a
[`SourceLocator`](../SourceLocator.md "interface in javax.xml.transform") (though line numbers and the
like do not make much sense for a DOM), so the result of getLocator must always
be tested with an instanceof.

Since:
:   1.5

* Related Packages

  Package

  Description

  [javax.xml.transform](../package-summary.md)

  Defines the generic APIs for processing transformation instructions,
  and performing a transformation from source to result.

  [javax.xml.transform.sax](../sax/package-summary.md)

  Provides SAX specific transformation classes.

  [javax.xml.transform.stax](../stax/package-summary.md)

  Provides StAX specific transformation classes.

  [javax.xml.transform.stream](../stream/package-summary.md)

  Provides stream and URI specific transformation classes.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [DOMLocator](DOMLocator.md "interface in javax.xml.transform.dom")

  Indicates the position of a node in a source DOM, intended
  primarily for error reporting.

  [DOMResult](DOMResult.md "class in javax.xml.transform.dom")

  Acts as a holder for a transformation result tree
  in the form of a Document Object Model (DOM) tree.

  [DOMSource](DOMSource.md "class in javax.xml.transform.dom")

  Acts as a holder for a transformation Source tree in the
  form of a Document Object Model (DOM) tree.