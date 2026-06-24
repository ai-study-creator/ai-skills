Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface ConnectionPoolDataSource

All Superinterfaces:
:   `CommonDataSource`

---

public interface ConnectionPoolDataSource
extends [CommonDataSource](CommonDataSource.md "interface in javax.sql")

A factory for `PooledConnection`
objects. An object that implements this interface will typically be
registered with a naming service that is based on the
Java Naming and Directory Interface
(JNDI).

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default PooledConnectionBuilder`

  `createPooledConnectionBuilder()`

  Creates a new `PooledConnectionBuilder` instance

  `int`

  `getLoginTimeout()`

  Gets the maximum time in seconds that this data source can wait
  while attempting to connect to a database.

  `PrintWriter`

  `getLogWriter()`

  Retrieves the log writer for this `DataSource`
  object.

  `PooledConnection`

  `getPooledConnection()`

  Attempts to establish a physical database connection that can
  be used as a pooled connection.

  `PooledConnection`

  `getPooledConnection(String user,
  String password)`

  Attempts to establish a physical database connection that can
  be used as a pooled connection.

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

* ## Method Details

  + ### getPooledConnection

    [PooledConnection](PooledConnection.md "interface in javax.sql") getPooledConnection()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Attempts to establish a physical database connection that can
    be used as a pooled connection.

    Returns:
    :   a `PooledConnection` object that is a physical
        connection to the database that this
        `ConnectionPoolDataSource` object represents

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.4
  + ### getPooledConnection

    [PooledConnection](PooledConnection.md "interface in javax.sql") getPooledConnection([String](../../../java.base/java/lang/String.md "class in java.lang") user,
    [String](../../../java.base/java/lang/String.md "class in java.lang") password)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Attempts to establish a physical database connection that can
    be used as a pooled connection.

    Parameters:
    :   `user` - the database user on whose behalf the connection is being made
    :   `password` - the user's password

    Returns:
    :   a `PooledConnection` object that is a physical
        connection to the database that this
        `ConnectionPoolDataSource` object represents

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

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
  + ### createPooledConnectionBuilder

    default [PooledConnectionBuilder](PooledConnectionBuilder.md "interface in javax.sql") createPooledConnectionBuilder()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Creates a new `PooledConnectionBuilder` instance

    Returns:
    :   The ConnectionBuilder instance that was created

    Throws:
    :   `SQLException` - if an error occurs creating the builder
    :   `SQLFeatureNotSupportedException` - if the driver does not support sharding

    Since:
    :   9

    See Also:
    :   - [`PooledConnectionBuilder`](PooledConnectionBuilder.md "interface in javax.sql")