Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Class ConnectionEvent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

javax.sql.ConnectionEvent

All Implemented Interfaces:
:   `Serializable`

---

public class ConnectionEvent
extends [EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

An `Event` object that provides information about the
source of a connection-related event. `ConnectionEvent`
objects are generated when an application closes a pooled connection
and when an error occurs. The `ConnectionEvent` object
contains two kinds of information:

* The pooled connection closed by the application* In the case of an error event, the `SQLException`
    about to be thrown to the application

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.sql.ConnectionEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConnectionEvent(PooledConnection con)`

  Constructs a `ConnectionEvent` object initialized with
  the given `PooledConnection` object.

  `ConnectionEvent(PooledConnection con,
  SQLException ex)`

  Constructs a `ConnectionEvent` object initialized with
  the given `PooledConnection` object and
  `SQLException` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SQLException`

  `getSQLException()`

  Retrieves the `SQLException` for this
  `ConnectionEvent` object.

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ConnectionEvent

    public ConnectionEvent([PooledConnection](PooledConnection.md "interface in javax.sql") con)

    Constructs a `ConnectionEvent` object initialized with
    the given `PooledConnection` object. `SQLException`
    defaults to `null`.

    Parameters:
    :   `con` - the pooled connection that is the source of the event

    Throws:
    :   `IllegalArgumentException` - if `con` is null.
  + ### ConnectionEvent

    public ConnectionEvent([PooledConnection](PooledConnection.md "interface in javax.sql") con,
    [SQLException](../../java/sql/SQLException.md "class in java.sql") ex)

    Constructs a `ConnectionEvent` object initialized with
    the given `PooledConnection` object and
    `SQLException` object.

    Parameters:
    :   `con` - the pooled connection that is the source of the event
    :   `ex` - the SQLException about to be thrown to the application

    Throws:
    :   `IllegalArgumentException` - if `con` is null.
* ## Method Details

  + ### getSQLException

    public [SQLException](../../java/sql/SQLException.md "class in java.sql") getSQLException()

    Retrieves the `SQLException` for this
    `ConnectionEvent` object. May be `null`.

    Returns:
    :   the SQLException about to be thrown or `null`