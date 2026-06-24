Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class UnsupportedCharsetException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

java.nio.charset.UnsupportedCharsetException

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedCharsetException
extends [IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

Unchecked exception thrown when no support is available
for a requested charset.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.charset.UnsupportedCharsetException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedCharsetException(String charsetName)`

  Constructs an instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getCharsetName()`

  Retrieves the name of the unsupported charset.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedCharsetException

    public UnsupportedCharsetException([String](../../lang/String.md "class in java.lang") charsetName)

    Constructs an instance of this class.

    Parameters:
    :   `charsetName` - The name of the unsupported charset
* ## Method Details

  + ### getCharsetName

    public [String](../../lang/String.md "class in java.lang") getCharsetName()

    Retrieves the name of the unsupported charset.

    Returns:
    :   The name of the unsupported charset