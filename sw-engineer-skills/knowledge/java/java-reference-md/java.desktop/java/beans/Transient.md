Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Annotation Interface Transient

---

[@Target](../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([METHOD](../../../java.base/java/lang/annotation/ElementType.md#METHOD))
[@Retention](../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface Transient

Indicates that an attribute called "transient"
should be declared with the given `value`
when the [`Introspector`](Introspector.md "class in java.beans") constructs
a [`PropertyDescriptor`](PropertyDescriptor.md "class in java.beans") or [`EventSetDescriptor`](EventSetDescriptor.md "class in java.beans")
classes associated with the annotated code element.
A `true` value for the "transient" attribute
indicates to encoders derived from [`Encoder`](Encoder.md "class in java.beans")
that this feature should be ignored.

The `Transient` annotation may be used
in any of the methods that are involved
in a [`FeatureDescriptor`](FeatureDescriptor.md "class in java.beans") subclass
to identify the transient feature in the annotated class and its subclasses.
Normally, the method that starts with "get" is the best place
to put the annotation and it is this declaration
that takes precedence in the case of multiple annotations
being defined for the same feature.

To declare a feature non-transient in a class
whose superclass declares it transient,
use `@Transient(false)`.
In all cases, the [`Introspector`](Introspector.md "class in java.beans") decides
if a feature is transient by referring to the annotation
on the most specific superclass.
If no `Transient` annotation is present
in any superclass the feature is not transient.

Since:
:   1.7

* ## Optional Element Summary

  Optional Elements

  Modifier and Type

  Optional Element

  Description

  `boolean`

  `value`

  Returns whether or not the `Introspector` should
  construct artifacts for the annotated method.

* ## Element Details

  + ### value

    boolean value

    Returns whether or not the `Introspector` should
    construct artifacts for the annotated method.

    Returns:
    :   whether or not the `Introspector` should
        construct artifacts for the annotated method

    Default:
    :   `true`