Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class InvalidAttributeValueException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.InvalidAttributeValueException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidAttributeValueException
extends [NamingException](../NamingException.md "class in javax.naming")

This class is thrown when an attempt is
made to add to an attribute a value that conflicts with the attribute's
schema definition. This could happen, for example, if attempting
to add an attribute with no value when the attribute is required
to have at least one value, or if attempting to add more than
one value to a single valued-attribute, or if attempting to
add a value that conflicts with the syntax of the attribute.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.InvalidAttributeValueException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidAttributeValueException()`

  Constructs a new instance of InvalidAttributeValueException.

  `InvalidAttributeValueException(String explanation)`

  Constructs a new instance of InvalidAttributeValueException using
  an explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidAttributeValueException

    public InvalidAttributeValueException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of InvalidAttributeValueException using
    an explanation. All other fields are set to null.

    Parameters:
    :   `explanation` - Additional detail about this exception. Can be null.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### InvalidAttributeValueException

    public InvalidAttributeValueException()

    Constructs a new instance of InvalidAttributeValueException.
    All fields are set to null.