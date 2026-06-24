Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface ValueExp

All Superinterfaces:
:   `Serializable`

All Known Implementing Classes:
:   `AttributeValueExp`, `StringValueExp`

---

public interface ValueExp
extends [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Represents values that can be passed as arguments to
relational expressions. Strings, numbers, attributes are valid values
and should be represented by implementations of `ValueExp`.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `ValueExp`

  `apply(ObjectName name)`

  Applies the ValueExp on a MBean.

  `void`

  `setMBeanServer(MBeanServer s)`

  Deprecated.

  This method is not needed because a
  `ValueExp` can access the MBean server in which it
  is being evaluated by using [`QueryEval.getMBeanServer()`](QueryEval.md#getMBeanServer()).

* ## Method Details

  + ### apply

    [ValueExp](ValueExp.md "interface in javax.management") apply([ObjectName](ObjectName.md "class in javax.management") name)
    throws [BadStringOperationException](BadStringOperationException.md "class in javax.management"),
    [BadBinaryOpValueExpException](BadBinaryOpValueExpException.md "class in javax.management"),
    [BadAttributeValueExpException](BadAttributeValueExpException.md "class in javax.management"),
    [InvalidApplicationException](InvalidApplicationException.md "class in javax.management")

    Applies the ValueExp on a MBean.

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
  + ### setMBeanServer

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void setMBeanServer([MBeanServer](MBeanServer.md "interface in javax.management") s)

    Deprecated.

    This method is not needed because a
    `ValueExp` can access the MBean server in which it
    is being evaluated by using [`QueryEval.getMBeanServer()`](QueryEval.md#getMBeanServer()).

    Sets the MBean server on which the query is to be performed.

    Parameters:
    :   `s` - The MBean server on which the query is to be performed.