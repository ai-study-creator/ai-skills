Module [java.logging](../../../module-summary.md)

Package [java.util.logging](package-summary.md)

# Class ConsoleHandler

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.logging.Handler](Handler.md "class in java.util.logging")

[java.util.logging.StreamHandler](StreamHandler.md "class in java.util.logging")

java.util.logging.ConsoleHandler

---

public class ConsoleHandler
extends [StreamHandler](StreamHandler.md "class in java.util.logging")

This `Handler` publishes log records to `System.err`.
By default the `SimpleFormatter` is used to generate brief summaries.

**Configuration:**
By default each `ConsoleHandler` is initialized using the following
`LogManager` configuration properties where `<handler-name>`
refers to the fully-qualified class name of the handler.
If properties are not defined
(or have invalid values) then the specified default values are used.

* <handler-name>.level
  specifies the default level for the `Handler`
  (defaults to `Level.INFO`).
* <handler-name>.filter
  specifies the name of a `Filter` class to use
  (defaults to no `Filter`).
* <handler-name>.formatter
  specifies the name of a `Formatter` class to use
  (defaults to `java.util.logging.SimpleFormatter`).
* <handler-name>.encoding
  the name of the character set encoding to use (defaults to
  the default platform encoding).

For example, the properties for `ConsoleHandler` would be:

* java.util.logging.ConsoleHandler.level=INFO
* java.util.logging.ConsoleHandler.formatter=java.util.logging.SimpleFormatter

For a custom handler, e.g. com.foo.MyHandler, the properties would be:

* com.foo.MyHandler.level=INFO
* com.foo.MyHandler.formatter=java.util.logging.SimpleFormatter

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConsoleHandler()`

  Create a `ConsoleHandler` for `System.err`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Override `StreamHandler.close` to do a flush but not
  to close the output stream.

  `void`

  `publish(LogRecord record)`

  Publish a `LogRecord`.

  ### Methods inherited from class java.util.logging.[StreamHandler](StreamHandler.md "class in java.util.logging")

  `flush, isLoggable, setEncoding, setOutputStream`

  ### Methods inherited from class java.util.logging.[Handler](Handler.md "class in java.util.logging")

  `getEncoding, getErrorManager, getFilter, getFormatter, getLevel, reportError, setErrorManager, setFilter, setFormatter, setLevel`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ConsoleHandler

    public ConsoleHandler()

    Create a `ConsoleHandler` for `System.err`.

    The `ConsoleHandler` is configured based on
    `LogManager` properties (or their default values).
* ## Method Details

  + ### publish

    public void publish([LogRecord](LogRecord.md "class in java.util.logging") record)

    Publish a `LogRecord`.

    The logging request was made initially to a `Logger` object,
    which initialized the `LogRecord` and forwarded it here.

    Overrides:
    :   `publish` in class `StreamHandler`

    Parameters:
    :   `record` - description of the log event. A null record is
        silently ignored and is not published
  + ### close

    public void close()

    Override `StreamHandler.close` to do a flush but not
    to close the output stream. That is, we do **not**
    close `System.err`.

    Overrides:
    :   `close` in class `StreamHandler`