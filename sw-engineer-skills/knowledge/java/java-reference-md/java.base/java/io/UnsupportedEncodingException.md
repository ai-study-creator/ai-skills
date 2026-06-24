Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class UnsupportedEncodingException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.UnsupportedEncodingException

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedEncodingException
extends [IOException](IOException.md "class in java.io")

The Character Encoding is not supported.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.UnsupportedEncodingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedEncodingException()`

  Constructs an UnsupportedEncodingException without a detail message.

  `UnsupportedEncodingException(String s)`

  Constructs an UnsupportedEncodingException with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedEncodingException

    public UnsupportedEncodingException()

    Constructs an UnsupportedEncodingException without a detail message.
  + ### UnsupportedEncodingException

    public UnsupportedEncodingException([String](../lang/String.md "class in java.lang") s)

    Constructs an UnsupportedEncodingException with a detail message.

    Parameters:
    :   `s` - Describes the reason for the exception.