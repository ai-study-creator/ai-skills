Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Class StatementEvent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

javax.sql.StatementEvent

All Implemented Interfaces:
:   `Serializable`

---

public class StatementEvent
extends [EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

A `StatementEvent` is sent to all `StatementEventListener`s which were
registered with a `PooledConnection`. This occurs when the driver determines that a
`PreparedStatement` that is associated with the `PooledConnection` has been closed or the driver determines
is invalid.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.sql.StatementEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StatementEvent(PooledConnection con,
  PreparedStatement statement)`

  Constructs a `StatementEvent` with the specified `PooledConnection` and
  `PreparedStatement`.

  `StatementEvent(PooledConnection con,
  PreparedStatement statement,
  SQLException exception)`

  Constructs a `StatementEvent` with the specified `PooledConnection`,
  `PreparedStatement` and `SQLException`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `SQLException`

  `getSQLException()`

  Returns the `SQLException` the driver is about to throw

  `PreparedStatement`

  `getStatement()`

  Returns the `PreparedStatement` that is being closed or is invalid

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StatementEvent

    public StatementEvent([PooledConnection](PooledConnection.md "interface in javax.sql") con,
    [PreparedStatement](../../java/sql/PreparedStatement.md "interface in java.sql") statement)

    Constructs a `StatementEvent` with the specified `PooledConnection` and
    `PreparedStatement`. The `SQLException` contained in the event defaults to
    null.

    Parameters:
    :   `con` - The `PooledConnection` that the closed or invalid
        `PreparedStatement`is associated with.
    :   `statement` - The `PreparedStatement` that is being closed or is invalid

    Throws:
    :   `IllegalArgumentException` - if `con` is null.

    Since:
    :   1.6
  + ### StatementEvent

    public StatementEvent([PooledConnection](PooledConnection.md "interface in javax.sql") con,
    [PreparedStatement](../../java/sql/PreparedStatement.md "interface in java.sql") statement,
    [SQLException](../../java/sql/SQLException.md "class in java.sql") exception)

    Constructs a `StatementEvent` with the specified `PooledConnection`,
    `PreparedStatement` and `SQLException`

    Parameters:
    :   `con` - The `PooledConnection` that the closed or invalid `PreparedStatement`
        is associated with.
    :   `statement` - The `PreparedStatement` that is being closed or is invalid
    :   `exception` - The `SQLException` the driver is about to throw to
        the application

    Throws:
    :   `IllegalArgumentException` - if `con` is null.

    Since:
    :   1.6
* ## Method Details

  + ### getStatement

    public [PreparedStatement](../../java/sql/PreparedStatement.md "interface in java.sql") getStatement()

    Returns the `PreparedStatement` that is being closed or is invalid

    Returns:
    :   The `PreparedStatement` that is being closed or is invalid

    Since:
    :   1.6
  + ### getSQLException

    public [SQLException](../../java/sql/SQLException.md "class in java.sql") getSQLException()

    Returns the `SQLException` the driver is about to throw

    Returns:
    :   The `SQLException` the driver is about to throw

    Since:
    :   1.6