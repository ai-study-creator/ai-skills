Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface StreamFilter

---

public interface StreamFilter

This interface declares a simple filter interface that one can
create to filter XMLStreamReaders

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(XMLStreamReader reader)`

  Tests whether the current state is part of this stream.

* ## Method Details

  + ### accept

    boolean accept([XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream") reader)

    Tests whether the current state is part of this stream. This method
    will return true if this filter accepts this event and false otherwise.
    The method should not change the state of the reader when accepting
    a state.

    Parameters:
    :   `reader` - the event to test

    Returns:
    :   true if this filter accepts this event, false otherwise