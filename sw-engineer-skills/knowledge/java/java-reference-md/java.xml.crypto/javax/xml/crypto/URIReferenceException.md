Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Class URIReferenceException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.xml.crypto.URIReferenceException

All Implemented Interfaces:
:   `Serializable`

---

public class URIReferenceException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Indicates an exceptional condition thrown while dereferencing a
[`URIReference`](URIReference.md "interface in javax.xml.crypto").

A `URIReferenceException` can contain a cause: another
throwable that caused this `URIReferenceException` to get thrown.

Since:
:   1.6

See Also:
:   * [`URIDereferencer.dereference(URIReference, XMLCryptoContext)`](URIDereferencer.md#dereference(javax.xml.crypto.URIReference,javax.xml.crypto.XMLCryptoContext))
    * [`RetrievalMethod.dereference(XMLCryptoContext)`](dsig/keyinfo/RetrievalMethod.md#dereference(javax.xml.crypto.XMLCryptoContext))
    * [Serialized Form](../../../../serialized-form.md#javax.xml.crypto.URIReferenceException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `URIReferenceException()`

  Constructs a new `URIReferenceException` with
  `null` as its detail message.

  `URIReferenceException(String message)`

  Constructs a new `URIReferenceException` with the specified
  detail message.

  `URIReferenceException(String message,
  Throwable cause)`

  Constructs a new `URIReferenceException` with the
  specified detail message and cause.

  `URIReferenceException(String message,
  Throwable cause,
  URIReference uriReference)`

  Constructs a new `URIReferenceException` with the
  specified detail message, cause and `URIReference`.

  `URIReferenceException(Throwable cause)`

  Constructs a new `URIReferenceException` with the specified
  cause and a detail message of `(cause==null ? null :
  cause.toString())` (which typically contains the class and detail
  message of `cause`).
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this `URIReferenceException` or
  `null` if the cause is nonexistent or unknown.

  `URIReference`

  `getURIReference()`

  Returns the `URIReference` that was being dereferenced
  when the exception was thrown.

  `void`

  `printStackTrace()`

  Prints this `URIReferenceException`, its backtrace and
  the cause's backtrace to the standard error stream.

  `void`

  `printStackTrace(PrintStream s)`

  Prints this `URIReferenceException`, its backtrace and
  the cause's backtrace to the specified print stream.

  `void`

  `printStackTrace(PrintWriter s)`

  Prints this `URIReferenceException`, its backtrace and
  the cause's backtrace to the specified print writer.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### URIReferenceException

    public URIReferenceException()

    Constructs a new `URIReferenceException` with
    `null` as its detail message.
  + ### URIReferenceException

    public URIReferenceException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `URIReferenceException` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message
  + ### URIReferenceException

    public URIReferenceException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `URIReferenceException` with the
    specified detail message and cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this exception's detail message.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
  + ### URIReferenceException

    public URIReferenceException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause,
    [URIReference](URIReference.md "interface in javax.xml.crypto") uriReference)

    Constructs a new `URIReferenceException` with the
    specified detail message, cause and `URIReference`.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this exception's detail message.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
    :   `uriReference` - the `URIReference` that was being
        dereferenced when the error was encountered

    Throws:
    :   `NullPointerException` - if `uriReference` is
        `null`
  + ### URIReferenceException

    public URIReferenceException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `URIReferenceException` with the specified
    cause and a detail message of `(cause==null ? null :
    cause.toString())` (which typically contains the class and detail
    message of `cause`).

    Parameters:
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
* ## Method Details

  + ### getURIReference

    public [URIReference](URIReference.md "interface in javax.xml.crypto") getURIReference()

    Returns the `URIReference` that was being dereferenced
    when the exception was thrown.

    Returns:
    :   the `URIReference` that was being dereferenced
        when the exception was thrown, or `null` if not specified
  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this `URIReferenceException` or
    `null` if the cause is nonexistent or unknown. (The
    cause is the throwable that caused this
    `URIReferenceException` to get thrown.)

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this `URIReferenceException` or
        `null` if the cause is nonexistent or unknown.
  + ### printStackTrace

    public void printStackTrace()

    Prints this `URIReferenceException`, its backtrace and
    the cause's backtrace to the standard error stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`
  + ### printStackTrace

    public void printStackTrace([PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") s)

    Prints this `URIReferenceException`, its backtrace and
    the cause's backtrace to the specified print stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintStream` to use for output
  + ### printStackTrace

    public void printStackTrace([PrintWriter](../../../../java.base/java/io/PrintWriter.md "class in java.io") s)

    Prints this `URIReferenceException`, its backtrace and
    the cause's backtrace to the specified print writer.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintWriter` to use for output