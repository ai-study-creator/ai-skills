Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class TimeLimitExceededException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

[javax.naming.LimitExceededException](LimitExceededException.md "class in javax.naming")

javax.naming.TimeLimitExceededException

All Implemented Interfaces:
:   `Serializable`

---

public class TimeLimitExceededException
extends [LimitExceededException](LimitExceededException.md "class in javax.naming")

This exception is thrown when a method
does not terminate within the specified time limit.
This can happen, for example, if the user specifies that
the method should take no longer than 10 seconds, and the
method fails to complete with 10 seconds.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.TimeLimitExceededException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TimeLimitExceededException()`

  Constructs a new instance of TimeLimitExceededException.

  `TimeLimitExceededException(String explanation)`

  Constructs a new instance of TimeLimitExceededException
  using the argument supplied.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TimeLimitExceededException

    public TimeLimitExceededException()

    Constructs a new instance of TimeLimitExceededException.
    All fields default to null.
  + ### TimeLimitExceededException

    public TimeLimitExceededException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of TimeLimitExceededException
    using the argument supplied.

    Parameters:
    :   `explanation` - possibly null detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())