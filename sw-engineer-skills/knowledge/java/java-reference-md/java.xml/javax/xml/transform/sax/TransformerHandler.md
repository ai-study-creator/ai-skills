Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.sax](package-summary.md)

# Interface TransformerHandler

All Superinterfaces:
:   `ContentHandler`, `DTDHandler`, `LexicalHandler`

---

public interface TransformerHandler
extends [ContentHandler](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax"), [LexicalHandler](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext"), [DTDHandler](../../../../org/xml/sax/DTDHandler.md "interface in org.xml.sax")

A TransformerHandler
listens for SAX ContentHandler parse events and transforms
them to a Result.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getSystemId()`

  Get the base ID (URI or system ID) from where relative
  URLs will be resolved.

  `Transformer`

  `getTransformer()`

  Get the `Transformer` associated with this handler, which
  is needed in order to set parameters and output properties.

  `void`

  `setResult(Result result)`

  Set the `Result` associated with this
  `TransformerHandler` to be used for the transformation.

  `void`

  `setSystemId(String systemID)`

  Set the base ID (URI or system ID) from where relative
  URLs will be resolved.

  ### Methods inherited from interface org.xml.sax.[ContentHandler](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")

  `characters, declaration, endDocument, endElement, endPrefixMapping, ignorableWhitespace, processingInstruction, setDocumentLocator, skippedEntity, startDocument, startElement, startPrefixMapping`

  ### Methods inherited from interface org.xml.sax.[DTDHandler](../../../../org/xml/sax/DTDHandler.md "interface in org.xml.sax")

  `notationDecl, unparsedEntityDecl`

  ### Methods inherited from interface org.xml.sax.ext.[LexicalHandler](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext")

  `comment, endCDATA, endDTD, endEntity, startCDATA, startDTD, startEntity`

* ## Method Details

  + ### setResult

    void setResult([Result](../Result.md "interface in javax.xml.transform") result)
    throws [IllegalArgumentException](../../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Set the `Result` associated with this
    `TransformerHandler` to be used for the transformation.

    Parameters:
    :   `result` - A `Result` instance, should not be
        `null`.

    Throws:
    :   `IllegalArgumentException` - if result is invalid for some reason.
  + ### setSystemId

    void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemID)

    Set the base ID (URI or system ID) from where relative
    URLs will be resolved.

    Parameters:
    :   `systemID` - Base URI for the source tree.
  + ### getSystemId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the base ID (URI or system ID) from where relative
    URLs will be resolved.

    Returns:
    :   The systemID that was set with [`setSystemId(java.lang.String)`](#setSystemId(java.lang.String)).
  + ### getTransformer

    [Transformer](../Transformer.md "class in javax.xml.transform") getTransformer()

    Get the `Transformer` associated with this handler, which
    is needed in order to set parameters and output properties.

    Returns:
    :   `Transformer` associated with this
        `TransformerHandler`.