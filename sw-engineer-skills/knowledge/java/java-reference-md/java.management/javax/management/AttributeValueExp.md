Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class AttributeValueExp

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.AttributeValueExp

All Implemented Interfaces:
:   `Serializable`, `ValueExp`

---

public class AttributeValueExp
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ValueExp](ValueExp.md "interface in javax.management")

Represents attributes used as arguments to relational constraints.
Instances of this class are usually obtained using [`Query.attr`](Query.md#attr(java.lang.String)).

An `AttributeValueExp` may be used anywhere a
`ValueExp` is required.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.AttributeValueExp)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeValueExp()`

  Deprecated.

  An instance created with this constructor cannot be
  used in a query.

  `AttributeValueExp(String attr)`

  Creates a new `AttributeValueExp` representing the
  specified object attribute, named attr.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `ValueExp`

  `apply(ObjectName name)`

  Applies the `AttributeValueExp` on an MBean.

  `protected Object`

  `getAttribute(ObjectName name)`

  Return the value of the given attribute in the named MBean.

  `String`

  `getAttributeName()`

  Returns a string representation of the name of the attribute.

  `void`

  `setMBeanServer(MBeanServer s)`

  Deprecated.

  This method has no effect.

  `String`

  `toString()`

  Returns the string representing its value.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AttributeValueExp

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public AttributeValueExp()

    Deprecated.

    An instance created with this constructor cannot be
    used in a query.

    An `AttributeValueExp` with a null attribute.
  + ### AttributeValueExp

    public AttributeValueExp([String](../../../java.base/java/lang/String.md "class in java.lang") attr)

    Creates a new `AttributeValueExp` representing the
    specified object attribute, named attr.

    Parameters:
    :   `attr` - the name of the attribute whose value is the value
        of this [`ValueExp`](ValueExp.md "interface in javax.management").
* ## Method Details

  + ### getAttributeName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getAttributeName()

    Returns a string representation of the name of the attribute.

    Returns:
    :   the attribute name.
  + ### apply

    public [ValueExp](ValueExp.md "interface in javax.management") apply([ObjectName](ObjectName.md "class in javax.management") name)
    throws [BadStringOperationException](BadStringOperationException.md "class in javax.management"),
    [BadBinaryOpValueExpException](BadBinaryOpValueExpException.md "class in javax.management"),
    [BadAttributeValueExpException](BadAttributeValueExpException.md "class in javax.management"),
    [InvalidApplicationException](InvalidApplicationException.md "class in javax.management")

    Applies the `AttributeValueExp` on an MBean.
    This method calls [`getAttribute(name)`](#getAttribute(javax.management.ObjectName)) and wraps
    the result as a `ValueExp`. The value returned by
    `getAttribute` must be a `Number`, `String`,
    or `Boolean`; otherwise this method throws a
    `BadAttributeValueExpException`, which will cause
    the containing query to be false for this `name`.

    Specified by:
    :   `apply` in interface `ValueExp`

    Parameters:
    :   `name` - The name of the MBean on which the `AttributeValueExp` will be applied.

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
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representing its value.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### setMBeanServer

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setMBeanServer([MBeanServer](MBeanServer.md "interface in javax.management") s)

    Deprecated.

    This method has no effect. The MBean Server used to
    obtain an attribute value is [`QueryEval.getMBeanServer()`](QueryEval.md#getMBeanServer()).

    Sets the MBean server on which the query is to be performed.

    Specified by:
    :   `setMBeanServer` in interface `ValueExp`

    Parameters:
    :   `s` - The MBean server on which the query is to be performed.
  + ### getAttribute

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([ObjectName](ObjectName.md "class in javax.management") name)

    Return the value of the given attribute in the named MBean.
    If the attempt to access the attribute generates an exception,
    return null.

    The MBean Server used is the one returned by [`QueryEval.getMBeanServer()`](QueryEval.md#getMBeanServer()).

    Parameters:
    :   `name` - the name of the MBean whose attribute is to be returned.

    Returns:
    :   the value of the attribute, or null if it could not be
        obtained.