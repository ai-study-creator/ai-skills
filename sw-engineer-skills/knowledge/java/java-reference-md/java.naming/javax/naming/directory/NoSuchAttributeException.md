Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class NoSuchAttributeException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.naming.NamingException](../NamingException.md "class in javax.naming")

javax.naming.directory.NoSuchAttributeException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchAttributeException
extends [NamingException](../NamingException.md "class in javax.naming")

This exception is thrown when attempting to access
an attribute that does not exist.

Synchronization and serialization issues that apply to NamingException
apply directly here.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.NoSuchAttributeException)

* ## Field Summary

  ### Fields inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `remainingName, resolvedName, resolvedObj, rootException`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchAttributeException()`

  Constructs a new instance of NoSuchAttributeException.

  `NoSuchAttributeException(String explanation)`

  Constructs a new instance of NoSuchAttributeException using
  an explanation.
* ## Method Summary

  ### Methods inherited from class javax.naming.[NamingException](../NamingException.md "class in javax.naming")

  `appendRemainingComponent, appendRemainingName, getCause, getExplanation, getRemainingName, getResolvedName, getResolvedObj, getRootCause, initCause, setRemainingName, setResolvedName, setResolvedObj, setRootCause, toString, toString`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchAttributeException

    public NoSuchAttributeException([String](../../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new instance of NoSuchAttributeException using
    an explanation. All other fields are set to null.

    Parameters:
    :   `explanation` - Additional detail about this exception. Can be null.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### NoSuchAttributeException

    public NoSuchAttributeException()

    Constructs a new instance of NoSuchAttributeException.
    All fields are initialized to null.