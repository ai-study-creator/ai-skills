Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class CharConversionException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.CharConversionException

All Implemented Interfaces:
:   `Serializable`

---

public class CharConversionException
extends [IOException](IOException.md "class in java.io")

Base class for character conversion exceptions.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.CharConversionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CharConversionException()`

  This provides no detailed message.

  `CharConversionException(String s)`

  This provides a detailed message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CharConversionException

    public CharConversionException()

    This provides no detailed message.
  + ### CharConversionException

    public CharConversionException([String](../lang/String.md "class in java.lang") s)

    This provides a detailed message.

    Parameters:
    :   `s` - the detailed message associated with the exception.