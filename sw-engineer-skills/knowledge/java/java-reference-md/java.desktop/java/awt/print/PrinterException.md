Module [java.desktop](../../../module-summary.md)

Package [java.awt.print](package-summary.md)

# Class PrinterException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.awt.print.PrinterException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `PrinterAbortException`, `PrinterIOException`

---

public class PrinterException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

The `PrinterException` class and its subclasses are used
to indicate that an exceptional condition has occurred in the print
system.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.print.PrinterException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterException()`

  Constructs a new `PrinterException` object
  without a detail message.

  `PrinterException(String msg)`

  Constructs a new `PrinterException` object
  with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrinterException

    public PrinterException()

    Constructs a new `PrinterException` object
    without a detail message.
  + ### PrinterException

    public PrinterException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs a new `PrinterException` object
    with the specified detail message.

    Parameters:
    :   `msg` - the message to generate when a
        `PrinterException` is thrown