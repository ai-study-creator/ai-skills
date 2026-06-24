Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Interface BeanInfo

All Known Subinterfaces:
:   `BeanContextServiceProviderBeanInfo`

All Known Implementing Classes:
:   `SimpleBeanInfo`

---

public interface BeanInfo

Use the `BeanInfo` interface
to create a `BeanInfo` class
and provide explicit information about the methods,
properties, events, and other features of your beans.

When developing your bean, you can implement
the bean features required for your application task
omitting the rest of the `BeanInfo` features.
They will be obtained through the automatic analysis
by using the low-level reflection of the bean methods
and applying standard design patterns.
You have an opportunity to provide additional bean information
through various descriptor classes.

See the [`SimpleBeanInfo`](SimpleBeanInfo.md "class in java.beans") class that is
a convenient basic class for `BeanInfo` classes.
You can override the methods and properties of
the `SimpleBeanInfo` class to define specific information.

See also the [`Introspector`](Introspector.md "class in java.beans") class to learn more about bean behavior.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ICON_COLOR_16x16`

  Constant to indicate a 16 x 16 color icon.

  `static final int`

  `ICON_COLOR_32x32`

  Constant to indicate a 32 x 32 color icon.

  `static final int`

  `ICON_MONO_16x16`

  Constant to indicate a 16 x 16 monochrome icon.

  `static final int`

  `ICON_MONO_32x32`

  Constant to indicate a 32 x 32 monochrome icon.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `BeanInfo[]`

  `getAdditionalBeanInfo()`

  This method enables the current `BeanInfo` object
  to return an arbitrary collection of other `BeanInfo` objects
  that provide additional information about the current bean.

  `BeanDescriptor`

  `getBeanDescriptor()`

  Returns the bean descriptor
  that provides overall information about the bean,
  such as its display name or its customizer.

  `int`

  `getDefaultEventIndex()`

  A bean may have a default event typically applied when this bean is used.

  `int`

  `getDefaultPropertyIndex()`

  A bean may have a default property commonly updated when this bean is customized.

  `EventSetDescriptor[]`

  `getEventSetDescriptors()`

  Returns the event descriptors of the bean
  that define the types of events fired by this bean.

  `Image`

  `getIcon(int iconKind)`

  Returns an image that can be used to represent the bean in toolboxes or toolbars.

  `MethodDescriptor[]`

  `getMethodDescriptors()`

  Returns the method descriptors of the bean
  that define the externally visible methods supported by this bean.

  `PropertyDescriptor[]`

  `getPropertyDescriptors()`

  Returns descriptors for all properties of the bean.

* ## Field Details

  + ### ICON\_COLOR\_16x16

    static final int ICON\_COLOR\_16x16

    Constant to indicate a 16 x 16 color icon.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.beans.BeanInfo.ICON_COLOR_16x16)
  + ### ICON\_COLOR\_32x32

    static final int ICON\_COLOR\_32x32

    Constant to indicate a 32 x 32 color icon.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.beans.BeanInfo.ICON_COLOR_32x32)
  + ### ICON\_MONO\_16x16

    static final int ICON\_MONO\_16x16

    Constant to indicate a 16 x 16 monochrome icon.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.beans.BeanInfo.ICON_MONO_16x16)
  + ### ICON\_MONO\_32x32

    static final int ICON\_MONO\_32x32

    Constant to indicate a 32 x 32 monochrome icon.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.beans.BeanInfo.ICON_MONO_32x32)
* ## Method Details

  + ### getBeanDescriptor

    [BeanDescriptor](BeanDescriptor.md "class in java.beans") getBeanDescriptor()

    Returns the bean descriptor
    that provides overall information about the bean,
    such as its display name or its customizer.

    Returns:
    :   a [`BeanDescriptor`](BeanDescriptor.md "class in java.beans") object,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getEventSetDescriptors

    [EventSetDescriptor](EventSetDescriptor.md "class in java.beans")[] getEventSetDescriptors()

    Returns the event descriptors of the bean
    that define the types of events fired by this bean.

    Returns:
    :   an array of [`EventSetDescriptor`](EventSetDescriptor.md "class in java.beans") objects,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getDefaultEventIndex

    int getDefaultEventIndex()

    A bean may have a default event typically applied when this bean is used.

    Returns:
    :   index of the default event in the `EventSetDescriptor` array
        returned by the `getEventSetDescriptors` method,
        or -1 if there is no default event
  + ### getPropertyDescriptors

    [PropertyDescriptor](PropertyDescriptor.md "class in java.beans")[] getPropertyDescriptors()

    Returns descriptors for all properties of the bean.

    If a property is indexed, then its entry in the result array
    belongs to the [`IndexedPropertyDescriptor`](IndexedPropertyDescriptor.md "class in java.beans") subclass
    of the [`PropertyDescriptor`](PropertyDescriptor.md "class in java.beans") class.
    A client of the `getPropertyDescriptors` method
    can use the `instanceof` operator to check
    whether a given `PropertyDescriptor`
    is an `IndexedPropertyDescriptor`.

    Returns:
    :   an array of `PropertyDescriptor` objects,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getDefaultPropertyIndex

    int getDefaultPropertyIndex()

    A bean may have a default property commonly updated when this bean is customized.

    Returns:
    :   index of the default property in the `PropertyDescriptor` array
        returned by the `getPropertyDescriptors` method,
        or -1 if there is no default property
  + ### getMethodDescriptors

    [MethodDescriptor](MethodDescriptor.md "class in java.beans")[] getMethodDescriptors()

    Returns the method descriptors of the bean
    that define the externally visible methods supported by this bean.

    Returns:
    :   an array of [`MethodDescriptor`](MethodDescriptor.md "class in java.beans") objects,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getAdditionalBeanInfo

    [BeanInfo](BeanInfo.md "interface in java.beans")[] getAdditionalBeanInfo()

    This method enables the current `BeanInfo` object
    to return an arbitrary collection of other `BeanInfo` objects
    that provide additional information about the current bean.

    If there are conflicts or overlaps between the information
    provided by different `BeanInfo` objects,
    the current `BeanInfo` object takes priority
    over the additional `BeanInfo` objects.
    Array elements with higher indices take priority
    over the elements with lower indices.

    Returns:
    :   an array of `BeanInfo` objects,
        or `null` if there are no additional `BeanInfo` objects
  + ### getIcon

    [Image](../awt/Image.md "class in java.awt") getIcon(int iconKind)

    Returns an image that can be used to represent the bean in toolboxes or toolbars.

    There are four possible types of icons:
    16 x 16 color, 32 x 32 color, 16 x 16 mono, and 32 x 32 mono.
    If you implement a bean so that it supports a single icon,
    it is recommended to use 16 x 16 color.
    Another recommendation is to set a transparent background for the icons.

    Parameters:
    :   `iconKind` - the kind of icon requested

    Returns:
    :   an image object representing the requested icon,
        or `null` if no suitable icon is available

    See Also:
    :   - [`ICON_COLOR_16x16`](#ICON_COLOR_16x16)
        - [`ICON_COLOR_32x32`](#ICON_COLOR_32x32)
        - [`ICON_MONO_16x16`](#ICON_MONO_16x16)
        - [`ICON_MONO_32x32`](#ICON_MONO_32x32)