Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Interface Completion

---

public interface Completion

A suggested [*completion*](Processor.md#getCompletions(javax.lang.model.element.Element,javax.lang.model.element.AnnotationMirror,javax.lang.model.element.ExecutableElement,java.lang.String)) for an
annotation. A completion is text meant to be inserted into a
program as part of an annotation.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMessage()`

  Returns an informative message about the completion.

  `String`

  `getValue()`

  Returns the text of the suggested completion.

* ## Method Details

  + ### getValue

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getValue()

    Returns the text of the suggested completion.

    Returns:
    :   the text of the suggested completion
  + ### getMessage

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Returns an informative message about the completion.

    Returns:
    :   an informative message about the completion