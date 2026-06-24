Module [java.desktop](../../../module-summary.md)

Package [java.awt.print](package-summary.md)

# Class PrinterAbortException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.awt.print.PrinterException](PrinterException.md "class in java.awt.print")

java.awt.print.PrinterAbortException

All Implemented Interfaces:
:   `Serializable`

---

public class PrinterAbortException
extends [PrinterException](PrinterException.md "class in java.awt.print")

The `PrinterAbortException` class is a subclass of
[`PrinterException`](PrinterException.md "class in java.awt.print") and is used to indicate that a user
or application has terminated the print job while it was in
the process of printing.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.print.PrinterAbortException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterAbortException()`

  Constructs a new `PrinterAbortException` with no
  detail message.

  `PrinterAbortException(String msg)`

  Constructs a new `PrinterAbortException` with
  the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrinterAbortException

    public PrinterAbortException()

    Constructs a new `PrinterAbortException` with no
    detail message.
  + ### PrinterAbortException

    public PrinterAbortException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs a new `PrinterAbortException` with
    the specified detail message.

    Parameters:
    :   `msg` - the message to be generated when a
        `PrinterAbortException` is thrown