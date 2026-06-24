Module [java.management](../../../module-summary.md)

Package [javax.management.modelmbean](package-summary.md)

# Class ModelMBeanOperationInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

[javax.management.MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")

javax.management.modelmbean.ModelMBeanOperationInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorAccess`, `DescriptorRead`

---

public class ModelMBeanOperationInfo
extends [MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")
implements [DescriptorAccess](../DescriptorAccess.md "interface in javax.management")

The ModelMBeanOperationInfo object describes a management operation of
the ModelMBean. It is a subclass of MBeanOperationInfo with the addition
of an associated Descriptor and an implementation of the DescriptorAccess
interface.

The fields in the descriptor are defined, but not limited to, the following.
Note that when the Type in this table is Number, a String that is the decimal
representation of a Long can also be used.

ModelMBeanOperationInfo Fields

| Name | Type | Meaning |
| --- | --- | --- |
| name | String | Operation name. |
| descriptorType | String | Must be "operation". |
| class | String | Class where method is defined (fully qualified). |
| role | String | Must be "operation", "getter", or "setter". |
| targetObject | Object | Object on which to execute this method. |
| targetType | String | type of object reference for targetObject. Can be: ObjectReference | Handle | EJBHandle | IOR | RMIReference. |
| value | Object | Cached value for operation. |
| displayName | String | Human readable display name of the operation. || currencyTimeLimit | Number | How long cached value is valid. |
| lastUpdatedTimeStamp | Number | When cached value was set. |
| visibility | Number | 1-4 where 1: always visible 4: rarely visible. |
| presentationString | String | XML formatted string to describe how to present operation |

The default descriptor will have name, descriptorType, displayName and
role fields set. The default value of the name and displayName fields is
the operation name.

**Note:** because of inconsistencies in previous versions of
this specification, it is recommended not to use negative or zero
values for `currencyTimeLimit`. To indicate that a
cached value is never valid, omit the
`currencyTimeLimit` field. To indicate that it is
always valid, use a very large number for this field.

The **serialVersionUID** of this class is `6532732096650090465L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.modelmbean.ModelMBeanOperationInfo)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")

  `ACTION, ACTION_INFO, INFO, UNKNOWN`

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ModelMBeanOperationInfo(String description,
  Method operationMethod)`

  Constructs a ModelMBeanOperationInfo object with a default
  descriptor.

  `ModelMBeanOperationInfo(String description,
  Method operationMethod,
  Descriptor descriptor)`

  Constructs a ModelMBeanOperationInfo object.

  `ModelMBeanOperationInfo(String name,
  String description,
  MBeanParameterInfo[] signature,
  String type,
  int impact)`

  Constructs a ModelMBeanOperationInfo object with a default descriptor.

  `ModelMBeanOperationInfo(String name,
  String description,
  MBeanParameterInfo[] signature,
  String type,
  int impact,
  Descriptor descriptor)`

  Constructs a ModelMBeanOperationInfo object.

  `ModelMBeanOperationInfo(ModelMBeanOperationInfo inInfo)`

  Constructs a new ModelMBeanOperationInfo object from this
  ModelMBeanOperation Object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates and returns a new ModelMBeanOperationInfo which is a
  duplicate of this ModelMBeanOperationInfo.

  `Descriptor`

  `getDescriptor()`

  Returns a copy of the associated Descriptor of the
  ModelMBeanOperationInfo.

  `void`

  `setDescriptor(Descriptor inDescriptor)`

  Sets associated Descriptor (full replace) for the
  ModelMBeanOperationInfo If the new Descriptor is null, then
  the associated Descriptor reverts to a default descriptor.

  `String`

  `toString()`

  Returns a string containing the entire contents of the
  ModelMBeanOperationInfo in human readable form.

  ### Methods inherited from class javax.management.[MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")

  `equals, getImpact, getReturnType, getSignature, hashCode`

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getName`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ModelMBeanOperationInfo

    public ModelMBeanOperationInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [Method](../../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") operationMethod)

    Constructs a ModelMBeanOperationInfo object with a default
    descriptor. The [`Descriptor`](../Descriptor.md "interface in javax.management") of the constructed
    object will include fields contributed by any annotations
    on the `Method` object that contain the [`DescriptorKey`](../DescriptorKey.md "annotation interface in javax.management") meta-annotation.

    Parameters:
    :   `description` - A human readable description of the operation.
    :   `operationMethod` - The java.lang.reflect.Method object
        describing the MBean operation.
  + ### ModelMBeanOperationInfo

    public ModelMBeanOperationInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [Method](../../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") operationMethod,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs a ModelMBeanOperationInfo object. The [`Descriptor`](../Descriptor.md "interface in javax.management") of the constructed object will include fields
    contributed by any annotations on the `Method` object
    that contain the [`DescriptorKey`](../DescriptorKey.md "annotation interface in javax.management") meta-annotation.

    Parameters:
    :   `description` - A human readable description of the
        operation.
    :   `operationMethod` - The java.lang.reflect.Method object
        describing the MBean operation.
    :   `descriptor` - An instance of Descriptor containing the
        appropriate metadata for this instance of the
        ModelMBeanOperationInfo. If it is null a default
        descriptor will be created. If the descriptor does not
        contain the fields
        "displayName" or "role", the missing ones are added with
        their default values.

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        IllegalArgumentException. The descriptor is invalid; or
        descriptor field "name" is not equal to
        operation name; or descriptor field "DescriptorType" is
        not equal to "operation"; or descriptor
        optional field "role" is present but not equal to "operation",
        "getter", or "setter".
  + ### ModelMBeanOperationInfo

    public ModelMBeanOperationInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](../MBeanParameterInfo.md "class in javax.management")[] signature,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    int impact)

    Constructs a ModelMBeanOperationInfo object with a default descriptor.

    Parameters:
    :   `name` - The name of the method.
    :   `description` - A human readable description of the operation.
    :   `signature` - MBeanParameterInfo objects describing the
        parameters(arguments) of the method.
    :   `type` - The type of the method's return value.
    :   `impact` - The impact of the method, one of INFO, ACTION,
        ACTION\_INFO, UNKNOWN.
  + ### ModelMBeanOperationInfo

    public ModelMBeanOperationInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](../MBeanParameterInfo.md "class in javax.management")[] signature,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    int impact,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs a ModelMBeanOperationInfo object.

    Parameters:
    :   `name` - The name of the method.
    :   `description` - A human readable description of the operation.
    :   `signature` - MBeanParameterInfo objects describing the
        parameters(arguments) of the method.
    :   `type` - The type of the method's return value.
    :   `impact` - The impact of the method, one of INFO, ACTION,
        ACTION\_INFO, UNKNOWN.
    :   `descriptor` - An instance of Descriptor containing the
        appropriate metadata for this instance of the
        MBeanOperationInfo. If it is null then a default descriptor
        will be created. If the descriptor does not contain
        fields "displayName" or "role",
        the missing ones are added with their default values.

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        IllegalArgumentException. The descriptor is invalid; or
        descriptor field "name" is not equal to
        operation name; or descriptor field "DescriptorType" is
        not equal to "operation"; or descriptor optional
        field "role" is present but not equal to "operation", "getter", or
        "setter".
  + ### ModelMBeanOperationInfo

    public ModelMBeanOperationInfo([ModelMBeanOperationInfo](ModelMBeanOperationInfo.md "class in javax.management.modelmbean") inInfo)

    Constructs a new ModelMBeanOperationInfo object from this
    ModelMBeanOperation Object.

    Parameters:
    :   `inInfo` - the ModelMBeanOperationInfo to be duplicated
