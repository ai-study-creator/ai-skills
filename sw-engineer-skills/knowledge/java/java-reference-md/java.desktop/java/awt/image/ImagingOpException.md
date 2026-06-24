Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class ImagingOpException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

java.awt.image.ImagingOpException

All Implemented Interfaces:
:   `Serializable`

---

public class ImagingOpException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

The `ImagingOpException` is thrown if one of the
[`BufferedImageOp`](BufferedImageOp.md "interface in java.awt.image") or [`RasterOp`](RasterOp.md "interface in java.awt.image") filter methods cannot
process the image.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.image.ImagingOpException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ImagingOpException(String s)`

  Constructs an `ImagingOpException` object with the
  specified message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ImagingOpException

    public ImagingOpException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `ImagingOpException` object with the
    specified message.

    Parameters:
    :   `s` - the message to generate when a
        `ImagingOpException` is thrown