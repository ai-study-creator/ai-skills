Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Annotation Interface SwingContainer

---

[@Target](../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([TYPE](../../../java.base/java/lang/annotation/ElementType.md#TYPE))
[@Retention](../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface SwingContainer

An annotation used to specify some swing-related information
for the automatically generated `BeanInfo` classes.
This annotation is not used if the annotated class
has a corresponding user-defined `BeanInfo` class,
which does not imply the automatic analysis.

The `isContainer` [`feature attribute`](../../java/beans/FeatureDescriptor.md#getValue(java.lang.String)) was introduced primarily for the Swing library.
All Swing components extend the [`Container`](../../java/awt/Container.md "class in java.awt")
class by design, so the builder tool assumes that all Swing components
are containers. The [`BeanInfo`](../../java/beans/BeanInfo.md "interface in java.beans") classes
with the `isContainer` attribute allow to directly specify
whether a Swing component is a container or not.

Since:
:   9

* ## Optional Element Summary

  Optional Elements

  Modifier and Type

  Optional Element

  Description

  `String`

  `delegate`

  The name of the getter method in the annotated class,
  which returns the corresponding Swing container,
  if it is not recommended to add subcomponents
  to the annotated class directly.

  `boolean`

  `value`

  The value that indicates whether the annotated class can be used
  as a container for other Swing components or not.

* ## Element Details

  + ### value

    boolean value

    The value that indicates whether the annotated class can be used
    as a container for other Swing components or not.

    Returns:
    :   `true` if the annotated class is a Swing container;
        `false` otherwise.

    Default:
    :   `true`
  + ### delegate

    [String](../../../java.base/java/lang/String.md "class in java.lang") delegate

    The name of the getter method in the annotated class,
    which returns the corresponding Swing container,
    if it is not recommended to add subcomponents
    to the annotated class directly.

    Returns:
    :   the name of the getter method in the annotated class,
        which returns the corresponding Swing container,
        or an empty string if the method name is not set.

    Default:
    :   `""`