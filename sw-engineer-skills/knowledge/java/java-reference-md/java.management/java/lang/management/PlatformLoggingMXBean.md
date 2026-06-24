Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface PlatformLoggingMXBean

All Superinterfaces:
:   `PlatformManagedObject`

---

public interface PlatformLoggingMXBean
extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

The management interface for the [logging](../../../../java.logging/java/util/logging/package-summary.md) facility.

There is a single global instance of the `PlatformLoggingMXBean`.
The [`ManagementFactory.getPlatformMXBean`](ManagementFactory.md#getPlatformMXBean(java.lang.Class)) method can be used to obtain
the `PlatformLoggingMXBean` object as follows:

```
     PlatformLoggingMXBean logging = ManagementFactory.getPlatformMXBean(PlatformLoggingMXBean.class);
```

The `PlatformLoggingMXBean` object is also registered with the
platform [MBeanServer](ManagementFactory.md#getPlatformMBeanServer()).
The [`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management") for uniquely
identifying the `PlatformLoggingMXBean` within an MBeanServer is:

```
      java.util.logging:type=Logging
```

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getLoggerLevel(String loggerName)`

  Gets the name of the log [level](../../../../java.logging/java/util/logging/Logger.md#getLevel()) associated with the specified logger.

  `List<String>`

  `getLoggerNames()`

  Returns the list of the currently registered
  [logger](../../../../java.logging/java/util/logging/Logger.md "class in java.util.logging") names.

  `String`

  `getParentLoggerName(String loggerName)`

  Returns the name of the
  [parent](../../../../java.logging/java/util/logging/Logger.md#getParent())
  for the specified logger.

  `void`

  `setLoggerLevel(String loggerName,
  String levelName)`

  Sets the specified logger to the specified new
  [level](../../../../java.logging/java/util/logging/Logger.md#setLevel(java.util.logging.Level)).

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getLoggerNames

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getLoggerNames()

    Returns the list of the currently registered
    [logger](../../../../java.logging/java/util/logging/Logger.md "class in java.util.logging") names. This method
    calls [`LogManager.getLoggerNames()`](../../../../java.logging/java/util/logging/LogManager.md#getLoggerNames()) and
    returns a list of the logger names.

    Returns:
    :   A list of `String` each of which is a
        currently registered `Logger` name.
  + ### getLoggerLevel

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getLoggerLevel([String](../../../../java.base/java/lang/String.md "class in java.lang") loggerName)

    Gets the name of the log [level](../../../../java.logging/java/util/logging/Logger.md#getLevel()) associated with the specified logger.
    If the specified logger does not exist, `null`
    is returned.
    This method first finds the logger of the given name and
    then returns the name of the log level by calling:
    > [`Logger.getLevel()`](../../../../java.logging/java/util/logging/Logger.md#getLevel()).[`getName()`](../../../../java.logging/java/util/logging/Level.md#getName());

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
    :   - [`Logger.getLevel()`](../../../../java.logging/java/util/logging/Logger.md#getLevel())
  + ### setLoggerLevel

    void setLoggerLevel([String](../../../../java.base/java/lang/String.md "class in java.lang") loggerName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") levelName)

    Sets the specified logger to the specified new
    [level](../../../../java.logging/java/util/logging/Logger.md#setLevel(java.util.logging.Level)).
    If the `levelName` is not `null`, the level
    of the specified logger is set to the parsed
    [`Level`](../../../../java.logging/java/util/logging/Level.md "class in java.util.logging")
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
    :   - [`Logger.setLevel(java.util.logging.Level)`](../../../../java.logging/java/util/logging/Logger.md#setLevel(java.util.logging.Level))
  + ### getParentLoggerName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getParentLoggerName([String](../../../../java.base/java/lang/String.md "class in java.lang") loggerName)

    Returns the name of the
    [parent](../../../../java.logging/java/util/logging/Logger.md#getParent())
    for the specified logger.
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