Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class RasterFormatException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

java.awt.image.RasterFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class RasterFormatException
extends [RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

The `RasterFormatException` is thrown if there is
invalid layout information in the [`Raster`](Raster.md "class in java.awt.image").

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.image.RasterFormatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RasterFormatException(String s)`

  Constructs a new `RasterFormatException` with the
  specified message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RasterFormatException

    public RasterFormatException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a new `RasterFormatException` with the
    specified message.

    Parameters:
    :   `s` - the message to generate when a
        `RasterFormatException` is thrown