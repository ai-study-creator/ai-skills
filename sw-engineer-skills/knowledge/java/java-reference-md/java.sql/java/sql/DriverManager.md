Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class DriverManager

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.sql.DriverManager

---

public class DriverManager
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The basic service for managing a set of JDBC drivers.

**NOTE:** The [`DataSource`](../../javax/sql/DataSource.md "interface in javax.sql") interface, provides
another way to connect to a data source.
The use of a `DataSource` object is the preferred means of
connecting to a data source.

As part of its initialization, the `DriverManager` class will
attempt to load available JDBC drivers by using:

* The `jdbc.drivers` system property which contains a
  colon separated list of fully qualified class names of JDBC drivers. Each
  driver is loaded using the [system class loader](../../../java.base/java/lang/ClassLoader.md#getSystemClassLoader()):
  + `jdbc.drivers=foo.bah.Driver:wombat.sql.Driver:bad.taste.ourDriver`* Service providers of the `java.sql.Driver` class, that are loaded
    via the service-provider loading mechanism.

Since:
:   1.1

See Also:
:   * [`Driver`](Driver.md "interface in java.sql")
    * [`Connection`](Connection.md "interface in java.sql")

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static void`

  `deregisterDriver(Driver driver)`

  Removes the specified driver from the `DriverManager`'s list of
  registered drivers.

  `static Stream<Driver>`

  `drivers()`

  Retrieves a Stream with all of the currently loaded JDBC drivers
  to which the current caller has access.

  `static Connection`

  `getConnection(String url)`

  Attempts to establish a connection to the given database URL.

  `static Connection`

  `getConnection(String url,
  String user,
  String password)`

  Attempts to establish a connection to the given database URL.

  `static Connection`

  `getConnection(String url,
  Properties info)`

  Attempts to establish a connection to the given database URL.

  `static Driver`

  `getDriver(String url)`

  Attempts to locate a driver that understands the given URL.

  `static Enumeration<Driver>`

  `getDrivers()`

  Retrieves an Enumeration with all of the currently loaded JDBC drivers
  to which the current caller has access.

  `static int`

  `getLoginTimeout()`

  Gets the maximum time in seconds that a driver can wait
  when attempting to log in to a database.

  `static PrintStream`

  `getLogStream()`

  Deprecated.

  Use `getLogWriter`

  `static PrintWriter`

  `getLogWriter()`

  Retrieves the log writer.

  `static void`

  `println(String message)`

  Prints a message to the current JDBC log stream.

  `static void`

  `registerDriver(Driver driver)`

  Registers the given driver with the `DriverManager`.

  `static void`

  `registerDriver(Driver driver,
  DriverAction da)`

  Registers the given driver with the `DriverManager`.

  `static void`

  `setLoginTimeout(int seconds)`

  Sets the maximum time in seconds that a driver will wait
  while attempting to connect to a database once the driver has
  been identified.

  `static void`

  `setLogStream(PrintStream out)`

  Deprecated.

  Use `setLogWriter`

  `static void`

  `setLogWriter(PrintWriter out)`

  Sets the logging/tracing `PrintWriter` object
  that is used by the `DriverManager` and all drivers.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getLogWriter

    public static [PrintWriter](../../../java.base/java/io/PrintWriter.md "class in java.io") getLogWriter()

    Retrieves the log writer.
    The `getLogWriter` and `setLogWriter`
    methods should be used instead
    of the `get/setlogStream` methods, which are deprecated.

    Returns:
    :   a `java.io.PrintWriter` object

    Since:
    :   1.2

    See Also:
    :   - [`setLogWriter(java.io.PrintWriter)`](#setLogWriter(java.io.PrintWriter))
  + ### setLogWriter

    public static void setLogWriter([PrintWriter](../../../java.base/java/io/PrintWriter.md "class in java.io") out)

    Sets the logging/tracing `PrintWriter` object
    that is used by the `DriverManager` and all drivers.

    If a security manager exists, its `checkPermission`
    method is first called with a `SQLPermission("setLog")`
    permission to check that the caller is allowed to call `setLogWriter`.

    Parameters:
    :   `out` - the new logging/tracing `PrintStream` object;
        `null` to disable logging and tracing

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method denies permission to set the log writer.

    Since:
    :   1.2

    See Also:
    :   - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`getLogWriter()`](#getLogWriter())
  + ### getConnection

    public static [Connection](Connection.md "interface in java.sql") getConnection([String](../../../java.base/java/lang/String.md "class in java.lang") url,
    [Properties](../../../java.base/java/util/Properties.md "class in java.util") info)
    throws [SQLException](SQLException.md "class in java.sql")

    Attempts to establish a connection to the given database URL.
    The `DriverManager` attempts to select an appropriate driver from
    the set of registered JDBC drivers.

    **Note:** If a property is specified as part of the `url` and
    is also specified in the `Properties` object, it is
    implementation-defined as to which value will take precedence.
    For maximum portability, an application should only specify a
    property once.

    Parameters:
    :   `url` - a database url of the form
         `jdbc:subprotocol:subname`
    :   `info` - a list of arbitrary string tag/value pairs as
        connection arguments; normally at least a "user" and
        "password" property should be included

    Returns:
    :   a Connection to the URL

    Throws:
    :   `SQLException` - if a database access error occurs or the url is
        `null`
    :   `SQLTimeoutException` - when the driver has determined that the
        timeout value specified by the `setLoginTimeout` method
        has been exceeded and has at least tried to cancel the
        current database connection attempt
  + ### getConnection

    public static [Connection](Connection.md "interface in java.sql") getConnection([String](../../../java.base/java/lang/String.md "class in java.lang") url,
    [String](../../../java.base/java/lang/String.md "class in java.lang") user,
    [String](../../../java.base/java/lang/String.md "class in java.lang") password)
    throws [SQLException](SQLException.md "class in java.sql")

    Attempts to establish a connection to the given database URL.
    The `DriverManager` attempts to select an appropriate driver from
    the set of registered JDBC drivers.

    **Note:** If the `user` or `password` property are
    also specified as part of the `url`, it is
    implementation-defined as to which value will take precedence.
    For maximum portability, an application should only specify a
    property once.

    Parameters:
    :   `url` - a database url of the form
        `jdbc:subprotocol:subname`
    :   `user` - the database user on whose behalf the connection is being
        made
    :   `password` - the user's password

    Returns:
    :   a connection to the URL

    Throws:
    :   `SQLException` - if a database access error occurs or the url is
        `null`
    :   `SQLTimeoutException` - when the driver has determined that the
        timeout value specified by the `setLoginTimeout` method
        has been exceeded and has at least tried to cancel the
        current database connection attempt
  + ### getConnection

    public static [Connection](Connection.md "interface in java.sql") getConnection([String](../../../java.base/java/lang/String.md "class in java.lang") url)
    throws [SQLException](SQLException.md "class in java.sql")

    Attempts to establish a connection to the given database URL.
    The `DriverManager` attempts to select an appropriate driver from
    the set of registered JDBC drivers.

    Parameters:
    :   `url` - a database url of the form
         `jdbc:subprotocol:subname`

    Returns:
    :   a connection to the URL

    Throws:
    :   `SQLException` - if a database access error occurs or the url is
        `null`
    :   `SQLTimeoutException` - when the driver has determined that the
        timeout value specified by the `setLoginTimeout` method
        has been exceeded and has at least tried to cancel the
        current database connection attempt
  + ### getDriver

    public static [Driver](Driver.md "interface in java.sql") getDriver([String](../../../java.base/java/lang/String.md "class in java.lang") url)
    throws [SQLException](SQLException.md "class in java.sql")

    Attempts to locate a driver that understands the given URL.
    The `DriverManager` attempts to select an appropriate driver from
    the set of registered JDBC drivers.

    Parameters:
    :   `url` - a database URL of the form
        `jdbc:subprotocol:subname`

    Returns:
    :   a `Driver` object representing a driver
        that can connect to the given URL

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### registerDriver

    public static void registerDriver([Driver](Driver.md "interface in java.sql") driver)
    throws [SQLException](SQLException.md "class in java.sql")

    Registers the given driver with the `DriverManager`.
    A newly-loaded driver class should call
    the method `registerDriver` to make itself
    known to the `DriverManager`. If the driver is currently
    registered, no action is taken.

    Parameters:
    :   `driver` - the new JDBC Driver that is to be registered with the
        `DriverManager`

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `NullPointerException` - if `driver` is null
  + ### registerDriver

    public static void registerDriver([Driver](Driver.md "interface in java.sql") driver,
    [DriverAction](DriverAction.md "interface in java.sql") da)
    throws [SQLException](SQLException.md "class in java.sql")

    Registers the given driver with the `DriverManager`.
    A newly-loaded driver class should call
    the method `registerDriver` to make itself
    known to the `DriverManager`. If the driver is currently
    registered, no action is taken.

    Parameters:
    :   `driver` - the new JDBC Driver that is to be registered with the
        `DriverManager`
    :   `da` - the `DriverAction` implementation to be used when
        `DriverManager#deregisterDriver` is called

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `NullPointerException` - if `driver` is null

    Since:
    :   1.8
  + ### deregisterDriver

    public static void deregisterDriver([Driver](Driver.md "interface in java.sql") driver)
    throws [SQLException](SQLException.md "class in java.sql")

    Removes the specified driver from the `DriverManager`'s list of
    registered drivers.

    If a `null` value is specified for the driver to be removed, then no
    action is taken.

    If a security manager exists, its `checkPermission`
    method is first called with a `SQLPermission("deregisterDriver")`
    permission to check that the caller is allowed to deregister a JDBC Driver.

    If the specified driver is not found in the list of registered drivers,
    then no action is taken. If the driver was found, it will be removed
    from the list of registered drivers.

    If a `DriverAction` instance was specified when the JDBC driver was
    registered, its deregister method will be called
    prior to the driver being removed from the list of registered drivers.

    Parameters:
    :   `driver` - the JDBC Driver to remove

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method denies permission to deregister a driver.

    See Also:
    :   - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
  + ### getDrivers

    public static [Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<[Driver](Driver.md "interface in java.sql")> getDrivers()

    Retrieves an Enumeration with all of the currently loaded JDBC drivers
    to which the current caller has access.

    **Note:** The classname of a driver can be found using
    `d.getClass().getName()`

    Returns:
    :   the list of JDBC Drivers loaded by the caller's class loader

    See Also:
    :   - [`drivers()`](#drivers())
  + ### drivers

    public static [Stream](../../../java.base/java/util/stream/Stream.md "interface in java.util.stream")<[Driver](Driver.md "interface in java.sql")> drivers()

    Retrieves a Stream with all of the currently loaded JDBC drivers
    to which the current caller has access.

    Returns:
    :   the stream of JDBC Drivers loaded by the caller's class loader

    Since:
    :   9
  + ### setLoginTimeout

    public static void setLoginTimeout(int seconds)

    Sets the maximum time in seconds that a driver will wait
    while attempting to connect to a database once the driver has
    been identified.

    Parameters:
    :   `seconds` - the login time limit in seconds; zero means there is no limit

    See Also:
    :   - [`getLoginTimeout()`](#getLoginTimeout())
  + ### getLoginTimeout

    public static int getLoginTimeout()

    Gets the maximum time in seconds that a driver can wait
    when attempting to log in to a database.

    Returns:
    :   the driver login time limit in seconds

    See Also:
    :   - [`setLoginTimeout(int)`](#setLoginTimeout(int))
  + ### setLogStream

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public static void setLogStream([PrintStream](../../../java.base/java/io/PrintStream.md "class in java.io") out)

    Deprecated.

    Use `setLogWriter`

    Sets the logging/tracing PrintStream that is used
    by the `DriverManager`
    and all drivers.

    If a security manager exists, its `checkPermission`
    method is first called with a `SQLPermission("setLog")`
    permission to check that the caller is allowed to call `setLogStream`.

    Parameters:
    :   `out` - the new logging/tracing PrintStream; to disable, set to `null`

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method denies permission to set the log stream.

    See Also:
    :   - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`getLogStream()`](#getLogStream())
  + ### getLogStream

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.2")
    public static [PrintStream](../../../java.base/java/io/PrintStream.md "class in java.io") getLogStream()

    Deprecated.

    Use `getLogWriter`

    Retrieves the logging/tracing PrintStream that is used by the `DriverManager`
    and all drivers.

    Returns:
    :   the logging/tracing PrintStream; if disabled, is `null`

    See Also:
    :   - [`setLogStream(java.io.PrintStream)`](#setLogStream(java.io.PrintStream))
  + ### println

    public static void println([String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Prints a message to the current JDBC log stream.

    Parameters:
    :   `message` - a log or tracing message