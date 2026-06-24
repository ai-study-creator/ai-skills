Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextServiceProviderBeanInfo

All Superinterfaces:
:   `BeanInfo`

---

public interface BeanContextServiceProviderBeanInfo
extends [BeanInfo](../BeanInfo.md "interface in java.beans")

A BeanContextServiceProvider implementor who wishes to provide explicit
information about the services their bean may provide shall implement a
BeanInfo class that implements this BeanInfo subinterface and provides
explicit information about the methods, properties, events, etc, of their
services.

* ## Field Summary

  ### Fields inherited from interface java.beans.[BeanInfo](../BeanInfo.md "interface in java.beans")

  `ICON_COLOR_16x16, ICON_COLOR_32x32, ICON_MONO_16x16, ICON_MONO_32x32`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `BeanInfo[]`

  `getServicesBeanInfo()`

  Gets a `BeanInfo` array, one for each
  service class or interface statically available
  from this ServiceProvider.

  ### Methods inherited from interface java.beans.[BeanInfo](../BeanInfo.md "interface in java.beans")

  `getAdditionalBeanInfo, getBeanDescriptor, getDefaultEventIndex, getDefaultPropertyIndex, getEventSetDescriptors, getIcon, getMethodDescriptors, getPropertyDescriptors`

* ## Method Details

  + ### getServicesBeanInfo

    [BeanInfo](../BeanInfo.md "interface in java.beans")[] getServicesBeanInfo()

    Gets a `BeanInfo` array, one for each
    service class or interface statically available
    from this ServiceProvider.

    Returns:
    :   the `BeanInfo` array