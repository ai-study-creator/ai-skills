Module [java.management](../../../module-summary.md)

Package [javax.management.modelmbean](package-summary.md)

# Class ModelMBeanConstructorInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

[javax.management.MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management")

javax.management.modelmbean.ModelMBeanConstructorInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorAccess`, `DescriptorRead`

---

public class ModelMBeanConstructorInfo
extends [MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management")
implements [DescriptorAccess](../DescriptorAccess.md "interface in javax.management")

The ModelMBeanConstructorInfo object describes a constructor of the ModelMBean.
It is a subclass of MBeanConstructorInfo with the addition of an associated Descriptor
and an implementation of the DescriptorAccess interface.

The fields in the descriptor are defined, but not limited to, the following.
Note that when the Type in this table is Number, a String that is the decimal
representation of a Long can also be used.

ModelMBeanConstructorInfo Fields

| Name | Type | Meaning |
| --- | --- | --- |
| name | String | Constructor name. |
| descriptorType | String | Must be "operation". |
| role | String | Must be "constructor". |
| displayName | String | Human readable name of constructor. |
| visibility | Number | 1-4 where 1: always visible 4: rarely visible. |
| presentationString | String | XML formatted string to describe how to present operation |

The `persistPolicy` and `currencyTimeLimit` fields
are meaningless for constructors, but are not considered invalid.

The default descriptor will have the `name`, `descriptorType`, `displayName` and `role` fields.

The **serialVersionUID** of this class is `3862947819818064362L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.modelmbean.ModelMBeanConstructorInfo)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ModelMBeanConstructorInfo(String description,
  Constructor<?> constructorMethod)`

  Constructs a ModelMBeanConstructorInfo object with a default
  descriptor.

  `ModelMBeanConstructorInfo(String description,
  Constructor<?> constructorMethod,
  Descriptor descriptor)`

  Constructs a ModelMBeanConstructorInfo object.

  `ModelMBeanConstructorInfo(String name,
  String description,
  MBeanParameterInfo[] signature)`

  Constructs a ModelMBeanConstructorInfo object with a default descriptor.

  `ModelMBeanConstructorInfo(String name,
  String description,
  MBeanParameterInfo[] signature,
  Descriptor descriptor)`

  Constructs a ModelMBeanConstructorInfo object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates and returns a new ModelMBeanConstructorInfo which is a duplicate of this ModelMBeanConstructorInfo.

  `Descriptor`

  `getDescriptor()`

  Returns a copy of the associated Descriptor.

  `void`

  `setDescriptor(Descriptor inDescriptor)`

  Sets associated Descriptor (full replace) of
  ModelMBeanConstructorInfo.

  `String`

  `toString()`

  Returns a string containing the entire contents of the ModelMBeanConstructorInfo in human readable form.

  ### Methods inherited from class javax.management.[MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management")

  `equals, getSignature, hashCode`

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getName`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ModelMBeanConstructorInfo

    public ModelMBeanConstructorInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [Constructor](../../../../java.base/java/lang/reflect/Constructor.md "class in java.lang.reflect")<?> constructorMethod)

    Constructs a ModelMBeanConstructorInfo object with a default
    descriptor. The [`Descriptor`](../Descriptor.md "interface in javax.management") of the constructed
    object will include fields contributed by any annotations on
    the `Constructor` object that contain the [`DescriptorKey`](../DescriptorKey.md "annotation interface in javax.management") meta-annotation.

    Parameters:
    :   `description` - A human readable description of the constructor.
    :   `constructorMethod` - The java.lang.reflect.Constructor object
        describing the MBean constructor.
  + ### ModelMBeanConstructorInfo

    public ModelMBeanConstructorInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [Constructor](../../../../java.base/java/lang/reflect/Constructor.md "class in java.lang.reflect")<?> constructorMethod,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs a ModelMBeanConstructorInfo object. The [`Descriptor`](../Descriptor.md "interface in javax.management") of the constructed object will include fields
    contributed by any annotations on the `Constructor`
    object that contain the [`DescriptorKey`](../DescriptorKey.md "annotation interface in javax.management")
    meta-annotation.

    Parameters:
    :   `description` - A human readable description of the constructor.
    :   `constructorMethod` - The java.lang.reflect.Constructor object
        describing the ModelMBean constructor.
    :   `descriptor` - An instance of Descriptor containing the
        appropriate metadata for this instance of the
        ModelMBeanConstructorInfo. If it is null, then a default
        descriptor will be created. If the descriptor does not
        contain the field "displayName" this field is added in the
        descriptor with its default value.

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        IllegalArgumentException. The descriptor is invalid, or
        descriptor field "name" is not equal to name
        parameter, or descriptor field "descriptorType" is
        not equal to "operation" or descriptor field "role" is
        present but not equal to "constructor".
  + ### ModelMBeanConstructorInfo

    public ModelMBeanConstructorInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](../MBeanParameterInfo.md "class in javax.management")[] signature)

    Constructs a ModelMBeanConstructorInfo object with a default descriptor.

    Parameters:
    :   `name` - The name of the constructor.
    :   `description` - A human readable description of the constructor.
    :   `signature` - MBeanParameterInfo object array describing the parameters(arguments) of the constructor.
  + ### ModelMBeanConstructorInfo

    public ModelMBeanConstructorInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](../MBeanParameterInfo.md "class in javax.management")[] signature,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs a ModelMBeanConstructorInfo object.

    Parameters:
    :   `name` - The name of the constructor.
    :   `description` - A human readable description of the constructor.
    :   `signature` - MBeanParameterInfo objects describing the parameters(arguments) of the constructor.
    :   `descriptor` - An instance of Descriptor containing the appropriate metadata
        for this instance of the MBeanConstructorInfo. If it is null then a default descriptor will be created.
        If the descriptor does not contain the field "displayName" this field
        is added in the descriptor with its default value.

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        IllegalArgumentException. The descriptor is invalid, or
        descriptor field "name" is not equal to name
        parameter, or descriptor field "descriptorType" is
        not equal to "operation" or descriptor field "role" is
        present but not equal to "constructor".
