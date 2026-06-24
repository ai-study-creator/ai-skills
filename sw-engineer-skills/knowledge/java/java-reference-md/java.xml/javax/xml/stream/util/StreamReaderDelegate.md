Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.util](package-summary.md)

# Class StreamReaderDelegate

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.stream.util.StreamReaderDelegate

All Implemented Interfaces:
:   `XMLStreamConstants`, `XMLStreamReader`

---

public class StreamReaderDelegate
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [XMLStreamReader](../XMLStreamReader.md "interface in javax.xml.stream")

This is the base class for deriving an XMLStreamReader filter
This class is designed to sit between an XMLStreamReader and an
application's XMLStreamReader. By default each method
does nothing but call the corresponding method on the
parent interface.

Since:
:   1.6

See Also:
:   * [`XMLStreamReader`](../XMLStreamReader.md "interface in javax.xml.stream")
    * [`EventReaderDelegate`](EventReaderDelegate.md "class in javax.xml.stream.util")

* ## Field Summary

  ### Fields inherited from interface javax.xml.stream.[XMLStreamConstants](../XMLStreamConstants.md "interface in javax.xml.stream")

  `ATTRIBUTE, CDATA, CHARACTERS, COMMENT, DTD, END_DOCUMENT, END_ELEMENT, ENTITY_DECLARATION, ENTITY_REFERENCE, NAMESPACE, NOTATION_DECLARATION, PROCESSING_INSTRUCTION, SPACE, START_DOCUMENT, START_ELEMENT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StreamReaderDelegate()`

  Construct an empty filter with no parent.

  `StreamReaderDelegate(XMLStreamReader reader)`

  Construct an filter with the specified parent.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Frees any resources associated with this Reader.

  `int`

  `getAttributeCount()`

  Returns the count of attributes on this START\_ELEMENT,
  this method is only valid on a START\_ELEMENT or ATTRIBUTE.

  `String`

  `getAttributeLocalName(int index)`

  Returns the localName of the attribute at the provided
  index

  `QName`

  `getAttributeName(int index)`

  Returns the qname of the attribute at the provided index

  `String`

  `getAttributeNamespace(int index)`

  Returns the namespace of the attribute at the provided
  index

  `String`

  `getAttributePrefix(int index)`

  Returns the prefix of this attribute at the
  provided index

  `String`

  `getAttributeType(int index)`

  Returns the XML type of the attribute at the provided
  index

  `String`

  `getAttributeValue(int index)`

  Returns the value of the attribute at the
  index

  `String`

  `getAttributeValue(String namespaceUri,
  String localName)`

  Returns the normalized attribute value of the
  attribute with the namespace and localName
  If the namespaceURI is null the namespace
  is not checked for equality

  `String`

  `getCharacterEncodingScheme()`

  Returns the character encoding declared on the xml declaration
  Returns null if none was declared

  `String`

  `getElementText()`

  Reads the content of a text-only element, an exception is thrown if this is
  not a text-only element.

  `String`

  `getEncoding()`

  Return input encoding if known or null if unknown.

  `int`

  `getEventType()`

  Returns an integer code that indicates the type of the event the cursor is
  pointing to.

  `String`

  `getLocalName()`

  Returns the (local) name of the current event.

  `Location`

  `getLocation()`

  Return the current location of the processor.

  `QName`

  `getName()`

  Returns a QName for the current START\_ELEMENT or END\_ELEMENT event

  `NamespaceContext`

  `getNamespaceContext()`

  Returns a read only namespace context for the current
  position.

  `int`

  `getNamespaceCount()`

  Returns the count of namespaces declared on this START\_ELEMENT or END\_ELEMENT,
  this method is only valid on a START\_ELEMENT, END\_ELEMENT or NAMESPACE.

  `String`

  `getNamespacePrefix(int index)`

  Returns the prefix for the namespace declared at the
  index.

  `String`

  `getNamespaceURI()`

  If the current event is a START\_ELEMENT or END\_ELEMENT this method
  returns the URI of the prefix or the default namespace.

  `String`

  `getNamespaceURI(int index)`

  Returns the uri for the namespace declared at the
  index.

  `String`

  `getNamespaceURI(String prefix)`

  Return the uri for the given prefix.

  `XMLStreamReader`

  `getParent()`

  Get the parent of this instance.

  `String`

  `getPIData()`

  Get the data section of a processing instruction

  `String`

  `getPITarget()`

  Get the target of a processing instruction

  `String`

  `getPrefix()`

  Returns the prefix of the current event or null if the event does not have a prefix

  `Object`

  `getProperty(String name)`

  Get the value of a feature/property from the underlying implementation

  `String`

  `getText()`

  Returns the current value of the parse event as a string,
  this returns the string value of a CHARACTERS event,
  returns the value of a COMMENT, the replacement value
  for an ENTITY\_REFERENCE, the string value of a CDATA section,
  the string value for a SPACE event,
  or the String value of the internal subset of the DTD.

  `char[]`

  `getTextCharacters()`

  Returns an array which contains the characters from this event.

  `int`

  `getTextCharacters(int sourceStart,
  char[] target,
  int targetStart,
  int length)`

  Gets the text associated with a CHARACTERS, SPACE or CDATA event.

  `int`

  `getTextLength()`

  Returns the length of the sequence of characters for this
  Text event within the text character array.

  `int`

  `getTextStart()`

  Returns the offset into the text character array where the first
  character (of this text event) is stored.

  `String`

  `getVersion()`

  Get the xml version declared on the xml declaration
  Returns null if none was declared

  `boolean`

  `hasName()`

  returns a boolean indicating whether the current event has a name
  (is a START\_ELEMENT or END\_ELEMENT).

  `boolean`

  `hasNext()`

  Returns true if there are more parsing events and false
  if there are no more events.

  `boolean`

  `hasText()`

  Return a boolean indicating whether the current event has text.

  `boolean`

  `isAttributeSpecified(int index)`

  Returns a boolean which indicates if this
  attribute was created by default

  `boolean`

  `isCharacters()`

  Returns true if the cursor points to a character data event

  `boolean`

  `isEndElement()`

  Returns true if the cursor points to an end tag (otherwise false)

  `boolean`

  `isStandalone()`

  Get the standalone declaration from the xml declaration

  `boolean`

  `isStartElement()`

  Returns true if the cursor points to a start tag (otherwise false)

  `boolean`

  `isWhiteSpace()`

  Returns true if the cursor points to a character data event
  that consists of all whitespace

  `int`

  `next()`

  Get next parsing event - a processor may return all contiguous
  character data in a single chunk, or it may split it into several chunks.

  `int`

  `nextTag()`

  Skips any white space (isWhiteSpace() returns true), COMMENT,
  or PROCESSING\_INSTRUCTION,
  until a START\_ELEMENT or END\_ELEMENT is reached.

  `void`

  `require(int type,
  String namespaceURI,
  String localName)`

  Test if the current event is of the given type and if the namespace and name match the current
  namespace and name of the current event.

  `void`

  `setParent(XMLStreamReader reader)`

  Set the parent of this instance.

  `boolean`

  `standaloneSet()`

  Checks if standalone was set in the document

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StreamReaderDelegate

    public StreamReaderDelegate()

    Construct an empty filter with no parent.
  + ### StreamReaderDelegate

    public StreamReaderDelegate([XMLStreamReader](../XMLStreamReader.md "interface in javax.xml.stream") reader)

    Construct an filter with the specified parent.

    Parameters:
    :   `reader` - the parent
