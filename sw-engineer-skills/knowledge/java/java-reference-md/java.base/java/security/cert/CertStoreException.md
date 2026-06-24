Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertStoreException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

java.security.cert.CertStoreException

All Implemented Interfaces:
:   `Serializable`

---

public class CertStoreException
extends [GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

An exception indicating one of a variety of problems retrieving
certificates and CRLs from a `CertStore`.

A `CertStoreException` provides support for wrapping
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
:   * [`CertStore`](CertStore.md "class in java.security.cert")
    * [Serialized Form](../../../../serialized-form.md#java.security.cert.CertStoreException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertStoreException()`

  Creates a `CertStoreException` with `null` as
  its detail message.

  `CertStoreException(String msg)`

  Creates a `CertStoreException` with the given detail
  message.

  `CertStoreException(String msg,
  Throwable cause)`

  Creates a `CertStoreException` with the specified detail
  message and cause.

  `CertStoreException(Throwable cause)`

  Creates a `CertStoreException` that wraps the specified
  throwable.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CertStoreException

    public CertStoreException()

    Creates a `CertStoreException` with `null` as
    its detail message.
  + ### CertStoreException

    public CertStoreException([String](../../lang/String.md "class in java.lang") msg)

    Creates a `CertStoreException` with the given detail
    message. A detail message is a `String` that describes this
    particular exception.

    Parameters:
    :   `msg` - the detail message
  + ### CertStoreException

    public CertStoreException([Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertStoreException` that wraps the specified
    throwable. This allows any exception to be converted into a
    `CertStoreException`, while retaining information about the
    cause, which may be useful for debugging. The detail message is
    set to (`cause==null ? null : cause.toString()`) (which
    typically contains the class and detail message of cause).

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or unknown.)
  + ### CertStoreException

    public CertStoreException([String](../../lang/String.md "class in java.lang") msg,
    [Throwable](../../lang/Throwable.md "class in java.lang") cause)

    Creates a `CertStoreException` with the specified detail
    message and cause.

    Parameters:
    :   `msg` - the detail message
    :   `cause` - the cause (which is saved for later retrieval by the
        [`getCause()`](../../lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or unknown.)