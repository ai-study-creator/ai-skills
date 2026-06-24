Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class InvalidAttributeIdentifierException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.InvalidAttributeIdentifierException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidAttributeIdentifierException
extends [NamingException](../NamingException.md "class in javax.naming")

This exception is thrown when an attempt is
made to add to create an attribute with an invalid attribute identifier.
The validity of an attribute identifier is directory-specific.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.InvalidAttributeIdentifierException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidAttributeIdentifierException()`

  Constructs a new instance of InvalidAttributeIdentifierException.

  `InvalidAttributeIdentifierException(String explanation)`

  Constructs a new instance of InvalidAttributeIdentifierException using the
  explanation supplied.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidAttributeIdentifierException

    public InvalidAttributeIdentifierException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of InvalidAttributeIdentifierException using the
    explanation supplied. All other fields set to null.

    Parameters:
    :   `explanation` - Possibly null string containing additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### InvalidAttributeIdentifierException

    public InvalidAttributeIdentifierException()

    Constructs a new instance of InvalidAttributeIdentifierException.
    All fields are set to null.