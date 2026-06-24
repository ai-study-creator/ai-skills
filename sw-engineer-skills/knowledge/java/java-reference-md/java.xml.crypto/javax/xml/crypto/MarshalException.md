Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Class MarshalException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.xml.crypto.MarshalException

All Implemented Interfaces:
:   `Serializable`

---

public class MarshalException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Indicates an exceptional condition that occurred during the XML
marshalling or unmarshalling process.

A `MarshalException` can contain a cause: another
throwable that caused this `MarshalException` to get thrown.

Since:
:   1.6

See Also:
:   * [`XMLSignature.sign(XMLSignContext)`](dsig/XMLSignature.md#sign(javax.xml.crypto.dsig.XMLSignContext))
    * [`XMLSignatureFactory.unmarshalXMLSignature(XMLValidateContext)`](dsig/XMLSignatureFactory.md#unmarshalXMLSignature(javax.xml.crypto.XMLStructure))
    * [Serialized Form](../../../../serialized-form.md#javax.xml.crypto.MarshalException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MarshalException()`

  Constructs a new `MarshalException` with
  `null` as its detail message.

  `MarshalException(String message)`

  Constructs a new `MarshalException` with the specified
  detail message.

  `MarshalException(String message,
  Throwable cause)`

  Constructs a new `MarshalException` with the
  specified detail message and cause.

  `MarshalException(Throwable cause)`

  Constructs a new `MarshalException` with the specified cause
  and a detail message of `(cause==null ? null : cause.toString())`
  (which typically contains the class and detail message of `cause`).
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this `MarshalException` or
  `null` if the cause is nonexistent or unknown.

  `void`

  `printStackTrace()`

  Prints this `MarshalException`, its backtrace and
  the cause's backtrace to the standard error stream.

  `void`

  `printStackTrace(PrintStream s)`

  Prints this `MarshalException`, its backtrace and
  the cause's backtrace to the specified print stream.

  `void`

  `printStackTrace(PrintWriter s)`

  Prints this `MarshalException`, its backtrace and
  the cause's backtrace to the specified print writer.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MarshalException

    public MarshalException()

    Constructs a new `MarshalException` with
    `null` as its detail message.
  + ### MarshalException

    public MarshalException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `MarshalException` with the specified
    detail message.

    Parameters:
    :   `message` - the detail message
  + ### MarshalException

    public MarshalException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `MarshalException` with the
    specified detail message and cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this exception's detail message.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
  + ### MarshalException

    public MarshalException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `MarshalException` with the specified cause
    and a detail message of `(cause==null ? null : cause.toString())`
    (which typically contains the class and detail message of `cause`).

    Parameters:
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
* ## Method Details

  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this `MarshalException` or
    `null` if the cause is nonexistent or unknown. (The
    cause is the throwable that caused this
    `MarshalException` to get thrown.)

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this `MarshalException` or
        `null` if the cause is nonexistent or unknown.
  + ### printStackTrace

    public void printStackTrace()

    Prints this `MarshalException`, its backtrace and
    the cause's backtrace to the standard error stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`
  + ### printStackTrace

    public void printStackTrace([PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") s)

    Prints this `MarshalException`, its backtrace and
    the cause's backtrace to the specified print stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintStream` to use for output
  + ### printStackTrace

    public void printStackTrace([PrintWriter](../../../../java.base/java/io/PrintWriter.md "class in java.io") s)

    Prints this `MarshalException`, its backtrace and
    the cause's backtrace to the specified print writer.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintWriter` to use for output