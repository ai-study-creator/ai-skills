Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface AnnotationValueVisitor<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods
:   `P` - the type of the additional parameter to this visitor's methods.

All Known Implementing Classes:
:   `AbstractAnnotationValueVisitor14`, `AbstractAnnotationValueVisitor6`, `AbstractAnnotationValueVisitor7`, `AbstractAnnotationValueVisitor8`, `AbstractAnnotationValueVisitor9`, `SimpleAnnotationValueVisitor14`, `SimpleAnnotationValueVisitor6`, `SimpleAnnotationValueVisitor7`, `SimpleAnnotationValueVisitor8`, `SimpleAnnotationValueVisitor9`

---

public interface AnnotationValueVisitor<R,P>

A visitor of the values of annotation interface elements, using a
variant of the visitor design pattern. Unlike a standard visitor
which dispatches based on the concrete type of a member of a type
hierarchy, this visitor dispatches based on the type of data
stored; there are no distinct subclasses for storing, for example,
`boolean` values versus `int` values. Classes
implementing this interface are used to operate on a value when the
type of that value is unknown at compile time. When a visitor is
passed to a value's [`accept`](AnnotationValue.md#accept(javax.lang.model.element.AnnotationValueVisitor,P)) method,
the `visitXyz` method applicable to that value is
invoked.

Classes implementing this interface may or may not throw a
`NullPointerException` if the additional parameter `p`
is `null`; see documentation of the implementing class for
details.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default R`

  `visit(AnnotationValue av)`

  A convenience method equivalent to `visit(av, null)`.

  `R`

  `visit(AnnotationValue av,
  P p)`

  Visits an annotation value.

  `R`

  `visitAnnotation(AnnotationMirror a,
  P p)`

  Visits an annotation value in an annotation.

  `R`

  `visitArray(List<? extends AnnotationValue> vals,
  P p)`

  Visits an array value in an annotation.

  `R`

  `visitBoolean(boolean b,
  P p)`

  Visits a `boolean` value in an annotation.

  `R`

  `visitByte(byte b,
  P p)`

  Visits a `byte` value in an annotation.

  `R`

  `visitChar(char c,
  P p)`

  Visits a `char` value in an annotation.

  `R`

  `visitDouble(double d,
  P p)`

  Visits a `double` value in an annotation.

  `R`

  `visitEnumConstant(VariableElement c,
  P p)`

  Visits an `enum` value in an annotation.

  `R`

  `visitFloat(float f,
  P p)`

  Visits a `float` value in an annotation.

  `R`

  `visitInt(int i,
  P p)`

  Visits an `int` value in an annotation.

  `R`

  `visitLong(long i,
  P p)`

  Visits a `long` value in an annotation.

  `R`

  `visitShort(short s,
  P p)`

  Visits a `short` value in an annotation.

  `R`

  `visitString(String s,
  P p)`

  Visits a string value in an annotation.

  `R`

  `visitType(TypeMirror t,
  P p)`

  Visits a type value in an annotation.

  `R`

  `visitUnknown(AnnotationValue av,
  P p)`

  Visits an unknown kind of annotation value.

* ## Method Details

  + ### visit

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visit([AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element") av,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits an annotation value.

    Parameters:
    :   `av` - the value to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visit

    default [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visit([AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element") av)

    A convenience method equivalent to `visit(av, null)`.

    Parameters:
    :   `av` - the value to visit

    Returns:
    :   a visitor-specified result
  + ### visitBoolean

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitBoolean(boolean b,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a `boolean` value in an annotation.

    Parameters:
    :   `b` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitByte

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitByte(byte b,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a `byte` value in an annotation.

    Parameters:
    :   `b` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitChar

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitChar(char c,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a `char` value in an annotation.

    Parameters:
    :   `c` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitDouble

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitDouble(double d,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a `double` value in an annotation.

    Parameters:
    :   `d` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitFloat

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitFloat(float f,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a `float` value in an annotation.

    Parameters:
    :   `f` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitInt

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitInt(int i,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits an `int` value in an annotation.

    Parameters:
    :   `i` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitLong

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitLong(long i,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a `long` value in an annotation.

    Parameters:
    :   `i` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitShort

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitShort(short s,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a `short` value in an annotation.

    Parameters:
    :   `s` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitString

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitString([String](../../../../../java.base/java/lang/String.md "class in java.lang") s,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a string value in an annotation.

    Parameters:
    :   `s` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitType

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitType([TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") t,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits a type value in an annotation.

    Parameters:
    :   `t` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitEnumConstant

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitEnumConstant([VariableElement](VariableElement.md "interface in javax.lang.model.element") c,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits an `enum` value in an annotation.

    Parameters:
    :   `c` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitAnnotation

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitAnnotation([AnnotationMirror](AnnotationMirror.md "interface in javax.lang.model.element") a,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits an annotation value in an annotation.

    Parameters:
    :   `a` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitArray

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitArray([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element")> vals,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits an array value in an annotation.

    Parameters:
    :   `vals` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit
  + ### visitUnknown

    [R](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") visitUnknown([AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element") av,
    [P](AnnotationValueVisitor.md "type parameter in AnnotationValueVisitor") p)

    Visits an unknown kind of annotation value.
    This can occur if the language evolves and new kinds
    of value can be stored in an annotation.

    Parameters:
    :   `av` - the unknown value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit

    Throws:
    :   `UnknownAnnotationValueException` - a visitor implementation may optionally throw this exception