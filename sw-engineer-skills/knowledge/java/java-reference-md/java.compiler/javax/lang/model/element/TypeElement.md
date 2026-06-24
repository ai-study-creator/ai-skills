Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface TypeElement

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`, `Parameterizable`, `QualifiedNameable`

---

public interface TypeElement
extends [Element](Element.md "interface in javax.lang.model.element"), [Parameterizable](Parameterizable.md "interface in javax.lang.model.element"), [QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element")

Represents a class or interface program element. Provides access
to information about the class or interface and its members. Note
that an enum class and a record class are specialized kinds of
classes and an annotation interface is a specialized kind of
interface.

While a `TypeElement` represents a class or interface
*element*, a [`DeclaredType`](../type/DeclaredType.md "interface in javax.lang.model.type") represents a class
or interface *type*, the latter being a use
(or *invocation*) of the former.
The distinction is most apparent with generic types,
for which a single element can define a whole
family of types. For example, the element
`java.util.Set` corresponds to the parameterized types
`java.util.Set<String>` and `java.util.Set<Number>`
(and many others), and to the raw type `java.util.Set`.

Each method of this interface that returns a list of elements
will return them in the order that is natural for the underlying
source of program information. For example, if the underlying
source of information is Java source code, then the elements will be
returned in source code order.

Since:
:   1.6

See Also:
:   * [`DeclaredType`](../type/DeclaredType.md "interface in javax.lang.model.type")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `asType()`

  Returns the type defined by this class or interface element,
  returning the *prototypical* type for an element
  representing a generic type.

  `List<? extends Element>`

  `getEnclosedElements()`

  Returns the fields, methods, constructors, record components,
  and member classes and interfaces that are directly declared in
  this class or interface.

  `Element`

  `getEnclosingElement()`

  Returns the package of a top-level class or interface and
  returns the immediately lexically enclosing element for a
  [nested](NestingKind.md#isNested()) class or interface.

  `List<? extends TypeMirror>`

  `getInterfaces()`

  Returns the interface types directly implemented by this class
  or extended by this interface.

  `NestingKind`

  `getNestingKind()`

  Returns the *nesting kind* of this class or interface element.

  `default List<? extends TypeMirror>`

  `getPermittedSubclasses()`

  Returns the permitted classes of this class or interface
  element in declaration order.

  `Name`

  `getQualifiedName()`

  Returns the fully qualified name of this class or interface
  element.

  `default List<? extends RecordComponentElement>`

  `getRecordComponents()`

  Returns the record components of this class or interface
  element in declaration order.

  `Name`

  `getSimpleName()`

  Returns the simple name of this class or interface element.

  `TypeMirror`

  `getSuperclass()`

  Returns the direct superclass of this class or interface element.

  `List<? extends TypeParameterElement>`

  `getTypeParameters()`

  Returns the formal type parameters of this class or interface element
  in declaration order.

  `default boolean`

  `isUnnamed()`

  Preview.

  Returns `true` if this is an unnamed class and `false` otherwise.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, getModifiers, hashCode`

