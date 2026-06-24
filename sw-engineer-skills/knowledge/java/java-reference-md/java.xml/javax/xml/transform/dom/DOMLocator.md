Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.dom](package-summary.md)

# Interface DOMLocator

All Superinterfaces:
:   `SourceLocator`

---

public interface DOMLocator
extends [SourceLocator](../SourceLocator.md "interface in javax.xml.transform")

Indicates the position of a node in a source DOM, intended
primarily for error reporting. To use a DOMLocator, the receiver of an
error must downcast the [`SourceLocator`](../SourceLocator.md "interface in javax.xml.transform")
object returned by an exception. A [`Transformer`](../Transformer.md "class in javax.xml.transform")
may use this object for purposes other than error reporting, for instance,
to indicate the source node that originated a result node.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Node`

  `getOriginatingNode()`

  Return the node where the event occurred.

  ### Methods inherited from interface javax.xml.transform.[SourceLocator](../SourceLocator.md "interface in javax.xml.transform")

  `getColumnNumber, getLineNumber, getPublicId, getSystemId`

* ## Method Details

  + ### getOriginatingNode

    [Node](../../../../org/w3c/dom/Node.md "interface in org.w3c.dom") getOriginatingNode()

    Return the node where the event occurred.

    Returns:
    :   The node that is the location for the event.