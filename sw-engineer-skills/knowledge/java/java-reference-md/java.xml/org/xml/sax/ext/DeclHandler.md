Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.ext](package-summary.md)

# Interface DeclHandler

All Known Implementing Classes:
:   `DefaultHandler2`

---

public interface DeclHandler

SAX2 extension handler for DTD declaration events.

This is an optional extension handler for SAX2 to provide more
complete information about DTD declarations in an XML document.
XML readers are not required to recognize this handler, and it
is not part of core-only SAX2 distributions.

Note that data-related DTD declarations (unparsed entities and
notations) are already reported through the [`DTDHandler`](../DTDHandler.md "interface in org.xml.sax") interface.

If you are using the declaration handler together with a lexical
handler, all of the events will occur between the
[`startDTD`](LexicalHandler.md#startDTD(java.lang.String,java.lang.String,java.lang.String)) and the
[`endDTD`](LexicalHandler.md#endDTD()) events.

To set the DeclHandler for an XML reader, use the
[`setProperty`](../XMLReader.md#setProperty(java.lang.String,java.lang.Object)) method
with the property name
`http://xml.org/sax/properties/declaration-handler`
and an object implementing this interface (or null) as the value.
If the reader does not report declaration events, it will throw a
[`SAXNotRecognizedException`](../SAXNotRecognizedException.md "class in org.xml.sax")
when you attempt to register the handler.

Since:
:   1.4, SAX 2.0 (extensions 1.0)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `attributeDecl(String eName,
  String aName,
  String type,
  String mode,
  String value)`

  Report an attribute type declaration.

  `void`

  `elementDecl(String name,
  String model)`

  Report an element type declaration.

  `void`

  `externalEntityDecl(String name,
  String publicId,
  String systemId)`

  Report a parsed external entity declaration.

  `void`

  `internalEntityDecl(String name,
  String value)`

  Report an internal entity declaration.

* ## Method Details

  + ### elementDecl

    void elementDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") model)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Report an element type declaration.

    The content model will consist of the string "EMPTY", the
    string "ANY", or a parenthesised group, optionally followed
    by an occurrence indicator. The model will be normalized so
    that all parameter entities are fully resolved and all whitespace
    is removed, and will include the enclosing parentheses. Other
    normalization (such as removing redundant parentheses or
    simplifying occurrence indicators) is at the discretion of the
    parser.

    Parameters:
    :   `name` - The element type name.
    :   `model` - The content model as a normalized string.

    Throws:
    :   `SAXException` - The application may raise an exception.
  + ### attributeDecl

    void attributeDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") eName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") aName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") mode,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Report an attribute type declaration.

    Only the effective (first) declaration for an attribute will
    be reported. The type will be one of the strings "CDATA",
    "ID", "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY",
    "ENTITIES", a parenthesized token group with
    the separator "|" and all whitespace removed, or the word
    "NOTATION" followed by a space followed by a parenthesized
    token group with all whitespace removed.

    The value will be the value as reported to applications,
    appropriately normalized and with entity and character
    references expanded.

    Parameters:
    :   `eName` - The name of the associated element.
    :   `aName` - The name of the attribute.
    :   `type` - A string representing the attribute type.
    :   `mode` - A string representing the attribute defaulting mode
        ("#IMPLIED", "#REQUIRED", or "#FIXED") or null if
        none of these applies.
    :   `value` - A string representing the attribute's default value,
        or null if there is none.

    Throws:
    :   `SAXException` - The application may raise an exception.
  + ### internalEntityDecl

    void internalEntityDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Report an internal entity declaration.

    Only the effective (first) declaration for each entity
    will be reported. All parameter entities in the value
    will be expanded, but general entities will not.

    Parameters:
    :   `name` - The name of the entity. If it is a parameter
        entity, the name will begin with '%'.
    :   `value` - The replacement text of the entity.

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`externalEntityDecl(java.lang.String, java.lang.String, java.lang.String)`](#externalEntityDecl(java.lang.String,java.lang.String,java.lang.String))
        - [`DTDHandler.unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](../DTDHandler.md#unparsedEntityDecl(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
  + ### externalEntityDecl

    void externalEntityDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Report a parsed external entity declaration.

    Only the effective (first) declaration for each entity
    will be reported.

    If the system identifier is a URL, the parser must resolve it
    fully before passing it to the application.

    Parameters:
    :   `name` - The name of the entity. If it is a parameter
        entity, the name will begin with '%'.
    :   `publicId` - The entity's public identifier, or null if none
        was given.
    :   `systemId` - The entity's system identifier.

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`internalEntityDecl(java.lang.String, java.lang.String)`](#internalEntityDecl(java.lang.String,java.lang.String))
        - [`DTDHandler.unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](../DTDHandler.md#unparsedEntityDecl(java.lang.String,java.lang.String,java.lang.String,java.lang.String))