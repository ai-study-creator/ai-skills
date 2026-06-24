Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Annotation Interface Retention

---

[@Documented](Documented.md "annotation interface in java.lang.annotation")
[@Retention](Retention.md "annotation interface in java.lang.annotation")([RUNTIME](RetentionPolicy.md#RUNTIME))
[@Target](Target.md "annotation interface in java.lang.annotation")([ANNOTATION\_TYPE](ElementType.md#ANNOTATION_TYPE))
public @interface Retention

Indicates how long annotations with the annotated interface are to
be retained. If no Retention annotation is present on
an annotation interface declaration, the retention policy defaults to
`RetentionPolicy.CLASS`.

A Retention meta-annotation has effect only if the
meta-annotated interface is used directly for annotation. It has no
effect if the meta-annotated interface is used as a member interface in
another annotation interface.

Since:
:   1.5

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `RetentionPolicy`

  `value`

  Returns the retention policy.

* ## Element Details

  + ### value

    [RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation") value

    Returns the retention policy.

    Returns:
    :   the retention policy