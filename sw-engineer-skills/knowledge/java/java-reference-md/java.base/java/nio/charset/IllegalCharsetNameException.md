Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class IllegalCharsetNameException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

java.nio.charset.IllegalCharsetNameException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalCharsetNameException
extends [IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

Unchecked exception thrown when a string that is not a
[legal charset name](Charset.md#names) is used as such.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.charset.IllegalCharsetNameException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalCharsetNameException(String charsetName)`

  Constructs an instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getCharsetName()`

  Retrieves the illegal charset name.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalCharsetNameException

    public IllegalCharsetNameException([String](../../lang/String.md "class in java.lang") charsetName)

    Constructs an instance of this class.

    Parameters:
    :   `charsetName` - The illegal charset name
* ## Method Details

  + ### getCharsetName

    public [String](../../lang/String.md "class in java.lang") getCharsetName()

    Retrieves the illegal charset name.

    Returns:
    :   The illegal charset name