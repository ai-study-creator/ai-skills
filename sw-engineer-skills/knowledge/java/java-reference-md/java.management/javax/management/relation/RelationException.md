Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RelationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](../JMException.md "class in javax.management")

javax.management.relation.RelationException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `InvalidRelationIdException`, `InvalidRelationServiceException`, `InvalidRelationTypeException`, `InvalidRoleInfoException`, `InvalidRoleValueException`, `RelationNotFoundException`, `RelationServiceNotRegisteredException`, `RelationTypeNotFoundException`, `RoleInfoNotFoundException`, `RoleNotFoundException`

---

public class RelationException
extends [JMException](../JMException.md "class in javax.management")

This class is the superclass of any exception which can be raised during
relation management.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RelationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RelationException()`

  Default constructor, no message put in exception.

  `RelationException(String message)`

  Constructor with given message put in exception.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RelationException

    public RelationException()

    Default constructor, no message put in exception.
  + ### RelationException

    public RelationException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor with given message put in exception.

    Parameters:
    :   `message` - the detail message.