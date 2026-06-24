Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class GeneralSecurityException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

java.security.GeneralSecurityException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `BadPaddingException`, `CertificateException`, `CertPathBuilderException`, `CertPathValidatorException`, `CertStoreException`, `CRLException`, `DecapsulateException`, `DigestException`, `ExemptionMechanismException`, `IllegalBlockSizeException`, `InvalidAlgorithmParameterException`, `InvalidKeySpecException`, `InvalidParameterSpecException`, `KeyException`, `KeyStoreException`, `LoginException`, `NoSuchAlgorithmException`, `NoSuchPaddingException`, `NoSuchProviderException`, `ShortBufferException`, `SignatureException`, `UnrecoverableEntryException`

---

public class GeneralSecurityException
extends [Exception](../lang/Exception.md "class in java.lang")

The `GeneralSecurityException` class is a generic
security exception class that provides type safety for all the
security-related exception classes that extend from it.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.GeneralSecurityException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GeneralSecurityException()`

  Constructs a `GeneralSecurityException` with no detail message.

  `GeneralSecurityException(String msg)`

  Constructs a `GeneralSecurityException` with the specified detail
  message.

  `GeneralSecurityException(String message,
  Throwable cause)`

  Creates a `GeneralSecurityException` with the specified
  detail message and cause.

  `GeneralSecurityException(Throwable cause)`

  Creates a `GeneralSecurityException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### GeneralSecurityException

    public GeneralSecurityException()

    Constructs a `GeneralSecurityException` with no detail message.
  + ### GeneralSecurityException

    public GeneralSecurityException([String](../lang/String.md "class in java.lang") msg)

    Constructs a `GeneralSecurityException` with the specified detail
    message.
    A detail message is a `String` that describes this particular
    exception.

    Parameters:
    :   `msg` - the detail message.
  + ### GeneralSecurityException

    public GeneralSecurityException([String](../lang/String.md "class in java.lang") message,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `GeneralSecurityException` with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message (which is saved for later retrieval
        by the [`Throwable.getMessage()`](../lang/Throwable.md#getMessage()) method).
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5
  + ### GeneralSecurityException

    public GeneralSecurityException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Creates a `GeneralSecurityException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../lang/Throwable.md#getCause()) method). (A `null` value is permitted,
        and indicates that the cause is nonexistent or unknown.)

    Since:
    :   1.5