* ## Method Details

  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates and returns a new ModelMBeanOperationInfo which is a
    duplicate of this ModelMBeanOperationInfo.

    Overrides:
    :   `clone` in class `MBeanOperationInfo`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getDescriptor

    public [Descriptor](../Descriptor.md "interface in javax.management") getDescriptor()

    Returns a copy of the associated Descriptor of the
    ModelMBeanOperationInfo.

    Specified by:
    :   `getDescriptor` in interface `DescriptorRead`

    Overrides:
    :   `getDescriptor` in class `MBeanFeatureInfo`

    Returns:
    :   Descriptor associated with the
        ModelMBeanOperationInfo object.

    See Also:
    :   - [`setDescriptor(javax.management.Descriptor)`](#setDescriptor(javax.management.Descriptor))
  + ### setDescriptor

    public void setDescriptor([Descriptor](../Descriptor.md "interface in javax.management") inDescriptor)

    Sets associated Descriptor (full replace) for the
    ModelMBeanOperationInfo If the new Descriptor is null, then
    the associated Descriptor reverts to a default descriptor.
    The Descriptor is validated before it is assigned. If the
    new Descriptor is invalid, then a
    RuntimeOperationsException wrapping an
    IllegalArgumentException is thrown.

    Specified by:
    :   `setDescriptor` in interface `DescriptorAccess`

    Parameters:
    :   `inDescriptor` - replaces the Descriptor associated with the
        ModelMBeanOperation.

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        IllegalArgumentException for invalid Descriptor.

    See Also:
    :   - [`getDescriptor()`](#getDescriptor())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string containing the entire contents of the
    ModelMBeanOperationInfo in human readable form.

    Overrides:
    :   `toString` in class `MBeanOperationInfo`

    Returns:
    :   a string representation of the object.