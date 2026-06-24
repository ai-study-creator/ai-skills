Module [java.xml](../../../module-summary.md)

Package [javax.xml.parsers](package-summary.md)

# Class ParserConfigurationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.xml.parsers.ParserConfigurationException

All Implemented Interfaces:
:   `Serializable`

---

public class ParserConfigurationException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Indicates a serious configuration error.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.parsers.ParserConfigurationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParserConfigurationException()`

  Create a new `ParserConfigurationException` with no
  detail message.

  `ParserConfigurationException(String msg)`

  Create a new `ParserConfigurationException` with
  the `String` specified as an error message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ParserConfigurationException

    public ParserConfigurationException()

    Create a new `ParserConfigurationException` with no
    detail message.
  + ### ParserConfigurationException

    public ParserConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create a new `ParserConfigurationException` with
    the `String` specified as an error message.

    Parameters:
    :   `msg` - The error message for the exception.