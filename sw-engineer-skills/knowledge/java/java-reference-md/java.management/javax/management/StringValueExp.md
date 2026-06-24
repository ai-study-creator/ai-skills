Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class StringValueExp

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.StringValueExp

All Implemented Interfaces:
:   `Serializable`, `ValueExp`

---

public class StringValueExp
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ValueExp](ValueExp.md "interface in javax.management")

Represents strings that are arguments to relational constraints.
A `StringValueExp` may be used anywhere a `ValueExp` is required.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.StringValueExp)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringValueExp()`

  Basic constructor.

  `StringValueExp(String val)`

  Creates a new `StringValueExp` representing the
  given string.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `ValueExp`

  `apply(ObjectName name)`

  Applies the ValueExp on a MBean.

  `String`

  `getValue()`

  Returns the string represented by the
  `StringValueExp` instance.

  `void`

  `setMBeanServer(MBeanServer s)`

  Deprecated.

  `String`

  `toString()`

  Returns the string representing the object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StringValueExp

    public StringValueExp()

    Basic constructor.
  + ### StringValueExp

    public StringValueExp([String](../../../java.base/java/lang/String.md "class in java.lang") val)

    Creates a new `StringValueExp` representing the
    given string.

    Parameters:
    :   `val` - the string that will be the value of this expression
* ## Method Details

  + ### getValue

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getValue()

    Returns the string represented by the
    `StringValueExp` instance.

    Returns:
    :   the string.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representing the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### setMBeanServer

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setMBeanServer([MBeanServer](MBeanServer.md "interface in javax.management") s)

    Deprecated.

    Sets the MBean server on which the query is to be performed.

    Specified by:
    :   `setMBeanServer` in interface `ValueExp`

    Parameters:
    :   `s` - The MBean server on which the query is to be performed.
  + ### apply

    public [ValueExp](ValueExp.md "interface in javax.management") apply([ObjectName](ObjectName.md "class in javax.management") name)
    throws [BadStringOperationException](BadStringOperationException.md "class in javax.management"),
    [BadBinaryOpValueExpException](BadBinaryOpValueExpException.md "class in javax.management"),
    [BadAttributeValueExpException](BadAttributeValueExpException.md "class in javax.management"),
    [InvalidApplicationException](InvalidApplicationException.md "class in javax.management")

    Applies the ValueExp on a MBean.

    Specified by:
    :   `apply` in interface `ValueExp`

    Parameters:
    :   `name` - The name of the MBean on which the ValueExp will be applied.

    Returns:
    :   The `ValueExp`.

    Throws:
    :   `BadStringOperationException` - when an invalid string
        operation is passed to a method for constructing a query
    :   `BadBinaryOpValueExpException` - when an invalid expression
        is passed to a method for constructing a query
    :   `BadAttributeValueExpException` - when an invalid MBean
        attribute is passed to a query constructing method
    :   `InvalidApplicationException` - when an invalid apply is attempted