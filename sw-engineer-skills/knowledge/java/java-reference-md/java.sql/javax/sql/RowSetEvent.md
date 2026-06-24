Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Class RowSetEvent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

javax.sql.RowSetEvent

All Implemented Interfaces:
:   `Serializable`

---

public class RowSetEvent
extends [EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

An `Event` object generated when an event occurs to a
`RowSet` object. A `RowSetEvent` object is
generated when a single row in a rowset is changed, the whole rowset
is changed, or the rowset cursor moves.

When an event occurs on a `RowSet` object, one of the
`RowSetListener` methods will be sent to all registered
listeners to notify them of the event. An `Event` object
is supplied to the `RowSetListener` method so that the
listener can use it to find out which `RowSet` object is
the source of the event.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.sql.RowSetEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RowSetEvent(RowSet source)`

  Constructs a `RowSetEvent` object initialized with the
  given `RowSet` object.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RowSetEvent

    public RowSetEvent([RowSet](RowSet.md "interface in javax.sql") source)

    Constructs a `RowSetEvent` object initialized with the
    given `RowSet` object.

    Parameters:
    :   `source` - the `RowSet` object whose data has changed or
        whose cursor has moved

    Throws:
    :   `IllegalArgumentException` - if `source` is null.