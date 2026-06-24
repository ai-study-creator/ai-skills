Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class IllegalFormatException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")

java.util.IllegalFormatException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `DuplicateFormatFlagsException`, `FormatFlagsConversionMismatchException`, `IllegalFormatCodePointException`, `IllegalFormatConversionException`, `IllegalFormatFlagsException`, `IllegalFormatPrecisionException`, `IllegalFormatWidthException`, `MissingFormatArgumentException`, `MissingFormatWidthException`, `UnknownFormatConversionException`, `UnknownFormatFlagsException`

---

public sealed class IllegalFormatException
extends [IllegalArgumentException](../lang/IllegalArgumentException.md "class in java.lang")
permits [DuplicateFormatFlagsException](DuplicateFormatFlagsException.md "class in java.util"), [FormatFlagsConversionMismatchException](FormatFlagsConversionMismatchException.md "class in java.util"), [IllegalFormatCodePointException](IllegalFormatCodePointException.md "class in java.util"), [IllegalFormatConversionException](IllegalFormatConversionException.md "class in java.util"), [IllegalFormatFlagsException](IllegalFormatFlagsException.md "class in java.util"), [IllegalFormatPrecisionException](IllegalFormatPrecisionException.md "class in java.util"), [IllegalFormatWidthException](IllegalFormatWidthException.md "class in java.util"), [MissingFormatArgumentException](MissingFormatArgumentException.md "class in java.util"), [MissingFormatWidthException](MissingFormatWidthException.md "class in java.util"), [UnknownFormatConversionException](UnknownFormatConversionException.md "class in java.util"), [UnknownFormatFlagsException](UnknownFormatFlagsException.md "class in java.util") (not exhaustive)

Unchecked exception thrown when a format string contains an illegal syntax
or a format specifier that is incompatible with the given arguments. Only
explicit subtypes of this exception which correspond to specific errors
should be instantiated.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.IllegalFormatException)

* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`