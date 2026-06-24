Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Class SAXNotRecognizedException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[org.xml.sax.SAXException](SAXException.md "class in org.xml.sax")

org.xml.sax.SAXNotRecognizedException

All Implemented Interfaces:
:   `Serializable`

---

public class SAXNotRecognizedException
extends [SAXException](SAXException.md "class in org.xml.sax")

Exception class for an unrecognized identifier.

An XMLReader will throw this exception when it finds an
unrecognized feature or property identifier; SAX applications and
extensions may use this class for other, similar purposes.

Since:
:   1.4, SAX 2.0

See Also:
:   * [`SAXNotSupportedException`](SAXNotSupportedException.md "class in org.xml.sax")
    * [Serialized Form](../../../../serialized-form.md#org.xml.sax.SAXNotRecognizedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SAXNotRecognizedException()`

  Default constructor.

  `SAXNotRecognizedException(String message)`

  Construct a new exception with the given message.
* ## Method Summary

  ### Methods inherited from class org.xml.sax.[SAXException](SAXException.md "class in org.xml.sax")

  `getCause, getException, getMessage, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SAXNotRecognizedException

    public SAXNotRecognizedException()

    Default constructor.
  + ### SAXNotRecognizedException

    public SAXNotRecognizedException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Construct a new exception with the given message.

    Parameters:
    :   `message` - The text message of the exception.