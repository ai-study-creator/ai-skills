Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface RowSetListener

All Superinterfaces:
:   `EventListener`

---

public interface RowSetListener
extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")

An interface that must be implemented by a
component that wants to be notified when a significant
event happens in the life of a `RowSet` object.
A component becomes a listener by being registered with a
`RowSet` object via the method `RowSet.addRowSetListener`.
How a registered component implements this interface determines what it does
when it is notified of an event.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `cursorMoved(RowSetEvent event)`

  Notifies registered listeners that a `RowSet` object's
  cursor has moved.

  `void`

  `rowChanged(RowSetEvent event)`

  Notifies registered listeners that a `RowSet` object
  has had a change in one of its rows.

  `void`

  `rowSetChanged(RowSetEvent event)`

  Notifies registered listeners that a `RowSet` object
  in the given `RowSetEvent` object has changed its entire contents.

* ## Method Details

  + ### rowSetChanged

    void rowSetChanged([RowSetEvent](RowSetEvent.md "class in javax.sql") event)

    Notifies registered listeners that a `RowSet` object
    in the given `RowSetEvent` object has changed its entire contents.

    The source of the event can be retrieved with the method
    `event.getSource`.

    Parameters:
    :   `event` - a `RowSetEvent` object that contains
        the `RowSet` object that is the source of the event
  + ### rowChanged

    void rowChanged([RowSetEvent](RowSetEvent.md "class in javax.sql") event)

    Notifies registered listeners that a `RowSet` object
    has had a change in one of its rows.

    The source of the event can be retrieved with the method
    `event.getSource`.

    Parameters:
    :   `event` - a `RowSetEvent` object that contains
        the `RowSet` object that is the source of the event
  + ### cursorMoved

    void cursorMoved([RowSetEvent](RowSetEvent.md "class in javax.sql") event)

    Notifies registered listeners that a `RowSet` object's
    cursor has moved.

    The source of the event can be retrieved with the method
    `event.getSource`.

    Parameters:
    :   `event` - a `RowSetEvent` object that contains
        the `RowSet` object that is the source of the event