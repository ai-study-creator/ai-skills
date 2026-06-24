Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class UnrecoverableKeyException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](GeneralSecurityException.md "class in java.security")

[java.security.UnrecoverableEntryException](UnrecoverableEntryException.md "class in java.security")

java.security.UnrecoverableKeyException

All Implemented Interfaces:
:   `Serializable`

---

public class UnrecoverableKeyException
extends [UnrecoverableEntryException](UnrecoverableEntryException.md "class in java.security")

This exception is thrown if a key in the keystore cannot be recovered.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.UnrecoverableKeyException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnrecoverableKeyException()`

  Constructs an `UnrecoverableKeyException` with no detail message.

  `UnrecoverableKeyException(String msg)`

  Constructs an `UnrecoverableKeyException` with the specified detail
  message, which provides more information about why this exception
  has been thrown.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnrecoverableKeyException

    public UnrecoverableKeyException()

    Constructs an `UnrecoverableKeyException` with no detail message.
  + ### UnrecoverableKeyException

    public UnrecoverableKeyException([String](../lang/String.md "class in java.lang") msg)

    Constructs an `UnrecoverableKeyException` with the specified detail
    message, which provides more information about why this exception
    has been thrown.

    Parameters:
    :   `msg` - the detail message.