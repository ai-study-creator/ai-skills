Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class SimpleBeanInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.SimpleBeanInfo

All Implemented Interfaces:
:   `BeanInfo`

---

public class SimpleBeanInfo
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [BeanInfo](BeanInfo.md "interface in java.beans")

This is a support class to make it easier for people to provide
BeanInfo classes.

It defaults to providing "noop" information, and can be selectively
overridden to provide more explicit information on chosen topics.
When the introspector sees the "noop" values, it will apply low
level introspection and design patterns to automatically analyze
the target bean.

Since:
:   1.1

* ## Field Summary

  ### Fields inherited from interface java.beans.[BeanInfo](BeanInfo.md "interface in java.beans")

  `ICON_COLOR_16x16, ICON_COLOR_32x32, ICON_MONO_16x16, ICON_MONO_32x32`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SimpleBeanInfo()`

  Constructs a `SimpleBeanInfo`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BeanInfo[]`

  `getAdditionalBeanInfo()`

  Claim there are no other relevant BeanInfo objects.

  `BeanDescriptor`

  `getBeanDescriptor()`

  Deny knowledge about the class and customizer of the bean.

  `int`

  `getDefaultEventIndex()`

  Deny knowledge of a default event.

  `int`

  `getDefaultPropertyIndex()`

  Deny knowledge of a default property.

  `EventSetDescriptor[]`

  `getEventSetDescriptors()`

  Deny knowledge of event sets.

  `Image`

  `getIcon(int iconKind)`

  Claim there are no icons available.

  `MethodDescriptor[]`

  `getMethodDescriptors()`

  Deny knowledge of methods.

  `PropertyDescriptor[]`

  `getPropertyDescriptors()`

  Deny knowledge of properties.

  `Image`

  `loadImage(String resourceName)`

  This is a utility method to help in loading icon images.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleBeanInfo

    public SimpleBeanInfo()

    Constructs a `SimpleBeanInfo`.
* ## Method Details

  + ### getBeanDescriptor

    public [BeanDescriptor](BeanDescriptor.md "class in java.beans") getBeanDescriptor()

    Deny knowledge about the class and customizer of the bean.
    You can override this if you wish to provide explicit info.

    Specified by:
    :   `getBeanDescriptor` in interface `BeanInfo`

    Returns:
    :   a [`BeanDescriptor`](BeanDescriptor.md "class in java.beans") object,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getPropertyDescriptors

    public [PropertyDescriptor](PropertyDescriptor.md "class in java.beans")[] getPropertyDescriptors()

    Deny knowledge of properties. You can override this
    if you wish to provide explicit property info.

    Specified by:
    :   `getPropertyDescriptors` in interface `BeanInfo`

    Returns:
    :   an array of `PropertyDescriptor` objects,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getDefaultPropertyIndex

    public int getDefaultPropertyIndex()

    Deny knowledge of a default property. You can override this
    if you wish to define a default property for the bean.

    Specified by:
    :   `getDefaultPropertyIndex` in interface `BeanInfo`

    Returns:
    :   index of the default property in the `PropertyDescriptor` array
        returned by the `getPropertyDescriptors` method,
        or -1 if there is no default property
  + ### getEventSetDescriptors

    public [EventSetDescriptor](EventSetDescriptor.md "class in java.beans")[] getEventSetDescriptors()

    Deny knowledge of event sets. You can override this
    if you wish to provide explicit event set info.

    Specified by:
    :   `getEventSetDescriptors` in interface `BeanInfo`

    Returns:
    :   an array of [`EventSetDescriptor`](EventSetDescriptor.md "class in java.beans") objects,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getDefaultEventIndex

    public int getDefaultEventIndex()

    Deny knowledge of a default event. You can override this
    if you wish to define a default event for the bean.

    Specified by:
    :   `getDefaultEventIndex` in interface `BeanInfo`

    Returns:
    :   index of the default event in the `EventSetDescriptor` array
        returned by the `getEventSetDescriptors` method,
        or -1 if there is no default event
  + ### getMethodDescriptors

    public [MethodDescriptor](MethodDescriptor.md "class in java.beans")[] getMethodDescriptors()

    Deny knowledge of methods. You can override this
    if you wish to provide explicit method info.

    Specified by:
    :   `getMethodDescriptors` in interface `BeanInfo`

    Returns:
    :   an array of [`MethodDescriptor`](MethodDescriptor.md "class in java.beans") objects,
        or `null` if the information is to
        be obtained through the automatic analysis
  + ### getAdditionalBeanInfo

    public [BeanInfo](BeanInfo.md "interface in java.beans")[] getAdditionalBeanInfo()

    Claim there are no other relevant BeanInfo objects. You
    may override this if you want to (for example) return a
    BeanInfo for a base class.

    Specified by:
    :   `getAdditionalBeanInfo` in interface `BeanInfo`

    Returns:
    :   an array of `BeanInfo` objects,
        or `null` if there are no additional `BeanInfo` objects
  + ### getIcon

    public [Image](../awt/Image.md "class in java.awt") getIcon(int iconKind)

    Claim there are no icons available. You can override
    this if you want to provide icons for your bean.

    Specified by:
    :   `getIcon` in interface `BeanInfo`

    Parameters:
    :   `iconKind` - the kind of icon requested

    Returns:
    :   an image object representing the requested icon,
        or `null` if no suitable icon is available

    See Also:
    :   - [`BeanInfo.ICON_COLOR_16x16`](BeanInfo.md#ICON_COLOR_16x16)
        - [`BeanInfo.ICON_COLOR_32x32`](BeanInfo.md#ICON_COLOR_32x32)
        - [`BeanInfo.ICON_MONO_16x16`](BeanInfo.md#ICON_MONO_16x16)
        - [`BeanInfo.ICON_MONO_32x32`](BeanInfo.md#ICON_MONO_32x32)
  + ### loadImage

    public [Image](../awt/Image.md "class in java.awt") loadImage([String](../../../java.base/java/lang/String.md "class in java.lang") resourceName)

    This is a utility method to help in loading icon images. It takes the
    name of a resource file associated with the current object's class file
    and loads an image object from that file. Typically images will be GIFs.

    Parameters:
    :   `resourceName` - A pathname relative to the directory holding the
        class file of the current class. For example, "wombat.gif".

    Returns:
    :   an image object or null if the resource is not found or the
        resource could not be loaded as an Image