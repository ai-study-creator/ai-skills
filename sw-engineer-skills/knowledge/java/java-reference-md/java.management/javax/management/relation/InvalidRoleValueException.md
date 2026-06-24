Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class InvalidRoleValueException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](../JMException.md "class in javax.management")

[javax.management.relation.RelationException](RelationException.md "class in javax.management.relation")

javax.management.relation.InvalidRoleValueException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidRoleValueException
extends [RelationException](RelationException.md "class in javax.management.relation")

Role value is invalid.
This exception is raised when, in a role, the number of referenced MBeans
in given value is less than expected minimum degree, or the number of
referenced MBeans in provided value exceeds expected maximum degree, or
one referenced MBean in the value is not an Object of the MBean
class expected for that role, or an MBean provided for that role does not
exist.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.InvalidRoleValueException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidRoleValueException()`

  Default constructor, no message put in exception.

  `InvalidRoleValueException(String message)`

  Constructor with given message put in exception.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidRoleValueException

    public InvalidRoleValueException()

    Default constructor, no message put in exception.
  + ### InvalidRoleValueException

    public InvalidRoleValueException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor with given message put in exception.

    Parameters:
    :   `message` - the detail message.