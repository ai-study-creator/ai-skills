Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Annotation Interface JavaBean

---

[@Documented](../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Target](../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([TYPE](../../../java.base/java/lang/annotation/ElementType.md#TYPE))
[@Retention](../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface JavaBean

An annotation used to specify some class-related information
for the automatically generated [`BeanInfo`](BeanInfo.md "interface in java.beans") classes.
This annotation is not used if the annotated class
has a corresponding user-defined `BeanInfo` class,
which does not imply the automatic analysis.

Since:
:   9

See Also:
:   * [`BeanInfo.getBeanDescriptor()`](BeanInfo.md#getBeanDescriptor())

* ## Optional Element Summary

  Optional Elements

  Modifier and Type

  Optional Element

  Description

  `String`

  `defaultEventSet`

  The name of the default event set is used to calculate its
  [`index`](BeanInfo.md#getDefaultEventIndex()) in the
  [`array`](BeanInfo.md#getEventSetDescriptors()) of event sets
  defined in the annotated class.

  `String`

  `defaultProperty`

  The name of the default property is used to calculate its
  [`index`](BeanInfo.md#getDefaultPropertyIndex()) in the
  [`array`](BeanInfo.md#getPropertyDescriptors()) of properties
  defined in the annotated class.

  `String`

  `description`

  The [`short description`](FeatureDescriptor.md#getShortDescription())
  for the [`bean descriptor`](BeanInfo.md#getBeanDescriptor())
  of the annotated class.

* ## Element Details

  + ### description

    [String](../../../java.base/java/lang/String.md "class in java.lang") description

    The [`short description`](FeatureDescriptor.md#getShortDescription())
    for the [`bean descriptor`](BeanInfo.md#getBeanDescriptor())
    of the annotated class.

    Returns:
    :   the bean description,
        or an empty string if the description is not set.

    Default:
    :   `""`
  + ### defaultProperty

    [String](../../../java.base/java/lang/String.md "class in java.lang") defaultProperty

    The name of the default property is used to calculate its
    [`index`](BeanInfo.md#getDefaultPropertyIndex()) in the
    [`array`](BeanInfo.md#getPropertyDescriptors()) of properties
    defined in the annotated class. If the name is not set or
    the annotated class does not define a property
    with the specified name, the default property index
    will be calculated automatically by the
    [`Introspector`](Introspector.md "class in java.beans") depending on its state.

    Returns:
    :   the name of the default property,
        or an empty string if the name is not set.

    Default:
    :   `""`
  + ### defaultEventSet

    [String](../../../java.base/java/lang/String.md "class in java.lang") defaultEventSet

    The name of the default event set is used to calculate its
    [`index`](BeanInfo.md#getDefaultEventIndex()) in the
    [`array`](BeanInfo.md#getEventSetDescriptors()) of event sets
    defined in the annotated class. If the name is not set or
    the annotated class does not define an event set
    with the specified name, the default event set index
    will be calculated automatically by the
    [`Introspector`](Introspector.md "class in java.beans") depending on its state.

    Returns:
    :   the name of the default event set,
        or an empty string if the name is not set.

    Default:
    :   `""`