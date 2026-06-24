Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Class SAXParseException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[org.xml.sax.SAXException](SAXException.md "class in org.xml.sax")

org.xml.sax.SAXParseException

All Implemented Interfaces:
:   `Serializable`

---

public class SAXParseException
extends [SAXException](SAXException.md "class in org.xml.sax")

Encapsulate an XML parse error or warning.

This exception may include information for locating the error
in the original XML document, as if it came from a [`Locator`](Locator.md "interface in org.xml.sax")
object. Note that although the application
will receive a SAXParseException as the argument to the handlers
in the [`ErrorHandler`](ErrorHandler.md "interface in org.xml.sax") interface,
the application is not actually required to throw the exception;
instead, it can simply read the information in it and take a
different action.

Since this exception is a subclass of [`SAXException`](SAXException.md "class in org.xml.sax"), it inherits the ability to wrap another exception.

Since:
:   1.4, SAX 1.0

See Also:
:   * [`SAXException`](SAXException.md "class in org.xml.sax")
    * [`Locator`](Locator.md "interface in org.xml.sax")
    * [`ErrorHandler`](ErrorHandler.md "interface in org.xml.sax")
    * [Serialized Form](../../../../serialized-form.md#org.xml.sax.SAXParseException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SAXParseException(String message,
  String publicId,
  String systemId,
  int lineNumber,
  int columnNumber)`

  Create a new SAXParseException.

  `SAXParseException(String message,
  String publicId,
  String systemId,
  int lineNumber,
  int columnNumber,
  Exception e)`

  Create a new SAXParseException with an embedded exception.

  `SAXParseException(String message,
  Locator locator)`

  Create a new SAXParseException from a message and a Locator.

  `SAXParseException(String message,
  Locator locator,
  Exception e)`

  Wrap an existing exception in a SAXParseException.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getColumnNumber()`

  The column number of the end of the text where the exception occurred.

  `int`

  `getLineNumber()`

  The line number of the end of the text where the exception occurred.

  `String`

  `getPublicId()`

  Get the public identifier of the entity where the exception occurred.

  `String`

  `getSystemId()`

  Get the system identifier of the entity where the exception occurred.

  `String`

  `toString()`

  Override toString to provide more detailed error message.

  ### Methods inherited from class org.xml.sax.[SAXException](SAXException.md "class in org.xml.sax")

  `getCause, getException, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SAXParseException

    public SAXParseException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Locator](Locator.md "interface in org.xml.sax") locator)

    Create a new SAXParseException from a message and a Locator.

    This constructor is especially useful when an application is
    creating its own exception from within a [`ContentHandler`](ContentHandler.md "interface in org.xml.sax") callback.

    Parameters:
    :   `message` - The error or warning message.
    :   `locator` - The locator object for the error or warning (may be
        null).

    See Also:
    :   - [`Locator`](Locator.md "interface in org.xml.sax")
  + ### SAXParseException

    public SAXParseException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Locator](Locator.md "interface in org.xml.sax") locator,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Wrap an existing exception in a SAXParseException.

    This constructor is especially useful when an application is
    creating its own exception from within a [`ContentHandler`](ContentHandler.md "interface in org.xml.sax") callback, and needs to wrap an existing exception that is not a
    subclass of [`SAXException`](SAXException.md "class in org.xml.sax").

    Parameters:
    :   `message` - The error or warning message, or null to
        use the message from the embedded exception.
    :   `locator` - The locator object for the error or warning (may be
        null).
    :   `e` - Any exception.

    See Also:
    :   - [`Locator`](Locator.md "interface in org.xml.sax")
  + ### SAXParseException

    public SAXParseException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    int lineNumber,
    int columnNumber)

    Create a new SAXParseException.

    This constructor is most useful for parser writers.

    All parameters except the message are as if
    they were provided by a [`Locator`](Locator.md "interface in org.xml.sax"). For example, if the
    system identifier is a URL (including relative filename), the
    caller must resolve it fully before creating the exception.

    Parameters:
    :   `message` - The error or warning message.
    :   `publicId` - The public identifier of the entity that generated
        the error or warning.
    :   `systemId` - The system identifier of the entity that generated
        the error or warning.
    :   `lineNumber` - The line number of the end of the text that
        caused the error or warning.
    :   `columnNumber` - The column number of the end of the text that
        cause the error or warning.
  + ### SAXParseException

    public SAXParseException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    int lineNumber,
    int columnNumber,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Create a new SAXParseException with an embedded exception.

    This constructor is most useful for parser writers who
    need to wrap an exception that is not a subclass of
    [`SAXException`](SAXException.md "class in org.xml.sax").

    All parameters except the message and exception are as if
    they were provided by a [`Locator`](Locator.md "interface in org.xml.sax"). For example, if the
    system identifier is a URL (including relative filename), the
    caller must resolve it fully before creating the exception.

    Parameters:
    :   `message` - The error or warning message, or null to use
        the message from the embedded exception.
    :   `publicId` - The public identifier of the entity that generated
        the error or warning.
    :   `systemId` - The system identifier of the entity that generated
        the error or warning.
    :   `lineNumber` - The line number of the end of the text that
        caused the error or warning.
    :   `columnNumber` - The column number of the end of the text that
        cause the error or warning.
    :   `e` - Another exception to embed in this one.
* ## Method Details

  + ### getPublicId

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    Get the public identifier of the entity where the exception occurred.

    Returns:
    :   A string containing the public identifier, or null
        if none is available.

    See Also:
    :   - [`Locator.getPublicId()`](Locator.md#getPublicId())
  + ### getSystemId

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the system identifier of the entity where the exception occurred.

    If the system identifier is a URL, it will have been resolved
    fully.

    Returns:
    :   A string containing the system identifier, or null
        if none is available.

    See Also:
    :   - [`Locator.getSystemId()`](Locator.md#getSystemId())
  + ### getLineNumber

    public int getLineNumber()

    The line number of the end of the text where the exception occurred.

    The first line is line 1.

    Returns:
    :   An integer representing the line number, or -1
        if none is available.

    See Also:
    :   - [`Locator.getLineNumber()`](Locator.md#getLineNumber())
  + ### getColumnNumber

    public int getColumnNumber()

    The column number of the end of the text where the exception occurred.

    The first column in a line is position 1.

    Returns:
    :   An integer representing the column number, or -1
        if none is available.

    See Also:
    :   - [`Locator.getColumnNumber()`](Locator.md#getColumnNumber())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Override toString to provide more detailed error message.

    Overrides:
    :   `toString` in class `SAXException`

    Returns:
    :   A string representation of this exception.