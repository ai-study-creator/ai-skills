Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface CommonDataSource

All Known Subinterfaces:
:   `ConnectionPoolDataSource`, `DataSource`, `XADataSource`

---

public interface CommonDataSource

Interface that defines the methods which are common between `DataSource`,
`XADataSource` and `ConnectionPoolDataSource`.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default ShardingKeyBuilder`

  `createShardingKeyBuilder()`

  Creates a new `ShardingKeyBuilder` instance

  `int`

  `getLoginTimeout()`

  Gets the maximum time in seconds that this data source can wait
  while attempting to connect to a database.

  `PrintWriter`

  `getLogWriter()`

  Retrieves the log writer for this `DataSource`
  object.

  `Logger`

  `getParentLogger()`

  Return the parent Logger of all the Loggers used by this data source.

  `void`

  `setLoginTimeout(int seconds)`

  Sets the maximum time in seconds that this data source will wait
  while attempting to connect to a database.

  `void`

  `setLogWriter(PrintWriter out)`

  Sets the log writer for this `DataSource`
  object to the given `java.io.PrintWriter` object.

* ## Method Details

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

    Returns:
    :   the log writer for this data source or null if
        logging is disabled

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`setLogWriter(java.io.PrintWriter)`](#setLogWriter(java.io.PrintWriter))
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

    Parameters:
    :   `out` - the new log writer; to disable logging, set to null

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getLogWriter()`](#getLogWriter())
  + ### setLoginTimeout

    void setLoginTimeout(int seconds)
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Sets the maximum time in seconds that this data source will wait
    while attempting to connect to a database. A value of zero
    specifies that the timeout is the default system timeout
    if there is one; otherwise, it specifies that there is no timeout.
    When a `DataSource` object is created, the login timeout is
    initially zero.

    Parameters:
    :   `seconds` - the data source login time limit

    Throws:
    :   `SQLException` - if a database access error occurs.

    See Also:
    :   - [`getLoginTimeout()`](#getLoginTimeout())
  + ### getLoginTimeout

    int getLoginTimeout()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Gets the maximum time in seconds that this data source can wait
    while attempting to connect to a database. A value of zero
    means that the timeout is the default system timeout
    if there is one; otherwise, it means that there is no timeout.
    When a `DataSource` object is created, the login timeout is
    initially zero.

    Returns:
    :   the data source login time limit

    Throws:
    :   `SQLException` - if a database access error occurs.

    See Also:
    :   - [`setLoginTimeout(int)`](#setLoginTimeout(int))
  + ### getParentLogger

    [Logger](../../../java.logging/java/util/logging/Logger.md "class in java.util.logging") getParentLogger()
    throws [SQLFeatureNotSupportedException](../../java/sql/SQLFeatureNotSupportedException.md "class in java.sql")

    Return the parent Logger of all the Loggers used by this data source. This
    should be the Logger farthest from the root Logger that is
    still an ancestor of all of the Loggers used by this data source. Configuring
    this Logger will affect all of the log messages generated by the data source.
    In the worst case, this may be the root Logger.

    Returns:
    :   the parent Logger for this data source

    Throws:
    :   `SQLFeatureNotSupportedException` - if the data source does not use
        `java.util.logging`

    Since:
    :   1.7
  + ### createShardingKeyBuilder

    default [ShardingKeyBuilder](../../java/sql/ShardingKeyBuilder.md "interface in java.sql") createShardingKeyBuilder()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Creates a new `ShardingKeyBuilder` instance

    Returns:
    :   The ShardingKeyBuilder instance that was created

    Throws:
    :   `SQLException` - if an error occurs creating the builder
    :   `SQLFeatureNotSupportedException` - if the driver does not support this method

    Since:
    :   9

    See Also:
    :   - [`ShardingKeyBuilder`](../../java/sql/ShardingKeyBuilder.md "interface in java.sql")