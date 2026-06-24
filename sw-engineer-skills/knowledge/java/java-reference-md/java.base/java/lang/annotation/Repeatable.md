Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Annotation Interface Repeatable

---

[@Documented](Documented.md "annotation interface in java.lang.annotation")
[@Retention](Retention.md "annotation interface in java.lang.annotation")([RUNTIME](RetentionPolicy.md#RUNTIME))
[@Target](Target.md "annotation interface in java.lang.annotation")([ANNOTATION\_TYPE](ElementType.md#ANNOTATION_TYPE))
public @interface Repeatable

The annotation interface `java.lang.annotation.Repeatable` is
used to indicate that the annotation interface whose declaration it
(meta-)annotates is *repeatable*. The value of
`@Repeatable` indicates the *containing annotation
interface* for the repeatable annotation interface.

Since:
:   1.8

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `Class<? extends Annotation>`

  `value`

  Indicates the *containing annotation interface* for the
  repeatable annotation interface.

* ## Element Details

  + ### value

    [Class](../Class.md "class in java.lang")<? extends [Annotation](Annotation.md "interface in java.lang.annotation")> value

    Indicates the *containing annotation interface* for the
    repeatable annotation interface.

    Returns:
    :   the containing annotation interface