* ## Method Details

  + ### asType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") asType()

    Returns the type defined by this class or interface element,
    returning the *prototypical* type for an element
    representing a generic type.

    A generic element defines a family of types, not just one.
    If this is a generic element, a prototypical type is
    returned which has the element's invocation on the
    type variables corresponding to its own formal type parameters.
    For example,
    for the generic class element `C<N extends Number>`,
    the parameterized type `C<N>` is returned.
    The [`Types`](../util/Types.md "interface in javax.lang.model.util") utility interface has more general methods
    for obtaining the full range of types defined by an element.

    Specified by:
    :   `asType` in interface `Element`

    Returns:
    :   the type defined by this type element

    See Also:
    :   - [`Types.asMemberOf(DeclaredType, Element)`](../util/Types.md#asMemberOf(javax.lang.model.type.DeclaredType,javax.lang.model.element.Element))
        - [`Types.getDeclaredType(TypeElement, TypeMirror...)`](../util/Types.md#getDeclaredType(javax.lang.model.element.TypeElement,javax.lang.model.type.TypeMirror...))
  + ### getEnclosedElements

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Element](Element.md "interface in javax.lang.model.element")> getEnclosedElements()

    Returns the fields, methods, constructors, record components,
    and member classes and interfaces that are directly declared in
    this class or interface.
    This includes any [mandated](../util/Elements.Origin.md#MANDATED) elements such as the (implicit) default constructor
    and the implicit `values` and `valueOf` methods of
    an enum class.

    Specified by:
    :   `getEnclosedElements` in interface `Element`

    Returns:
    :   the enclosed elements in proper order, or an empty list if none

    See Also:
    :   - [`getEnclosedElements()`](#getEnclosedElements())
        - [`PackageElement.getEnclosedElements()`](PackageElement.md#getEnclosedElements())
        - [`ModuleElement.getEnclosedElements()`](ModuleElement.md#getEnclosedElements())
        - [`Elements.getAllMembers(javax.lang.model.element.TypeElement)`](../util/Elements.md#getAllMembers(javax.lang.model.element.TypeElement))
  + ### getNestingKind

    [NestingKind](NestingKind.md "enum class in javax.lang.model.element") getNestingKind()

    Returns the *nesting kind* of this class or interface element.

    Returns:
    :   the nesting kind of this class or interface element
  + ### getQualifiedName

    [Name](Name.md "interface in javax.lang.model.element") getQualifiedName()

    Returns the fully qualified name of this class or interface
    element. More precisely, it returns the *canonical* name.
    For local, anonymous, and [unnamed](#isUnnamed())[PREVIEW](#preview-isUnnamed()) classes, which do not have canonical
    names, an [empty name](Name.md#empty_name) is
    returned.

    The name of a generic class or interface does not include any reference
    to its formal type parameters.
    For example, the fully qualified name of the interface
    `java.util.Set<E>` is "`java.util.Set`".
    Nested classes and interfaces use "`.`" as a separator, as in
    "`java.util.Map.Entry`".

    Specified by:
    :   `getQualifiedName` in interface `QualifiedNameable`

    Returns:
    :   the fully qualified name of this class or interface, or
        an empty name if none

    See Also:
    :   - [`Elements.getBinaryName(javax.lang.model.element.TypeElement)`](../util/Elements.md#getBinaryName(javax.lang.model.element.TypeElement))
  + ### getSimpleName

    [Name](Name.md "interface in javax.lang.model.element") getSimpleName()

    Returns the simple name of this class or interface element.
    For an anonymous class, an [empty
    name](Name.md#empty_name) is returned.
    For an [unnamed](#isUnnamed())[PREVIEW](#preview-isUnnamed()) class, a name matching
    the base name of the hosting file, minus any extension, is
    returned.

    Specified by:
    :   `getSimpleName` in interface `Element`

    Returns:
    :   the simple name of this class or interface,
        an empty name for an anonymous class

    See Also:
    :   - [`PackageElement.getSimpleName()`](PackageElement.md#getSimpleName())
        - [`ExecutableElement.getSimpleName()`](ExecutableElement.md#getSimpleName())
        - [`getSimpleName()`](#getSimpleName())
        - [`VariableElement.getSimpleName()`](VariableElement.md#getSimpleName())
        - [`ModuleElement.getSimpleName()`](ModuleElement.md#getSimpleName())
        - [`RecordComponentElement.getSimpleName()`](RecordComponentElement.md#getSimpleName())
  + ### isUnnamed

    default boolean isUnnamed()

    `isUnnamed` is a reflective preview API of the Java platform.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    Returns `true` if this is an unnamed class and `false` otherwise.

    Returns:
    :   `true` if this is an unnamed class and `false` otherwise

    Since:
    :   21
  + ### getSuperclass

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") getSuperclass()

    Returns the direct superclass of this class or interface element.
    If this class or interface element represents an interface or the class
    `java.lang.Object`, then a [`NoType`](../type/NoType.md "interface in javax.lang.model.type")
    with kind [`NONE`](../type/TypeKind.md#NONE) is returned.

    Returns:
    :   the direct superclass, or a `NoType` if there is none
  + ### getInterfaces

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type")> getInterfaces()

    Returns the interface types directly implemented by this class
    or extended by this interface.

    Returns:
    :   the interface types directly implemented by this class
        or extended by this interface, or an empty list if there are none
  + ### getTypeParameters

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeParameterElement](TypeParameterElement.md "interface in javax.lang.model.element")> getTypeParameters()

    Returns the formal type parameters of this class or interface element
    in declaration order.

    Specified by:
    :   `getTypeParameters` in interface `Parameterizable`

    Returns:
    :   the formal type parameters, or an empty list
        if there are none
  + ### getRecordComponents

    default [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [RecordComponentElement](RecordComponentElement.md "interface in javax.lang.model.element")> getRecordComponents()

    Returns the record components of this class or interface
    element in declaration order.

    Returns:
    :   the record components, or an empty list if there are
        none

    Since:
    :   16
  + ### getPermittedSubclasses

    default [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type")> getPermittedSubclasses()

    Returns the permitted classes of this class or interface
    element in declaration order.

    Returns:
    :   the permitted classes, or an empty list if there are none

    Since:
    :   17
  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns the package of a top-level class or interface and
    returns the immediately lexically enclosing element for a
    [nested](NestingKind.md#isNested()) class or interface.

    Specified by:
    :   `getEnclosingElement` in interface `Element`

    Returns:
    :   the package of a top-level class or interface, the immediately
        lexically enclosing element for a nested class or interface

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))