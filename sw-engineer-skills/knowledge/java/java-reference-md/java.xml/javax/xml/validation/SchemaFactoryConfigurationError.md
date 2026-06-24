Module [java.xml](../../../module-summary.md)

Package [javax.xml.validation](package-summary.md)

# Class SchemaFactoryConfigurationError

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Error](../../../../java.base/java/lang/Error.md "class in java.lang")

javax.xml.validation.SchemaFactoryConfigurationError

All Implemented Interfaces:
:   `Serializable`

---

public final class SchemaFactoryConfigurationError
extends [Error](../../../../java.base/java/lang/Error.md "class in java.lang")

Thrown when a problem with configuration with the Schema Factories
exists. This error will typically be thrown when the class of a
schema factory specified in the system properties cannot be found
or instantiated.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.validation.SchemaFactoryConfigurationError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SchemaFactoryConfigurationError()`

  Create a new `SchemaFactoryConfigurationError` with no
  detail message.

  `SchemaFactoryConfigurationError(String message)`

  Create a new `SchemaFactoryConfigurationError` with
  the `String` specified as an error message.

  `SchemaFactoryConfigurationError(String message,
  Throwable cause)`

  Create a new `SchemaFactoryConfigurationError` with the
  given `Throwable` base cause and detail message.

  `SchemaFactoryConfigurationError(Throwable cause)`

  Create a new `SchemaFactoryConfigurationError` with the
  given `Throwable` base cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SchemaFactoryConfigurationError

    public SchemaFactoryConfigurationError()

    Create a new `SchemaFactoryConfigurationError` with no
    detail message.
  + ### SchemaFactoryConfigurationError

    public SchemaFactoryConfigurationError([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Create a new `SchemaFactoryConfigurationError` with
    the `String` specified as an error message.

    Parameters:
    :   `message` - The error message for the exception.
  + ### SchemaFactoryConfigurationError

    public SchemaFactoryConfigurationError([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Create a new `SchemaFactoryConfigurationError` with the
    given `Throwable` base cause.

    Parameters:
    :   `cause` - The exception or error to be encapsulated in a
        SchemaFactoryConfigurationError.
  + ### SchemaFactoryConfigurationError

    public SchemaFactoryConfigurationError([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Create a new `SchemaFactoryConfigurationError` with the
    given `Throwable` base cause and detail message.

    Parameters:
    :   `message` - The detail message.
    :   `cause` - The exception or error to be encapsulated in a
        SchemaFactoryConfigurationError.