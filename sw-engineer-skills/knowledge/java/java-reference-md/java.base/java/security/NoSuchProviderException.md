Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class NoSuchProviderException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](GeneralSecurityException.md "class in java.security")

java.security.NoSuchProviderException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchProviderException
extends [GeneralSecurityException](GeneralSecurityException.md "class in java.security")

This exception is thrown when a particular security provider is
requested but is not available in the environment.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.NoSuchProviderException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchProviderException()`

  Constructs a `NoSuchProviderException` with no detail message.

  `NoSuchProviderException(String msg)`

  Constructs a `NoSuchProviderException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchProviderException

    public NoSuchProviderException()

    Constructs a `NoSuchProviderException` with no detail message. A
    detail message is a `String` that describes this particular
    exception.
  + ### NoSuchProviderException

    public NoSuchProviderException([String](../lang/String.md "class in java.lang") msg)

    Constructs a `NoSuchProviderException` with the specified detail
    message. A detail message is a `String` that describes this
    particular exception.

    Parameters:
    :   `msg` - the detail message.