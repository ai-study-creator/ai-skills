Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class FontFormatException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

java.awt.FontFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class FontFormatException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown by method createFont in the `Font` class to indicate
that the specified font is bad.

Since:
:   1.3

See Also:
:   * [`Font`](Font.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.FontFormatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FontFormatException(String reason)`

  Report a FontFormatException for the reason specified.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FontFormatException

    public FontFormatException([String](../../../java.base/java/lang/String.md "class in java.lang") reason)

    Report a FontFormatException for the reason specified.

    Parameters:
    :   `reason` - a `String` message indicating why
        the font is not accepted.