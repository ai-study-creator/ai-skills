Module [java.management](../../../module-summary.md)

Package [javax.management.modelmbean](package-summary.md)

# Class ModelMBeanNotificationInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

[javax.management.MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")

javax.management.modelmbean.ModelMBeanNotificationInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorAccess`, `DescriptorRead`

---

public class ModelMBeanNotificationInfo
extends [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")
implements [DescriptorAccess](../DescriptorAccess.md "interface in javax.management")

The ModelMBeanNotificationInfo object describes a notification emitted
by a ModelMBean.
It is a subclass of MBeanNotificationInfo with the addition of an
associated Descriptor and an implementation of the Descriptor interface.

The fields in the descriptor are defined, but not limited to, the following.
Note that when the Type in this table is Number, a String that is the decimal
representation of a Long can also be used.

ModelMBeanNotificationInfo Fields

| Name | Type | Meaning |
| --- | --- | --- |
| name | String | Notification name. |
| descriptorType | String | Must be "notification". |
| severity | Number | 0-6 where 0: unknown; 1: non-recoverable; 2: critical, failure; 3: major, severe; 4: minor, marginal, error; 5: warning; 6: normal, cleared, informative |
| messageID | String | Unique key for message text (to allow translation, analysis). |
| messageText | String | Text of notification. |
| log | String | T - log message, F - do not log message. |
| logfile | String | fully qualified file name appropriate for operating system. |
| visibility | Number | 1-4 where 1: always visible 4: rarely visible. |
| presentationString | String | XML formatted string to allow presentation of data. |

The default descriptor contains the name, descriptorType,
displayName and severity(=6) fields. The default value of the name
and displayName fields is the name of the Notification class (as
specified by the `name` parameter of the
ModelMBeanNotificationInfo constructor).

The **serialVersionUID** of this class is `-7445681389570207141L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.modelmbean.ModelMBeanNotificationInfo)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ModelMBeanNotificationInfo(String[] notifTypes,
  String name,
  String description)`

  Constructs a ModelMBeanNotificationInfo object with a default
  descriptor.

  `ModelMBeanNotificationInfo(String[] notifTypes,
  String name,
  String description,
  Descriptor descriptor)`

  Constructs a ModelMBeanNotificationInfo object.

  `ModelMBeanNotificationInfo(ModelMBeanNotificationInfo inInfo)`

  Constructs a new ModelMBeanNotificationInfo object from this
  ModelMBeanNotfication Object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates and returns a new ModelMBeanNotificationInfo which is a
  duplicate of this ModelMBeanNotificationInfo.

  `Descriptor`

  `getDescriptor()`

  Returns a copy of the associated Descriptor for the
  ModelMBeanNotificationInfo.

  `void`

  `setDescriptor(Descriptor inDescriptor)`

  Sets associated Descriptor (full replace) for the
  ModelMBeanNotificationInfo If the new Descriptor is null,
  then the associated Descriptor reverts to a default
  descriptor.

  `String`

  `toString()`

  Returns a human readable string containing
  ModelMBeanNotificationInfo.

  ### Methods inherited from class javax.management.[MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")

  `equals, getNotifTypes, hashCode`

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getName`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ModelMBeanNotificationInfo

    public ModelMBeanNotificationInfo([String](../../../../java.base/java/lang/String.md "class in java.lang")[] notifTypes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description)

    Constructs a ModelMBeanNotificationInfo object with a default
    descriptor.

    Parameters:
    :   `notifTypes` - The array of strings (in dot notation) containing
        the notification types that may be emitted.
    :   `name` - The name of the Notification class.
    :   `description` - A human readable description of the
        Notification. Optional.
  + ### ModelMBeanNotificationInfo

    public ModelMBeanNotificationInfo([String](../../../../java.base/java/lang/String.md "class in java.lang")[] notifTypes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs a ModelMBeanNotificationInfo object.

    Parameters:
    :   `notifTypes` - The array of strings (in dot notation)
        containing the notification types that may be emitted.
    :   `name` - The name of the Notification class.
    :   `description` - A human readable description of the Notification.
        Optional.
    :   `descriptor` - An instance of Descriptor containing the
        appropriate metadata for this instance of the
        MBeanNotificationInfo. If it is null a default descriptor
        will be created. If the descriptor does not contain the
        fields "displayName" or "severity",
        the missing ones are added with their default values.

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        [`IllegalArgumentException`](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"). The descriptor is invalid, or
        descriptor field "name" is not equal to parameter name, or
        descriptor field "descriptorType" is not equal to "notification".
  + ### ModelMBeanNotificationInfo

    public ModelMBeanNotificationInfo([ModelMBeanNotificationInfo](ModelMBeanNotificationInfo.md "class in javax.management.modelmbean") inInfo)

    Constructs a new ModelMBeanNotificationInfo object from this
    ModelMBeanNotfication Object.

    Parameters:
    :   `inInfo` - the ModelMBeanNotificationInfo to be duplicated
* ## Method Details

  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates and returns a new ModelMBeanNotificationInfo which is a
    duplicate of this ModelMBeanNotificationInfo.

    Overrides:
    :   `clone` in class `MBeanNotificationInfo`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getDescriptor

    public [Descriptor](../Descriptor.md "interface in javax.management") getDescriptor()

    Returns a copy of the associated Descriptor for the
    ModelMBeanNotificationInfo.

    Specified by:
    :   `getDescriptor` in interface `DescriptorRead`

    Overrides:
    :   `getDescriptor` in class `MBeanFeatureInfo`

    Returns:
    :   Descriptor associated with the
        ModelMBeanNotificationInfo object.

    See Also:
    :   - [`setDescriptor(javax.management.Descriptor)`](#setDescriptor(javax.management.Descriptor))
  + ### setDescriptor

    public void setDescriptor([Descriptor](../Descriptor.md "interface in javax.management") inDescriptor)

    Sets associated Descriptor (full replace) for the
    ModelMBeanNotificationInfo If the new Descriptor is null,
    then the associated Descriptor reverts to a default
    descriptor. The Descriptor is validated before it is
    assigned. If the new Descriptor is invalid, then a
    RuntimeOperationsException wrapping an
    IllegalArgumentException is thrown.

    Specified by:
    :   `setDescriptor` in interface `DescriptorAccess`

    Parameters:
    :   `inDescriptor` - replaces the Descriptor associated with the
        ModelMBeanNotification interface

    Throws:
    :   `RuntimeOperationsException` - Wraps an
        [`IllegalArgumentException`](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") for invalid Descriptor.

    See Also:
    :   - [`getDescriptor()`](#getDescriptor())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a human readable string containing
    ModelMBeanNotificationInfo.

    Overrides:
    :   `toString` in class `MBeanNotificationInfo`

    Returns:
    :   a string describing this object.