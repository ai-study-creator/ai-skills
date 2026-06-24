Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class InvalidAttributesException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.InvalidAttributesException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidAttributesException
extends [NamingException](../NamingException.md "class in javax.naming")

This exception is thrown when an attempt is
made to add or modify an attribute set that has been specified
incompletely or incorrectly. This could happen, for example,
when attempting to add or modify a binding, or to create a new
subcontext without specifying all the mandatory attributes
required for creation of the object. Another situation in
which this exception is thrown is by specification of incompatible
attributes within the same attribute set, or attributes in conflict
with that specified by the object's schema.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.InvalidAttributesException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidAttributesException()`

  Constructs a new instance of InvalidAttributesException.

  `InvalidAttributesException(String explanation)`

  Constructs a new instance of InvalidAttributesException using an
  explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidAttributesException

    public InvalidAttributesException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of InvalidAttributesException using an
    explanation. All other fields are set to null.

    Parameters:
    :   `explanation` - Additional detail about this exception. Can be null.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### InvalidAttributesException

    public InvalidAttributesException()

    Constructs a new instance of InvalidAttributesException.
    All fields are set to null.