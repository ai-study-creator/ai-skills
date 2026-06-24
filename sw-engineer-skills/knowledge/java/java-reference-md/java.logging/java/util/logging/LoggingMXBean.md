Module [java.logging](../../../module-summary.md)

Package [java.util.logging](package-summary.md)

# Interface LoggingMXBean

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
public interface LoggingMXBean

Deprecated.

`LoggingMXBean` is no longer a [`platform MXBean`](../../../../java.management/java/lang/management/PlatformManagedObject.md "interface in java.lang.management") and is replaced
with [`PlatformLoggingMXBean`](../../../../java.management/java/lang/management/PlatformLoggingMXBean.md "interface in java.lang.management").
It will not register in the platform `MBeanServer`.
Use `ManagementFactory.getPlatformMXBean(PlatformLoggingMXBean.class)`
instead.

The management interface for the logging facility.
[`java.lang.management.PlatformLoggingMXBean`](../../../../java.management/java/lang/management/PlatformLoggingMXBean.md "interface in java.lang.management") is the management interface
for logging facility registered in the [`platform MBeanServer`](../../../../java.management/java/lang/management/ManagementFactory.md#getPlatformMBeanServer()).
It is recommended to use the `PlatformLoggingMXBean` obtained via
the [`ManagementFactory.getPlatformMXBean(PlatformLoggingMXBean.class)`](../../../../java.management/java/lang/management/ManagementFactory.md#getPlatformMXBean(java.lang.Class)) method.

Since:
:   1.5

See Also:
:   * [`PlatformLoggingMXBean`](../../../../java.management/java/lang/management/PlatformLoggingMXBean.md "interface in java.lang.management")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `String`

  `getLoggerLevel(String loggerName)`

  Deprecated.

  Gets the name of the log level associated with the specified logger.

  `List<String>`

  `getLoggerNames()`

  Deprecated.

  Returns the list of currently registered logger names.

  `String`

  `getParentLoggerName(String loggerName)`

  Deprecated.

  Returns the name of the parent for the specified logger.

  `void`

  `setLoggerLevel(String loggerName,
  String levelName)`

  Deprecated.

  Sets the specified logger to the specified new level.

* ## Method Details

  + ### getLoggerNames

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getLoggerNames()

    Deprecated.

    Returns the list of currently registered logger names. This method
    calls [`LogManager.getLoggerNames()`](LogManager.md#getLoggerNames()) and returns a list
    of the logger names.

    Returns:
    :   A list of `String` each of which is a
        currently registered `Logger` name.
  + ### getLoggerLevel

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getLoggerLevel([String](../../../../java.base/java/lang/String.md "class in java.lang") loggerName)

    Deprecated.

    Gets the name of the log level associated with the specified logger.
    If the specified logger does not exist, `null`
    is returned.
    This method first finds the logger of the given name and
    then returns the name of the log level by calling:
    > [`Logger.getLevel()`](Logger.md#getLevel()).[`getName()`](Level.md#getName());

    If the `Level` of the specified logger is `null`,
    which means that this logger's effective level is inherited
    from its parent, an empty string will be returned.

    Parameters:
    :   `loggerName` - The name of the `Logger` to be retrieved.

    Returns:
    :   The name of the log level of the specified logger; or
        an empty string if the log level of the specified logger
        is `null`. If the specified logger does not
        exist, `null` is returned.

    See Also:
    :   - [`Logger.getLevel()`](Logger.md#getLevel())
  + ### setLoggerLevel

    void setLoggerLevel([String](../../../../java.base/java/lang/String.md "class in java.lang") loggerName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") levelName)

    Deprecated.

    Sets the specified logger to the specified new level.
    If the `levelName` is not `null`, the level
    of the specified logger is set to the parsed `Level`
    matching the `levelName`.
    If the `levelName` is `null`, the level
    of the specified logger is set to `null` and
    the effective level of the logger is inherited from
    its nearest ancestor with a specific (non-null) level value.

    Parameters:
    :   `loggerName` - The name of the `Logger` to be set.
        Must be non-null.
    :   `levelName` - The name of the level to set on the specified logger,
        or `null` if setting the level to inherit
        from its nearest ancestor.

    Throws:
    :   `IllegalArgumentException` - if the specified logger
        does not exist, or `levelName` is not a valid level name.
    :   `SecurityException` - if a security manager exists and if
        the caller does not have LoggingPermission("control").

    See Also:
    :   - [`Logger.setLevel(java.util.logging.Level)`](Logger.md#setLevel(java.util.logging.Level))
  + ### getParentLoggerName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getParentLoggerName([String](../../../../java.base/java/lang/String.md "class in java.lang") loggerName)

    Deprecated.

    Returns the name of the parent for the specified logger.
    If the specified logger does not exist, `null` is returned.
    If the specified logger is the root `Logger` in the namespace,
    the result will be an empty string.

    Parameters:
    :   `loggerName` - The name of a `Logger`.

    Returns:
    :   the name of the nearest existing parent logger;
        an empty string if the specified logger is the root logger.
        If the specified logger does not exist, `null`
        is returned.