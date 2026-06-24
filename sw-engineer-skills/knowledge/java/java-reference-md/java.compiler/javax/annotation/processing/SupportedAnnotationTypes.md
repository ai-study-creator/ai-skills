Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Annotation Interface SupportedAnnotationTypes

---

[@Documented](../../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Target](../../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([TYPE](../../../../java.base/java/lang/annotation/ElementType.md#TYPE))
[@Retention](../../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface SupportedAnnotationTypes

An annotation used to indicate what annotation interfaces an
annotation processor supports. The [`Processor.getSupportedAnnotationTypes()`](Processor.md#getSupportedAnnotationTypes()) method can construct its
result from the value of this annotation, as done by [`AbstractProcessor.getSupportedAnnotationTypes()`](AbstractProcessor.md#getSupportedAnnotationTypes()). Only [strings conforming to the
grammar](Processor.md#getSupportedAnnotationTypes()) should be used as values.

Since:
:   1.6

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `String[]`

  `value`

  Returns the names of the supported annotation interfaces.

* ## Element Details

  + ### value

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] value

    Returns the names of the supported annotation interfaces.

    Returns:
    :   the names of the supported annotation interfaces