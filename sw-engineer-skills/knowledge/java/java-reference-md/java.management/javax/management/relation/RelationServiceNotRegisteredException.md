Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RelationServiceNotRegisteredException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](../JMException.md "class in javax.management")

[javax.management.relation.RelationException](RelationException.md "class in javax.management.relation")

javax.management.relation.RelationServiceNotRegisteredException

All Implemented Interfaces:
:   `Serializable`

---

public class RelationServiceNotRegisteredException
extends [RelationException](RelationException.md "class in javax.management.relation")

This exception is raised when an access is done to the Relation Service and
that one is not registered.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RelationServiceNotRegisteredException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RelationServiceNotRegisteredException()`

  Default constructor, no message put in exception.

  `RelationServiceNotRegisteredException(String message)`

  Constructor with given message put in exception.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RelationServiceNotRegisteredException

    public RelationServiceNotRegisteredException()

    Default constructor, no message put in exception.
  + ### RelationServiceNotRegisteredException

    public RelationServiceNotRegisteredException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor with given message put in exception.

    Parameters:
    :   `message` - the detail message.