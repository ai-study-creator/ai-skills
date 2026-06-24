Module [java.xml](../../../module-summary.md)

Package [javax.xml.parsers](package-summary.md)

# Class FactoryConfigurationError

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Error](../../../../java.base/java/lang/Error.md "class in java.lang")

javax.xml.parsers.FactoryConfigurationError

All Implemented Interfaces:
:   `Serializable`

---

public class FactoryConfigurationError
extends [Error](../../../../java.base/java/lang/Error.md "class in java.lang")

Thrown when a problem with configuration with the Parser Factories
exists. This error will typically be thrown when the class of a
parser factory specified in the system properties cannot be found
or instantiated.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.parsers.FactoryConfigurationError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FactoryConfigurationError()`

  Create a new `FactoryConfigurationError` with no
  detail message.

  `FactoryConfigurationError(Exception e)`

  Create a new `FactoryConfigurationError` with a
  given `Exception` base cause of the error.

  `FactoryConfigurationError(Exception e,
  String msg)`

  Create a new `FactoryConfigurationError` with the
  given `Exception` base cause and detail message.

  `FactoryConfigurationError(String msg)`

  Create a new `FactoryConfigurationError` with
  the `String`  specified as an error message.
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

  Return the actual exception (if any) that caused this exception to
  be raised.

  `String`

  `getMessage()`

  Return the message (if any) for this error .

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FactoryConfigurationError

    public FactoryConfigurationError()

    Create a new `FactoryConfigurationError` with no
    detail message.
  + ### FactoryConfigurationError

    public FactoryConfigurationError([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create a new `FactoryConfigurationError` with
    the `String`  specified as an error message.

    Parameters:
    :   `msg` - The error message for the exception.
  + ### FactoryConfigurationError

    public FactoryConfigurationError([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Create a new `FactoryConfigurationError` with a
    given `Exception` base cause of the error.

    Parameters:
    :   `e` - The exception to be encapsulated in a
        FactoryConfigurationError.
  + ### FactoryConfigurationError

    public FactoryConfigurationError([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create a new `FactoryConfigurationError` with the
    given `Exception` base cause and detail message.

    Parameters:
    :   `e` - The exception to be encapsulated in a
        FactoryConfigurationError
    :   `msg` - The detail message.
* ## Method Details

  + ### getMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Return the message (if any) for this error . If there is no
    message for the exception and there is an encapsulated
    exception then the message of that exception, if it exists will be
    returned. Else the name of the encapsulated exception will be
    returned.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   The error message.
  + ### getException

    public [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") getException()

    Return the actual exception (if any) that caused this exception to
    be raised.

    Returns:
    :   The encapsulated exception, or null if there is none.
  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    use the exception chaining mechanism of JDK1.4

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this throwable or `null` if the
        cause is nonexistent or unknown.