Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface DescriptorRead

All Known Subinterfaces:
:   `DescriptorAccess`

All Known Implementing Classes:
:   `MBeanAttributeInfo`, `MBeanConstructorInfo`, `MBeanFeatureInfo`, `MBeanInfo`, `MBeanNotificationInfo`, `MBeanOperationInfo`, `MBeanParameterInfo`, `ModelMBeanAttributeInfo`, `ModelMBeanConstructorInfo`, `ModelMBeanInfoSupport`, `ModelMBeanNotificationInfo`, `ModelMBeanOperationInfo`, `OpenMBeanAttributeInfoSupport`, `OpenMBeanConstructorInfoSupport`, `OpenMBeanInfoSupport`, `OpenMBeanOperationInfoSupport`, `OpenMBeanParameterInfoSupport`

---

public interface DescriptorRead

Interface to read the Descriptor of a management interface element
such as an MBeanInfo.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Descriptor`

  `getDescriptor()`

  Returns a copy of Descriptor.

* ## Method Details

  + ### getDescriptor

    [Descriptor](Descriptor.md "interface in javax.management") getDescriptor()

    Returns a copy of Descriptor.

    Returns:
    :   Descriptor associated with the component implementing this interface.
        The return value is never null, but the returned descriptor may be empty.