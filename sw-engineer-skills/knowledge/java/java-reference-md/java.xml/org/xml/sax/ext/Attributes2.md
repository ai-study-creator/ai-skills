Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.ext](package-summary.md)

# Interface Attributes2

All Superinterfaces:
:   `Attributes`

All Known Implementing Classes:
:   `Attributes2Impl`

---

public interface Attributes2
extends [Attributes](../Attributes.md "interface in org.xml.sax")

SAX2 extension to augment the per-attribute information
provided through [`Attributes`](../Attributes.md "interface in org.xml.sax").
If an implementation supports this extension, the attributes
provided in [`ContentHandler.startElement()`](../ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes))  will implement this interface,
and the *http://xml.org/sax/features/use-attributes2*
feature flag will have the value *true*.

XMLReader implementations are not required to support this
information, and it is not part of core-only SAX2 distributions.

Note that if an attribute was defaulted (*!isSpecified()*)
it will of necessity also have been declared (*isDeclared()*)
in the DTD.
Similarly if an attribute's type is anything except CDATA, then it
must have been declared.

Since:
:   1.5, SAX 2.0 (extensions 1.1 alpha)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isDeclared(int index)`

  Returns false unless the attribute was declared in the DTD.

  `boolean`

  `isDeclared(String qName)`

  Returns false unless the attribute was declared in the DTD.

  `boolean`

  `isDeclared(String uri,
  String localName)`

  Returns false unless the attribute was declared in the DTD.

  `boolean`

  `isSpecified(int index)`

  Returns true unless the attribute value was provided
  by DTD defaulting.

  `boolean`

  `isSpecified(String qName)`

  Returns true unless the attribute value was provided
  by DTD defaulting.

  `boolean`

  `isSpecified(String uri,
  String localName)`

  Returns true unless the attribute value was provided
  by DTD defaulting.

  ### Methods inherited from interface org.xml.sax.[Attributes](../Attributes.md "interface in org.xml.sax")

  `getIndex, getIndex, getLength, getLocalName, getQName, getType, getType, getType, getURI, getValue, getValue, getValue`

* ## Method Details

  + ### isDeclared

    boolean isDeclared(int index)

    Returns false unless the attribute was declared in the DTD.
    This helps distinguish two kinds of attributes that SAX reports
    as CDATA: ones that were declared (and hence are usually valid),
    and those that were not (and which are never valid).

    Parameters:
    :   `index` - The attribute index (zero-based).

    Returns:
    :   true if the attribute was declared in the DTD,
        false otherwise.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not identify an attribute.
  + ### isDeclared

    boolean isDeclared([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Returns false unless the attribute was declared in the DTD.
    This helps distinguish two kinds of attributes that SAX reports
    as CDATA: ones that were declared (and hence are usually valid),
    and those that were not (and which are never valid).

    Parameters:
    :   `qName` - The XML qualified (prefixed) name.

    Returns:
    :   true if the attribute was declared in the DTD,
        false otherwise.

    Throws:
    :   `IllegalArgumentException` - When the
        supplied name does not identify an attribute.
  + ### isDeclared

    boolean isDeclared([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Returns false unless the attribute was declared in the DTD.
    This helps distinguish two kinds of attributes that SAX reports
    as CDATA: ones that were declared (and hence are usually valid),
    and those that were not (and which are never valid).

    Remember that since DTDs do not "understand" namespaces, the
    namespace URI associated with an attribute may not have come from
    the DTD. The declaration will have applied to the attribute's
    *qName*.

    Parameters:
    :   `uri` - The Namespace URI, or the empty string if
        the name has no Namespace URI.
    :   `localName` - The attribute's local name.

    Returns:
    :   true if the attribute was declared in the DTD,
        false otherwise.

    Throws:
    :   `IllegalArgumentException` - When the
        supplied names do not identify an attribute.
  + ### isSpecified

    boolean isSpecified(int index)

    Returns true unless the attribute value was provided
    by DTD defaulting.

    Parameters:
    :   `index` - The attribute index (zero-based).

    Returns:
    :   true if the value was found in the XML text,
        false if the value was provided by DTD defaulting.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not identify an attribute.
  + ### isSpecified

    boolean isSpecified([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Returns true unless the attribute value was provided
    by DTD defaulting.

    Remember that since DTDs do not "understand" namespaces, the
    namespace URI associated with an attribute may not have come from
    the DTD. The declaration will have applied to the attribute's
    *qName*.

    Parameters:
    :   `uri` - The Namespace URI, or the empty string if
        the name has no Namespace URI.
    :   `localName` - The attribute's local name.

    Returns:
    :   true if the value was found in the XML text,
        false if the value was provided by DTD defaulting.

    Throws:
    :   `IllegalArgumentException` - When the
        supplied names do not identify an attribute.
  + ### isSpecified

    boolean isSpecified([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Returns true unless the attribute value was provided
    by DTD defaulting.

    Parameters:
    :   `qName` - The XML qualified (prefixed) name.

    Returns:
    :   true if the value was found in the XML text,
        false if the value was provided by DTD defaulting.

    Throws:
    :   `IllegalArgumentException` - When the
        supplied name does not identify an attribute.