Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class LimitExceededException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.LimitExceededException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `SizeLimitExceededException`, `TimeLimitExceededException`

---

public class LimitExceededException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when a method
terminates abnormally due to a user or system specified limit.
This is different from a InsufficientResourceException in that
LimitExceededException is due to a user/system specified limit.
For example, running out of memory to complete the request would
be an insufficient resource. The client asking for 10 answers and
getting back 11 is a size limit exception.

Examples of these limits include client and server configuration
limits such as size, time, number of hops, etc.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.LimitExceededException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LimitExceededException()`

  Constructs a new instance of LimitExceededException with
  all name resolution fields and explanation initialized to null.

  `LimitExceededException(String explanation)`

  Constructs a new instance of LimitExceededException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LimitExceededException

    public LimitExceededException()

    Constructs a new instance of LimitExceededException with
    all name resolution fields and explanation initialized to null.
  + ### LimitExceededException

    public LimitExceededException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of LimitExceededException using an
    explanation. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())