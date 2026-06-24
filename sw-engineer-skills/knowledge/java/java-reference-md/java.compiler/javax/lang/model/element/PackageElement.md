Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface PackageElement

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`, `QualifiedNameable`

---

public interface PackageElement
extends [Element](Element.md "interface in javax.lang.model.element"), [QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element")

Represents a package program element. Provides access to information
about the package and its members.

Since:
:   1.6

See Also:
:   * [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `asType()`

  Returns a [pseudo-type](../type/NoType.md "interface in javax.lang.model.type")
  for this package.

  `List<? extends Element>`

  `getEnclosedElements()`

  Returns the [top-level](NestingKind.md#TOP_LEVEL)
  classes and interfaces within this package.

  `Element`

  `getEnclosingElement()`

  Returns the enclosing module if such a module exists; otherwise
  `null`.

  `Name`

  `getQualifiedName()`

  Returns the fully qualified name of this package.

  `Name`

  `getSimpleName()`

  Returns the simple name of this package.

  `boolean`

  `isUnnamed()`

  Returns `true` if this is an unnamed package and `false` otherwise.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, getModifiers, hashCode`

* ## Method Details

  + ### asType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") asType()

    Returns a [pseudo-type](../type/NoType.md "interface in javax.lang.model.type")
    for this package.

    Specified by:
    :   `asType` in interface `Element`

    Returns:
    :   a [pseudo-type](../type/NoType.md "interface in javax.lang.model.type")
        for this package

    See Also:
    :   - [`NoType`](../type/NoType.md "interface in javax.lang.model.type")
        - [`TypeKind.PACKAGE`](../type/TypeKind.md#PACKAGE)
  + ### getQualifiedName

    [Name](Name.md "interface in javax.lang.model.element") getQualifiedName()

    Returns the fully qualified name of this package. This is also
    known as the package's *canonical* name. For an
    [unnamed package](#isUnnamed()), an [empty name](Name.md#empty_name) is returned.

    Specified by:
    :   `getQualifiedName` in interface `QualifiedNameable`

    Returns:
    :   the fully qualified name of this package, or an
        empty name if this is an unnamed package
  + ### getSimpleName

    [Name](Name.md "interface in javax.lang.model.element") getSimpleName()

    Returns the simple name of this package. For an [unnamed package](#isUnnamed()), an [empty name](Name.md#empty_name) is returned.

    Specified by:
    :   `getSimpleName` in interface `Element`

    Returns:
    :   the simple name of this package or an empty name if
        this is an unnamed package

    See Also:
    :   - [`getSimpleName()`](#getSimpleName())
        - [`ExecutableElement.getSimpleName()`](ExecutableElement.md#getSimpleName())
        - [`TypeElement.getSimpleName()`](TypeElement.md#getSimpleName())
        - [`VariableElement.getSimpleName()`](VariableElement.md#getSimpleName())
        - [`ModuleElement.getSimpleName()`](ModuleElement.md#getSimpleName())
        - [`RecordComponentElement.getSimpleName()`](RecordComponentElement.md#getSimpleName())
  + ### getEnclosedElements

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Element](Element.md "interface in javax.lang.model.element")> getEnclosedElements()

    Returns the [top-level](NestingKind.md#TOP_LEVEL)
    classes and interfaces within this package. Note that
    subpackages are *not* considered to be enclosed by a
    package.

    Specified by:
    :   `getEnclosedElements` in interface `Element`

    Returns:
    :   the [top-level](NestingKind.md#TOP_LEVEL)
        classes and interfaces within this package

    See Also:
    :   - [`TypeElement.getEnclosedElements()`](TypeElement.md#getEnclosedElements())
        - [`getEnclosedElements()`](#getEnclosedElements())
        - [`ModuleElement.getEnclosedElements()`](ModuleElement.md#getEnclosedElements())
        - [`Elements.getAllMembers(javax.lang.model.element.TypeElement)`](../util/Elements.md#getAllMembers(javax.lang.model.element.TypeElement))
  + ### isUnnamed

    boolean isUnnamed()

    Returns `true` if this is an unnamed package and `false` otherwise.

    Returns:
    :   `true` if this is an unnamed package and `false` otherwise
  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns the enclosing module if such a module exists; otherwise
    `null`.
    One situation where a module does not exist for a package is if
    the environment does not include modules, such as an annotation
    processing environment configured for a [source version](../../../annotation/processing/ProcessingEnvironment.md#getSourceVersion()) without modules.

    Specified by:
    :   `getEnclosingElement` in interface `Element`

    Returns:
    :   the enclosing module if such a module exists; otherwise
        `null`

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))