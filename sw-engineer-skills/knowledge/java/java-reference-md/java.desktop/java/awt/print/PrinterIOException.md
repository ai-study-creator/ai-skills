Module [java.desktop](../../../module-summary.md)

Package [java.awt.print](package-summary.md)

# Class PrinterIOException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.awt.print.PrinterException](PrinterException.md "class in java.awt.print")

java.awt.print.PrinterIOException

All Implemented Interfaces:
:   `Serializable`

---

public class PrinterIOException
extends [PrinterException](PrinterException.md "class in java.awt.print")

The `PrinterIOException` class is a subclass of
[`PrinterException`](PrinterException.md "class in java.awt.print") and is used to indicate that an IO error
of some sort has occurred while printing.

As of release 1.4, this exception has been retrofitted to conform to
the general purpose exception-chaining mechanism. The
"`IOException` that terminated the print job"
that is provided at construction time and accessed via the
[`getIOException()`](#getIOException()) method is now known as the *cause*,
and may be accessed via the [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method,
as well as the aforementioned "legacy method."

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.print.PrinterIOException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterIOException(IOException exception)`

  Constructs a new `PrinterIOException`
  with the string representation of the specified
  [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io").
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this exception (the `IOException`
  that terminated the print job).

  `IOException`

  `getIOException()`

  Returns the `IOException` that terminated
  the print job.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrinterIOException

    public PrinterIOException([IOException](../../../../java.base/java/io/IOException.md "class in java.io") exception)

    Constructs a new `PrinterIOException`
    with the string representation of the specified
    [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io").

    Parameters:
    :   `exception` - the specified `IOException`
* ## Method Details

  + ### getIOException

    public [IOException](../../../../java.base/java/io/IOException.md "class in java.io") getIOException()

    Returns the `IOException` that terminated
    the print job.

    This method predates the general-purpose exception chaining facility.
    The [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method is now the preferred means of
    obtaining this information.

    Returns:
    :   the `IOException` that terminated
        the print job.

    See Also:
    :   - [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io")
  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this exception (the `IOException`
    that terminated the print job).

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this exception.

    Since:
    :   1.4