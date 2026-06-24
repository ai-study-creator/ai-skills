Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface System.Logger

Enclosing class:
:   `System`

---

public static interface System.Logger

`System.Logger` instances log messages that will be
routed to the underlying logging framework the [`LoggerFinder`](System.LoggerFinder.md "class in java.lang") uses.
`System.Logger` instances are typically obtained from
the [`System`](System.md "class in java.lang") class, by calling
[`System.getLogger(loggerName)`](System.md#getLogger(java.lang.String))
or [`System.getLogger(loggerName, bundle)`](System.md#getLogger(java.lang.String,java.util.ResourceBundle)).

Since:
:   9

See Also:
:   * [`System.getLogger(java.lang.String)`](System.md#getLogger(java.lang.String))
    * [`System.getLogger(java.lang.String, java.util.ResourceBundle)`](System.md#getLogger(java.lang.String,java.util.ResourceBundle))
    * [`System.LoggerFinder`](System.LoggerFinder.md "class in java.lang")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static enum`

  `System.Logger.Level`

  System [loggers](System.Logger.md "interface in java.lang") levels.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the name of this logger.

  `boolean`

  `isLoggable(System.Logger.Level level)`

  Checks if a message of the given level would be logged by
  this logger.

  `default void`

  `log(System.Logger.Level level,
  Object obj)`

  Logs a message produced from the given object.

  `default void`

  `log(System.Logger.Level level,
  String msg)`

  Logs a message.

  `default void`

  `log(System.Logger.Level level,
  String format,
  Object... params)`

  Logs a message with an optional list of parameters.

  `default void`

  `log(System.Logger.Level level,
  String msg,
  Throwable thrown)`

  Logs a message associated with a given throwable.

  `default void`

  `log(System.Logger.Level level,
  Supplier<String> msgSupplier)`

  Logs a lazily supplied message.

  `default void`

  `log(System.Logger.Level level,
  Supplier<String> msgSupplier,
  Throwable thrown)`

  Logs a lazily supplied message associated with a given throwable.

  `void`

  `log(System.Logger.Level level,
  ResourceBundle bundle,
  String format,
  Object... params)`

  Logs a message with resource bundle and an optional list of
  parameters.

  `void`

  `log(System.Logger.Level level,
  ResourceBundle bundle,
  String msg,
  Throwable thrown)`

  Logs a localized message associated with a given throwable.

* ## Method Details

  + ### getName

    [String](String.md "class in java.lang") getName()

    Returns the name of this logger.

    Returns:
    :   the logger name.
  + ### isLoggable

    boolean isLoggable([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level)

    Checks if a message of the given level would be logged by
    this logger.

    Parameters:
    :   `level` - the log message level.

    Returns:
    :   `true` if the given log message level is currently
        being logged.

    Throws:
    :   `NullPointerException` - if `level` is `null`.
  + ### log

    default void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [String](String.md "class in java.lang") msg)

    Logs a message.

    Parameters:
    :   `level` - the log message level.
    :   `msg` - the string message (or a key in the message catalog, if
        this logger is a [`localized logger`](System.LoggerFinder.md#getLocalizedLogger(java.lang.String,java.util.ResourceBundle,java.lang.Module)));
        can be `null`.

    Throws:
    :   `NullPointerException` - if `level` is `null`.
  + ### log

    default void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [Supplier](../util/function/Supplier.md "interface in java.util.function")<[String](String.md "class in java.lang")> msgSupplier)

    Logs a lazily supplied message.
    If the logger is currently enabled for the given log message level
    then a message is logged that is the result produced by the
    given supplier function. Otherwise, the supplier is not operated on.

    Parameters:
    :   `level` - the log message level.
    :   `msgSupplier` - a supplier function that produces a message.

    Throws:
    :   `NullPointerException` - if `level` is `null`,
        or `msgSupplier` is `null`.
  + ### log

    default void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [Object](Object.md "class in java.lang") obj)

    Logs a message produced from the given object.
    If the logger is currently enabled for the given log message level then
    a message is logged that, by default, is the result produced from
    calling toString on the given object.
    Otherwise, the object is not operated on.

    Parameters:
    :   `level` - the log message level.
    :   `obj` - the object to log.

    Throws:
    :   `NullPointerException` - if `level` is `null`, or
        `obj` is `null`.
  + ### log

    default void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [String](String.md "class in java.lang") msg,
    [Throwable](Throwable.md "class in java.lang") thrown)

    Logs a message associated with a given throwable.

    Parameters:
    :   `level` - the log message level.
    :   `msg` - the string message (or a key in the message catalog, if
        this logger is a [`localized logger`](System.LoggerFinder.md#getLocalizedLogger(java.lang.String,java.util.ResourceBundle,java.lang.Module)));
        can be `null`.
    :   `thrown` - a `Throwable` associated with the log message;
        can be `null`.

    Throws:
    :   `NullPointerException` - if `level` is `null`.
  + ### log

    default void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [Supplier](../util/function/Supplier.md "interface in java.util.function")<[String](String.md "class in java.lang")> msgSupplier,
    [Throwable](Throwable.md "class in java.lang") thrown)

    Logs a lazily supplied message associated with a given throwable.
    If the logger is currently enabled for the given log message level
    then a message is logged that is the result produced by the
    given supplier function. Otherwise, the supplier is not operated on.

    Parameters:
    :   `level` - one of the log message level identifiers.
    :   `msgSupplier` - a supplier function that produces a message.
    :   `thrown` - a `Throwable` associated with log message;
        can be `null`.

    Throws:
    :   `NullPointerException` - if `level` is `null`, or
        `msgSupplier` is `null`.
  + ### log

    default void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [String](String.md "class in java.lang") format,
    [Object](Object.md "class in java.lang")... params)

    Logs a message with an optional list of parameters.

    Parameters:
    :   `level` - one of the log message level identifiers.
    :   `format` - the string message format in [`MessageFormat`](../text/MessageFormat.md "class in java.text") format, (or a key in the message
        catalog, if this logger is a [`localized logger`](System.LoggerFinder.md#getLocalizedLogger(java.lang.String,java.util.ResourceBundle,java.lang.Module)));
        can be `null`.
    :   `params` - an optional list of parameters to the message (may be
        none).

    Throws:
    :   `NullPointerException` - if `level` is `null`.
  + ### log

    void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [ResourceBundle](../util/ResourceBundle.md "class in java.util") bundle,
    [String](String.md "class in java.lang") msg,
    [Throwable](Throwable.md "class in java.lang") thrown)

    Logs a localized message associated with a given throwable.
    If the given resource bundle is non-`null`, the `msg`
    string is localized using the given resource bundle.
    Otherwise the `msg` string is not localized.

    Parameters:
    :   `level` - the log message level.
    :   `bundle` - a resource bundle to localize `msg`; can be
        `null`.
    :   `msg` - the string message (or a key in the message catalog,
        if `bundle` is not `null`); can be `null`.
    :   `thrown` - a `Throwable` associated with the log message;
        can be `null`.

    Throws:
    :   `NullPointerException` - if `level` is `null`.
  + ### log

    void log([System.Logger.Level](System.Logger.Level.md "enum class in java.lang") level,
    [ResourceBundle](../util/ResourceBundle.md "class in java.util") bundle,
    [String](String.md "class in java.lang") format,
    [Object](Object.md "class in java.lang")... params)

    Logs a message with resource bundle and an optional list of
    parameters.
    If the given resource bundle is non-`null`, the `format`
    string is localized using the given resource bundle.
    Otherwise the `format` string is not localized.

    Parameters:
    :   `level` - the log message level.
    :   `bundle` - a resource bundle to localize `format`; can be
        `null`.
    :   `format` - the string message format in [`MessageFormat`](../text/MessageFormat.md "class in java.text") format, (or a key in the message
        catalog if `bundle` is not `null`); can be `null`.
    :   `params` - an optional list of parameters to the message (may be
        none).

    Throws:
    :   `NullPointerException` - if `level` is `null`.