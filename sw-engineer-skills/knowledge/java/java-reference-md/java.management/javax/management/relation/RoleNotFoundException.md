Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RoleNotFoundException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](../JMException.md "class in javax.management")

[javax.management.relation.RelationException](RelationException.md "class in javax.management.relation")

javax.management.relation.RoleNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class RoleNotFoundException
extends [RelationException](RelationException.md "class in javax.management.relation")

This exception is raised when a role in a relation does not exist, or is not
readable, or is not settable.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RoleNotFoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RoleNotFoundException()`

  Default constructor, no message put in exception.

  `RoleNotFoundException(String message)`

  Constructor with given message put in exception.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RoleNotFoundException

    public RoleNotFoundException()

    Default constructor, no message put in exception.
  + ### RoleNotFoundException

    public RoleNotFoundException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor with given message put in exception.

    Parameters:
    :   `message` - the detail message.