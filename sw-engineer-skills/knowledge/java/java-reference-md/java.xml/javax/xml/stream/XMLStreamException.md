Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Class XMLStreamException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.xml.stream.XMLStreamException

All Implemented Interfaces:
:   `Serializable`

---

public class XMLStreamException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

The base exception for unexpected processing errors. This Exception
class is used to report well-formedness errors as well as unexpected
processing conditions.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.stream.XMLStreamException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Location`

  `location`

  The location of the error.

  `protected Throwable`

  `nested`

  The nested exception.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XMLStreamException()`

  Default constructor

  `XMLStreamException(String msg)`

  Construct an exception with the associated message.

  `XMLStreamException(String msg,
  Throwable th)`

  Construct an exception with the associated message and exception

  `XMLStreamException(String msg,
  Location location)`

  Construct an exception with the associated message, exception and location.

  `XMLStreamException(String msg,
  Location location,
  Throwable th)`

  Construct an exception with the associated message, exception and location.

  `XMLStreamException(Throwable th)`

  Construct an exception with the associated exception
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Location`

  `getLocation()`

  Gets the location of the exception

  `Throwable`

  `getNestedException()`

  Gets the nested exception.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### nested

    protected [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") nested

    The nested exception.
  + ### location

    protected [Location](Location.md "interface in javax.xml.stream") location

    The location of the error.
* ## Constructor Details

  + ### XMLStreamException

    public XMLStreamException()

    Default constructor
  + ### XMLStreamException

    public XMLStreamException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Construct an exception with the associated message.

    Parameters:
    :   `msg` - the message to report
  + ### XMLStreamException

    public XMLStreamException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") th)

    Construct an exception with the associated exception

    Parameters:
    :   `th` - a nested exception
  + ### XMLStreamException

    public XMLStreamException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") th)

    Construct an exception with the associated message and exception

    Parameters:
    :   `msg` - the message to report
    :   `th` - a nested exception
  + ### XMLStreamException

    public XMLStreamException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg,
    [Location](Location.md "interface in javax.xml.stream") location,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") th)

    Construct an exception with the associated message, exception and location.

    Parameters:
    :   `msg` - the message to report
    :   `location` - the location of the error
    :   `th` - a nested exception
  + ### XMLStreamException

    public XMLStreamException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg,
    [Location](Location.md "interface in javax.xml.stream") location)

    Construct an exception with the associated message, exception and location.

    Parameters:
    :   `msg` - the message to report
    :   `location` - the location of the error
* ## Method Details

  + ### getNestedException

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getNestedException()

    Gets the nested exception.

    Returns:
    :   Nested exception
  + ### getLocation

    public [Location](Location.md "interface in javax.xml.stream") getLocation()

    Gets the location of the exception

    Returns:
    :   the location of the exception, may be null if none is available