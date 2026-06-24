Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class ExemptionMechanismException

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../java/lang/Exception.md "class in java.lang")

[java.security.GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

javax.crypto.ExemptionMechanismException

All Implemented Interfaces:
:   `Serializable`

---

public class ExemptionMechanismException
extends [GeneralSecurityException](../../java/security/GeneralSecurityException.md "class in java.security")

This is the generic ExemptionMechanism exception.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.crypto.ExemptionMechanismException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ExemptionMechanismException()`

  Constructs an `ExemptionMechanismException` with no detailed
  message.

  `ExemptionMechanismException(String msg)`

  Constructs an `ExemptionMechanismException` with the specified
  detailed message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ExemptionMechanismException

    public ExemptionMechanismException()

    Constructs an `ExemptionMechanismException` with no detailed
    message. (A detailed message is a `String` that describes this
    particular exception.)
  + ### ExemptionMechanismException

    public ExemptionMechanismException([String](../../java/lang/String.md "class in java.lang") msg)

    Constructs an `ExemptionMechanismException` with the specified
    detailed message. (A detailed message is a `String` that describes
    this particular exception.)

    Parameters:
    :   `msg` - the detailed message.