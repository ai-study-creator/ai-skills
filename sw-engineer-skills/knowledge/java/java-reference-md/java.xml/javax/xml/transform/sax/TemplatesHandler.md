Module [java.xml](../../../../module-summary.md)

Package [javax.xml.transform.sax](package-summary.md)

# Interface TemplatesHandler

All Superinterfaces:
:   `ContentHandler`

---

public interface TemplatesHandler
extends [ContentHandler](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")

A SAX ContentHandler that may be used to process SAX
parse events (parsing transformation instructions) into a Templates object.

Note that TemplatesHandler does not need to implement LexicalHandler.

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

  `Templates`

  `getTemplates()`

  When a TemplatesHandler object is used as a ContentHandler
  for the parsing of transformation instructions, it creates a Templates object,
  which the caller can get once the SAX events have been completed.

  `void`

  `setSystemId(String systemID)`

  Set the base ID (URI or system ID) for the Templates object
  created by this builder.

  ### Methods inherited from interface org.xml.sax.[ContentHandler](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")

  `characters, declaration, endDocument, endElement, endPrefixMapping, ignorableWhitespace, processingInstruction, setDocumentLocator, skippedEntity, startDocument, startElement, startPrefixMapping`

* ## Method Details

  + ### getTemplates

    [Templates](../Templates.md "interface in javax.xml.transform") getTemplates()

    When a TemplatesHandler object is used as a ContentHandler
    for the parsing of transformation instructions, it creates a Templates object,
    which the caller can get once the SAX events have been completed.

    Returns:
    :   The Templates object that was created during
        the SAX event process, or null if no Templates object has
        been created.
  + ### setSystemId

    void setSystemId([String](../../../../../java.base/java/lang/String.md "class in java.lang") systemID)

    Set the base ID (URI or system ID) for the Templates object
    created by this builder. This must be set in order to
    resolve relative URIs in the stylesheet. This must be
    called before the startDocument event.

    Parameters:
    :   `systemID` - Base URI for this stylesheet.
  + ### getSystemId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the base ID (URI or system ID) from where relative
    URLs will be resolved.

    Returns:
    :   The systemID that was set with [`setSystemId(java.lang.String)`](#setSystemId(java.lang.String)).