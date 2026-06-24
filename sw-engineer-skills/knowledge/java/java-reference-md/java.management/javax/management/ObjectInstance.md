Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class ObjectInstance

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.ObjectInstance

All Implemented Interfaces:
:   `Serializable`

---

public class ObjectInstance
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Used to represent the object name of an MBean and its class name.
If the MBean is a Dynamic MBean the class name should be retrieved from
the `MBeanInfo` it provides.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.ObjectInstance)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ObjectInstance(String objectName,
  String className)`

  Allows an object instance to be created given a string representation of
  an object name and the full class name, including the package name.

  `ObjectInstance(ObjectName objectName,
  String className)`

  Allows an object instance to be created given an object name and
  the full class name, including the package name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Compares the current object instance with another object instance.

  `String`

  `getClassName()`

  Returns the class part.

  `ObjectName`

  `getObjectName()`

  Returns the object name part.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `String`

  `toString()`

  Returns a string representing this ObjectInstance object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ObjectInstance

    public ObjectInstance([String](../../../java.base/java/lang/String.md "class in java.lang") objectName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [MalformedObjectNameException](MalformedObjectNameException.md "class in javax.management")

    Allows an object instance to be created given a string representation of
    an object name and the full class name, including the package name.

    Parameters:
    :   `objectName` - A string representation of the object name.
    :   `className` - The full class name, including the package
        name, of the object instance. If the MBean is a Dynamic MBean
        the class name corresponds to its [`getMBeanInfo()`](DynamicMBean.md#getMBeanInfo())`.getClassName()`.

    Throws:
    :   `MalformedObjectNameException` - The string passed as a
        parameter does not have the right format.
  + ### ObjectInstance

    public ObjectInstance([ObjectName](ObjectName.md "class in javax.management") objectName,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className)

    Allows an object instance to be created given an object name and
    the full class name, including the package name.

    Parameters:
    :   `objectName` - The object name.
    :   `className` - The full class name, including the package
        name, of the object instance. If the MBean is a Dynamic MBean
        the class name corresponds to its [`getMBeanInfo()`](DynamicMBean.md#getMBeanInfo())`.getClassName()`.
        If the MBean is a Dynamic MBean the class name should be retrieved
        from the `MBeanInfo` it provides.
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") object)

    Compares the current object instance with another object instance.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - The object instance that the current object instance is
        to be compared with.

    Returns:
    :   True if the two object instances are equal, otherwise false.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### getObjectName

    public [ObjectName](ObjectName.md "class in javax.management") getObjectName()

    Returns the object name part.

    Returns:
    :   the object name.
  + ### getClassName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Returns the class part.

    Returns:
    :   the class name.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representing this ObjectInstance object. The format of this string
    is not specified, but users can expect that two ObjectInstances return the same
    string if and only if they are equal.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.