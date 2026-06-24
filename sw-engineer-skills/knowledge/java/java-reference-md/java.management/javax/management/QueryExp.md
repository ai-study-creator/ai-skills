Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface QueryExp

All Superinterfaces:
:   `Serializable`

All Known Implementing Classes:
:   `ObjectName`

---

public interface QueryExp
extends [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Represents relational constraints similar to database query "where
clauses". Instances of QueryExp are returned by the static methods of the
[`Query`](Query.md "class in javax.management") class.

It is possible, but not
recommended, to create custom queries by implementing this
interface. In that case, it is better to extend the [`QueryEval`](QueryEval.md "class in javax.management") class than to implement the interface directly, so that
the [`setMBeanServer(javax.management.MBeanServer)`](#setMBeanServer(javax.management.MBeanServer)) method works correctly.

Since:
:   1.5

See Also:
:   * [`MBeanServer.queryNames`](MBeanServer.md#queryNames(javax.management.ObjectName,javax.management.QueryExp))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `apply(ObjectName name)`

  Applies the QueryExp on an MBean.

  `void`

  `setMBeanServer(MBeanServer s)`

  Sets the MBean server on which the query is to be performed.

* ## Method Details

  + ### apply

    boolean apply([ObjectName](ObjectName.md "class in javax.management") name)
    throws [BadStringOperationException](BadStringOperationException.md "class in javax.management"),
    [BadBinaryOpValueExpException](BadBinaryOpValueExpException.md "class in javax.management"),
    [BadAttributeValueExpException](BadAttributeValueExpException.md "class in javax.management"),
    [InvalidApplicationException](InvalidApplicationException.md "class in javax.management")

    Applies the QueryExp on an MBean.

    Parameters:
    :   `name` - The name of the MBean on which the QueryExp will be applied.

    Returns:
    :   True if the query was successfully applied to the MBean, false otherwise

    Throws:
    :   `BadStringOperationException` - when an invalid string
        operation is passed to a method for constructing a query
    :   `BadBinaryOpValueExpException` - when an invalid expression
        is passed to a method for constructing a query
    :   `BadAttributeValueExpException` - when an invalid MBean
        attribute is passed to a query constructing method
    :   `InvalidApplicationException` - when an invalid apply is attempted
  + ### setMBeanServer

    void setMBeanServer([MBeanServer](MBeanServer.md "interface in javax.management") s)

    Sets the MBean server on which the query is to be performed.

    Parameters:
    :   `s` - The MBean server on which the query is to be performed.