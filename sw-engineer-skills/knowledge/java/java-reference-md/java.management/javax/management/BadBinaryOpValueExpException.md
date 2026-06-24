Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class BadBinaryOpValueExpException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.management.BadBinaryOpValueExpException

All Implemented Interfaces:
:   `Serializable`

---

public class BadBinaryOpValueExpException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown when an invalid expression is passed to a method for
constructing a query. This exception is used internally by JMX
during the evaluation of a query. User code does not usually see
it.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.BadBinaryOpValueExpException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BadBinaryOpValueExpException(ValueExp exp)`

  Constructs a `BadBinaryOpValueExpException` with the specified `ValueExp`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ValueExp`

  `getExp()`

  Returns the `ValueExp` that originated the exception.

  `String`

  `toString()`

  Returns the string representing the object.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BadBinaryOpValueExpException

    public BadBinaryOpValueExpException([ValueExp](ValueExp.md "interface in javax.management") exp)

    Constructs a `BadBinaryOpValueExpException` with the specified `ValueExp`.

    Parameters:
    :   `exp` - the expression whose value was inappropriate.
* ## Method Details

  + ### getExp

    public [ValueExp](ValueExp.md "interface in javax.management") getExp()

    Returns the `ValueExp` that originated the exception.

    Returns:
    :   the problematic [`ValueExp`](ValueExp.md "interface in javax.management").
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representing the object.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   a string representation of this throwable.