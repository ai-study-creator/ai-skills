Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Annotation Interface SupportedOptions

---

[@Documented](../../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Target](../../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([TYPE](../../../../java.base/java/lang/annotation/ElementType.md#TYPE))
[@Retention](../../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface SupportedOptions

An annotation used to indicate what options an annotation processor
supports. The [`Processor.getSupportedOptions()`](Processor.md#getSupportedOptions()) method can
construct its result from the value of this annotation, as done by
[`AbstractProcessor.getSupportedOptions()`](AbstractProcessor.md#getSupportedOptions()). Only [strings conforming to the
grammar](Processor.md#getSupportedOptions()) should be used as values.

Since:
:   1.6

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `String[]`

  `value`

  Returns the supported options.

* ## Element Details

  + ### value

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] value

    Returns the supported options.

    Returns:
    :   the supported options