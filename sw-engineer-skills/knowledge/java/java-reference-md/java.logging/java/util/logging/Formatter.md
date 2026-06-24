Module [java.logging](../../../module-summary.md)

Package [java.util.logging](package-summary.md)

# Class Formatter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.util.logging.Formatter

Direct Known Subclasses:
:   `SimpleFormatter`, `XMLFormatter`

---

public abstract class Formatter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A Formatter provides support for formatting LogRecords.

Typically each logging Handler will have a Formatter associated
with it. The Formatter takes a LogRecord and converts it to
a string.

Some formatters (such as the XMLFormatter) need to wrap head
and tail strings around a set of formatted records. The getHeader
and getTail methods can be used to obtain these strings.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Formatter()`

  Construct a new formatter.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `format(LogRecord record)`

  Format the given log record and return the formatted string.

  `String`

  `formatMessage(LogRecord record)`

  Localize and format the message string from a log record.

  `String`

  `getHead(Handler h)`

  Return the header string for a set of formatted records.

  `String`

  `getTail(Handler h)`

  Return the tail string for a set of formatted records.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Formatter

    protected Formatter()

    Construct a new formatter.
* ## Method Details

  + ### format

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") format([LogRecord](LogRecord.md "class in java.util.logging") record)

    Format the given log record and return the formatted string.

    The resulting formatted String will normally include a
    localized and formatted version of the LogRecord's message field.
    It is recommended to use the [`formatMessage(java.util.logging.LogRecord)`](#formatMessage(java.util.logging.LogRecord))
    convenience method to localize and format the message field.

    Parameters:
    :   `record` - the log record to be formatted.

    Returns:
    :   the formatted log record
  + ### getHead

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getHead([Handler](Handler.md "class in java.util.logging") h)

    Return the header string for a set of formatted records.

    This base class returns an empty string, but this may be
    overridden by subclasses.

    Parameters:
    :   `h` - The target handler (can be null)

    Returns:
    :   header string
  + ### getTail

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getTail([Handler](Handler.md "class in java.util.logging") h)

    Return the tail string for a set of formatted records.

    This base class returns an empty string, but this may be
    overridden by subclasses.

    Parameters:
    :   `h` - The target handler (can be null)

    Returns:
    :   tail string
  + ### formatMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") formatMessage([LogRecord](LogRecord.md "class in java.util.logging") record)

    Localize and format the message string from a log record. This
    method is provided as a convenience for Formatter subclasses to
    use when they are performing formatting.

    The message string is first localized to a format string using
    the record's ResourceBundle. (If there is no ResourceBundle,
    or if the message key is not found, then the key is used as the
    format string.) The format String uses java.text style
    formatting.
    - If there are no parameters, no formatter is used.- Otherwise, if the string contains "{<digit>"
        where <digit> is in [0-9],
        java.text.MessageFormat is used to format the string.- Otherwise no formatting is performed.

    Parameters:
    :   `record` - the log record containing the raw message

    Returns:
    :   a localized and formatted message