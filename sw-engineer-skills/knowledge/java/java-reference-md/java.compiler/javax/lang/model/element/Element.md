Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface Element

All Superinterfaces:
:   `AnnotatedConstruct`

All Known Subinterfaces:
:   `ExecutableElement`, `ModuleElement`, `PackageElement`, `Parameterizable`, `QualifiedNameable`, `RecordComponentElement`, `TypeElement`, `TypeParameterElement`, `VariableElement`

---

public interface Element
extends [AnnotatedConstruct](../AnnotatedConstruct.md "interface in javax.lang.model")

Represents a program element such as a module, package, class, or method.
Each element represents a compile-time language-level construct
(and not, for example, a runtime construct of the virtual machine).

Elements should be compared using the [`equals(Object)`](#equals(java.lang.Object))
method. There is no guarantee that any particular element will
always be represented by the same object.

To implement operations based on the class of an `Element` object, either use a [visitor](ElementVisitor.md "interface in javax.lang.model.element") or
use the result of the [`getKind()`](#getKind()) method. Using `instanceof` is *not* necessarily a reliable idiom for
determining the effective class of an object in this modeling
hierarchy since an implementation may choose to have a single object
implement multiple `Element` subinterfaces.

Since:
:   1.6

See Also:
:   * [`Elements`](../util/Elements.md "interface in javax.lang.model.util")
    * [`TypeMirror`](../type/TypeMirror.md "interface in javax.lang.model.type")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `<R,
  P> R`

  `accept(ElementVisitor<R,P> v,
  P p)`

  Applies a visitor to this element.

  `TypeMirror`

  `asType()`

  Returns the type defined by this element.

  `boolean`

  `equals(Object obj)`

  Returns `true` if the argument represents the same
  element as `this`, or `false` otherwise.

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

  `List<? extends Element>`

  `getEnclosedElements()`

  Returns the elements that are, loosely speaking, directly
  enclosed by this element.

  `Element`

  `getEnclosingElement()`

  Returns the innermost element
  within which this element is, loosely speaking, enclosed.

  `ElementKind`

  `getKind()`

  Returns the `kind` of this element.

  `Set<Modifier>`

  `getModifiers()`

  Returns the modifiers of this element, excluding annotations.

  `Name`

  `getSimpleName()`

  Returns the simple (unqualified) name of this element.

  `int`

  `hashCode()`

  Obeys the general contract of [`Object.hashCode`](../../../../../java.base/java/lang/Object.md#hashCode()).

* ## Method Details

  + ### asType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") asType()

    Returns the type defined by this element.

    Returns:
    :   the type defined by this element

    See Also:
    :   - [`Types`](../util/Types.md "interface in javax.lang.model.util")
        - [`ExecutableElement.asType()`](ExecutableElement.md#asType())
        - [`ModuleElement.asType()`](ModuleElement.md#asType())
        - [`PackageElement.asType()`](PackageElement.md#asType())
        - [`TypeElement.asType()`](TypeElement.md#asType())
        - [`TypeParameterElement.asType()`](TypeParameterElement.md#asType())
        - [`VariableElement.asType()`](VariableElement.md#asType())
  + ### getKind

    [ElementKind](ElementKind.md "enum class in javax.lang.model.element") getKind()

    Returns the `kind` of this element.
    - The kind of a [package](PackageElement.md "interface in javax.lang.model.element") is
      [`PACKAGE`](ElementKind.md#PACKAGE).- The kind of a [module](ModuleElement.md "interface in javax.lang.model.element") is [`MODULE`](ElementKind.md#MODULE).- The kind of a [type element](TypeElement.md "interface in javax.lang.model.element") is one
          of [`ANNOTATION_TYPE`](ElementKind.md#ANNOTATION_TYPE), [`CLASS`](ElementKind.md#CLASS), [`ENUM`](ElementKind.md#ENUM), [`INTERFACE`](ElementKind.md#INTERFACE), or [`RECORD`](ElementKind.md#RECORD).- The kind of a [variable](VariableElement.md "interface in javax.lang.model.element") is one
            of [`ENUM_CONSTANT`](ElementKind.md#ENUM_CONSTANT), [`EXCEPTION_PARAMETER`](ElementKind.md#EXCEPTION_PARAMETER), [`FIELD`](ElementKind.md#FIELD), [`LOCAL_VARIABLE`](ElementKind.md#LOCAL_VARIABLE), [`PARAMETER`](ElementKind.md#PARAMETER),
            [`RESOURCE_VARIABLE`](ElementKind.md#RESOURCE_VARIABLE), or
            [`BINDING_VARIABLE`](ElementKind.md#BINDING_VARIABLE).- The kind of an [executable](ExecutableElement.md "interface in javax.lang.model.element")
              is one of [`CONSTRUCTOR`](ElementKind.md#CONSTRUCTOR), [`INSTANCE_INIT`](ElementKind.md#INSTANCE_INIT), [`METHOD`](ElementKind.md#METHOD), or [`STATIC_INIT`](ElementKind.md#STATIC_INIT).- The kind of a [type parameter](TypeParameterElement.md "interface in javax.lang.model.element") is
                [`TYPE_PARAMETER`](ElementKind.md#TYPE_PARAMETER).- The kind of a [record
                  component](RecordComponentElement.md "interface in javax.lang.model.element") is [`RECORD_COMPONENT`](ElementKind.md#RECORD_COMPONENT).

    Returns:
    :   the `kind` of this element
  + ### getModifiers

    [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[Modifier](Modifier.md "enum class in javax.lang.model.element")> getModifiers()

    Returns the modifiers of this element, excluding annotations.
    Implicit modifiers, such as the `public` and `static` modifiers of interface members (JLS section ), are included.

    Returns:
    :   the modifiers of this element, or an empty set if there are none
  + ### getSimpleName

    [Name](Name.md "interface in javax.lang.model.element") getSimpleName()

    Returns the simple (unqualified) name of this element. The
    name of a generic class or interface does not include any
    reference to its formal type parameters.
    For example, the simple name of the type element representing
    `java.util.Set<E>` is `"Set"`.
    If this element represents an unnamed [package](PackageElement.md#getSimpleName()), an unnamed [module](ModuleElement.md#getSimpleName()) or an unnamed [variable](VariableElement.md#getSimpleName()), an [empty name](Name.md#empty_name)
    is returned.
    If it represents a [constructor](ExecutableElement.md#getSimpleName()), the name "`<init>`" is returned. If it
    represents a [static
    initializer](ExecutableElement.md#getSimpleName()), the name "`<clinit>`" is returned.
    If it represents an [anonymous class](TypeElement.md#getSimpleName()) or [instance initializer](ExecutableElement.md#getSimpleName()), an [empty
    name](Name.md#empty_name) is returned.

    Returns:
    :   the simple (unqualified) name of this element

    See Also:
    :   - [`PackageElement.getSimpleName()`](PackageElement.md#getSimpleName())
        - [`ExecutableElement.getSimpleName()`](ExecutableElement.md#getSimpleName())
        - [`TypeElement.getSimpleName()`](TypeElement.md#getSimpleName())
        - [`VariableElement.getSimpleName()`](VariableElement.md#getSimpleName())
        - [`ModuleElement.getSimpleName()`](ModuleElement.md#getSimpleName())
        - [`RecordComponentElement.getSimpleName()`](RecordComponentElement.md#getSimpleName())
  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns the innermost element
    within which this element is, loosely speaking, enclosed.
    - If this element is one whose declaration is lexically enclosed
      immediately within the declaration of another element, that other
      element is returned.- If this is a [top-level class or interface](TypeElement.md#getEnclosingElement()), its package is returned.- If this is a [package](PackageElement.md#getEnclosingElement()), its module is
          returned if such a module exists. Otherwise, `null` is returned.- If this is a [type parameter](TypeParameterElement.md#getEnclosingElement()),
            [the
            generic element](TypeParameterElement.md#getGenericElement()) of the type parameter is returned.- If this is a [method or constructor
              parameter](VariableElement.md#getEnclosingElement()), [the executable
              element](ExecutableElement.md "interface in javax.lang.model.element") which declares the parameter is returned.- If this is a [record component](RecordComponentElement.md#getEnclosingElement()),
                [the record class](TypeElement.md "interface in javax.lang.model.element") which declares the
                record component is returned.- If this is a [module](ModuleElement.md#getEnclosingElement()), `null` is returned.

    Returns:
    :   the enclosing element, or `null` if there is none

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))
  + ### getEnclosedElements

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Element](Element.md "interface in javax.lang.model.element")> getEnclosedElements()

    Returns the elements that are, loosely speaking, directly
    enclosed by this element.
    A [class or
    interface](TypeElement.md#getEnclosedElements()) is considered to enclose the fields, methods,
    constructors, record components, and member classes and interfaces that it directly declares.
    A [package](PackageElement.md#getEnclosedElements())
    encloses the top-level classes and interfaces within it, but is
    not considered to enclose subpackages.
    A [module](ModuleElement.md#getEnclosedElements())
    encloses packages within it.
    Enclosed elements may include implicitly declared [mandated](../util/Elements.Origin.md#MANDATED) elements.
    Other kinds of elements are not currently considered to enclose
    any elements; however, that may change as this API or the
    programming language evolves.

    Returns:
    :   the enclosed elements, or an empty list if none

    See Also:
    :   - [`TypeElement.getEnclosedElements()`](TypeElement.md#getEnclosedElements())
        - [`PackageElement.getEnclosedElements()`](PackageElement.md#getEnclosedElements())
        - [`ModuleElement.getEnclosedElements()`](ModuleElement.md#getEnclosedElements())
        - [`Elements.getAllMembers(javax.lang.model.element.TypeElement)`](../util/Elements.md#getAllMembers(javax.lang.model.element.TypeElement))
  + ### equals

    boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Returns `true` if the argument represents the same
    element as `this`, or `false` otherwise.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared with this element

    Returns:
    :   `true` if the argument represents the same
        element as `this`, or `false` otherwise

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
  + ### getAnnotationMirrors

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [AnnotationMirror](AnnotationMirror.md "interface in javax.lang.model.element")> getAnnotationMirrors()

    Returns the annotations that are *directly present* on
    this construct.

    To get inherited annotations as well, use [`getAllAnnotationMirrors`](../util/Elements.md#getAllAnnotationMirrors(javax.lang.model.element.Element)).

    Note that any annotations returned by this method are
    declaration annotations.

    Specified by:
    :   `getAnnotationMirrors` in interface `AnnotatedConstruct`

    Returns:
    :   the annotations *directly present* on this
        construct; an empty list if there are none

    Since:
    :   1.6
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
    will result in a [`MirroredTypeException`](../type/MirroredTypeException.md "class in javax.lang.model.type"),
    from which the corresponding [`TypeMirror`](../type/TypeMirror.md "interface in javax.lang.model.type") may be extracted.
    Similarly, attempting to read a `Class[]`-valued element
    will result in a [`MirroredTypesException`](../type/MirroredTypesException.md "class in javax.lang.model.type").
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

    Note that any annotation returned by this method is a
    declaration annotation.

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
    :   1.6

    See Also:
    :   - [`AnnotatedConstruct.getAnnotationMirrors()`](../AnnotatedConstruct.md#getAnnotationMirrors())
        - [`AnnotatedElement.getAnnotation(java.lang.Class<T>)`](../../../../../java.base/java/lang/reflect/AnnotatedElement.md#getAnnotation(java.lang.Class))
        - [`EnumConstantNotPresentException`](../../../../../java.base/java/lang/EnumConstantNotPresentException.md "class in java.lang")
        - [`AnnotationTypeMismatchException`](../../../../../java.base/java/lang/annotation/AnnotationTypeMismatchException.md "class in java.lang.annotation")
        - [`IncompleteAnnotationException`](../../../../../java.base/java/lang/annotation/IncompleteAnnotationException.md "class in java.lang.annotation")
        - [`MirroredTypeException`](../type/MirroredTypeException.md "class in javax.lang.model.type")
        - [`MirroredTypesException`](../type/MirroredTypesException.md "class in javax.lang.model.type")
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
    will result in a [`MirroredTypeException`](../type/MirroredTypeException.md "class in javax.lang.model.type"),
    from which the corresponding [`TypeMirror`](../type/TypeMirror.md "interface in javax.lang.model.type") may be extracted.
    Similarly, attempting to read a `Class[]`-valued element
    will result in a [`MirroredTypesException`](../type/MirroredTypesException.md "class in javax.lang.model.type").
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

    Note that any annotations returned by this method are
    declaration annotations.

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
        - [`MirroredTypeException`](../type/MirroredTypeException.md "class in javax.lang.model.type")
        - [`MirroredTypesException`](../type/MirroredTypesException.md "class in javax.lang.model.type")
  + ### accept

    <R,
    P> R accept([ElementVisitor](ElementVisitor.md "interface in javax.lang.model.element")<R,P> v,
    P p)

    Applies a visitor to this element.

    Type Parameters:
    :   `R` - the return type of the visitor's methods
    :   `P` - the type of the additional parameter to the visitor's methods

    Parameters:
    :   `v` - the visitor operating on this element
    :   `p` - additional parameter to the visitor

    Returns:
    :   a visitor-specified result