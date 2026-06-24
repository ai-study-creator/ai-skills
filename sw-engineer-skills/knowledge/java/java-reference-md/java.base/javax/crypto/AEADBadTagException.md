Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class AEADBadTagException

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

[javax.crypto.BadPaddingException](BadPaddingException.md "class in javax.crypto")

javax.crypto.AEADBadTagException

All Implemented Interfaces:
:   `Serializable`

---

public class AEADBadTagException
extends [BadPaddingException](BadPaddingException.md "class in javax.crypto")

This exception is thrown when a [`Cipher`](Cipher.md "class in javax.crypto") operating in
an AEAD mode (such as GCM/CCM) is unable to verify the supplied
authentication tag.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.crypto.AEADBadTagException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AEADBadTagException()`

  Constructs an `AEADBadTagException` with no detail message.

  `AEADBadTagException(String msg)`

  Constructs an `AEADBadTagException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AEADBadTagException

    public AEADBadTagException()

    Constructs an `AEADBadTagException` with no detail message.
  + ### AEADBadTagException

    public AEADBadTagException([String](../../java/lang/String.md "class in java.lang") msg)

    Constructs an `AEADBadTagException` with the specified
    detail message.

    Parameters:
    :   `msg` - the detail message.