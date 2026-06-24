Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface DescriptorAccess

All Superinterfaces:
:   `DescriptorRead`

All Known Implementing Classes:
:   `ModelMBeanAttributeInfo`, `ModelMBeanConstructorInfo`, `ModelMBeanNotificationInfo`, `ModelMBeanOperationInfo`

---

public interface DescriptorAccess
extends [DescriptorRead](DescriptorRead.md "interface in javax.management")

This interface is used to gain access to descriptors of the Descriptor class
which are associated with a JMX component, i.e. MBean, MBeanInfo,
MBeanAttributeInfo, MBeanNotificationInfo,
MBeanOperationInfo, MBeanParameterInfo.

ModelMBeans make extensive use of this interface in ModelMBeanInfo classes.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `setDescriptor(Descriptor inDescriptor)`

  Sets Descriptor (full replace).

  ### Methods inherited from interface javax.management.[DescriptorRead](DescriptorRead.md "interface in javax.management")

  `getDescriptor`

* ## Method Details

  + ### setDescriptor

    void setDescriptor([Descriptor](Descriptor.md "interface in javax.management") inDescriptor)

    Sets Descriptor (full replace).

    Parameters:
    :   `inDescriptor` - replaces the Descriptor associated with the
        component implementing this interface. If the inDescriptor is invalid for the
        type of Info object it is being set for, an exception is thrown. If the
        inDescriptor is null, then the Descriptor will revert to its default value
        which should contain, at a minimum, the descriptor name and descriptorType.

    See Also:
    :   - [`DescriptorRead.getDescriptor()`](DescriptorRead.md#getDescriptor())