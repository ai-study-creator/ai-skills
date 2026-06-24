Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class UnrecoverableEntryException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](GeneralSecurityException.md "class in java.security")

java.security.UnrecoverableEntryException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `UnrecoverableKeyException`

---

public class UnrecoverableEntryException
extends [GeneralSecurityException](GeneralSecurityException.md "class in java.security")

This exception is thrown if an entry in the keystore cannot be recovered.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.UnrecoverableEntryException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnrecoverableEntryException()`

  Constructs an `UnrecoverableEntryException` with no detail message.

  `UnrecoverableEntryException(String msg)`

  Constructs an `UnrecoverableEntryException` with the specified
  detail message, which provides more information about why this exception
  has been thrown.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnrecoverableEntryException

    public UnrecoverableEntryException()

    Constructs an `UnrecoverableEntryException` with no detail message.
  + ### UnrecoverableEntryException

    public UnrecoverableEntryException([String](../lang/String.md "class in java.lang") msg)

    Constructs an `UnrecoverableEntryException` with the specified
    detail message, which provides more information about why this exception
    has been thrown.

    Parameters:
    :   `msg` - the detail message.