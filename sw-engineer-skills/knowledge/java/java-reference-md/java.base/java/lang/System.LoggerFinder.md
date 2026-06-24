Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class System.LoggerFinder

[java.lang.Object](Object.md "class in java.lang")

java.lang.System.LoggerFinder

Enclosing class:
:   `System`

---

public abstract static class System.LoggerFinder
extends [Object](Object.md "class in java.lang")

The `LoggerFinder` service is responsible for creating, managing,
and configuring loggers to the underlying framework it uses.
A logger finder is a concrete implementation of this class that has a
zero-argument constructor and implements the abstract methods defined
by this class.
The loggers returned from a logger finder are capable of routing log
messages to the logging backend this provider supports.
A given invocation of the Java Runtime maintains a single
system-wide LoggerFinder instance that is loaded as follows:

* First it finds any custom `LoggerFinder` provider
  using the [`ServiceLoader`](../util/ServiceLoader.md "class in java.util") facility with the
  [system class
  loader](ClassLoader.md#getSystemClassLoader()).
* If no `LoggerFinder` provider is found, the system default
  `LoggerFinder` implementation will be used.

An application can replace the logging backend
*even when the java.logging module is present*, by simply providing
and declaring an implementation of the [`System.LoggerFinder`](System.LoggerFinder.md "class in java.lang") service.

**Default Implementation**

The system default `LoggerFinder` implementation uses
`java.util.logging` as the backend framework when the
`java.logging` module is present.
It returns a [logger](System.Logger.md "interface in java.lang") instance
that will route log messages to a [`java.util.logging.Logger`](../../../java.logging/java/util/logging/Logger.md "class in java.util.logging"). Otherwise, if `java.logging` is not
present, the default implementation will return a simple logger
instance that will route log messages of `INFO` level and above to
the console (`System.err`).

**Logging Configuration**

[Logger](System.Logger.md "interface in java.lang") instances obtained from the
`LoggerFinder` factory methods are not directly configurable by
the application. Configuration is the responsibility of the underlying
logging backend, and usually requires using APIs specific to that backend.

For the default `LoggerFinder` implementation
using `java.util.logging` as its backend, refer to
[`java.util.logging`](../../../java.logging/java/util/logging/package-summary.md) for logging configuration.
For the default `LoggerFinder` implementation returning simple loggers
when the `java.logging` module is absent, the configuration
is implementation dependent.

Usually an application that uses a logging framework will log messages
through a logger facade defined (or supported) by that framework.
Applications that wish to use an external framework should log
through the facade associated with that framework.

A system class that needs to log messages will typically obtain
a [`System.Logger`](System.Logger.md "interface in java.lang") instance to route messages to the logging
framework selected by the application.

Libraries and classes that only need loggers to produce log messages
should not attempt to configure loggers by themselves, as that
would make them dependent from a specific implementation of the
`LoggerFinder` service.

In addition, when a security manager is present, loggers provided to
system classes should not be directly configurable through the logging
backend without requiring permissions.
  
It is the responsibility of the provider of
the concrete `LoggerFinder` implementation to ensure that
these loggers are not configured by untrusted code without proper
permission checks, as configuration performed on such loggers usually
affects all applications in the same Java Runtime.

**Message Levels and Mapping to backend levels**

A logger finder is responsible for mapping from a `System.Logger.Level` to a level supported by the logging backend it uses.
  
The default LoggerFinder using `java.util.logging` as the backend
maps `System.Logger` levels to
[java.util.logging](../../../java.logging/java/util/logging/Level.md "class in java.util.logging") levels
of corresponding severity - as described in [`Logger.Level`](System.Logger.Level.md "enum class in java.lang").

Since:
:   9

See Also:
:   * [`System`](System.md "class in java.lang")
    * [`System.Logger`](System.Logger.md "interface in java.lang")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `LoggerFinder()`

  Creates a new instance of `LoggerFinder`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `System.Logger`

  `getLocalizedLogger(String name,
  ResourceBundle bundle,
  Module module)`

  Returns a localizable instance of [`Logger`](System.Logger.md "interface in java.lang")
  for the given `module`.

  `abstract System.Logger`

  `getLogger(String name,
  Module module)`

  Returns an instance of [`Logger`](System.Logger.md "interface in java.lang")
  for the given `module`.

  `static System.LoggerFinder`

  `getLoggerFinder()`

  Returns the `LoggerFinder` instance.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### LoggerFinder

    protected LoggerFinder()

    Creates a new instance of `LoggerFinder`.

    Throws:
    :   `SecurityException` - if a security manager is present and its
        `checkPermission` method doesn't allow the
        `RuntimePermission("loggerFinder")`.
* ## Method Details

  + ### getLogger

    public abstract [System.Logger](System.Logger.md "interface in java.lang") getLogger([String](String.md "class in java.lang") name,
    [Module](Module.md "class in java.lang") module)

    Returns an instance of [`Logger`](System.Logger.md "interface in java.lang")
    for the given `module`.

    Parameters:
    :   `name` - the name of the logger.
    :   `module` - the module for which the logger is being requested.

    Returns:
    :   a [`logger`](System.Logger.md "interface in java.lang") suitable for use within the given
        module.

    Throws:
    :   `NullPointerException` - if `name` is `null` or
        `module` is `null`.
    :   `SecurityException` - if a security manager is present and its
        `checkPermission` method doesn't allow the
        `RuntimePermission("loggerFinder")`.
  + ### getLocalizedLogger

    public [System.Logger](System.Logger.md "interface in java.lang") getLocalizedLogger([String](String.md "class in java.lang") name,
    [ResourceBundle](../util/ResourceBundle.md "class in java.util") bundle,
    [Module](Module.md "class in java.lang") module)

    Returns a localizable instance of [`Logger`](System.Logger.md "interface in java.lang")
    for the given `module`.
    The returned logger will use the provided resource bundle for
    message localization.

    Parameters:
    :   `name` - the name of the logger.
    :   `bundle` - a resource bundle; can be `null`.
    :   `module` - the module for which the logger is being requested.

    Returns:
    :   an instance of [`Logger`](System.Logger.md "interface in java.lang") which will use the
        provided resource bundle for message localization.

    Throws:
    :   `NullPointerException` - if `name` is `null` or
        `module` is `null`.
    :   `SecurityException` - if a security manager is present and its
        `checkPermission` method doesn't allow the
        `RuntimePermission("loggerFinder")`.
  + ### getLoggerFinder

    public static [System.LoggerFinder](System.LoggerFinder.md "class in java.lang") getLoggerFinder()

    Returns the `LoggerFinder` instance. There is one
    single system-wide `LoggerFinder` instance in
    the Java Runtime. See the class specification of how the
    [`LoggerFinder`](System.LoggerFinder.md "class in java.lang") implementation is located and
    loaded.

    Returns:
    :   the [`LoggerFinder`](System.LoggerFinder.md "class in java.lang") instance.

    Throws:
    :   `SecurityException` - if a security manager is present and its
        `checkPermission` method doesn't allow the
        `RuntimePermission("loggerFinder")`.