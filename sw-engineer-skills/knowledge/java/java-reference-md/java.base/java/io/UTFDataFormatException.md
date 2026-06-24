Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class UTFDataFormatException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.UTFDataFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class UTFDataFormatException
extends [IOException](IOException.md "class in java.io")

Signals that a malformed string in
[modified UTF-8](DataInput.md#modified-utf-8)
format has been read in a data
input stream or by any class that implements the data input
interface.
See the
[`DataInput`](DataInput.md#modified-utf-8)
class description for the format in
which modified UTF-8 strings are read and written.

Since:
:   1.0

See Also:
:   * [`DataInput`](DataInput.md "interface in java.io")
    * [`DataInputStream.readUTF(java.io.DataInput)`](DataInputStream.md#readUTF(java.io.DataInput))
    * [`IOException`](IOException.md "class in java.io")
    * [Serialized Form](../../../serialized-form.md#java.io.UTFDataFormatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UTFDataFormatException()`

  Constructs a `UTFDataFormatException` with
  `null` as its error detail message.

  `UTFDataFormatException(String s)`

  Constructs a `UTFDataFormatException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UTFDataFormatException

    public UTFDataFormatException()

    Constructs a `UTFDataFormatException` with
    `null` as its error detail message.
  + ### UTFDataFormatException

    public UTFDataFormatException([String](../lang/String.md "class in java.lang") s)

    Constructs a `UTFDataFormatException` with the
    specified detail message. The string `s` can be
    retrieved later by the
    [`Throwable.getMessage()`](../lang/Throwable.md#getMessage())
    method of class `java.lang.Throwable`.

    Parameters:
    :   `s` - the detail message.