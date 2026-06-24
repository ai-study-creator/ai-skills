Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertPathValidatorException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

java.security.cert.CertPathValidatorException

All Implemented Interfaces:
:   `Serializable`

---

public class CertPathValidatorException
extends [GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

An exception indicating one of a variety of problems encountered when
validating a certification path.

A `CertPathValidatorException` provides support for wrapping
exceptions. The [`getCause`](../../lang/Throwable.md#getCause()) method returns the throwable,
if any, that caused this exception to be thrown.

A `CertPathValidatorException` may also include the
certification path that was being validated when the exception was thrown,
the index of the certificate in the certification path that caused the
exception to be thrown, and the reason that caused the failure. Use the
[`getCertPath`](#getCertPath()), [`getIndex`](#getIndex()), and
[`getReason`](#getReason()) methods to retrieve this information.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertPathValidator`](CertPathValidator.md "class in java.security.cert")
    * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertPathValidatorException)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `CertPathValidatorException.BasicReason`

  The BasicReason enumerates the potential reasons that a certification
  path of any type may be invalid.

  `static interface`

  `CertPathValidatorException.Reason`

  The reason the validation algorithm failed.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertPathValidatorException()`

  Creates a `CertPathValidatorException` with
  no detail message.

  `CertPathValidatorException(String msg)`

  Creates a `CertPathValidatorException` with the given
  detail message.

  `CertPathValidatorException(String msg,
  Throwable cause)`

  Creates a `CertPathValidatorException` with the specified
  detail message and cause.

  `CertPathValidatorException(String msg,
  Throwable cause,
  CertPath certPath,
  int index)`

  Creates a `CertPathValidatorException` with the specified
  detail message, cause, certification path, and index.

  `CertPathValidatorException(String msg,
  Throwable cause,
  CertPath certPath,
  int index,
  CertPathValidatorException.Reason reason)`

  Creates a `CertPathValidatorException` with the specified
  detail message, cause, certification path, index, and reason.

  `CertPathValidatorException(Throwable cause)`

  Creates a `CertPathValidatorException` that wraps the
  specified throwable.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `CertPath`

  `getCertPath()`

  Returns the certification path that was being validated when
  the exception was thrown.

  `int`

  `getIndex()`

  Returns the index of the certificate in the certification path
  that caused the exception to be thrown.

  `CertPathValidatorException.Reason`

  `getReason()`

  Returns the reason that the validation failed.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertPathValidatorException

    public CertPathValidatorException()

    Creates a `CertPathValidatorException` with
    no detail message.
  + ### CertPathValidatorException

    public CertPathValidatorException([String](../../lang/String.md "class in java.lang") msg)

    Creates a `CertPathValidatorException` with the given
    detail message. A detail message is a `String` that
    describes this particular exception.

    Parameters:
    :   `msg` - the detail message
  + ### CertPathValidatorException

    public CertPathValidatorException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertPathValidatorException` that wraps the
    specified throwable. This allows any exception to be converted into a
    `CertPathValidatorException`, while retaining information
    about the wrapped exception, which may be useful for debugging. The
    detail message is set to (`cause==null ? null : cause.toString()`)
    (which typically contains the class and detail message of
    cause).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or unknown.)
  + ### CertPathValidatorException

    public CertPathValidatorException([String](../../lang/String.md "class in java.lang") msg,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertPathValidatorException` with the specified
    detail message and cause.

    Parameters:
    :   `msg` - the detail message
    :   `cause` - the cause (which is saved for later retrieval by the
        [`getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or unknown.)
  + ### CertPathValidatorException

    public CertPathValidatorException([String](../../lang/String.md "class in java.lang") msg,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause,
    [CertPath](CertPath.md "class in java.security.cert") certPath,
    int index)

    Creates a `CertPathValidatorException` with the specified
    detail message, cause, certification path, and index.

    Parameters:
    :   `msg` - the detail message (or `null` if none)
    :   `cause` - the cause (or `null` if none)
    :   `certPath` - the certification path that was in the process of
        being validated when the error was encountered
    :   `index` - the index of the certificate in the certification path
        that caused the error (or -1 if not applicable). Note that
        the list of certificates in a `CertPath` is zero based.

    Throws:
    :   `IndexOutOfBoundsException` - if the index is out of range
        `(index < -1 || (certPath != null && index >=
        certPath.getCertificates().size())`
    :   `IllegalArgumentException` - if `certPath` is
        `null` and `index` is not -1
  + ### CertPathValidatorException

    public CertPathValidatorException([String](../../lang/String.md "class in java.lang") msg,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause,
    [CertPath](CertPath.md "class in java.security.cert") certPath,
    int index,
    [CertPathValidatorException.Reason](CertPathValidatorException.Reason.md "interface in java.security.cert") reason)

    Creates a `CertPathValidatorException` with the specified
    detail message, cause, certification path, index, and reason.

    Parameters:
    :   `msg` - the detail message (or `null` if none)
    :   `cause` - the cause (or `null` if none)
    :   `certPath` - the certification path that was in the process of
        being validated when the error was encountered
    :   `index` - the index of the certificate in the certification path
        that caused the error (or -1 if not applicable). Note that
        the list of certificates in a `CertPath` is zero based.
    :   `reason` - the reason the validation failed

    Throws:
    :   `IndexOutOfBoundsException` - if the index is out of range
        `(index < -1 || (certPath != null && index >=
        certPath.getCertificates().size())`
    :   `IllegalArgumentException` - if `certPath` is
        `null` and `index` is not -1
    :   `NullPointerException` - if `reason` is `null`

    Since:
    :   1.7
* ## Method Details

  + ### getCertPath

    public [CertPath](CertPath.md "class in java.security.cert") getCertPath()

    Returns the certification path that was being validated when
    the exception was thrown.

    Returns:
    :   the `CertPath` that was being validated when
        the exception was thrown (or `null` if not specified)
  + ### getIndex

    public int getIndex()

    Returns the index of the certificate in the certification path
    that caused the exception to be thrown. Note that the list of
    certificates in a `CertPath` is zero based. If no
    index has been set, -1 is returned.

    Returns:
    :   the index that has been set, or -1 if none has been set
  + ### getReason

    public [CertPathValidatorException.Reason](CertPathValidatorException.Reason.md "interface in java.security.cert") getReason()

    Returns the reason that the validation failed. The reason is
    associated with the index of the certificate returned by
    [`getIndex()`](#getIndex()).

    Returns:
    :   the reason that the validation failed, or
        `BasicReason.UNSPECIFIED` if a reason has not been
        specified

    Since:
    :   1.7