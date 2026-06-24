Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class InvalidSearchFilterException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.InvalidSearchFilterException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidSearchFilterException
extends [NamingException](../NamingException.md "class in javax.naming")

This exception is thrown when the specification of
a search filter is invalid. The expression of the filter may
be invalid, or there may be a problem with one of the parameters
passed to the filter.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.InvalidSearchFilterException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidSearchFilterException()`

  Constructs a new instance of InvalidSearchFilterException.

  `InvalidSearchFilterException(String msg)`

  Constructs a new instance of InvalidSearchFilterException
  with an explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidSearchFilterException

    public InvalidSearchFilterException()

    Constructs a new instance of InvalidSearchFilterException.
    All fields are set to null.
  + ### InvalidSearchFilterException

    public InvalidSearchFilterException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Constructs a new instance of InvalidSearchFilterException
    with an explanation. All other fields are set to null.

    Parameters:
    :   `msg` - Detail about this exception. Can be null.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())