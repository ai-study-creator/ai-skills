Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Class XMLSignatureException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.xml.crypto.dsig.XMLSignatureException

All Implemented Interfaces:
:   `Serializable`

---

public class XMLSignatureException
extends [Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

Indicates an exceptional condition that occurred during the XML
signature generation or validation process.

An `XMLSignatureException` can contain a cause: another
throwable that caused this `XMLSignatureException` to get thrown.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.xml.crypto.dsig.XMLSignatureException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XMLSignatureException()`

  Constructs a new `XMLSignatureException` with
  `null` as its detail message.

  `XMLSignatureException(String message)`

  Constructs a new `XMLSignatureException` with the specified
  detail message.

  `XMLSignatureException(String message,
  Throwable cause)`

  Constructs a new `XMLSignatureException` with the
  specified detail message and cause.

  `XMLSignatureException(Throwable cause)`

  Constructs a new `XMLSignatureException` with the specified
  cause and a detail message of
  `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of
  `cause`).
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this `XMLSignatureException` or
  `null` if the cause is nonexistent or unknown.

  `void`

  `printStackTrace()`

  Prints this `XMLSignatureException`, its backtrace and
  the cause's backtrace to the standard error stream.

  `void`

  `printStackTrace(PrintStream s)`

  Prints this `XMLSignatureException`, its backtrace and
  the cause's backtrace to the specified print stream.

  `void`

  `printStackTrace(PrintWriter s)`

  Prints this `XMLSignatureException`, its backtrace and
  the cause's backtrace to the specified print writer.

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### XMLSignatureException

    public XMLSignatureException()

    Constructs a new `XMLSignatureException` with
    `null` as its detail message.
  + ### XMLSignatureException

    public XMLSignatureException([String](../../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `XMLSignatureException` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message
  + ### XMLSignatureException

    public XMLSignatureException([String](../../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `XMLSignatureException` with the
    specified detail message and cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this exception's detail message.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
  + ### XMLSignatureException

    public XMLSignatureException([Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `XMLSignatureException` with the specified
    cause and a detail message of
    `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of
    `cause`).

    Parameters:
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
* ## Method Details

  + ### getCause

    public [Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this `XMLSignatureException` or
    `null` if the cause is nonexistent or unknown. (The
    cause is the throwable that caused this
    `XMLSignatureException` to get thrown.)

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this `XMLSignatureException` or
        `null` if the cause is nonexistent or unknown.
  + ### printStackTrace

    public void printStackTrace()

    Prints this `XMLSignatureException`, its backtrace and
    the cause's backtrace to the standard error stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`
  + ### printStackTrace

    public void printStackTrace([PrintStream](../../../../../java.base/java/io/PrintStream.md "class in java.io") s)

    Prints this `XMLSignatureException`, its backtrace and
    the cause's backtrace to the specified print stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintStream` to use for output
  + ### printStackTrace

    public void printStackTrace([PrintWriter](../../../../../java.base/java/io/PrintWriter.md "class in java.io") s)

    Prints this `XMLSignatureException`, its backtrace and
    the cause's backtrace to the specified print writer.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintWriter` to use for output