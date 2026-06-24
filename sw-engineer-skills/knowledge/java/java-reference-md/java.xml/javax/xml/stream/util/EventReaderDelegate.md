Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.util](package-summary.md)

# Class EventReaderDelegate

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.stream.util.EventReaderDelegate

All Implemented Interfaces:
:   `Iterator<Object>`, `XMLEventReader`

---

public class EventReaderDelegate
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [XMLEventReader](../XMLEventReader.md "interface in javax.xml.stream")

This is the base class for deriving an XMLEventReader
filter.
This class is designed to sit between an XMLEventReader and an
application's XMLEventReader. By default each method
does nothing but call the corresponding method on the
parent interface.

Since:
:   1.6

See Also:
:   * [`XMLEventReader`](../XMLEventReader.md "interface in javax.xml.stream")
    * [`StreamReaderDelegate`](StreamReaderDelegate.md "class in javax.xml.stream.util")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EventReaderDelegate()`

  Construct an empty filter with no parent.

  `EventReaderDelegate(XMLEventReader reader)`

  Construct an filter with the specified parent.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Frees any resources associated with this Reader.

  `String`

  `getElementText()`

  Reads the content of a text-only element.

  `XMLEventReader`

  `getParent()`

  Get the parent of this instance.

  `Object`

  `getProperty(String name)`

  Get the value of a feature/property from the underlying implementation

  `boolean`

  `hasNext()`

  Check if there are more events.

  `Object`

  `next()`

  Returns the next element in the iteration.

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

  `void`

  `remove()`

  Removes from the underlying collection the last element returned
  by this iterator (optional operation).

  `void`

  `setParent(XMLEventReader reader)`

  Set the parent of this instance.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.[Iterator](../../../../../java.base/java/util/Iterator.md "interface in java.util")

  `forEachRemaining`

* ## Constructor Details

  + ### EventReaderDelegate

    public EventReaderDelegate()

    Construct an empty filter with no parent.
  + ### EventReaderDelegate

    public EventReaderDelegate([XMLEventReader](../XMLEventReader.md "interface in javax.xml.stream") reader)

    Construct an filter with the specified parent.

    Parameters:
    :   `reader` - the parent
* ## Method Details

  + ### setParent

    public void setParent([XMLEventReader](../XMLEventReader.md "interface in javax.xml.stream") reader)

    Set the parent of this instance.

    Parameters:
    :   `reader` - the new parent
  + ### getParent

    public [XMLEventReader](../XMLEventReader.md "interface in javax.xml.stream") getParent()

    Get the parent of this instance.

    Returns:
    :   the parent or null if none is set
  + ### nextEvent

    public [XMLEvent](../events/XMLEvent.md "interface in javax.xml.stream.events") nextEvent()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLEventReader`

    Gets the next XMLEvent. The initial event is
    [`StartDocument`](../events/StartDocument.md "interface in javax.xml.stream.events").

    Specified by:
    :   `nextEvent` in interface `XMLEventReader`

    Returns:
    :   the next XMLEvent

    Throws:
    :   `XMLStreamException` - if there is an error with the underlying XML.

    See Also:
    :   - [`XMLEvent`](../events/XMLEvent.md "interface in javax.xml.stream.events")
  + ### next

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") next()

    Description copied from interface: `Iterator`

    Returns the next element in the iteration.

    Specified by:
    :   `next` in interface `Iterator<Object>`

    Returns:
    :   the next element in the iteration
  + ### hasNext

    public boolean hasNext()

    Description copied from interface: `XMLEventReader`

    Check if there are more events.
    Returns true if there are more events and false otherwise.

    Specified by:
    :   `hasNext` in interface `Iterator<Object>`

    Specified by:
    :   `hasNext` in interface `XMLEventReader`

    Returns:
    :   true if the event reader has more events, false otherwise
  + ### peek

    public [XMLEvent](../events/XMLEvent.md "interface in javax.xml.stream.events") peek()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLEventReader`

    Check the next XMLEvent without reading it from the stream.
    Returns null if the stream is at EOF or has no more XMLEvents.
    A call to peek() will be equal to the next return of next().

    Specified by:
    :   `peek` in interface `XMLEventReader`

    Returns:
    :   the next XMLEvent

    Throws:
    :   `XMLStreamException` - if an error occurs

    See Also:
    :   - [`XMLEvent`](../events/XMLEvent.md "interface in javax.xml.stream.events")
  + ### close

    public void close()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLEventReader`

    Frees any resources associated with this Reader. This method does not close the
    underlying input source.

    Specified by:
    :   `close` in interface `XMLEventReader`

    Throws:
    :   `XMLStreamException` - if there are errors freeing associated resources
  + ### getElementText

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getElementText()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLEventReader`

    Reads the content of a text-only element. Precondition:
    the current event is START\_ELEMENT. Postcondition:
    The current event is the corresponding END\_ELEMENT.

    Specified by:
    :   `getElementText` in interface `XMLEventReader`

    Returns:
    :   the text of the element

    Throws:
    :   `XMLStreamException` - if the current event is not a START\_ELEMENT
        or if a non text element is encountered
  + ### nextTag

    public [XMLEvent](../events/XMLEvent.md "interface in javax.xml.stream.events") nextTag()
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    Description copied from interface: `XMLEventReader`

    Skips any insignificant space events until a START\_ELEMENT or
    END\_ELEMENT is reached. If anything other than space characters are
    encountered, an exception is thrown. This method should
    be used when processing element-only content because
    the parser is not able to recognize ignorable whitespace if
    the DTD is missing or not interpreted.

    Specified by:
    :   `nextTag` in interface `XMLEventReader`

    Returns:
    :   a START\_ELEMENT or END\_ELEMENT

    Throws:
    :   `XMLStreamException` - if anything other than space characters are encountered
  + ### getProperty

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getProperty([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IllegalArgumentException](../../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Description copied from interface: `XMLEventReader`

    Get the value of a feature/property from the underlying implementation

    Specified by:
    :   `getProperty` in interface `XMLEventReader`

    Parameters:
    :   `name` - The name of the property

    Returns:
    :   The value of the property

    Throws:
    :   `IllegalArgumentException` - if the property is not supported
  + ### remove

    public void remove()

    Description copied from interface: `Iterator`

    Removes from the underlying collection the last element returned
    by this iterator (optional operation). This method can be called
    only once per call to [`Iterator.next()`](../../../../../java.base/java/util/Iterator.md#next()).

    The behavior of an iterator is unspecified if the underlying collection
    is modified while the iteration is in progress in any way other than by
    calling this method, unless an overriding class has specified a
    concurrent modification policy.

    The behavior of an iterator is unspecified if this method is called
    after a call to the [`forEachRemaining`](../../../../../java.base/java/util/Iterator.md#forEachRemaining(java.util.function.Consumer)) method.

    Specified by:
    :   `remove` in interface `Iterator<Object>`