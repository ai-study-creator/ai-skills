Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface DOMLocator

---

public interface DOMLocator

`DOMLocator` is an interface that describes a location (e.g.
where an error occurred).

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

Since:
:   1.5, DOM Level 3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getByteOffset()`

  The byte offset into the input source this locator is pointing to or
  `-1` if there is no byte offset available.

  `int`

  `getColumnNumber()`

  The column number this locator is pointing to, or `-1` if
  there is no column number available.

  `int`

  `getLineNumber()`

  The line number this locator is pointing to, or `-1` if
  there is no column number available.

  `Node`

  `getRelatedNode()`

  The node this locator is pointing to, or `null` if no node
  is available.

  `String`

  `getUri()`

  The URI this locator is pointing to, or `null` if no URI is
  available.

  `int`

  `getUtf16Offset()`

  The UTF-16, as defined in [Unicode] and Amendment 1 of [ISO/IEC 10646], offset into the input source this locator is pointing to or
  `-1` if there is no UTF-16 offset available.

* ## Method Details

  + ### getLineNumber

    int getLineNumber()

    The line number this locator is pointing to, or `-1` if
    there is no column number available.
  + ### getColumnNumber

    int getColumnNumber()

    The column number this locator is pointing to, or `-1` if
    there is no column number available.
  + ### getByteOffset

    int getByteOffset()

    The byte offset into the input source this locator is pointing to or
    `-1` if there is no byte offset available.
  + ### getUtf16Offset

    int getUtf16Offset()

    The UTF-16, as defined in [Unicode] and Amendment 1 of [ISO/IEC 10646], offset into the input source this locator is pointing to or
    `-1` if there is no UTF-16 offset available.
  + ### getRelatedNode

    [Node](Node.md "interface in org.w3c.dom") getRelatedNode()

    The node this locator is pointing to, or `null` if no node
    is available.
  + ### getUri

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getUri()

    The URI this locator is pointing to, or `null` if no URI is
    available.