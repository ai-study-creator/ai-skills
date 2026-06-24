Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class SizeLimitExceededException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

[javax.naming.LimitExceededException](LimitExceededException.md "class in javax.naming")

javax.naming.SizeLimitExceededException

All Implemented Interfaces:
:   `Serializable`

---

public class SizeLimitExceededException
extends [LimitExceededException](LimitExceededException.md "class in javax.naming")

This exception is thrown when a method
produces a result that exceeds a size-related limit.
This can happen, for example, if the result contains
more objects than the user requested, or when the size
of the result exceeds some implementation-specific limit.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.SizeLimitExceededException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SizeLimitExceededException()`

  Constructs a new instance of SizeLimitExceededException.

  `SizeLimitExceededException(String explanation)`

  Constructs a new instance of SizeLimitExceededException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SizeLimitExceededException

    public SizeLimitExceededException()

    Constructs a new instance of SizeLimitExceededException.
    All fields default to null.
  + ### SizeLimitExceededException

    public SizeLimitExceededException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of SizeLimitExceededException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null detail about this exception.