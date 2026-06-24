Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class AttributeNotFoundException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.management.JMException](JMException.md "class in javax.management")

[javax.management.OperationsException](OperationsException.md "class in javax.management")

javax.management.AttributeNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class AttributeNotFoundException
extends [OperationsException](OperationsException.md "class in javax.management")

The specified attribute does not exist or cannot be retrieved.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.AttributeNotFoundException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeNotFoundException()`

  Default constructor.

  `AttributeNotFoundException(String message)`

  Constructor that allows a specific error message to be specified.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AttributeNotFoundException

    public AttributeNotFoundException()

    Default constructor.
  + ### AttributeNotFoundException

    public AttributeNotFoundException([String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructor that allows a specific error message to be specified.

    Parameters:
    :   `message` - detail message.