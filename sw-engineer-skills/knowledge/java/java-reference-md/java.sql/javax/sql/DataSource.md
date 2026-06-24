Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface DataSource

All Superinterfaces:
:   `CommonDataSource`, `Wrapper`

---

public interface DataSource
extends [CommonDataSource](CommonDataSource.md "interface in javax.sql"), [Wrapper](../../java/sql/Wrapper.md "interface in java.sql")

A factory for connections to the physical data source that this
`DataSource` object represents. An alternative to the
`DriverManager` facility, a `DataSource` object
is the preferred means of getting a connection. An object that implements
the `DataSource` interface will typically be
registered with a naming service based on the
Java Naming and Directory (JNDI) API.

The `DataSource` interface is implemented by a driver vendor.
There are three types of implementations:

1. Basic implementation -- produces a standard `Connection`
   object- Connection pooling implementation -- produces a `Connection`
     object that will automatically participate in connection pooling. This
     implementation works with a middle-tier connection pooling manager.- Distributed transaction implementation -- produces a
       `Connection` object that may be used for distributed
       transactions and almost always participates in connection pooling.
       This implementation works with a middle-tier
       transaction manager and almost always with a connection
       pooling manager.

A `DataSource` object has properties that can be modified
when necessary. For example, if the data source is moved to a different
server, the property for the server can be changed. The benefit is that
because the data source's properties can be changed, any code accessing
that data source does not need to be changed.

A driver that is accessed via a `DataSource` object does not
register itself with the `DriverManager`. Rather, a
`DataSource` object is retrieved through a lookup operation
and then used to create a `Connection` object. With a basic
implementation, the connection obtained through a `DataSource`
object is identical to a connection obtained through the
`DriverManager` facility.

