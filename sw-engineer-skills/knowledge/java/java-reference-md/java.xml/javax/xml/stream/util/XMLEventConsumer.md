Module [java.xml](../../../../module-summary.md)

Package [javax.xml.stream.util](package-summary.md)

# Interface XMLEventConsumer

All Known Subinterfaces:
:   `XMLEventWriter`

---

public interface XMLEventConsumer

This interface defines an event consumer interface. The contract of the
of a consumer is to accept the event. This interface can be used to
mark an object as able to receive events. Add may be called several
times in immediate succession so a consumer must be able to cache
events it hasn't processed yet.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(XMLEvent event)`

  This method adds an event to the consumer.

* ## Method Details

  + ### add

    void add([XMLEvent](../events/XMLEvent.md "interface in javax.xml.stream.events") event)
    throws [XMLStreamException](../XMLStreamException.md "class in javax.xml.stream")

    This method adds an event to the consumer. Calling this method
    invalidates the event parameter. The client application should
    discard all references to this event upon calling add.
    The behavior of an application that continues to use such references
    is undefined.

    Parameters:
    :   `event` - the event to add, may not be null

    Throws:
    :   `XMLStreamException` - if there is an error in adding the event