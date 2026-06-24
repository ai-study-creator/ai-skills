Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Class SAXNotSupportedException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[org.xml.sax.SAXException](SAXException.md "class in org.xml.sax")

org.xml.sax.SAXNotSupportedException

All Implemented Interfaces:
:   `Serializable`

---

public class SAXNotSupportedException
extends [SAXException](SAXException.md "class in org.xml.sax")

Exception class for an unsupported operation.

An XMLReader will throw this exception when it recognizes a
feature or property identifier, but cannot perform the requested
operation (setting a state or value). Other SAX2 applications and
extensions may use this class for similar purposes.

Since:
:   1.4, SAX 2.0

See Also:
:   * [`SAXNotRecognizedException`](SAXNotRecognizedException.md "class in org.xml.sax")
    * [Serialized Form](../../../../serialized-form.md#org.xml.sax.SAXNotSupportedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SAXNotSupportedException()`

  Construct a new exception with no message.

  `SAXNotSupportedException(String message)`

  Construct a new exception with the given message.
* ## Method Summary

  ### Methods inherited from class org.xml.sax.[SAXException](SAXException.md "class in org.xml.sax")

  `getCause, getException, getMessage, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SAXNotSupportedException

    public SAXNotSupportedException()

    Construct a new exception with no message.
  + ### SAXNotSupportedException

    public SAXNotSupportedException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Construct a new exception with the given message.

    Parameters:
    :   `message` - The text message of the exception.