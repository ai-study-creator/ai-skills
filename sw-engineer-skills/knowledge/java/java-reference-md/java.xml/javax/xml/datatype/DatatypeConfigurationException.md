Module [java.xml](../../../module-summary.md)

Package [javax.xml.datatype](package-summary.md)

# Class DatatypeConfigurationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.xml.datatype.DatatypeConfigurationException

All Implemented Interfaces:
:   `Serializable`

---

public class DatatypeConfigurationException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Indicates a serious configuration error.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.datatype.DatatypeConfigurationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DatatypeConfigurationException()`

  Create a new `DatatypeConfigurationException` with
  no specified detail message and cause.

  `DatatypeConfigurationException(String message)`

  Create a new `DatatypeConfigurationException` with
  the specified detail message.

  `DatatypeConfigurationException(String message,
  Throwable cause)`

  Create a new `DatatypeConfigurationException` with
  the specified detail message and cause.

  `DatatypeConfigurationException(Throwable cause)`

  Create a new `DatatypeConfigurationException` with
  the specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DatatypeConfigurationException

    public DatatypeConfigurationException()

    Create a new `DatatypeConfigurationException` with
    no specified detail message and cause.
  + ### DatatypeConfigurationException

    public DatatypeConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Create a new `DatatypeConfigurationException` with
    the specified detail message.

    Parameters:
    :   `message` - The detail message.
  + ### DatatypeConfigurationException

    public DatatypeConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Create a new `DatatypeConfigurationException` with
    the specified detail message and cause.

    Parameters:
    :   `message` - The detail message.
    :   `cause` - The cause. A `null` value is permitted, and indicates that the cause is nonexistent or unknown.
  + ### DatatypeConfigurationException

    public DatatypeConfigurationException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Create a new `DatatypeConfigurationException` with
    the specified cause.

    Parameters:
    :   `cause` - The cause. A `null` value is permitted, and indicates that the cause is nonexistent or unknown.