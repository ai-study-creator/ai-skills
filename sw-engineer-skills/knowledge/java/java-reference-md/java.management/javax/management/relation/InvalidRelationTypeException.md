Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class InvalidRelationTypeException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](../JMException.md "class in javax.management")

[javax.management.relation.RelationException](RelationException.md "class in javax.management.relation")

javax.management.relation.InvalidRelationTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidRelationTypeException
extends [RelationException](RelationException.md "class in javax.management.relation")

Invalid relation type.
This exception is raised when, in a relation type, there is already a
relation type with that name, or the same name has been used for two
different role infos, or no role info provided, or one null role info
provided.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.InvalidRelationTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidRelationTypeException()`

  Default constructor, no message put in exception.

  `InvalidRelationTypeException(String message)`

  Constructor with given message put in exception.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidRelationTypeException

    public InvalidRelationTypeException()

    Default constructor, no message put in exception.
  + ### InvalidRelationTypeException

    public InvalidRelationTypeException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor with given message put in exception.

    Parameters:
    :   `message` - the detail message.