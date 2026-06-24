Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class InvalidParameterSpecException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

java.security.spec.InvalidParameterSpecException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidParameterSpecException
extends [GeneralSecurityException](../GeneralSecurityException.md "class in java.security")

This is the exception for invalid parameter specifications.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameters`](../AlgorithmParameters.md "class in java.security")
    * [`AlgorithmParameterSpec`](AlgorithmParameterSpec.md "interface in java.security.spec")
    * [`DSAParameterSpec`](DSAParameterSpec.md "class in java.security.spec")
    * [Serialized Form](../../../../serialized-form.md#java.security.spec.InvalidParameterSpecException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidParameterSpecException()`

  Constructs an InvalidParameterSpecException with no detail message.

  `InvalidParameterSpecException(String msg)`

  Constructs an InvalidParameterSpecException with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidParameterSpecException

    public InvalidParameterSpecException()

    Constructs an InvalidParameterSpecException with no detail message. A
    detail message is a String that describes this particular
    exception.
  + ### InvalidParameterSpecException

    public InvalidParameterSpecException([String](../../lang/String.md "class in java.lang") msg)

    Constructs an InvalidParameterSpecException with the specified detail
    message. A detail message is a String that describes this
    particular exception.

    Parameters:
    :   `msg` - the detail message.