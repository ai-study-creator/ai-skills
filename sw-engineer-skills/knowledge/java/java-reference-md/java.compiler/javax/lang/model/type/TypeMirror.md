Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface TypeMirror

All Superinterfaces:
:   `AnnotatedConstruct`

All Known Subinterfaces:
:   `ArrayType`, `DeclaredType`, `ErrorType`, `ExecutableType`, `IntersectionType`, `NoType`, `NullType`, `PrimitiveType`, `ReferenceType`, `TypeVariable`, `UnionType`, `WildcardType`

---

public interface TypeMirror
extends [AnnotatedConstruct](../AnnotatedConstruct.md "interface in javax.lang.model")

Represents a type in the Java programming language.
Types include primitive types, declared types (class and interface types),
array types, type variables, and the null type.
Also represented are wildcard type arguments, the signature and
return types of executables, and pseudo-types corresponding to
packages, modules, and the keyword `void`.

Types should be compared using the utility methods in [`Types`](../util/Types.md "interface in javax.lang.model.util"). There is no guarantee that any particular type will always
be represented by the same object.

To implement operations based on the class of an `TypeMirror` object, either use a [visitor](TypeVisitor.md "interface in javax.lang.model.type")
or use the result of the [`getKind()`](#getKind()) method. Using `instanceof` is *not* necessarily a reliable idiom for
determining the effective class of an object in this modeling
hierarchy since an implementation may choose to have a single
object implement multiple `TypeMirror` subinterfaces.

Since:
:   1.6

See Also:
:   * [`Element`](../element/Element.md "interface in javax.lang.model.element")
    * [`Types`](../util/Types.md "interface in javax.lang.model.util")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `<R,
  P> R`

  `accept(TypeVisitor<R,P> v,
  P p)`

  Applies a visitor to this type.

  `boolean`

  `equals(Object obj)`

  Obeys the general contract of [`Object.equals`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object)).

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

  `TypeKind`

  `getKind()`

  Returns the `kind` of this type.

  `int`

  `hashCode()`

  Obeys the general contract of [`Object.hashCode`](../../../../../java.base/java/lang/Object.md#hashCode()).

  `String`

  `toString()`

  Returns an informative string representation of this type.

* ## Method Details

  + ### getKind

    [TypeKind](TypeKind.md "enum class in javax.lang.model.type") getKind()

    Returns the `kind` of this type.
    - The kind of a [primitive type](PrimitiveType.md "interface in javax.lang.model.type") is
      one of the kinds for which [`TypeKind.isPrimitive()`](TypeKind.md#isPrimitive()) returns
      `true`.- The kind of a [null type](NullType.md "interface in javax.lang.model.type") is [`NULL`](TypeKind.md#NULL).- The kind of an [array type](ArrayType.md "interface in javax.lang.model.type") is [`ARRAY`](TypeKind.md#ARRAY).- The kind of a [declared type](DeclaredType.md "interface in javax.lang.model.type") is
            [`DECLARED`](TypeKind.md#DECLARED).- The kind of an [error type](ErrorType.md "interface in javax.lang.model.type") is [`ERROR`](TypeKind.md#ERROR).- The kind of a [type variable](TypeVariable.md "interface in javax.lang.model.type") is
                [`TYPEVAR`](TypeKind.md#TYPEVAR).- The kind of a [wildcard type](WildcardType.md "interface in javax.lang.model.type") is
                  [`WILDCARD`](TypeKind.md#WILDCARD).- The kind of an [executable type](ExecutableType.md "interface in javax.lang.model.type")
                    is [`EXECUTABLE`](TypeKind.md#EXECUTABLE).- The kind of a [pseudo-type](NoType.md "interface in javax.lang.model.type") is one
                      of [`VOID`](TypeKind.md#VOID), [`PACKAGE`](TypeKind.md#PACKAGE), [`MODULE`](TypeKind.md#MODULE), or [`NONE`](TypeKind.md#NONE).- The kind of a [union type](UnionType.md "interface in javax.lang.model.type") is [`UNION`](TypeKind.md#UNION).- The kind of an [intersection
                          type](IntersectionType.md "interface in javax.lang.model.type") is [`INTERSECTION`](TypeKind.md#INTERSECTION).

    Returns:
    :   the `kind` of this type
  + ### equals

    boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Obeys the general contract of [`Object.equals`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object)).
    This method does not, however, indicate whether two types represent
    the same type.
    Semantic comparisons of type equality should instead use
    [`Types.isSameType(TypeMirror, TypeMirror)`](../util/Types.md#isSameType(javax.lang.model.type.TypeMirror,javax.lang.model.type.TypeMirror)).
    The results of `t1.equals(t2)` and
    `Types.isSameType(t1, t2)` may differ.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared with this type

    Returns:
    :   `true` if the specified object is equal to this one

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Obeys the general contract of [`Object.hashCode`](../../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`equals(java.lang.Object)`](#equals(java.lang.Object))
  + ### toString

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an informative string representation of this type. If
    possible, the string should be of a form suitable for
    representing this type in source code. Any names embedded in
    the result are qualified if possible.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this type
  + ### getAnnotationMirrors

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [AnnotationMirror](../element/AnnotationMirror.md "interface in javax.lang.model.element")> getAnnotationMirrors()

    Returns the annotations that are *directly present* on
    this construct.

    Note that any annotations returned by this method are type
    annotations.

    Specified by:
    :   `getAnnotationMirrors` in interface `AnnotatedConstruct`

    Returns:
    :   the annotations *directly present* on this
        construct; an empty list if there are none

    Since:
    :   1.8
  + ### getAnnotation

    <A extends [Annotation](../../../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation")> A getAnnotation([Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<A> annotationType)

    Returns this construct's annotation of the specified type if
    such an annotation is *present*, else `null`.

    The annotation returned by this method could contain an element
    whose value is of type `Class`.
    This value cannot be returned directly: information necessary to
    locate and load a class (such as the class loader to use) is
    not available, and the class might not be loadable at all.
    Attempting to read a `Class` object by invoking the relevant
    method on the returned annotation
    will result in a [`MirroredTypeException`](MirroredTypeException.md "class in javax.lang.model.type"),
    from which the corresponding [`TypeMirror`](TypeMirror.md "interface in javax.lang.model.type") may be extracted.
    Similarly, attempting to read a `Class[]`-valued element
    will result in a [`MirroredTypesException`](MirroredTypesException.md "class in javax.lang.model.type").
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

    Note that any annotation returned by this method is a type
    annotation.

    Specified by:
    :   `getAnnotation` in interface `AnnotatedConstruct`

    Type Parameters:
    :   `A` - the annotation interface

    Parameters:
    :   `annotationType` - the `Class` object corresponding to
        the annotation interface

    Returns:
    :   this construct's annotation of the specified type if
        such an annotation is *present*, else `null`

    Since:
    :   1.8

    See Also:
    :   - [`AnnotatedConstruct.getAnnotationMirrors()`](../AnnotatedConstruct.md#getAnnotationMirrors())
        - [`AnnotatedElement.getAnnotation(java.lang.Class<T>)`](../../../../../java.base/java/lang/reflect/AnnotatedElement.md#getAnnotation(java.lang.Class))
        - [`EnumConstantNotPresentException`](../../../../../java.base/java/lang/EnumConstantNotPresentException.md "class in java.lang")
        - [`AnnotationTypeMismatchException`](../../../../../java.base/java/lang/annotation/AnnotationTypeMismatchException.md "class in java.lang.annotation")
        - [`IncompleteAnnotationException`](../../../../../java.base/java/lang/annotation/IncompleteAnnotationException.md "class in java.lang.annotation")
        - [`MirroredTypeException`](MirroredTypeException.md "class in javax.lang.model.type")
        - [`MirroredTypesException`](MirroredTypesException.md "class in javax.lang.model.type")
  + ### getAnnotationsByType

    <A extends [Annotation](../../../../../java.base/java/lang/annotation/Annotation.md "interface in java.lang.annotation")> A[] getAnnotationsByType([Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<A> annotationType)

    Returns annotations that are *associated* with this construct.
    If there are no annotations associated with this construct, the
    return value is an array of length 0.
    The order of annotations which are directly or indirectly
    present on a construct *C* is computed as if indirectly present
    annotations on *C* are directly present on *C* in place of their
    container annotation, in the order in which they appear in the
    value element of the container annotation.
    The difference between this method and [`AnnotatedConstruct.getAnnotation(Class)`](../AnnotatedConstruct.md#getAnnotation(java.lang.Class))
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
    will result in a [`MirroredTypeException`](MirroredTypeException.md "class in javax.lang.model.type"),
    from which the corresponding [`TypeMirror`](TypeMirror.md "interface in javax.lang.model.type") may be extracted.
    Similarly, attempting to read a `Class[]`-valued element
    will result in a [`MirroredTypesException`](MirroredTypesException.md "class in javax.lang.model.type").
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

    Note that any annotations returned by this method are type
    annotations.

    Specified by:
    :   `getAnnotationsByType` in interface `AnnotatedConstruct`

    Type Parameters:
    :   `A` - the annotation interface

    Parameters:
    :   `annotationType` - the `Class` object corresponding to
        the annotation interface

    Returns:
    :   this construct's annotations for the specified annotation
        type if present on this construct, else an empty array

    Since:
    :   1.8

    See Also:
    :   - [`AnnotatedConstruct.getAnnotationMirrors()`](../AnnotatedConstruct.md#getAnnotationMirrors())
        - [`AnnotatedConstruct.getAnnotation(Class)`](../AnnotatedConstruct.md#getAnnotation(java.lang.Class))
        - [`AnnotatedElement.getAnnotationsByType(Class)`](../../../../../java.base/java/lang/reflect/AnnotatedElement.md#getAnnotationsByType(java.lang.Class))
        - [`EnumConstantNotPresentException`](../../../../../java.base/java/lang/EnumConstantNotPresentException.md "class in java.lang")
        - [`AnnotationTypeMismatchException`](../../../../../java.base/java/lang/annotation/AnnotationTypeMismatchException.md "class in java.lang.annotation")
        - [`IncompleteAnnotationException`](../../../../../java.base/java/lang/annotation/IncompleteAnnotationException.md "class in java.lang.annotation")
        - [`MirroredTypeException`](MirroredTypeException.md "class in javax.lang.model.type")
        - [`MirroredTypesException`](MirroredTypesException.md "class in javax.lang.model.type")
  + ### accept

    <R,
    P> R accept([TypeVisitor](TypeVisitor.md "interface in javax.lang.model.type")<R,P> v,
    P p)

    Applies a visitor to this type.

    Type Parameters:
    :   `R` - the return type of the visitor's methods
    :   `P` - the type of the additional parameter to the visitor's methods

    Parameters:
    :   `v` - the visitor operating on this type
    :   `p` - additional parameter to the visitor

    Returns:
    :   a visitor-specified result