Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Interface Messager

---

public interface Messager

A `Messager` provides the way for an annotation processor to
report error messages, warnings, and other notices. Elements,
annotations, and annotation values can be passed to provide a
location hint for the message. However, such location hints may be
unavailable or only approximate.

Printing a message with an [error kind](../../tools/Diagnostic.Kind.md#ERROR) will [raise an error](RoundEnvironment.md#errorRaised()).

Since:
:   1.6

See Also:
:   * [`ProcessingEnvironment.getLocale()`](ProcessingEnvironment.md#getLocale())

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default void`

  `printError(CharSequence msg)`

  Prints an error.

  `default void`

  `printError(CharSequence msg,
  Element e)`

  Prints an error at the location of the element.

  `void`

  `printMessage(Diagnostic.Kind kind,
  CharSequence msg)`

  Prints a message of the specified kind.

  `void`

  `printMessage(Diagnostic.Kind kind,
  CharSequence msg,
  Element e)`

  Prints a message of the specified kind at the location of the
  element.

  `void`

  `printMessage(Diagnostic.Kind kind,
  CharSequence msg,
  Element e,
  AnnotationMirror a)`

  Prints a message of the specified kind at the location of the
  annotation mirror of the annotated element.

  `void`

  `printMessage(Diagnostic.Kind kind,
  CharSequence msg,
  Element e,
  AnnotationMirror a,
  AnnotationValue v)`

  Prints a message of the specified kind at the location of the
  annotation value inside the annotation mirror of the annotated
  element.

  `default void`

  `printNote(CharSequence msg)`

  Prints a note.

  `default void`

  `printNote(CharSequence msg,
  Element e)`

  Prints a note at the location of the element.

  `default void`

  `printWarning(CharSequence msg)`

  Prints a warning.

  `default void`

  `printWarning(CharSequence msg,
  Element e)`

  Prints a warning at the location of the element.

* ## Method Details

  + ### printMessage

    void printMessage([Diagnostic.Kind](../../tools/Diagnostic.Kind.md "enum class in javax.tools") kind,
    [CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg)

    Prints a message of the specified kind.

    Parameters:
    :   `kind` - the kind of message
    :   `msg` - the message, or an empty string if none
  + ### printMessage

    void printMessage([Diagnostic.Kind](../../tools/Diagnostic.Kind.md "enum class in javax.tools") kind,
    [CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg,
    [Element](../../lang/model/element/Element.md "interface in javax.lang.model.element") e)

    Prints a message of the specified kind at the location of the
    element.

    Parameters:
    :   `kind` - the kind of message
    :   `msg` - the message, or an empty string if none
    :   `e` - the element to use as a position hint
  + ### printMessage

    void printMessage([Diagnostic.Kind](../../tools/Diagnostic.Kind.md "enum class in javax.tools") kind,
    [CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg,
    [Element](../../lang/model/element/Element.md "interface in javax.lang.model.element") e,
    [AnnotationMirror](../../lang/model/element/AnnotationMirror.md "interface in javax.lang.model.element") a)

    Prints a message of the specified kind at the location of the
    annotation mirror of the annotated element.

    Parameters:
    :   `kind` - the kind of message
    :   `msg` - the message, or an empty string if none
    :   `e` - the annotated element
    :   `a` - the annotation to use as a position hint
  + ### printMessage

    void printMessage([Diagnostic.Kind](../../tools/Diagnostic.Kind.md "enum class in javax.tools") kind,
    [CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg,
    [Element](../../lang/model/element/Element.md "interface in javax.lang.model.element") e,
    [AnnotationMirror](../../lang/model/element/AnnotationMirror.md "interface in javax.lang.model.element") a,
    [AnnotationValue](../../lang/model/element/AnnotationValue.md "interface in javax.lang.model.element") v)

    Prints a message of the specified kind at the location of the
    annotation value inside the annotation mirror of the annotated
    element.

    Parameters:
    :   `kind` - the kind of message
    :   `msg` - the message, or an empty string if none
    :   `e` - the annotated element
    :   `a` - the annotation containing the annotation value
    :   `v` - the annotation value to use as a position hint
  + ### printError

    default void printError([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg)

    Prints an error.

    Parameters:
    :   `msg` - the message, or an empty string if none

    Since:
    :   18
  + ### printError

    default void printError([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg,
    [Element](../../lang/model/element/Element.md "interface in javax.lang.model.element") e)

    Prints an error at the location of the element.

    Parameters:
    :   `msg` - the message, or an empty string if none
    :   `e` - the element to use as a position hint

    Since:
    :   18
  + ### printWarning

    default void printWarning([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg)

    Prints a warning.

    Parameters:
    :   `msg` - the message, or an empty string if none

    Since:
    :   18
  + ### printWarning

    default void printWarning([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg,
    [Element](../../lang/model/element/Element.md "interface in javax.lang.model.element") e)

    Prints a warning at the location of the element.

    Parameters:
    :   `msg` - the message, or an empty string if none
    :   `e` - the element to use as a position hint

    Since:
    :   18
  + ### printNote

    default void printNote([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg)

    Prints a note.

    Parameters:
    :   `msg` - the message, or an empty string if none

    Since:
    :   18
  + ### printNote

    default void printNote([CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") msg,
    [Element](../../lang/model/element/Element.md "interface in javax.lang.model.element") e)

    Prints a note at the location of the element.

    Parameters:
    :   `msg` - the message, or an empty string if none
    :   `e` - the element to use as a position hint

    Since:
    :   18