Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class BadStringOperationException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.management.BadStringOperationException

All Implemented Interfaces:
:   `Serializable`

---

public class BadStringOperationException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown when an invalid string operation is passed
to a method for constructing a query.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.BadStringOperationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BadStringOperationException(String message)`

  Constructs a `BadStringOperationException` with the specified detail
  message.
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

  + ### BadStringOperationException

    public BadStringOperationException([String](../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a `BadStringOperationException` with the specified detail
    message.

    Parameters:
    :   `message` - the detail message.
* ## Method Details

  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representing the object.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   a string representation of this throwable.