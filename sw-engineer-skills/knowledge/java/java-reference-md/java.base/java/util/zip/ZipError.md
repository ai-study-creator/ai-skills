Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class ZipError

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Error](../../lang/Error.md "class in java.lang")

[java.lang.VirtualMachineError](../../lang/VirtualMachineError.md "class in java.lang")

[java.lang.InternalError](../../lang/InternalError.md "class in java.lang")

java.util.zip.ZipError

All Implemented Interfaces:
:   `Serializable`

---

public class ZipError
extends [InternalError](../../lang/InternalError.md "class in java.lang")

Signals that an unrecoverable error has occurred.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.zip.ZipError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ZipError(String s)`

  Constructs a ZipError with the given detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ZipError

    public ZipError([String](../../lang/String.md "class in java.lang") s)

    Constructs a ZipError with the given detail message.

    Parameters:
    :   `s` - the `String` containing a detail message