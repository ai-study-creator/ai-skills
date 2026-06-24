Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Class NoSuchMechanismException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

javax.xml.crypto.NoSuchMechanismException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchMechanismException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

This exception is thrown when a particular XML mechanism is requested but
is not available in the environment.

A `NoSuchMechanismException` can contain a cause: another
throwable that caused this `NoSuchMechanismException` to get
thrown.

Since:
:   1.6

See Also:
:   * [`XMLSignatureFactory.getInstance`](dsig/XMLSignatureFactory.md#getInstance(java.lang.String))
    * [`KeyInfoFactory.getInstance`](dsig/keyinfo/KeyInfoFactory.md#getInstance(java.lang.String))
    * [Serialized Form](../../../../serialized-form.md#javax.xml.crypto.NoSuchMechanismException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchMechanismException()`

  Constructs a new `NoSuchMechanismException` with
  `null` as its detail message.

  `NoSuchMechanismException(String message)`

  Constructs a new `NoSuchMechanismException` with the
  specified detail message.

  `NoSuchMechanismException(String message,
  Throwable cause)`

  Constructs a new `NoSuchMechanismException` with the
  specified detail message and cause.

  `NoSuchMechanismException(Throwable cause)`

  Constructs a new `NoSuchMechanismException` with the
  specified cause and a detail message of
  `(cause==null ? null : cause.toString())` (which typically
  contains the class and detail message of `cause`).
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this `NoSuchMechanismException` or
  `null` if the cause is nonexistent or unknown.

  `void`

  `printStackTrace()`

  Prints this `NoSuchMechanismException`, its backtrace and
  the cause's backtrace to the standard error stream.

  `void`

  `printStackTrace(PrintStream s)`

  Prints this `NoSuchMechanismException`, its backtrace and
  the cause's backtrace to the specified print stream.

  `void`

  `printStackTrace(PrintWriter s)`

  Prints this `NoSuchMechanismException`, its backtrace and
  the cause's backtrace to the specified print writer.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchMechanismException

    public NoSuchMechanismException()

    Constructs a new `NoSuchMechanismException` with
    `null` as its detail message.
  + ### NoSuchMechanismException

    public NoSuchMechanismException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `NoSuchMechanismException` with the
    specified detail message.

    Parameters:
    :   `message` - the detail message
  + ### NoSuchMechanismException

    public NoSuchMechanismException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `NoSuchMechanismException` with the
    specified detail message and cause.

    Note that the detail message associated with
    `cause` is *not* automatically incorporated in
    this exception's detail message.

    Parameters:
    :   `message` - the detail message
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
  + ### NoSuchMechanismException

    public NoSuchMechanismException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `NoSuchMechanismException` with the
    specified cause and a detail message of
    `(cause==null ? null : cause.toString())` (which typically
    contains the class and detail message of `cause`).

    Parameters:
    :   `cause` - the cause (A `null` value is permitted, and
        indicates that the cause is nonexistent or unknown.)
* ## Method Details

  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this `NoSuchMechanismException` or
    `null` if the cause is nonexistent or unknown. (The
    cause is the throwable that caused this
    `NoSuchMechanismException` to get thrown.)

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this `NoSuchMechanismException` or
        `null` if the cause is nonexistent or unknown.
  + ### printStackTrace

    public void printStackTrace()

    Prints this `NoSuchMechanismException`, its backtrace and
    the cause's backtrace to the standard error stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`
  + ### printStackTrace

    public void printStackTrace([PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") s)

    Prints this `NoSuchMechanismException`, its backtrace and
    the cause's backtrace to the specified print stream.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintStream` to use for output
  + ### printStackTrace

    public void printStackTrace([PrintWriter](../../../../java.base/java/io/PrintWriter.md "class in java.io") s)

    Prints this `NoSuchMechanismException`, its backtrace and
    the cause's backtrace to the specified print writer.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - `PrintWriter` to use for output