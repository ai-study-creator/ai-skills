Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Class SAXException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

org.xml.sax.SAXException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `SAXNotRecognizedException`, `SAXNotSupportedException`, `SAXParseException`

---

public class SAXException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Encapsulate a general SAX error or warning.

This class can contain basic error or warning information from
either the XML parser or the application: a parser writer or
application writer can subclass it to provide additional
functionality. SAX handlers may throw this exception or
any exception subclassed from it.

If the application needs to pass through other types of
exceptions, it must wrap those exceptions in a SAXException
or an exception derived from a SAXException.

If the parser or application needs to include information about a
specific location in an XML document, it should use the
[`SAXParseException`](SAXParseException.md "class in org.xml.sax") subclass.

Since:
:   1.4, SAX 1.0

See Also:
:   * [`SAXParseException`](SAXParseException.md "class in org.xml.sax")
    * [Serialized Form](../../../../serialized-form.md#org.xml.sax.SAXException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SAXException()`

  Create a new SAXException.

  `SAXException(Exception e)`

  Create a new SAXException wrapping an existing exception.

  `SAXException(String message)`

  Create a new SAXException.

  `SAXException(String message,
  Exception e)`

  Create a new SAXException from an existing exception.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Return the cause of the exception

  `Exception`

  `getException()`

  Return the embedded exception, if any.

  `String`

  `getMessage()`

  Return a detail message for this exception.

  `String`

  `toString()`

  Override toString to pick up any embedded exception.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SAXException

    public SAXException()

    Create a new SAXException.
  + ### SAXException

    public SAXException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Create a new SAXException.

    Parameters:
    :   `message` - The error or warning message.
  + ### SAXException

    public SAXException([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Create a new SAXException wrapping an existing exception.

    The existing exception will be embedded in the new
    one, and its message will become the default message for
    the SAXException.

    Parameters:
    :   `e` - The exception to be wrapped in a SAXException.
  + ### SAXException

    public SAXException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Create a new SAXException from an existing exception.

    The existing exception will be embedded in the new
    one, but the new exception will have its own message.

    Parameters:
    :   `message` - The detail message.
    :   `e` - The exception to be wrapped in a SAXException.
* ## Method Details

  + ### getMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Return a detail message for this exception.

    If there is an embedded exception, and if the SAXException
    has no detail message of its own, this method will return
    the detail message from the embedded exception.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   The error or warning message.
  + ### getException

    public [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") getException()

    Return the embedded exception, if any.

    Returns:
    :   The embedded exception, or null if there is none.
  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Return the cause of the exception

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   Return the cause of the exception
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Override toString to pick up any embedded exception.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   A string representation of this exception.