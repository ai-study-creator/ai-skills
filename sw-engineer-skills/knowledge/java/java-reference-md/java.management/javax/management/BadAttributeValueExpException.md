Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class BadAttributeValueExpException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.management.BadAttributeValueExpException

All Implemented Interfaces:
:   `Serializable`

---

public class BadAttributeValueExpException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown when an invalid MBean attribute is passed to a query
constructing method. This exception is used internally by JMX
during the evaluation of a query. User code does not usually
see it.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.BadAttributeValueExpException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BadAttributeValueExpException(Object val)`

  Constructs a BadAttributeValueExpException using the specified Object to
  create the toString() value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns the string representing the object.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BadAttributeValueExpException

    public BadAttributeValueExpException([Object](../../../java.base/java/lang/Object.md "class in java.lang") val)

    Constructs a BadAttributeValueExpException using the specified Object to
    create the toString() value.

    Parameters:
    :   `val` - the inappropriate value.
* ## Method Details

  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representing the object.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   a string representation of this throwable.