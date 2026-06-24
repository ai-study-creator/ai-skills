Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.ext](package-summary.md)

# Interface Locator2

All Superinterfaces:
:   `Locator`

All Known Implementing Classes:
:   `Locator2Impl`

---

public interface Locator2
extends [Locator](../Locator.md "interface in org.xml.sax")

SAX2 extension to augment the entity information provided
through a [`Locator`](../Locator.md "interface in org.xml.sax").
If an implementation supports this extension, the Locator
provided in [`ContentHandler.setDocumentLocator()`](../ContentHandler.md#setDocumentLocator(org.xml.sax.Locator))  will implement this
interface, and the
*http://xml.org/sax/features/use-locator2* feature
flag will have the value *true*.

XMLReader implementations are not required to support this
information, and it is not part of core-only SAX2 distributions.

Since:
:   1.5, SAX 2.0 (extensions 1.1 alpha)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getEncoding()`

  Returns the name of the character encoding for the entity.

  `String`

  `getXMLVersion()`

  Returns the version of XML used for the entity.

  ### Methods inherited from interface org.xml.sax.[Locator](../Locator.md "interface in org.xml.sax")

  `getColumnNumber, getLineNumber, getPublicId, getSystemId`

* ## Method Details

  + ### getXMLVersion

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getXMLVersion()

    Returns the version of XML used for the entity. This will
    normally be the identifier from the current entity's
    *<?xml version='...' ...?>* declaration,
    or be defaulted by the parser.

    Returns:
    :   Identifier for the XML version being used to interpret
        the entity's text, or null if that information is not yet
        available in the current parsing state.
  + ### getEncoding

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getEncoding()

    Returns the name of the character encoding for the entity.
    If the encoding was declared externally (for example, in a MIME
    Content-Type header), that will be the name returned. Else if there
    was an *<?xml ...encoding='...'?>* declaration at
    the start of the document, that encoding name will be returned.
    Otherwise the encoding will been inferred (normally to be UTF-8, or
    some UTF-16 variant), and that inferred name will be returned.

    When an [`InputSource`](../InputSource.md "class in org.xml.sax") is used
    to provide an entity's character stream, this method returns the
    encoding provided in that input stream.

    Note that some recent W3C specifications require that text
    in some encodings be normalized, using Unicode Normalization
    Form C, before processing. Such normalization must be performed
    by applications, and would normally be triggered based on the
    value returned by this method.

    Encoding names may be those used by the underlying JVM,
    and comparisons should be case-insensitive.

    Returns:
    :   Name of the character encoding being used to interpret
        \* the entity's text, or null if this was not provided for a \*
        character stream passed through an InputSource or is otherwise
        not yet available in the current parsing state.