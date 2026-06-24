Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface DynamicMBean

All Known Subinterfaces:
:   `ModelMBean`

All Known Implementing Classes:
:   `RequiredModelMBean`, `StandardEmitterMBean`, `StandardMBean`

---

public interface DynamicMBean

Defines the methods that should be implemented by
a Dynamic MBean (MBean that exposes a dynamic management interface).

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getAttribute(String attribute)`

  Obtain the value of a specific attribute of the Dynamic MBean.

  `AttributeList`

  `getAttributes(String[] attributes)`

  Get the values of several attributes of the Dynamic MBean.

  `MBeanInfo`

  `getMBeanInfo()`

  Provides the exposed attributes and actions of the Dynamic MBean using an MBeanInfo object.

  `Object`

  `invoke(String actionName,
  Object[] params,
  String[] signature)`

  Allows an action to be invoked on the Dynamic MBean.

  `void`

  `setAttribute(Attribute attribute)`

  Set the value of a specific attribute of the Dynamic MBean.

  `AttributeList`

  `setAttributes(AttributeList attributes)`

  Sets the values of several attributes of the Dynamic MBean.

* ## Method Details

  + ### getAttribute

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") attribute)
    throws [AttributeNotFoundException](AttributeNotFoundException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Obtain the value of a specific attribute of the Dynamic MBean.

    Parameters:
    :   `attribute` - The name of the attribute to be retrieved

    Returns:
    :   The value of the attribute retrieved.

    Throws:
    :   `AttributeNotFoundException` - if specified attribute does not exist or cannot be retrieved
    :   `MBeanException` - Wraps a `java.lang.Exception` thrown by the MBean's getter.
    :   `ReflectionException` - Wraps a `java.lang.Exception` thrown while trying to invoke the getter.

    See Also:
    :   - [`setAttribute(javax.management.Attribute)`](#setAttribute(javax.management.Attribute))
  + ### setAttribute

    void setAttribute([Attribute](Attribute.md "class in javax.management") attribute)
    throws [AttributeNotFoundException](AttributeNotFoundException.md "class in javax.management"),
    [InvalidAttributeValueException](InvalidAttributeValueException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Set the value of a specific attribute of the Dynamic MBean.

    Parameters:
    :   `attribute` - The identification of the attribute to
        be set and the value it is to be set to.

    Throws:
    :   `AttributeNotFoundException` - if specified attribute does not exist or cannot be retrieved
    :   `InvalidAttributeValueException` - if value specified is not valid for the attribute
    :   `MBeanException` - Wraps a `java.lang.Exception` thrown by the MBean's setter.
    :   `ReflectionException` - Wraps a `java.lang.Exception` thrown while trying to invoke the MBean's setter.

    See Also:
    :   - [`getAttribute(java.lang.String)`](#getAttribute(java.lang.String))
  + ### getAttributes

    [AttributeList](AttributeList.md "class in javax.management") getAttributes([String](../../../java.base/java/lang/String.md "class in java.lang")[] attributes)

    Get the values of several attributes of the Dynamic MBean.

    Parameters:
    :   `attributes` - A list of the attributes to be retrieved.

    Returns:
    :   The list of attributes retrieved.

    See Also:
    :   - [`setAttributes(javax.management.AttributeList)`](#setAttributes(javax.management.AttributeList))
  + ### setAttributes

    [AttributeList](AttributeList.md "class in javax.management") setAttributes([AttributeList](AttributeList.md "class in javax.management") attributes)

    Sets the values of several attributes of the Dynamic MBean.

    Parameters:
    :   `attributes` - A list of attributes: The identification of the
        attributes to be set and the values they are to be set to.

    Returns:
    :   The list of attributes that were set, with their new values.

    See Also:
    :   - [`getAttributes(java.lang.String[])`](#getAttributes(java.lang.String%5B%5D))
  + ### invoke

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") invoke([String](../../../java.base/java/lang/String.md "class in java.lang") actionName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] signature)
    throws [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Allows an action to be invoked on the Dynamic MBean.

    Parameters:
    :   `actionName` - The name of the action to be invoked.
    :   `params` - An array containing the parameters to be set when the action is
        invoked.
    :   `signature` - An array containing the signature of the action. The class objects will
        be loaded through the same class loader as the one used for loading the
        MBean on which the action is invoked.

    Returns:
    :   The object returned by the action, which represents the result of
        invoking the action on the MBean specified.

    Throws:
    :   `MBeanException` - Wraps a `java.lang.Exception` thrown by the MBean's invoked method.
    :   `ReflectionException` - Wraps a `java.lang.Exception` thrown while trying to invoke the method
  + ### getMBeanInfo

    [MBeanInfo](MBeanInfo.md "class in javax.management") getMBeanInfo()

    Provides the exposed attributes and actions of the Dynamic MBean using an MBeanInfo object.

    Returns:
    :   An instance of `MBeanInfo` allowing all attributes and actions
        exposed by this Dynamic MBean to be retrieved.