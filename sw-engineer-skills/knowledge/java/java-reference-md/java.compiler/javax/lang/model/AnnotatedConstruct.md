Module [java.compiler](../../../module-summary.md)

Package [javax.lang.model](package-summary.md)

# Interface AnnotatedConstruct

All Known Subinterfaces:
:   `ArrayType`, `DeclaredType`, `Element`, `ErrorType`, `ExecutableElement`, `ExecutableType`, `IntersectionType`, `ModuleElement`, `NoType`, `NullType`, `PackageElement`, `Parameterizable`, `PrimitiveType`, `QualifiedNameable`, `RecordComponentElement`, `ReferenceType`, `TypeElement`, `TypeMirror`, `TypeParameterElement`, `TypeVariable`, `UnionType`, `VariableElement`, `WildcardType`

---

public interface AnnotatedConstruct

Represents a construct that can be annotated.
A construct is either an [element](element/Element.md "interface in javax.lang.model.element") or a [type](type/TypeMirror.md "interface in javax.lang.model.type"). Annotations on an element
are on a *declaration*, whereas annotations on a type are on
a specific *use* of a type name.
As defined by The Java Language Specification
section , an annotation on an element is a
*declaration annotation* and an annotation on a type is a
*type annotation*.
The terms *directly present*, *present*,
*indirectly present*, and *associated*  are used
throughout this interface to describe precisely which annotations,
either declaration annotations or type annotations, are returned by
the methods in this interface.

In the definitions below, an annotation *A* has an
annotation interface *AI*. If *AI* is a repeatable annotation
interface, the type of the containing annotation is *AIC*.

Annotation *A* is *directly present* on a construct
*C* if either:

