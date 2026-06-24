Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.sax](package-summary.md)

# Class SAXResult

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.transform.sax.SAXResult

All Implemented Interfaces:
:   `Result`

---

public class SAXResult
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Result](../Result.md "interface in javax.xml.transform")

Acts as an holder for a transformation Result.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `FEATURE`

  If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
  returns true when passed this value as an argument,
  the Transformer supports Result output of this type.

  ### Fields inherited from interface javax.xml.transform.[Result](../Result.md "interface in javax.xml.transform")

  `PI_DISABLE_OUTPUT_ESCAPING, PI_ENABLE_OUTPUT_ESCAPING`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SAXResult()`

  Zero-argument default constructor.

  `SAXResult(ContentHandler handler)`

  Create a SAXResult that targets a SAX2 [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ContentHandler`

  `getHandler()`

  Get the [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") that is the Result.

  `LexicalHandler`

  `getLexicalHandler()`

  Get a SAX2 [`LexicalHandler`](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext") for the output.

  `String`

  `getSystemId()`

  Get the system identifier that was set with setSystemId.

  `void`

  `setHandler(ContentHandler handler)`

  Set the target to be a SAX2 [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").

  `void`

  `setLexicalHandler(LexicalHandler handler)`

  Set the SAX2 [`LexicalHandler`](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext") for the output.

  `void`

  `setSystemId(String systemId)`

  Method setSystemId Set the systemID that may be used in association
  with the [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FEATURE

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") FEATURE

    If [`TransformerFactory.getFeature(java.lang.String)`](../TransformerFactory.md#getFeature(java.lang.String))
    returns true when passed this value as an argument,
    the Transformer supports Result output of this type.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.xml.transform.sax.SAXResult.FEATURE)
* ## Constructor Details

  + ### SAXResult

    public SAXResult()

    Zero-argument default constructor.
  + ### SAXResult

    public SAXResult([ContentHandler](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") handler)

    Create a SAXResult that targets a SAX2 [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").

    Parameters:
    :   `handler` - Must be a non-null ContentHandler reference.
* ## Method Details

  + ### setHandler

    public void setHandler([ContentHandler](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") handler)

    Set the target to be a SAX2 [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").

    Parameters:
    :   `handler` - Must be a non-null ContentHandler reference.
  + ### getHandler

    public [ContentHandler](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") getHandler()

    Get the [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") that is the Result.

    Returns:
    :   The ContentHandler that is to be transformation output.
  + ### setLexicalHandler

    public void setLexicalHandler([LexicalHandler](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext") handler)

    Set the SAX2 [`LexicalHandler`](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext") for the output.

    This is needed to handle XML comments and the like. If the
    lexical handler is not set, an attempt should be made by the
    transformer to cast the [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") to a
    `LexicalHandler`.

    Parameters:
    :   `handler` - A non-null `LexicalHandler` for
        handling lexical parse events.
  + ### getLexicalHandler

    public [LexicalHandler](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext") getLexicalHandler()

    Get a SAX2 [`LexicalHandler`](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext") for the output.

    Returns:
    :   A `LexicalHandler`, or null.
  + ### setSystemId

    public void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Method setSystemId Set the systemID that may be used in association
    with the [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax").

    Specified by:
    :   `setSystemId` in interface `Result`

    Parameters:
    :   `systemId` - The system identifier as a URI string.
  + ### getSystemId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the system identifier that was set with setSystemId.

    Specified by:
    :   `getSystemId` in interface `Result`

    Returns:
    :   The system identifier that was set with setSystemId, or null
        if setSystemId was not called.