* ## Method Details

  + ### setParent

    public void setParent([XMLStreamReader](../XMLStreamReader.md "interface in javax.xml.stream") reader)

    Set the parent of this instance.

    Parameters:
    :   `reader` - the new parent
  + ### getParent

    public [XMLStreamReader](../XMLStreamReader.md "interface in javax.xml.stream") getParent()

    Get the parent of this instance.

    Returns:
    :   the parent or null if none is set
  + ### next

    public int next()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLStreamReader`

    Get next parsing event - a processor may return all contiguous
    character data in a single chunk, or it may split it into several chunks.
    If the property javax.xml.stream.isCoalescing is set to true
    element content must be coalesced and only one CHARACTERS event
    must be returned for contiguous element content or
    CDATA Sections.
    By default entity references must be
    expanded and reported transparently to the application.
    An exception will be thrown if an entity reference cannot be expanded.
    If element content is empty (i.e. content is "") then no CHARACTERS event will be reported.

    Given the following XML:  
    `<foo><!--description-->content text<![CDATA[<greeting>Hello>/greeting>]]>other content>/foo>`  
    The behavior of calling next() when being on foo will be:  
    1- the comment (COMMENT)  
    2- then the characters section (CHARACTERS)  
    3- then the CDATA section (another CHARACTERS)  
    4- then the next characters section (another CHARACTERS)  
    5- then the END\_ELEMENT  

    **NOTE:** empty element (such as `<tag/>`) will be reported
    with two separate events: START\_ELEMENT, END\_ELEMENT - This preserves
    parsing equivalency of empty element to `<tag></tag>`.

    Specified by:
    :   `next` in interface `XMLStreamReader`

    Returns:
    :   the integer code corresponding to the current parse event

    Throws:
    :   `XMLStreamException` - if there is an error processing the underlying XML source

    See Also:
    :   - [`XMLEvent`](../events/XMLEvent.md "interface in javax.xml.stream.events")
  + ### nextTag

    public int nextTag()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLStreamReader`

    Skips any white space (isWhiteSpace() returns true), COMMENT,
    or PROCESSING\_INSTRUCTION,
    until a START\_ELEMENT or END\_ELEMENT is reached.
    If other than white space characters, COMMENT, PROCESSING\_INSTRUCTION, START\_ELEMENT, END\_ELEMENT
    are encountered, an exception is thrown. This method should
    be used when processing element-only content separated by white space.
      
     Precondition: none
      
     Postcondition: the current event is START\_ELEMENT or END\_ELEMENT
    and cursor may have moved over any whitespace event.
      
    Essentially it does the following (implementations are free to optimized
    but must do equivalent processing):

    ```
     int eventType = next();
     while((eventType == XMLStreamConstants.CHARACTERS && isWhiteSpace()) // skip whitespace
     || (eventType == XMLStreamConstants.CDATA && isWhiteSpace())
     // skip whitespace
     || eventType == XMLStreamConstants.SPACE
     || eventType == XMLStreamConstants.PROCESSING_INSTRUCTION
     || eventType == XMLStreamConstants.COMMENT
     ) {
         eventType = next();
     }
     if (eventType != XMLStreamConstants.START_ELEMENT && eventType != XMLStreamConstants.END_ELEMENT) {
         throw new String XMLStreamException("expected start or end tag", getLocation());
     }
     return eventType;
    ```

    Specified by:
    :   `nextTag` in interface `XMLStreamReader`

    Returns:
    :   the event type of the element read (START\_ELEMENT or END\_ELEMENT)

    Throws:
    :   `XMLStreamException` - if the current event is not white space, PROCESSING\_INSTRUCTION,
        START\_ELEMENT or END\_ELEMENT
  + ### getElementText

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getElementText()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLStreamReader`

    Reads the content of a text-only element, an exception is thrown if this is
    not a text-only element.
    Regardless of value of javax.xml.stream.isCoalescing this method always returns coalesced content.
      
     Precondition: the current event is START\_ELEMENT.
      
     Postcondition: the current event is the corresponding END\_ELEMENT.
      
    The method does the following (implementations are free to optimized
    but must do equivalent processing):

    ```
     if(getEventType() != XMLStreamConstants.START_ELEMENT) {
         throw new XMLStreamException(
         "parser must be on START_ELEMENT to read next text", getLocation());
     }

     int eventType = next();
     StringBuffer content = new StringBuffer();
     while(eventType != XMLStreamConstants.END_ELEMENT) {
         if(eventType == XMLStreamConstants.CHARACTERS
            || eventType == XMLStreamConstants.CDATA
            || eventType == XMLStreamConstants.SPACE
            || eventType == XMLStreamConstants.ENTITY_REFERENCE) {
               buf.append(getText());
         } else if(eventType == XMLStreamConstants.PROCESSING_INSTRUCTION
                   || eventType == XMLStreamConstants.COMMENT) {
             // skipping
         } else if(eventType == XMLStreamConstants.END_DOCUMENT) {
             throw new XMLStreamException(
             "unexpected end of document when reading element text content", this);
         } else if(eventType == XMLStreamConstants.START_ELEMENT) {
             throw new XMLStreamException(
             "element text content may not contain START_ELEMENT", getLocation());
         } else {
             throw new XMLStreamException(
             "Unexpected event type "+eventType, getLocation());
         }
         eventType = next();
     }
     return buf.toString();
    ```

    Specified by:
    :   `getElementText` in interface `XMLStreamReader`

    Returns:
    :   the content of a text-only element

    Throws:
    :   `XMLStreamException` - if the current event is not a START\_ELEMENT
        or if a non text element is encountered
  + ### require

    public void require(int type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLStreamReader`

    Test if the current event is of the given type and if the namespace and name match the current
    namespace and name of the current event. If the namespaceURI is null it is not checked for equality,
    if the localName is null it is not checked for equality.

    Specified by:
    :   `require` in interface `XMLStreamReader`

    Parameters:
    :   `type` - the event type
    :   `namespaceURI` - the uri of the event, may be null
    :   `localName` - the localName of the event, may be null

    Throws:
    :   `XMLStreamException` - if the required values are not matched.
  + ### hasNext

    public boolean hasNext()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLStreamReader`

    Returns true if there are more parsing events and false
    if there are no more events. This method will return
    false if the current state of the XMLStreamReader is
    END\_DOCUMENT

    Specified by:
    :   `hasNext` in interface `XMLStreamReader`

    Returns:
    :   true if there are more events, false otherwise

    Throws:
    :   `XMLStreamException` - if there is a fatal error detecting the next state
  + ### close

    public void close()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLStreamReader`

    Frees any resources associated with this Reader. This method does not close the
    underlying input source.

    Specified by:
    :   `close` in interface `XMLStreamReader`

    Throws:
    :   `XMLStreamException` - if there are errors freeing associated resources
  + ### getNamespaceURI

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI([String](../../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    Description copied from interface: `XMLStreamReader`

    Return the uri for the given prefix.
    The uri returned depends on the current state of the processor.

    **NOTE:**The 'xml' prefix is bound as defined in
    [Namespaces in XML](http://www.w3.org/TR/REC-xml-names/#ns-using)
    specification to "http://www.w3.org/XML/1998/namespace".

    **NOTE:** The 'xmlns' prefix must be resolved to following namespace
    <http://www.w3.org/2000/xmlns/>

    Specified by:
    :   `getNamespaceURI` in interface `XMLStreamReader`

    Parameters:
    :   `prefix` - The prefix to lookup, may not be null

    Returns:
    :   the uri bound to the given prefix or null if it is not bound
  + ### getNamespaceContext

    public [NamespaceContext](../../namespace/NamespaceContext.md "interface in javax.xml.namespace") getNamespaceContext()

    Description copied from interface: `XMLStreamReader`

    Returns a read only namespace context for the current
    position. The context is transient and only valid until
    a call to next() changes the state of the reader.

    Specified by:
    :   `getNamespaceContext` in interface `XMLStreamReader`

    Returns:
    :   return a namespace context
  + ### isStartElement

    public boolean isStartElement()

    Description copied from interface: `XMLStreamReader`

    Returns true if the cursor points to a start tag (otherwise false)

    Specified by:
    :   `isStartElement` in interface `XMLStreamReader`

    Returns:
    :   true if the cursor points to a start tag, false otherwise
  + ### isEndElement

    public boolean isEndElement()

    Description copied from interface: `XMLStreamReader`

    Returns true if the cursor points to an end tag (otherwise false)

    Specified by:
    :   `isEndElement` in interface `XMLStreamReader`

    Returns:
    :   true if the cursor points to an end tag, false otherwise
  + ### isCharacters

    public boolean isCharacters()

    Description copied from interface: `XMLStreamReader`

    Returns true if the cursor points to a character data event

    Specified by:
    :   `isCharacters` in interface `XMLStreamReader`

    Returns:
    :   true if the cursor points to character data, false otherwise
  + ### isWhiteSpace

    public boolean isWhiteSpace()

    Description copied from interface: `XMLStreamReader`

    Returns true if the cursor points to a character data event
    that consists of all whitespace

    Specified by:
    :   `isWhiteSpace` in interface `XMLStreamReader`

    Returns:
    :   true if the cursor points to all whitespace, false otherwise
  + ### getAttributeValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAttributeValue([String](../../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Description copied from interface: `XMLStreamReader`

    Returns the normalized attribute value of the
    attribute with the namespace and localName
    If the namespaceURI is null the namespace
    is not checked for equality

    Specified by:
    :   `getAttributeValue` in interface `XMLStreamReader`

    Parameters:
    :   `namespaceUri` - the namespace of the attribute
    :   `localName` - the local name of the attribute, cannot be null

    Returns:
    :   returns the value of the attribute , returns null if not found
  + ### getAttributeCount

    public int getAttributeCount()

    Description copied from interface: `XMLStreamReader`

    Returns the count of attributes on this START\_ELEMENT,
    this method is only valid on a START\_ELEMENT or ATTRIBUTE. This
    count excludes namespace definitions. Attribute indices are
    zero-based.

    Specified by:
    :   `getAttributeCount` in interface `XMLStreamReader`

    Returns:
    :   returns the number of attributes
  + ### getAttributeName

    public [QName](../../namespace/QName.md "class in javax.xml.namespace") getAttributeName(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the qname of the attribute at the provided index

    Specified by:
    :   `getAttributeName` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the attribute

    Returns:
    :   the QName of the attribute
  + ### getAttributePrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAttributePrefix(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the prefix of this attribute at the
    provided index

    Specified by:
    :   `getAttributePrefix` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the attribute

    Returns:
    :   the prefix of the attribute
  + ### getAttributeNamespace

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAttributeNamespace(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the namespace of the attribute at the provided
    index

    Specified by:
    :   `getAttributeNamespace` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the attribute

    Returns:
    :   the namespace URI (can be null)
  + ### getAttributeLocalName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAttributeLocalName(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the localName of the attribute at the provided
    index

    Specified by:
    :   `getAttributeLocalName` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the attribute

    Returns:
    :   the localName of the attribute
  + ### getAttributeType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAttributeType(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the XML type of the attribute at the provided
    index

    Specified by:
    :   `getAttributeType` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the attribute

    Returns:
    :   the XML type of the attribute
  + ### getAttributeValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAttributeValue(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the value of the attribute at the
    index

    Specified by:
    :   `getAttributeValue` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the attribute

    Returns:
    :   the attribute value
  + ### isAttributeSpecified

    public boolean isAttributeSpecified(int index)

    Description copied from interface: `XMLStreamReader`

    Returns a boolean which indicates if this
    attribute was created by default

    Specified by:
    :   `isAttributeSpecified` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the attribute

    Returns:
    :   true if this is a default attribute
  + ### getNamespaceCount

    public int getNamespaceCount()

    Description copied from interface: `XMLStreamReader`

    Returns the count of namespaces declared on this START\_ELEMENT or END\_ELEMENT,
    this method is only valid on a START\_ELEMENT, END\_ELEMENT or NAMESPACE. On
    an END\_ELEMENT the count is of the namespaces that are about to go
    out of scope. This is the equivalent of the information reported
    by SAX callback for an end element event.

    Specified by:
    :   `getNamespaceCount` in interface `XMLStreamReader`

    Returns:
    :   returns the number of namespace declarations on this specific element
  + ### getNamespacePrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNamespacePrefix(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the prefix for the namespace declared at the
    index. Returns null if this is the default namespace
    declaration

    Specified by:
    :   `getNamespacePrefix` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the namespace declaration

    Returns:
    :   returns the namespace prefix
  + ### getNamespaceURI

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI(int index)

    Description copied from interface: `XMLStreamReader`

    Returns the uri for the namespace declared at the
    index.

    Specified by:
    :   `getNamespaceURI` in interface `XMLStreamReader`

    Parameters:
    :   `index` - the position of the namespace declaration

    Returns:
    :   returns the namespace uri
  + ### getEventType

    public int getEventType()

    Description copied from interface: `XMLStreamReader`

    Returns an integer code that indicates the type of the event the cursor is
    pointing to. The initial event type is [`XMLStreamConstants.START_DOCUMENT`](../XMLStreamConstants.md#START_DOCUMENT).

    Specified by:
    :   `getEventType` in interface `XMLStreamReader`

    Returns:
    :   the type of the current event
  + ### getText

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getText()

    Description copied from interface: `XMLStreamReader`

    Returns the current value of the parse event as a string,
    this returns the string value of a CHARACTERS event,
    returns the value of a COMMENT, the replacement value
    for an ENTITY\_REFERENCE, the string value of a CDATA section,
    the string value for a SPACE event,
    or the String value of the internal subset of the DTD.
    If an ENTITY\_REFERENCE has been resolved, any character data
    will be reported as CHARACTERS events.

    Specified by:
    :   `getText` in interface `XMLStreamReader`

    Returns:
    :   the current text or null
  + ### getTextCharacters

    public int getTextCharacters(int sourceStart,
    char[] target,
    int targetStart,
    int length)
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLStreamReader`

    Gets the text associated with a CHARACTERS, SPACE or CDATA event.
    Text starting a "sourceStart" is copied into "target" starting at "targetStart".
    Up to "length" characters are copied. The number of characters actually copied is returned.
    The "sourceStart" argument must be greater or equal to 0 and less than or equal to
    the number of characters associated with the event. Usually, one requests text starting at a "sourceStart" of 0.
    If the number of characters actually copied is less than the "length", then there is no more text.
    Otherwise, subsequent calls need to be made until all text has been retrieved. For example:

    ```
     int length = 1024;
     char[] myBuffer = new char[ length ];

     for ( int sourceStart = 0 ; ; sourceStart += length )
     {
        int nCopied = stream.getTextCharacters( sourceStart, myBuffer, 0, length );

       if (nCopied < length)
           break;
     }
    ```

    XMLStreamException may be thrown if there are any XML errors in the underlying source.
    The "targetStart" argument must be greater than or equal to 0 and less than the length of "target",
    Length must be greater than 0 and "targetStart + length" must be less than or equal to length of "target".

    Specified by:
    :   `getTextCharacters` in interface `XMLStreamReader`

    Parameters:
    :   `sourceStart` - the index of the first character in the source array to copy
    :   `target` - the destination array
    :   `targetStart` - the start offset in the target array
    :   `length` - the number of characters to copy

    Returns:
    :   the number of characters actually copied

    Throws:
    :   `XMLStreamException` - if the underlying XML source is not well-formed
  + ### getTextCharacters

    public char[] getTextCharacters()

    Description copied from interface: `XMLStreamReader`

    Returns an array which contains the characters from this event.
    This array should be treated as read-only and transient. I.e. the array will
    contain the text characters until the XMLStreamReader moves on to the next event.
    Attempts to hold onto the character array beyond that time or modify the
    contents of the array are breaches of the contract for this interface.

    Specified by:
    :   `getTextCharacters` in interface `XMLStreamReader`

    Returns:
    :   the current text or an empty array
  + ### getTextStart

    public int getTextStart()

    Description copied from interface: `XMLStreamReader`

    Returns the offset into the text character array where the first
    character (of this text event) is stored.

    Specified by:
    :   `getTextStart` in interface `XMLStreamReader`

    Returns:
    :   the starting position of the text in the character array
  + ### getTextLength

    public int getTextLength()

    Description copied from interface: `XMLStreamReader`

    Returns the length of the sequence of characters for this
    Text event within the text character array.

    Specified by:
    :   `getTextLength` in interface `XMLStreamReader`

    Returns:
    :   the length of the text
  + ### getEncoding

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getEncoding()

    Description copied from interface: `XMLStreamReader`

    Return input encoding if known or null if unknown.

    Specified by:
    :   `getEncoding` in interface `XMLStreamReader`

    Returns:
    :   the encoding of this instance or null
  + ### hasText

    public boolean hasText()

    Description copied from interface: `XMLStreamReader`

    Return a boolean indicating whether the current event has text.
    The following events have text:
    CHARACTERS,DTD ,ENTITY\_REFERENCE, COMMENT, SPACE

    Specified by:
    :   `hasText` in interface `XMLStreamReader`

    Returns:
    :   true if the event has text, false otherwise
  + ### getLocation

    public [Location](../Location.md "interface in javax.xml.stream") getLocation()

    Description copied from interface: `XMLStreamReader`

    Return the current location of the processor.
    If the Location is unknown the processor should return
    an implementation of Location that returns -1 for the
    location and null for the publicId and systemId.
    The location information is only valid until next() is
    called.

    Specified by:
    :   `getLocation` in interface `XMLStreamReader`

    Returns:
    :   the location of the cursor
  + ### getName

    public [QName](../../namespace/QName.md "class in javax.xml.namespace") getName()

    Description copied from interface: `XMLStreamReader`

    Returns a QName for the current START\_ELEMENT or END\_ELEMENT event

    Specified by:
    :   `getName` in interface `XMLStreamReader`

    Returns:
    :   the QName for the current START\_ELEMENT or END\_ELEMENT event
  + ### getLocalName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getLocalName()

    Description copied from interface: `XMLStreamReader`

    Returns the (local) name of the current event.
    For START\_ELEMENT or END\_ELEMENT returns the (local) name of the current element.
    For ENTITY\_REFERENCE it returns entity name.
    The current event must be START\_ELEMENT or END\_ELEMENT,
    or ENTITY\_REFERENCE

    Specified by:
    :   `getLocalName` in interface `XMLStreamReader`

    Returns:
    :   the localName
  + ### hasName

    public boolean hasName()

    Description copied from interface: `XMLStreamReader`

    returns a boolean indicating whether the current event has a name
    (is a START\_ELEMENT or END\_ELEMENT).

    Specified by:
    :   `hasName` in interface `XMLStreamReader`

    Returns:
    :   true if the event has a name, false otherwise
  + ### getNamespaceURI

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI()

    Description copied from interface: `XMLStreamReader`

    If the current event is a START\_ELEMENT or END\_ELEMENT this method
    returns the URI of the prefix or the default namespace.
    Returns null if the event does not have a prefix.

    Specified by:
    :   `getNamespaceURI` in interface `XMLStreamReader`

    Returns:
    :   the URI bound to this elements prefix, the default namespace, or null
  + ### getPrefix

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPrefix()

    Description copied from interface: `XMLStreamReader`

    Returns the prefix of the current event or null if the event does not have a prefix

    Specified by:
    :   `getPrefix` in interface `XMLStreamReader`

    Returns:
    :   the prefix or null
  + ### getVersion

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Description copied from interface: `XMLStreamReader`

    Get the xml version declared on the xml declaration
    Returns null if none was declared

    Specified by:
    :   `getVersion` in interface `XMLStreamReader`

    Returns:
    :   the XML version or null
  + ### isStandalone

    public boolean isStandalone()

    Description copied from interface: `XMLStreamReader`

    Get the standalone declaration from the xml declaration

    Specified by:
    :   `isStandalone` in interface `XMLStreamReader`

    Returns:
    :   true if this is standalone, or false otherwise
  + ### standaloneSet

    public boolean standaloneSet()

    Description copied from interface: `XMLStreamReader`

    Checks if standalone was set in the document

    Specified by:
    :   `standaloneSet` in interface `XMLStreamReader`

    Returns:
    :   true if standalone was set in the document, or false otherwise
  + ### getCharacterEncodingScheme

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getCharacterEncodingScheme()

    Description copied from interface: `XMLStreamReader`

    Returns the character encoding declared on the xml declaration
    Returns null if none was declared

    Specified by:
    :   `getCharacterEncodingScheme` in interface `XMLStreamReader`

    Returns:
    :   the encoding declared in the document or null
  + ### getPITarget

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPITarget()

    Description copied from interface: `XMLStreamReader`

    Get the target of a processing instruction

    Specified by:
    :   `getPITarget` in interface `XMLStreamReader`

    Returns:
    :   the target or null
  + ### getPIData

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getPIData()

    Description copied from interface: `XMLStreamReader`

    Get the data section of a processing instruction

    Specified by:
    :   `getPIData` in interface `XMLStreamReader`

    Returns:
    :   the data or null
  + ### getProperty

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Description copied from interface: `XMLStreamReader`

    Get the value of a feature/property from the underlying implementation

    Specified by:
    :   `getProperty` in interface `XMLStreamReader`

    Parameters:
    :   `name` - The name of the property, may not be null

    Returns:
    :   The value of the property