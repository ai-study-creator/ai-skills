Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface EventFilter

---

public interface EventFilter

This interface declares a simple filter interface that one can
create to filter XMLEventReaders

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(XMLEvent event)`

  Tests whether this event is part of this stream.

* ## Method Details

  + ### accept

    boolean accept([XMLEvent](events/XMLEvent.md "interface in javax.xml.stream.events") event)

    Tests whether this event is part of this stream. This method
    will return true if this filter accepts this event and false
    otherwise.

    Parameters:
    :   `event` - the event to test

    Returns:
    :   true if this filter accepts this event, false otherwise