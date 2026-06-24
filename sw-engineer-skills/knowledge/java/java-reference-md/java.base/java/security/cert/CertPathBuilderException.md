Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertPathBuilderException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

java.security.cert.CertPathBuilderException

All Implemented Interfaces:
:   `Serializable`

---

public class CertPathBuilderException
extends [GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

An exception indicating one of a variety of problems encountered when
building a certification path with a `CertPathBuilder`.

A `CertPathBuilderException` provides support for wrapping
exceptions. The [`getCause`](../../lang/Throwable.md#getCause()) method returns the throwable,
if any, that caused this exception to be thrown.

**Concurrent Access**

Unless otherwise specified, the methods defined in this class are not
thread-safe. Multiple threads that need to access a single
object concurrently should synchronize amongst themselves and
provide the necessary locking. Multiple threads each manipulating
separate objects need not synchronize.

Since:
:   1.4

See Also:
:   * [`CertPathBuilder`](CertPathBuilder.md "class in java.security.cert")
    * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertPathBuilderException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertPathBuilderException()`

  Creates a `CertPathBuilderException` with `null`
  as its detail message.

  `CertPathBuilderException(String msg)`

  Creates a `CertPathBuilderException` with the given
  detail message.

  `CertPathBuilderException(String msg,
  Throwable cause)`

  Creates a `CertPathBuilderException` with the specified
  detail message and cause.

  `CertPathBuilderException(Throwable cause)`

  Creates a `CertPathBuilderException` that wraps the specified
  throwable.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertPathBuilderException

    public CertPathBuilderException()

    Creates a `CertPathBuilderException` with `null`
    as its detail message.
  + ### CertPathBuilderException

    public CertPathBuilderException([String](../../lang/String.md "class in java.lang") msg)

    Creates a `CertPathBuilderException` with the given
    detail message. The detail message is a `String` that
    describes this particular exception in more detail.

    Parameters:
    :   `msg` - the detail message
  + ### CertPathBuilderException

    public CertPathBuilderException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertPathBuilderException` that wraps the specified
    throwable. This allows any exception to be converted into a
    `CertPathBuilderException`, while retaining information
    about the wrapped exception, which may be useful for debugging. The
    detail message is set to (`cause==null ? null : cause.toString()`)
    (which typically contains the class and detail message of
    cause).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or unknown.)
  + ### CertPathBuilderException

    public CertPathBuilderException([String](../../lang/String.md "class in java.lang") msg,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertPathBuilderException` with the specified
    detail message and cause.

    Parameters:
    :   `msg` - the detail message
    :   `cause` - the cause (which is saved for later retrieval by the
        [`getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or unknown.)