* *A* is [explicitly or implicitly](util/Elements.md#getOrigin(javax.lang.model.AnnotatedConstruct,javax.lang.model.element.AnnotationMirror))
  declared as applying to
  the source code representation of *C*.

  Typically, if exactly one annotation of type *AI* appears in
  the source code of representation of *C*, then *A* is
  explicitly declared as applying to *C*.
  An annotation of type *AI* on a [record component](element/RecordComponentElement.md "interface in javax.lang.model.element") can be implicitly propagated
  down to affiliated mandated members. Type annotations modifying the
  type of a record component can be also propagated to mandated
  members. Propagation of the annotations to mandated members is
  governed by rules given in the The Java Language
  Specification (JLS ).
  If there are multiple annotations of type *AI* present on
  *C*, then if *AI* is repeatable annotation interface, an
  annotation of type *AIC* is [implicitly declared](util/Elements.md#getOrigin(javax.lang.model.AnnotatedConstruct,javax.lang.model.element.AnnotationMirror)) on *C*.* A representation of *A* appears in the executable output
    for *C*, such as the `RuntimeVisibleAnnotations` (JVMS ) or
    `RuntimeVisibleParameterAnnotations` (JVMS ) attributes of a class
    file.

An annotation *A* is *present* on a
construct *C* if either:

* *A* is directly present on *C*.* No annotation of type *AI* is directly present on
    *C*, and *C* is a class and *AI* is inheritable
    and *A* is present on the superclass of *C*.

An annotation *A* is *indirectly present* on a construct
*C* if both:

* *AI* is a repeatable annotation interface with a containing
  annotation interface *AIC*.* An annotation of type *AIC* is directly present on
    *C* and *A* is an annotation included in the result of
    calling the `value` method of the directly present annotation
    of type *AIC*.

An annotation *A* is *associated* with a construct
*C* if either:

* *A* is directly or indirectly present on *C*.* No annotation of type *AI* is directly or indirectly
    present on *C*, and *C* is a class, and *AI* is
    inheritable, and *A* is associated with the superclass of
    *C*.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `<A extends Annotation>  
  A`

  `getAnnotation(Class<A> annotationType)`

  Returns this construct's annotation of the specified type if
  such an annotation is *present*, else `null`.

  `List<? extends AnnotationMirror>`

  `getAnnotationMirrors()`

  Returns the annotations that are *directly present* on
  this construct.

  `<A extends Annotation>  
  A[]`

  `getAnnotationsByType(Class<A> annotationType)`

  Returns annotations that are *associated* with this construct.

* ## Method Details

  + ### getAnnotationMirrors

    [List](../../../../java.base/java/util/List.md "interface in java.util")<? extends [AnnotationMirror](element/AnnotationMirror.md "interface in javax.lang.model.element")> getAnnotationMirrors()

    Returns the annotations that are *directly present* on
    this construct.

    Returns:
    :   the annotations *directly present* on this
        construct; an empty list if there are none
  + ### getAnnotation

    <A extends [Annotation](../../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation")> A getAnnotation([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<A> annotationType)

    Returns this construct's annotation of the specified type if
    such an annotation is *present*, else `null`.

    The annotation returned by this method could contain an element
    whose value is of type `Class`.
    This value cannot be returned directly: information necessary to
    locate and load a class (such as the class loader to use) is
    not available, and the class might not be loadable at all.
    Attempting to read a `Class` object by invoking the relevant
    method on the returned annotation
    will result in a [`MirroredTypeException`](type/MirroredTypeException.md "class in javax.lang.model.type"),
    from which the corresponding [`TypeMirror`](type/TypeMirror.md "interface in javax.lang.model.type") may be extracted.
    Similarly, attempting to read a `Class[]`-valued element
    will result in a [`MirroredTypesException`](type/MirroredTypesException.md "class in javax.lang.model.type").
    > *Note:* This method is unlike others in this and related
    > interfaces. It operates on runtime reflective information —
    > representations of annotation interfaces currently loaded into the
    > VM — rather than on the representations defined by and used
    > throughout these interfaces. Consequently, calling methods on
    > the returned annotation object can throw many of the exceptions
    > that can be thrown when calling methods on an annotation object
    > returned by core reflection. This method is intended for
    > callers that are written to operate on a known, fixed set of
    > annotation interfaces.

    Type Parameters:
    :   `A` - the annotation interface

    Parameters:
    :   `annotationType` - the `Class` object corresponding to
        the annotation interface

    Returns:
    :   this construct's annotation of the specified type if
        such an annotation is *present*, else `null`

    See Also:
    :   - [`getAnnotationMirrors()`](#getAnnotationMirrors())
        - [`AnnotatedElement.getAnnotation(java.lang.Class<T>)`](../../../../java.base/java/lang/reflect/AnnotatedElement.md#getAnnotation(java.lang.Class))
        - [`EnumConstantNotPresentException`](../../../../java.base/java/lang/EnumConstantNotPresentException.md "class in java.lang")
        - [`AnnotationTypeMismatchException`](../../../../java.base/java/lang/annotation/AnnotationTypeMismatchException.md "class in java.lang.annotation")
        - [`IncompleteAnnotationException`](../../../../java.base/java/lang/annotation/IncompleteAnnotationException.md "class in java.lang.annotation")
        - [`MirroredTypeException`](type/MirroredTypeException.md "class in javax.lang.model.type")
        - [`MirroredTypesException`](type/MirroredTypesException.md "class in javax.lang.model.type")
  + ### getAnnotationsByType

    <A extends [Annotation](../../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation")> A[] getAnnotationsByType([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<A> annotationType)

    Returns annotations that are *associated* with this construct.
    If there are no annotations associated with this construct, the
    return value is an array of length 0.
    The order of annotations which are directly or indirectly
    present on a construct *C* is computed as if indirectly present
    annotations on *C* are directly present on *C* in place of their
    container annotation, in the order in which they appear in the
    value element of the container annotation.
    The difference between this method and [`getAnnotation(Class)`](#getAnnotation(java.lang.Class))
    is that this method detects if its argument is a *repeatable
    annotation interface*, and if so, attempts to find one or more
    annotations of that type by "looking through" a container annotation.

    The annotations returned by this method could contain an element
    whose value is of type `Class`.
    This value cannot be returned directly: information necessary to
    locate and load a class (such as the class loader to use) is
    not available, and the class might not be loadable at all.
    Attempting to read a `Class` object by invoking the relevant
    method on the returned annotation
    will result in a [`MirroredTypeException`](type/MirroredTypeException.md "class in javax.lang.model.type"),
    from which the corresponding [`TypeMirror`](type/TypeMirror.md "interface in javax.lang.model.type") may be extracted.
    Similarly, attempting to read a `Class[]`-valued element
    will result in a [`MirroredTypesException`](type/MirroredTypesException.md "class in javax.lang.model.type").
    > *Note:* This method is unlike others in this and related
    > interfaces. It operates on runtime reflective information —
    > representations of annotation interfaces currently loaded into the
    > VM — rather than on the representations defined by and used
    > throughout these interfaces. Consequently, calling methods on
    > the returned annotation object can throw many of the exceptions
    > that can be thrown when calling methods on an annotation object
    > returned by core reflection. This method is intended for
    > callers that are written to operate on a known, fixed set of
    > annotation interfaces.

    Type Parameters:
    :   `A` - the annotation interface

    Parameters:
    :   `annotationType` - the `Class` object corresponding to
        the annotation interface

    Returns:
    :   this construct's annotations for the specified annotation
        type if present on this construct, else an empty array

    See Also:
    :   - [`getAnnotationMirrors()`](#getAnnotationMirrors())
        - [`getAnnotation(Class)`](#getAnnotation(java.lang.Class))
        - [`AnnotatedElement.getAnnotationsByType(Class)`](../../../../java.base/java/lang/reflect/AnnotatedElement.md#getAnnotationsByType(java.lang.Class))
        - [`EnumConstantNotPresentException`](../../../../java.base/java/lang/EnumConstantNotPresentException.md "class in java.lang")
        - [`AnnotationTypeMismatchException`](../../../../java.base/java/lang/annotation/AnnotationTypeMismatchException.md "class in java.lang.annotation")
        - [`IncompleteAnnotationException`](../../../../java.base/java/lang/annotation/IncompleteAnnotationException.md "class in java.lang.annotation")
        - [`MirroredTypeException`](type/MirroredTypeException.md "class in javax.lang.model.type")
        - [`MirroredTypesException`](type/MirroredTypesException.md "class in javax.lang.model.type")