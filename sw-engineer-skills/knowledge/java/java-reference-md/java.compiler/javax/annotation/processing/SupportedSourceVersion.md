Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Annotation Interface SupportedSourceVersion

---

[@Documented](../../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Target](../../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([TYPE](../../../../java.base/java/lang/annotation/ElementType.md#TYPE))
[@Retention](../../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface SupportedSourceVersion

An annotation used to indicate the latest source version an
annotation processor supports. The [`Processor.getSupportedSourceVersion()`](Processor.md#getSupportedSourceVersion()) method can construct its
result from the value of this annotation, as done by [`AbstractProcessor.getSupportedSourceVersion()`](AbstractProcessor.md#getSupportedSourceVersion()).

Since:
:   1.6

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `SourceVersion`

  `value`

  Returns the latest supported source version.

* ## Element Details

  + ### value

    [SourceVersion](../../lang/model/SourceVersion.md "enum class in javax.lang.model") value

    Returns the latest supported source version.

    Returns:
    :   the latest supported source version