* ## Method Details

  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates and returns a new ModelMBeanConstructorInfo which is a duplicate of this ModelMBeanConstructorInfo.

    Overrides:
    :   `clone` in class `MBeanConstructorInfo`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getDescriptor

    public [Descriptor](../Descriptor.md "interface in javax.management") getDescriptor()

    Returns a copy of the associated Descriptor.

    Specified by:
    :   `getDescriptor` in interface `DescriptorRead`

    Overrides:
    :   `getDescriptor` in class `MBeanFeatureInfo`

    Returns:
    :   Descriptor associated with the
        ModelMBeanConstructorInfo object.

    See Also:
    :   - [`setDescriptor(javax.management.Descriptor)`](#setDescriptor(javax.management.Descriptor))
  + ### setDescriptor

    public void setDescriptor([Descriptor](../Descriptor.md "interface in javax.management") inDescriptor)

    Sets associated Descriptor (full replace) of
    ModelMBeanConstructorInfo. If the new Descriptor is null,
    then the associated Descriptor reverts to a default
    descriptor. The Descriptor is validated before it is
    assigned. If the new Descriptor is invalid, then a
    RuntimeOperationsException wrapping an
    IllegalArgumentException is thrown.

    Specified by:
    :   `setDescriptor` in interface `DescriptorAccess`

    Parameters:
    :   `inDescriptor` - replaces the Descriptor associated with
        the ModelMBeanConstructor. If the descriptor does not
        contain all the following fields, the missing ones are added with
        their default values: displayName, name, role, descriptorType.

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        IllegalArgumentException. The descriptor is invalid, or
        descriptor field "name" is present but not equal to name
        parameter, or descriptor field "descriptorType" is present
        but not equal to "operation" or descriptor field "role" is
        present but not equal to "constructor".

    See Also:
    :   - [`getDescriptor()`](#getDescriptor())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string containing the entire contents of the ModelMBeanConstructorInfo in human readable form.

    Overrides:
    :   `toString` in class `MBeanConstructorInfo`

    Returns:
    :   a string representation of the object.