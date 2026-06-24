Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface XMLEventReader

All Superinterfaces:
:   `Iterator<Object>`

All Known Implementing Classes:
:   `EventReaderDelegate`

---

public interface XMLEventReader
extends [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")>

This is the top level interface for parsing XML Events. It provides
the ability to peek at the next event and returns configuration
information through the property interface.

Since:
:   1.6

See Also:
:   * [`XMLInputFactory`](XMLInputFactory.md "class in javax.xml.stream")
    * [`XMLEventWriter`](XMLEventWriter.md "interface in javax.xml.stream")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Frees any resources associated with this Reader.

  `String`

  `getElementText()`

  Reads the content of a text-only element.

  `Object`

  `getProperty(String name)`

  Get the value of a feature/property from the underlying implementation

  `boolean`

  `hasNext()`

  Check if there are more events.

  `XMLEvent`

  `nextEvent()`

  Gets the next XMLEvent.

  `XMLEvent`

  `nextTag()`

  Skips any insignificant space events until a START\_ELEMENT or
  END\_ELEMENT is reached.

  `XMLEvent`

  `peek()`

  Check the next XMLEvent without reading it from the stream.

  ### Methods inherited from interface java.util.[Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")

  `forEachRemaining, next, remove`

* ## Method Details

  + ### nextEvent

    [XMLEvent](events/XMLEvent.md "interface in javax.xml.stream.events") nextEvent()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Gets the next XMLEvent. The initial event is
    [`StartDocument`](events/StartDocument.md "interface in javax.xml.stream.events").

    Returns:
    :   the next XMLEvent

    Throws:
    :   `XMLStreamException` - if there is an error with the underlying XML.
    :   `NoSuchElementException` - iteration has no more elements.

    See Also:
    :   - [`XMLEvent`](events/XMLEvent.md "interface in javax.xml.stream.events")
  + ### hasNext

    boolean hasNext()

    Check if there are more events.
    Returns true if there are more events and false otherwise.

    Specified by:
    :   `hasNext` in interface `Iterator<Object>`

    Returns:
    :   true if the event reader has more events, false otherwise
  + ### peek

    [XMLEvent](events/XMLEvent.md "interface in javax.xml.stream.events") peek()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Check the next XMLEvent without reading it from the stream.
    Returns null if the stream is at EOF or has no more XMLEvents.
    A call to peek() will be equal to the next return of next().

    Returns:
    :   the next XMLEvent

    Throws:
    :   `XMLStreamException` - if an error occurs

    See Also:
    :   - [`XMLEvent`](events/XMLEvent.md "interface in javax.xml.stream.events")
  + ### getElementText

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getElementText()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Reads the content of a text-only element. Precondition:
    the current event is START\_ELEMENT. Postcondition:
    The current event is the corresponding END\_ELEMENT.

    Returns:
    :   the text of the element

    Throws:
    :   `XMLStreamException` - if the current event is not a START\_ELEMENT
        or if a non text element is encountered
  + ### nextTag

    [XMLEvent](events/XMLEvent.md "interface in javax.xml.stream.events") nextTag()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Skips any insignificant space events until a START\_ELEMENT or
    END\_ELEMENT is reached. If anything other than space characters are
    encountered, an exception is thrown. This method should
    be used when processing element-only content because
    the parser is not able to recognize ignorable whitespace if
    the DTD is missing or not interpreted.

    Returns:
    :   a START\_ELEMENT or END\_ELEMENT

    Throws:
    :   `XMLStreamException` - if anything other than space characters are encountered
  + ### getProperty

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Get the value of a feature/property from the underlying implementation

    Parameters:
    :   `name` - The name of the property

    Returns:
    :   The value of the property

    Throws:
    :   `IllegalArgumentException` - if the property is not supported
  + ### close

    void close()
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Frees any resources associated with this Reader. This method does not close the
    underlying input source.

    Throws:
    :   `XMLStreamException` - if there are errors freeing associated resources