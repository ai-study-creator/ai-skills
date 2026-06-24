Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Class TransformerFactoryConfigurationError

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Error](../../../../java.base/java/lang/Error.md "class in java.lang")

javax.xml.transform.TransformerFactoryConfigurationError

All Implemented Interfaces:
:   `Serializable`

---

public class TransformerFactoryConfigurationError
extends [Error](../../../../java.base/java/lang/Error.md "class in java.lang")

Thrown when a problem with configuration with the Transformer Factories
exists. This error will typically be thrown when the class of a
transformation factory specified in the system properties cannot be found
or instantiated.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.transform.TransformerFactoryConfigurationError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TransformerFactoryConfigurationError()`

  Create a new `TransformerFactoryConfigurationError` with no
  detail message.

  `TransformerFactoryConfigurationError(Exception e)`

  Create a new `TransformerFactoryConfigurationError` with a
  given `Exception` base cause of the error.

  `TransformerFactoryConfigurationError(Exception e,
  String msg)`

  Create a new `TransformerFactoryConfigurationError` with the
  given `Exception` base cause and detail message.

  `TransformerFactoryConfigurationError(String msg)`

  Create a new `TransformerFactoryConfigurationError` with
  the `String` specified as an error message.
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

  + ### TransformerFactoryConfigurationError

    public TransformerFactoryConfigurationError()

    Create a new `TransformerFactoryConfigurationError` with no
    detail message.
  + ### TransformerFactoryConfigurationError

    public TransformerFactoryConfigurationError([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create a new `TransformerFactoryConfigurationError` with
    the `String` specified as an error message.

    Parameters:
    :   `msg` - The error message for the exception.
  + ### TransformerFactoryConfigurationError

    public TransformerFactoryConfigurationError([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e)

    Create a new `TransformerFactoryConfigurationError` with a
    given `Exception` base cause of the error.

    Parameters:
    :   `e` - The exception to be encapsulated in a
        TransformerFactoryConfigurationError.
  + ### TransformerFactoryConfigurationError

    public TransformerFactoryConfigurationError([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create a new `TransformerFactoryConfigurationError` with the
    given `Exception` base cause and detail message.

    Parameters:
    :   `e` - The exception to be encapsulated in a
        TransformerFactoryConfigurationError
    :   `msg` - The detail message.
* ## Method Details

  + ### getMessage

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Return the message (if any) for this error . If there is no
    message for the exception and there is an encapsulated
    exception then the message of that exception will be returned.

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