An implementation of `DataSource` must include a public no-arg
constructor.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default ConnectionBuilder`

  `createConnectionBuilder()`

  Create a new `ConnectionBuilder` instance

  `Connection`

  `getConnection()`

  Attempts to establish a connection with the data source that
  this `DataSource` object represents.

  `Connection`

  `getConnection(String username,
  String password)`

  Attempts to establish a connection with the data source that
  this `DataSource` object represents.

  `int`

  `getLoginTimeout()`

  Gets the maximum time in seconds that this data source can wait
  while attempting to connect to a database.

  `PrintWriter`

  `getLogWriter()`

  Retrieves the log writer for this `DataSource`
  object.

  `void`

  `setLoginTimeout(int seconds)`

  Sets the maximum time in seconds that this data source will wait
  while attempting to connect to a database.

  `void`

  `setLogWriter(PrintWriter out)`

  Sets the log writer for this `DataSource`
  object to the given `java.io.PrintWriter` object.

  ### Methods inherited from interface javax.sql.[CommonDataSource](CommonDataSource.md "interface in javax.sql")

  `createShardingKeyBuilder, getParentLogger`

  ### Methods inherited from interface java.sql.[Wrapper](../../java/sql/Wrapper.md "interface in java.sql")

  `isWrapperFor, unwrap`

* ## Method Details

  + ### getConnection

    [Connection](../../java/sql/Connection.md "interface in java.sql") getConnection()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Attempts to establish a connection with the data source that
    this `DataSource` object represents.

    Returns:
    :   a connection to the data source

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLTimeoutException` - when the driver has determined that the
        timeout value specified by the `setLoginTimeout` method
        has been exceeded and has at least tried to cancel the
        current database connection attempt
  + ### getConnection

    [Connection](../../java/sql/Connection.md "interface in java.sql") getConnection([String](../../../java.base/java/lang/String.md "class in java.lang") username,
    [String](../../../java.base/java/lang/String.md "class in java.lang") password)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Attempts to establish a connection with the data source that
    this `DataSource` object represents.

    Parameters:
    :   `username` - the database user on whose behalf the connection is
        being made
    :   `password` - the user's password

    Returns:
    :   a connection to the data source

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLTimeoutException` - when the driver has determined that the
        timeout value specified by the `setLoginTimeout` method
        has been exceeded and has at least tried to cancel the
        current database connection attempt

    Since:
    :   1.4
  + ### getLogWriter

    [PrintWriter](../../../java.base/java/io/PrintWriter.md "class in java.io") getLogWriter()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Retrieves the log writer for this `DataSource`
    object.

    The log writer is a character output stream to which all logging
    and tracing messages for this data source will be
    printed. This includes messages printed by the methods of this
    object, messages printed by methods of other objects manufactured
    by this object, and so on. Messages printed to a data source
    specific log writer are not printed to the log writer associated
    with the `java.sql.DriverManager` class. When a
    `DataSource` object is
    created, the log writer is initially null; in other words, the
    default is for logging to be disabled.

    Specified by:
    :   `getLogWriter` in interface `CommonDataSource`

    Returns:
    :   the log writer for this data source or null if
        logging is disabled

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4

    See Also:
    :   - [`CommonDataSource.setLogWriter(java.io.PrintWriter)`](CommonDataSource.md#setLogWriter(java.io.PrintWriter))
  + ### setLogWriter

    void setLogWriter([PrintWriter](../../../java.base/java/io/PrintWriter.md "class in java.io") out)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the log writer for this `DataSource`
    object to the given `java.io.PrintWriter` object.

    The log writer is a character output stream to which all logging
    and tracing messages for this data source will be
    printed. This includes messages printed by the methods of this
    object, messages printed by methods of other objects manufactured
    by this object, and so on. Messages printed to a data source-
    specific log writer are not printed to the log writer associated
    with the `java.sql.DriverManager` class. When a
    `DataSource` object is created the log writer is
    initially null; in other words, the default is for logging to be
    disabled.

    Specified by:
    :   `setLogWriter` in interface `CommonDataSource`

    Parameters:
    :   `out` - the new log writer; to disable logging, set to null

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4

    See Also:
    :   - [`CommonDataSource.getLogWriter()`](CommonDataSource.md#getLogWriter())
  + ### setLoginTimeout

    void setLoginTimeout(int seconds)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the maximum time in seconds that this data source will wait
    while attempting to connect to a database. A value of zero
    specifies that the timeout is the default system timeout
    if there is one; otherwise, it specifies that there is no timeout.
    When a `DataSource` object is created, the login timeout is
    initially zero.

    Specified by:
    :   `setLoginTimeout` in interface `CommonDataSource`

    Parameters:
    :   `seconds` - the data source login time limit

    Throws:
    :   `SQLException` - if a database access error occurs.

    Since:
    :   1.4

    See Also:
    :   - [`CommonDataSource.getLoginTimeout()`](CommonDataSource.md#getLoginTimeout())
  + ### getLoginTimeout

    int getLoginTimeout()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Gets the maximum time in seconds that this data source can wait
    while attempting to connect to a database. A value of zero
    means that the timeout is the default system timeout
    if there is one; otherwise, it means that there is no timeout.
    When a `DataSource` object is created, the login timeout is
    initially zero.

    Specified by:
    :   `getLoginTimeout` in interface `CommonDataSource`

    Returns:
    :   the data source login time limit

    Throws:
    :   `SQLException` - if a database access error occurs.

    Since:
    :   1.4

    See Also:
    :   - [`CommonDataSource.setLoginTimeout(int)`](CommonDataSource.md#setLoginTimeout(int))
  + ### createConnectionBuilder

    default [ConnectionBuilder](../../java/sql/ConnectionBuilder.md "interface in java.sql") createConnectionBuilder()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Create a new `ConnectionBuilder` instance

    Returns:
    :   The ConnectionBuilder instance that was created

    Throws:
    :   `SQLException` - if an error occurs creating the builder
    :   `SQLFeatureNotSupportedException` - if the driver does not support sharding

    Since:
    :   9

    See Also:
    :   - [`ConnectionBuilder`](../../java/sql/ConnectionBuilder.md "interface in java.sql")