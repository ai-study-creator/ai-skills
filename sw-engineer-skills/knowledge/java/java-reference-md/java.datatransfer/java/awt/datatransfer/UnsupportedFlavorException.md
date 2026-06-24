Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Class UnsupportedFlavorException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.awt.datatransfer.UnsupportedFlavorException

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedFlavorException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Signals that the requested data is not supported in this flavor.

Since:
:   1.1

See Also:
:   * [`Transferable.getTransferData(java.awt.datatransfer.DataFlavor)`](Transferable.md#getTransferData(java.awt.datatransfer.DataFlavor))
    * [Serialized Form](../../../../serialized-form.md#java.awt.datatransfer.UnsupportedFlavorException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedFlavorException(DataFlavor flavor)`

  Constructs an UnsupportedFlavorException.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedFlavorException

    public UnsupportedFlavorException([DataFlavor](DataFlavor.md "class in java.awt.datatransfer") flavor)

    Constructs an UnsupportedFlavorException.

    Parameters:
    :   `flavor` - the flavor object which caused the exception. May be
        `null`.