Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface XMLStreamConstants

All Known Subinterfaces:
:   `Attribute`, `Characters`, `Comment`, `DTD`, `EndDocument`, `EndElement`, `EntityDeclaration`, `EntityReference`, `Namespace`, `NotationDeclaration`, `ProcessingInstruction`, `StartDocument`, `StartElement`, `XMLEvent`, `XMLStreamReader`

All Known Implementing Classes:
:   `StreamReaderDelegate`

---

public interface XMLStreamConstants

This interface declares the constants used in this API.
Numbers in the range 0 to 256 are reserved for the specification,
user defined events must use event codes outside that range.

Since:
:   1.6

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ATTRIBUTE`

  Indicates an event is an attribute

  `static final int`

  `CDATA`

  Indicates an event is a CDATA section

  `static final int`

  `CHARACTERS`

  Indicates an event is characters

  `static final int`

  `COMMENT`

  Indicates an event is a comment

  `static final int`

  `DTD`

  Indicates an event is a DTD

  `static final int`

  `END_DOCUMENT`

  Indicates an event is an end document

  `static final int`

  `END_ELEMENT`

  Indicates an event is an end element

  `static final int`

  `ENTITY_DECLARATION`

  Indicates a Entity Declaration

  `static final int`

  `ENTITY_REFERENCE`

  Indicates an event is an entity reference

  `static final int`

  `NAMESPACE`

  Indicates the event is a namespace declaration

  `static final int`

  `NOTATION_DECLARATION`

  Indicates a Notation

  `static final int`

  `PROCESSING_INSTRUCTION`

  Indicates an event is a processing instruction

  `static final int`

  `SPACE`

  The characters are white space
  (see [XML], 2.10 "White Space Handling").

  `static final int`

  `START_DOCUMENT`

  Indicates an event is a start document

  `static final int`

  `START_ELEMENT`

  Indicates an event is a start element

* ## Field Details

  + ### START\_ELEMENT

    static final int START\_ELEMENT

    Indicates an event is a start element

    See Also:
    :   - [`StartElement`](events/StartElement.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.START_ELEMENT)
  + ### END\_ELEMENT

    static final int END\_ELEMENT

    Indicates an event is an end element

    See Also:
    :   - [`EndElement`](events/EndElement.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.END_ELEMENT)
  + ### PROCESSING\_INSTRUCTION

    static final int PROCESSING\_INSTRUCTION

    Indicates an event is a processing instruction

    See Also:
    :   - [`ProcessingInstruction`](events/ProcessingInstruction.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.PROCESSING_INSTRUCTION)
  + ### CHARACTERS

    static final int CHARACTERS

    Indicates an event is characters

    See Also:
    :   - [`Characters`](events/Characters.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.CHARACTERS)
  + ### COMMENT

    static final int COMMENT

    Indicates an event is a comment

    See Also:
    :   - [`Comment`](events/Comment.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.COMMENT)
  + ### SPACE

    static final int SPACE

    The characters are white space
    (see [XML], 2.10 "White Space Handling").
    Events are only reported as SPACE if they are ignorable white
    space. Otherwise they are reported as CHARACTERS.

    See Also:
    :   - [`Characters`](events/Characters.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.SPACE)
  + ### START\_DOCUMENT

    static final int START\_DOCUMENT

    Indicates an event is a start document

    See Also:
    :   - [`StartDocument`](events/StartDocument.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.START_DOCUMENT)
  + ### END\_DOCUMENT

    static final int END\_DOCUMENT

    Indicates an event is an end document

    See Also:
    :   - [`EndDocument`](events/EndDocument.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.END_DOCUMENT)
  + ### ENTITY\_REFERENCE

    static final int ENTITY\_REFERENCE

    Indicates an event is an entity reference

    See Also:
    :   - [`EntityReference`](events/EntityReference.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.ENTITY_REFERENCE)
  + ### ATTRIBUTE

    static final int ATTRIBUTE

    Indicates an event is an attribute

    See Also:
    :   - [`Attribute`](events/Attribute.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.ATTRIBUTE)
  + ### DTD

    static final int DTD

    Indicates an event is a DTD

    See Also:
    :   - [`DTD`](events/DTD.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.DTD)
  + ### CDATA

    static final int CDATA

    Indicates an event is a CDATA section

    See Also:
    :   - [`Characters`](events/Characters.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.CDATA)
  + ### NAMESPACE

    static final int NAMESPACE

    Indicates the event is a namespace declaration

    See Also:
    :   - [`Namespace`](events/Namespace.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.NAMESPACE)
  + ### NOTATION\_DECLARATION

    static final int NOTATION\_DECLARATION

    Indicates a Notation

    See Also:
    :   - [`NotationDeclaration`](events/NotationDeclaration.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.NOTATION_DECLARATION)
  + ### ENTITY\_DECLARATION

    static final int ENTITY\_DECLARATION

    Indicates a Entity Declaration

    See Also:
    :   - [`NotationDeclaration`](events/NotationDeclaration.md "interface in javax.xml.stream.events")
        - [Constant Field Values](../../../../constant-values.md#javax.xml.stream.XMLStreamConstants.ENTITY_DECLARATION)