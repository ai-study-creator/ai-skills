Module [java.logging](../../../module-summary.md)

Package [java.util.logging](package-summary.md)

# Class XMLFormatter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.logging.Formatter](Formatter.md "class in java.util.logging")

java.util.logging.XMLFormatter

---

public class XMLFormatter
extends [Formatter](Formatter.md "class in java.util.logging")

Format a LogRecord into a standard XML format.

The DTD specification is provided as Appendix A to the
Java Logging APIs specification.

The XMLFormatter can be used with arbitrary character encodings,
but it is recommended that it normally be used with UTF-8. The
character encoding can be set on the output Handler.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XMLFormatter()`

  Creates a new instance of XMLFormatter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `format(LogRecord record)`

  Format the given message to XML.

  `String`

  `getHead(Handler h)`

  Return the header string for a set of XML formatted records.

  `String`

  `getTail(Handler h)`

  Return the tail string for a set of XML formatted records.

  ### Methods inherited from class java.util.logging.[Formatter](Formatter.md "class in java.util.logging")

  `formatMessage`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XMLFormatter

    public XMLFormatter()

    Creates a new instance of XMLFormatter.
* ## Method Details

  + ### format

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") format([LogRecord](LogRecord.md "class in java.util.logging") record)

    Format the given message to XML.

    This method can be overridden in a subclass.
    It is recommended to use the [`Formatter.formatMessage(java.util.logging.LogRecord)`](Formatter.md#formatMessage(java.util.logging.LogRecord))
    convenience method to localize and format the message field.

    Specified by:
    :   `format` in class `Formatter`

    Parameters:
    :   `record` - the log record to be formatted.

    Returns:
    :   a formatted log record
  + ### getHead

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getHead([Handler](Handler.md "class in java.util.logging") h)

    Return the header string for a set of XML formatted records.

    Overrides:
    :   `getHead` in class `Formatter`

    Parameters:
    :   `h` - The target handler (can be null)

    Returns:
    :   a valid XML string
  + ### getTail

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getTail([Handler](Handler.md "class in java.util.logging") h)

    Return the tail string for a set of XML formatted records.

    Overrides:
    :   `getTail` in class `Formatter`

    Parameters:
    :   `h` - The target handler (can be null)

    Returns:
    :   a valid XML string