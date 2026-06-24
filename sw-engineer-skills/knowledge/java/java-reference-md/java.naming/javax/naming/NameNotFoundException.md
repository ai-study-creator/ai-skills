Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class NameNotFoundException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](NamingException.md "class in javax.naming")

javax.naming.NameNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class NameNotFoundException
extends [NamingException](NamingException.md "class in javax.naming")

This exception is thrown when a component of the name cannot be resolved
because it is not bound.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.NameNotFoundException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NameNotFoundException()`

  Constructs a new instance of NameNotFoundException.

  `NameNotFoundException(String explanation)`

  Constructs a new instance of NameNotFoundException using the
  explanation supplied.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NameNotFoundException

    public NameNotFoundException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of NameNotFoundException using the
    explanation supplied. All other fields default to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about
        this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### NameNotFoundException

    public NameNotFoundException()

    Constructs a new instance of NameNotFoundException.
    All name resolution fields and explanation are initialized to null.