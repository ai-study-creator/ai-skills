Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Annotation Interface BeanProperty

---

[@Documented](../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Target](../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([METHOD](../../../java.base/java/lang/annotation/ElementType.md#METHOD))
[@Retention](../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface BeanProperty

An annotation used to specify some property-related information for the
automatically generated [`BeanInfo`](BeanInfo.md "interface in java.beans") classes. This annotation is not used
if the annotated class has a corresponding user-defined `BeanInfo`
class, which does not imply the automatic analysis. If both the read and the
write methods of the property are annotated, then the read method annotation
will have more priority and replace the write method annotation.

Since:
:   9

See Also:
:   * [`BeanInfo.getPropertyDescriptors()`](BeanInfo.md#getPropertyDescriptors())

* ## Optional Element Summary

  Optional Elements

  Modifier and Type

  Optional Element

  Description

  `boolean`

  `bound`

  The value that indicates whether the annotated property can be
  a [`bound`](PropertyDescriptor.md#isBound()) property or not.

  `String`

  `description`

  The [`short description`](FeatureDescriptor.md#getShortDescription())
  for the [`descriptor`](BeanInfo.md#getPropertyDescriptors())
  of the annotated property.

  `String[]`

  `enumerationValues`

  The array of names for the public static fields
  that contains the valid values of the annotated property.

  `boolean`

  `expert`

  The value that indicates whether the annotated property is
  an [`expert`](FeatureDescriptor.md#isExpert()) property or not.

  `boolean`

  `hidden`

  The value that indicates whether the annotated property is
  a [`hidden`](FeatureDescriptor.md#isHidden()) property or not.

  `boolean`

  `preferred`

  The value that indicates whether the annotated property is
  a [`preferred`](FeatureDescriptor.md#isPreferred()) property or not.

  `boolean`

  `required`

  The value that indicates whether the annotated property is
  a required property or not.

  `boolean`

  `visualUpdate`

  The value that indicates whether the corresponding component
  is repainted after the annotated property got changed or not.

* ## Element Details

  + ### bound

    boolean bound

    The value that indicates whether the annotated property can be
    a [`bound`](PropertyDescriptor.md#isBound()) property or not.
    This value applies only to the beans that have the
    [`propertyChange`](PropertyChangeListener.md "interface in java.beans") event set.

    Returns:
    :   `true` if the annotated property can be a bound property;
        `false` otherwise.

    Default:
    :   `true`
  + ### expert

    boolean expert

    The value that indicates whether the annotated property is
    an [`expert`](FeatureDescriptor.md#isExpert()) property or not.

    Returns:
    :   `true` if the annotated property is an expert property;
        `false` otherwise.

    Default:
    :   `false`
  + ### hidden

    boolean hidden

    The value that indicates whether the annotated property is
    a [`hidden`](FeatureDescriptor.md#isHidden()) property or not.

    Returns:
    :   `true` if the annotated property is a hidden property;
        `false` otherwise.

    Default:
    :   `false`
  + ### preferred

    boolean preferred

    The value that indicates whether the annotated property is
    a [`preferred`](FeatureDescriptor.md#isPreferred()) property or not.

    Returns:
    :   `true` if the annotated property is a preferred property;
        `false` otherwise.

    Default:
    :   `false`
  + ### required

    boolean required

    The value that indicates whether the annotated property is
    a required property or not.

    Returns:
    :   `true` if the annotated property is a required property;
        `false` otherwise.

    Default:
    :   `false`
  + ### visualUpdate

    boolean visualUpdate

    The value that indicates whether the corresponding component
    is repainted after the annotated property got changed or not.

    Returns:
    :   `true` if the corresponding component is repainted;
        `false` otherwise.

    Default:
    :   `false`
  + ### description

    [String](../../../java.base/java/lang/String.md "class in java.lang") description

    The [`short description`](FeatureDescriptor.md#getShortDescription())
    for the [`descriptor`](BeanInfo.md#getPropertyDescriptors())
    of the annotated property.

    Returns:
    :   the property description,
        or an empty string if the description is not set.

    Default:
    :   `""`
  + ### enumerationValues

    [String](../../../java.base/java/lang/String.md "class in java.lang")[] enumerationValues

    The array of names for the public static fields
    that contains the valid values of the annotated property.
    These names are used to generate the `enumerationValues`
    [`feature attribute`](FeatureDescriptor.md#getValue(java.lang.String))
    that must contain the following items per each property value:
    a displayable name for the property value, the actual property value,
    and a Java code piece used for the code generator.

    Returns:
    :   the names of the valid values of the annotated property,
        or an empty array if the names are not provided.

    Default:
    :   `{}`