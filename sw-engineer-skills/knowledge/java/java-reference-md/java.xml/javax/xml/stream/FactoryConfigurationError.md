Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Class FactoryConfigurationError

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Error](../../../../java.base/java/lang/Error.md "class in java.lang")

javax.xml.stream.FactoryConfigurationError

All Implemented Interfaces:
:   `Serializable`

---

public class FactoryConfigurationError
extends [Error](../../../../java.base/java/lang/Error.md "class in java.lang")

An error class for reporting factory configuration errors.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.stream.FactoryConfigurationError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FactoryConfigurationError()`

  Default constructor

  `FactoryConfigurationError(Exception e)`

  Construct an exception with a nested inner exception

  `FactoryConfigurationError(Exception e,
  String msg)`

  Construct an exception with a nested inner exception
  and a message

  `FactoryConfigurationError(String msg)`

  Construct an exception with associated message

  `FactoryConfigurationError(String msg,
  Exception e)`

  Construct an exception with a nested inner exception
  and a message
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  use the exception chaining mechanism of JDK1.4

  `Exception`

  `getException()`

  Return the nested exception (if any)

  `String`

  `getMessage()`

  Report the message associated with this error

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FactoryConfigurationError

    public FactoryConfigurationError()

    Default constructor
  + ### FactoryConfigurationError

    public FactoryConfigurationError([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Construct an exception with a nested inner exception

    Parameters:
    :   `e` - the exception to nest
  + ### FactoryConfigurationError

    public FactoryConfigurationError([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Construct an exception with a nested inner exception
    and a message

    Parameters:
    :   `e` - the exception to nest
    :   `msg` - the message to report
  + ### FactoryConfigurationError

    public FactoryConfigurationError([String](../../../../java.base/java/lang/String.md "class in java.lang") msg,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Construct an exception with a nested inner exception
    and a message

    Parameters:
    :   `msg` - the message to report
    :   `e` - the exception to nest
  + ### FactoryConfigurationError

    public FactoryConfigurationError([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Construct an exception with associated message

    Parameters:
    :   `msg` - the message to report
* ## Method Details

  + ### getException

    public [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") getException()

    Return the nested exception (if any)

    Returns:
    :   the nested exception or null
  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    use the exception chaining mechanism of JDK1.4

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this throwable or `null` if the
        cause is nonexistent or unknown.
  + ### getMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Report the message associated with this error

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the string value of the message