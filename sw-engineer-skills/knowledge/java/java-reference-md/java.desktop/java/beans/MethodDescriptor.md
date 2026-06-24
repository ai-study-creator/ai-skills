Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class MethodDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

java.beans.MethodDescriptor

---

public class MethodDescriptor
extends [FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

A MethodDescriptor describes a particular method that a Java Bean
supports for external access from other components.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MethodDescriptor(Method method)`

  Constructs a `MethodDescriptor` from a
  `Method`.

  `MethodDescriptor(Method method,
  ParameterDescriptor[] parameterDescriptors)`

  Constructs a `MethodDescriptor` from a
  `Method` providing descriptive information for each
  of the method's parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Method`

  `getMethod()`

  Gets the method that this MethodDescriptor encapsulates.

  `ParameterDescriptor[]`

  `getParameterDescriptors()`

  Gets the ParameterDescriptor for each of this MethodDescriptor's
  method's parameters.

  ### Methods inherited from class java.beans.[FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

  `attributeNames, getDisplayName, getName, getShortDescription, getValue, isExpert, isHidden, isPreferred, setDisplayName, setExpert, setHidden, setName, setPreferred, setShortDescription, setValue, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MethodDescriptor

    public MethodDescriptor([Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") method)

    Constructs a `MethodDescriptor` from a
    `Method`.

    Parameters:
    :   `method` - The low-level method information.
  + ### MethodDescriptor

    public MethodDescriptor([Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") method,
    [ParameterDescriptor](ParameterDescriptor.md "class in java.beans")[] parameterDescriptors)

    Constructs a `MethodDescriptor` from a
    `Method` providing descriptive information for each
    of the method's parameters.

    Parameters:
    :   `method` - The low-level method information.
    :   `parameterDescriptors` - Descriptive information for each of the
        method's parameters.
* ## Method Details

  + ### getMethod

    public [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getMethod()

    Gets the method that this MethodDescriptor encapsulates.

    Returns:
    :   The low-level description of the method
  + ### getParameterDescriptors

    public [ParameterDescriptor](ParameterDescriptor.md "class in java.beans")[] getParameterDescriptors()

    Gets the ParameterDescriptor for each of this MethodDescriptor's
    method's parameters.

    Returns:
    :   The locale-independent names of the parameters. May return
        a null array if the parameter names aren't known.