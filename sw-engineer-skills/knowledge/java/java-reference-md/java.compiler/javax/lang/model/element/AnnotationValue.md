Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface AnnotationValue

---

public interface AnnotationValue

Represents a value of an annotation interface element.
A value is of one of the following types:

* a wrapper class (such as [`Integer`](../../../../../java.base/java/lang/Integer.md "class in java.lang")) for a primitive type* `String`* `TypeMirror`* `VariableElement` (representing an enum constant)* `AnnotationMirror`* `List<? extends AnnotationValue>`
            (representing the elements, in declared order, if the value is an array)

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `<R,
  P> R`

  `accept(AnnotationValueVisitor<R,P> v,
  P p)`

  Applies a visitor to this value.

  `Object`

  `getValue()`

  Returns the value.

  `String`

  `toString()`

  Returns a string representation of this value.

* ## Method Details

  + ### getValue

    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Returns the value.

    Returns:
    :   the value
  + ### toString

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this value.
    This is returned in a form suitable for representing this value
    in the source code of an annotation.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this value
  + ### accept

    <R,
    P> R accept([AnnotationValueVisitor](AnnotationValueVisitor.md "interface in javax.lang.model.element")<R,P> v,
    P p)

    Applies a visitor to this value.

    Type Parameters:
    :   `R` - the return type of the visitor's methods
    :   `P` - the type of the additional parameter to the visitor's methods

    Parameters:
    :   `v` - the visitor operating on this value
    :   `p` - additional parameter to the visitor

    Returns:
    :   a visitor-specified result