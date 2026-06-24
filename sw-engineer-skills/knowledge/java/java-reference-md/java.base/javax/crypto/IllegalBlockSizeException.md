Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class IllegalBlockSizeException

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

javax.crypto.IllegalBlockSizeException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalBlockSizeException
extends [GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

This exception is thrown when the length of data provided to a block
cipher is incorrect, i.e., does not match the block size of the cipher.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.crypto.IllegalBlockSizeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalBlockSizeException()`

  Constructs an `IllegalBlockSizeException` with no detail message.

  `IllegalBlockSizeException(String msg)`

  Constructs an `IllegalBlockSizeException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalBlockSizeException

    public IllegalBlockSizeException()

    Constructs an `IllegalBlockSizeException` with no detail message.
    A detail message is a `String` that describes this particular
    exception.
  + ### IllegalBlockSizeException

    public IllegalBlockSizeException([String](../../java/lang/String.md "class in java.lang") msg)

    Constructs an `IllegalBlockSizeException` with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message.