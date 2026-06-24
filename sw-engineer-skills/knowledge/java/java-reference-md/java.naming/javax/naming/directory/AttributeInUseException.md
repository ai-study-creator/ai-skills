Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class AttributeInUseException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.AttributeInUseException

All Implemented Interfaces:
:   `Serializable`

---

public class AttributeInUseException
extends [NamingException](../NamingException.md "class in javax.naming")

This exception is thrown when an operation attempts
to add an attribute that already exists.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [`DirContext.modifyAttributes(javax.naming.Name, int, javax.naming.directory.Attributes)`](DirContext.md#modifyAttributes(javax.naming.Name,int,javax.naming.directory.Attributes))
    * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.AttributeInUseException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeInUseException()`

  Constructs a new instance of AttributeInUseException.

  `AttributeInUseException(String explanation)`

  Constructs a new instance of AttributeInUseException with
  an explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AttributeInUseException

    public AttributeInUseException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of AttributeInUseException with
    an explanation. All other fields are set to null.

    Parameters:
    :   `explanation` - Possibly null additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### AttributeInUseException

    public AttributeInUseException()

    Constructs a new instance of AttributeInUseException.
    All fields are initialized to null.