Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.util](package-summary.md)

# Interface XMLEventAllocator

---

public interface XMLEventAllocator

This interface defines a class that allows a user to register
a way to allocate events given an XMLStreamReader. An implementation
is not required to use the XMLEventFactory implementation but this
is recommended. The XMLEventAllocator can be set on an XMLInputFactory
using the property "javax.xml.stream.allocator"

Since:
:   1.6

See Also:
:   * [`XMLInputFactory`](../XMLInputFactory.md "class in javax.xml.stream")
    * [`XMLEventFactory`](../XMLEventFactory.md "class in javax.xml.stream")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `XMLEvent`

  `allocate(XMLStreamReader reader)`

  This method allocates an event given the current
  state of the XMLStreamReader.

  `void`

  `allocate(XMLStreamReader reader,
  XMLEventConsumer consumer)`

  This method allocates an event or set of events
  given the current
  state of the XMLStreamReader and adds the event
  or set of events to the
  consumer that was passed in.

  `XMLEventAllocator`

  `newInstance()`

  This method creates an instance of the XMLEventAllocator.

* ## Method Details

  + ### newInstance

    [XMLEventAllocator](XMLEventAllocator.md "interface in javax.xml.stream.util") newInstance()

    This method creates an instance of the XMLEventAllocator. This
    allows the XMLInputFactory to allocate a new instance per reader.

    Returns:
    :   an instance of the `XMLEventAllocator`
  + ### allocate

    [XMLEvent](../events/XMLEvent.md "interface in javax.xml.stream.events") allocate([XMLStreamReader](../XMLStreamReader.md "interface in javax.xml.stream") reader)
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    This method allocates an event given the current
    state of the XMLStreamReader. If this XMLEventAllocator
    does not have a one-to-one mapping between reader states
    and events this method will return null. This method
    must not modify the state of the XMLStreamReader.

    Parameters:
    :   `reader` - The XMLStreamReader to allocate from

    Returns:
    :   the event corresponding to the current reader state

    Throws:
    :   `XMLStreamException` - if an error occurs
  + ### allocate

    void allocate([XMLStreamReader](../XMLStreamReader.md "interface in javax.xml.stream") reader,
    [XMLEventConsumer](XMLEventConsumer.md "interface in javax.xml.stream.util") consumer)
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    This method allocates an event or set of events
    given the current
    state of the XMLStreamReader and adds the event
    or set of events to the
    consumer that was passed in. This method can be used
    to expand or contract reader states into event states.
    This method may modify the state of the XMLStreamReader.

    Parameters:
    :   `reader` - The XMLStreamReader to allocate from
    :   `consumer` - The XMLEventConsumer to add to.

    Throws:
    :   `XMLStreamException` - if an error occurs