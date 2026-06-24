Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.ext](package-summary.md)

# Class DefaultHandler2

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[org.xml.sax.helpers.DefaultHandler](../helpers/DefaultHandler.md "class in org.xml.sax.helpers")

org.xml.sax.ext.DefaultHandler2

All Implemented Interfaces:
:   `ContentHandler`, `DTDHandler`, `EntityResolver`, `ErrorHandler`, `DeclHandler`, `EntityResolver2`, `LexicalHandler`

---

public class DefaultHandler2
extends [DefaultHandler](../helpers/DefaultHandler.md "class in org.xml.sax.helpers")
implements [LexicalHandler](LexicalHandler.md "interface in org.xml.sax.ext"), [DeclHandler](DeclHandler.md "interface in org.xml.sax.ext"), [EntityResolver2](EntityResolver2.md "interface in org.xml.sax.ext")

This class extends the SAX2 base handler class to support the
SAX2 [`LexicalHandler`](LexicalHandler.md "interface in org.xml.sax.ext"), [`DeclHandler`](DeclHandler.md "interface in org.xml.sax.ext"), and
[`EntityResolver2`](EntityResolver2.md "interface in org.xml.sax.ext") extensions. Except for overriding the
original SAX1 [`resolveEntity()`](../helpers/DefaultHandler.md#resolveEntity(java.lang.String,java.lang.String))
method the added handler methods just return. Subclassers may
override everything on a method-by-method basis.

*Note:* this class might yet learn that the
*ContentHandler.setDocumentLocator()* call might be passed a
[`Locator2`](Locator2.md "interface in org.xml.sax.ext") object, and that the
*ContentHandler.startElement()* call might be passed a
[`Attributes2`](Attributes2.md "interface in org.xml.sax.ext") object.

Since:
:   1.5, SAX 2.0 (extensions 1.1 alpha)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultHandler2()`

  Constructs a handler which ignores all parsing events.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  `comment(char[] ch,
  int start,
  int length)`

  Report an XML comment anywhere in the document.

  `void`

  `elementDecl(String name,
  String model)`

  Report an element type declaration.

  `void`

  `endCDATA()`

  Report the end of a CDATA section.

  `void`

  `endDTD()`

  Report the end of DTD declarations.

  `void`

  `endEntity(String name)`

  Report the end of an entity.

  `void`

  `externalEntityDecl(String name,
  String publicId,
  String systemId)`

  Report a parsed external entity declaration.

  `InputSource`

  `getExternalSubset(String name,
  String baseURI)`

  Tells the parser that if no external subset has been declared
  in the document text, none should be used.

  `void`

  `internalEntityDecl(String name,
  String value)`

  Report an internal entity declaration.

  `InputSource`

  `resolveEntity(String publicId,
  String systemId)`

  Invokes
  [`EntityResolver2.resolveEntity()`](EntityResolver2.md#resolveEntity(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
  with null entity name and base URI.

  `InputSource`

  `resolveEntity(String name,
  String publicId,
  String baseURI,
  String systemId)`

  Tells the parser to resolve the systemId against the baseURI
  and read the entity text from that resulting absolute URI.

  `void`

  `startCDATA()`

  Report the start of a CDATA section.

  `void`

  `startDTD(String name,
  String publicId,
  String systemId)`

  Report the start of DTD declarations, if any.

  `void`

  `startEntity(String name)`

  Report the beginning of some internal and external XML entities.

  ### Methods inherited from class org.xml.sax.helpers.[DefaultHandler](../helpers/DefaultHandler.md "class in org.xml.sax.helpers")

  `characters, endDocument, endElement, endPrefixMapping, error, fatalError, ignorableWhitespace, notationDecl, processingInstruction, setDocumentLocator, skippedEntity, startDocument, startElement, startPrefixMapping, unparsedEntityDecl, warning`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface org.xml.sax.[ContentHandler](../ContentHandler.md "interface in org.xml.sax")

  `declaration`

* ## Constructor Details

  + ### DefaultHandler2

    public DefaultHandler2()

    Constructs a handler which ignores all parsing events.
* ## Method Details

  + ### startCDATA

    public void startCDATA()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `LexicalHandler`

    Report the start of a CDATA section.

    The contents of the CDATA section will be reported through
    the regular [`characters`](../ContentHandler.md#characters(char%5B%5D,int,int)) event; this event is intended only to report
    the boundary.

    Specified by:
    :   `startCDATA` in interface `LexicalHandler`

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`LexicalHandler.endCDATA()`](LexicalHandler.md#endCDATA())
  + ### endCDATA

    public void endCDATA()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `LexicalHandler`

    Report the end of a CDATA section.

    Specified by:
    :   `endCDATA` in interface `LexicalHandler`

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`LexicalHandler.startCDATA()`](LexicalHandler.md#startCDATA())
  + ### startDTD

    public void startDTD([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `LexicalHandler`

    Report the start of DTD declarations, if any.

    This method is intended to report the beginning of the
    DOCTYPE declaration; if the document has no DOCTYPE declaration,
    this method will not be invoked.

    All declarations reported through
    [`DTDHandler`](../DTDHandler.md "interface in org.xml.sax") or
    [`DeclHandler`](DeclHandler.md "interface in org.xml.sax.ext") events must appear
    between the startDTD and [`endDTD`](LexicalHandler.md#endDTD()) events.
    Declarations are assumed to belong to the internal DTD subset
    unless they appear between [`startEntity`](LexicalHandler.md#startEntity(java.lang.String))
    and [`endEntity`](LexicalHandler.md#endEntity(java.lang.String)) events. Comments and
    processing instructions from the DTD should also be reported
    between the startDTD and endDTD events, in their original
    order of (logical) occurrence; they are not required to
    appear in their correct locations relative to DTDHandler
    or DeclHandler events, however.

    Note that the start/endDTD events will appear within
    the start/endDocument events from ContentHandler and
    before the first
    [`startElement`](../ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes))
    event.

    Specified by:
    :   `startDTD` in interface `LexicalHandler`

    Parameters:
    :   `name` - The document type name.
    :   `publicId` - The declared public identifier for the
        external DTD subset, or null if none was declared.
    :   `systemId` - The declared system identifier for the
        external DTD subset, or null if none was declared.
        (Note that this is not resolved against the document
        base URI.)

    Throws:
    :   `SAXException` - The application may raise an
        exception.

    See Also:
    :   - [`LexicalHandler.endDTD()`](LexicalHandler.md#endDTD())
        - [`LexicalHandler.startEntity(java.lang.String)`](LexicalHandler.md#startEntity(java.lang.String))
  + ### endDTD

    public void endDTD()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `LexicalHandler`

    Report the end of DTD declarations.

    This method is intended to report the end of the
    DOCTYPE declaration; if the document has no DOCTYPE declaration,
    this method will not be invoked.

    Specified by:
    :   `endDTD` in interface `LexicalHandler`

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`LexicalHandler.startDTD(java.lang.String, java.lang.String, java.lang.String)`](LexicalHandler.md#startDTD(java.lang.String,java.lang.String,java.lang.String))
  + ### startEntity

    public void startEntity([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `LexicalHandler`

    Report the beginning of some internal and external XML entities.

    The reporting of parameter entities (including
    the external DTD subset) is optional, and SAX2 drivers that
    report LexicalHandler events may not implement it; you can use the
    `http://xml.org/sax/features/lexical-handler/parameter-entities`
    feature to query or control the reporting of parameter entities.

    General entities are reported with their regular names,
    parameter entities have '%' prepended to their names, and
    the external DTD subset has the pseudo-entity name "[dtd]".

    When a SAX2 driver is providing these events, all other
    events must be properly nested within start/end entity
    events. There is no additional requirement that events from
    [`DeclHandler`](DeclHandler.md "interface in org.xml.sax.ext") or
    [`DTDHandler`](../DTDHandler.md "interface in org.xml.sax") be properly ordered.

    Note that skipped entities will be reported through the
    [`skippedEntity`](../ContentHandler.md#skippedEntity(java.lang.String))
    event, which is part of the ContentHandler interface.

    Because of the streaming event model that SAX uses, some
    entity boundaries cannot be reported under any
    circumstances:

    - general entities within attribute values
    - parameter entities within declarations

    These will be silently expanded, with no indication of where
    the original entity boundaries were.

    Note also that the boundaries of character references (which
    are not really entities anyway) are not reported.

    All start/endEntity events must be properly nested.

    Specified by:
    :   `startEntity` in interface `LexicalHandler`

    Parameters:
    :   `name` - The name of the entity. If it is a parameter
        entity, the name will begin with '%', and if it is the
        external DTD subset, it will be "[dtd]".

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`LexicalHandler.endEntity(java.lang.String)`](LexicalHandler.md#endEntity(java.lang.String))
        - [`DeclHandler.internalEntityDecl(java.lang.String, java.lang.String)`](DeclHandler.md#internalEntityDecl(java.lang.String,java.lang.String))
        - [`DeclHandler.externalEntityDecl(java.lang.String, java.lang.String, java.lang.String)`](DeclHandler.md#externalEntityDecl(java.lang.String,java.lang.String,java.lang.String))
  + ### endEntity

    public void endEntity([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `LexicalHandler`

    Report the end of an entity.

    Specified by:
    :   `endEntity` in interface `LexicalHandler`

    Parameters:
    :   `name` - The name of the entity that is ending.

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`LexicalHandler.startEntity(java.lang.String)`](LexicalHandler.md#startEntity(java.lang.String))
  + ### comment

    public void comment(char[] ch,
    int start,
    int length)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `LexicalHandler`

    Report an XML comment anywhere in the document.

    This callback will be used for comments inside or outside the
    document element, including comments in the external DTD
    subset (if read). Comments in the DTD must be properly
    nested inside start/endDTD and start/endEntity events (if
    used).

    Specified by:
    :   `comment` in interface `LexicalHandler`

    Parameters:
    :   `ch` - An array holding the characters in the comment.
    :   `start` - The starting position in the array.
    :   `length` - The number of characters to use from the array.

    Throws:
    :   `SAXException` - The application may raise an exception.
  + ### attributeDecl

    public void attributeDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") eName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") aName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") mode,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `DeclHandler`

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

    Specified by:
    :   `attributeDecl` in interface `DeclHandler`

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
  + ### elementDecl

    public void elementDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") model)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `DeclHandler`

    Report an element type declaration.

    The content model will consist of the string "EMPTY", the
    string "ANY", or a parenthesised group, optionally followed
    by an occurrence indicator. The model will be normalized so
    that all parameter entities are fully resolved and all whitespace
    is removed, and will include the enclosing parentheses. Other
    normalization (such as removing redundant parentheses or
    simplifying occurrence indicators) is at the discretion of the
    parser.

    Specified by:
    :   `elementDecl` in interface `DeclHandler`

    Parameters:
    :   `name` - The element type name.
    :   `model` - The content model as a normalized string.

    Throws:
    :   `SAXException` - The application may raise an exception.
  + ### externalEntityDecl

    public void externalEntityDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `DeclHandler`

    Report a parsed external entity declaration.

    Only the effective (first) declaration for each entity
    will be reported.

    If the system identifier is a URL, the parser must resolve it
    fully before passing it to the application.

    Specified by:
    :   `externalEntityDecl` in interface `DeclHandler`

    Parameters:
    :   `name` - The name of the entity. If it is a parameter
        entity, the name will begin with '%'.
    :   `publicId` - The entity's public identifier, or null if none
        was given.
    :   `systemId` - The entity's system identifier.

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`DeclHandler.internalEntityDecl(java.lang.String, java.lang.String)`](DeclHandler.md#internalEntityDecl(java.lang.String,java.lang.String))
        - [`DTDHandler.unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](../DTDHandler.md#unparsedEntityDecl(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
  + ### internalEntityDecl

    public void internalEntityDecl([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Description copied from interface: `DeclHandler`

    Report an internal entity declaration.

    Only the effective (first) declaration for each entity
    will be reported. All parameter entities in the value
    will be expanded, but general entities will not.

    Specified by:
    :   `internalEntityDecl` in interface `DeclHandler`

    Parameters:
    :   `name` - The name of the entity. If it is a parameter
        entity, the name will begin with '%'.
    :   `value` - The replacement text of the entity.

    Throws:
    :   `SAXException` - The application may raise an exception.

    See Also:
    :   - [`DeclHandler.externalEntityDecl(java.lang.String, java.lang.String, java.lang.String)`](DeclHandler.md#externalEntityDecl(java.lang.String,java.lang.String,java.lang.String))
        - [`DTDHandler.unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](../DTDHandler.md#unparsedEntityDecl(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
  + ### getExternalSubset

    public [InputSource](../InputSource.md "class in org.xml.sax") getExternalSubset([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") baseURI)
    throws [SAXException](../SAXException.md "class in org.xml.sax"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Tells the parser that if no external subset has been declared
    in the document text, none should be used.

    Specified by:
    :   `getExternalSubset` in interface `EntityResolver2`

    Parameters:
    :   `name` - Identifies the document root element. This name comes
        from a DOCTYPE declaration (where available) or from the actual
        root element.
    :   `baseURI` - The document's base URI, serving as an additional
        hint for selecting the external subset. This is always an absolute
        URI, unless it is null because the XMLReader was given an InputSource
        without one.

    Returns:
    :   An InputSource object describing the new external subset
        to be used by the parser, or null to indicate that no external
        subset is provided.

    Throws:
    :   `SAXException` - Any SAX exception, possibly wrapping
        another exception.
    :   `IOException` - Probably indicating a failure to create
        a new InputStream or Reader, or an illegal URL.
  + ### resolveEntity

    public [InputSource](../InputSource.md "class in org.xml.sax") resolveEntity([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") baseURI,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Tells the parser to resolve the systemId against the baseURI
    and read the entity text from that resulting absolute URI.
    Note that because the older
    [`DefaultHandler.resolveEntity()`](../helpers/DefaultHandler.md#resolveEntity(java.lang.String,java.lang.String)),
    method is overridden to call this one, this method may sometimes
    be invoked with null *name* and *baseURI*, and
    with the *systemId* already absolutized.

    Specified by:
    :   `resolveEntity` in interface `EntityResolver2`

    Parameters:
    :   `name` - Identifies the external entity being resolved.
        Either "[dtd]" for the external subset, or a name starting
        with "%" to indicate a parameter entity, or else the name of
        a general entity. This is never null when invoked by a SAX2
        parser.
    :   `publicId` - The public identifier of the external entity being
        referenced (normalized as required by the XML specification), or
        null if none was supplied.
    :   `baseURI` - The URI with respect to which relative systemIDs
        are interpreted. This is always an absolute URI, unless it is
        null (likely because the XMLReader was given an InputSource without
        one). This URI is defined by the XML specification to be the one
        associated with the "<" starting the relevant declaration.
    :   `systemId` - The system identifier of the external entity
        being referenced; either a relative or absolute URI.
        This is never null when invoked by a SAX2 parser; only declared
        entities, and any external subset, are resolved by such parsers.

    Returns:
    :   An InputSource object describing the new input source to
        be used by the parser. Returning null directs the parser to
        resolve the system ID against the base URI and open a connection
        to resulting URI.

    Throws:
    :   `SAXException` - Any SAX exception, possibly wrapping
        another exception.
    :   `IOException` - Probably indicating a failure to create
        a new InputStream or Reader, or an illegal URL.
  + ### resolveEntity

    public [InputSource](../InputSource.md "class in org.xml.sax") resolveEntity([String](../../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") systemId)
    throws [SAXException](../SAXException.md "class in org.xml.sax"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Invokes
    [`EntityResolver2.resolveEntity()`](EntityResolver2.md#resolveEntity(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
    with null entity name and base URI.
    You only need to override that method to use this class.

    Specified by:
    :   `resolveEntity` in interface `EntityResolver`

    Overrides:
    :   `resolveEntity` in class `DefaultHandler`

    Parameters:
    :   `publicId` - The public identifier, or null if none is
        available.
    :   `systemId` - The system identifier provided in the XML
        document.

    Returns:
    :   The new input source, or null to require the
        default behaviour.

    Throws:
    :   `SAXException` - Any SAX exception, possibly
        wrapping another exception.
    :   `IOException` - If there is an error setting
        up the new input source.

    See Also:
    :   - [`EntityResolver.resolveEntity(java.lang.String, java.lang.String)`](../EntityResolver.md#resolveEntity(java.lang.String,java.lang.String))