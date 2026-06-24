Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ModuleElement

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`, `QualifiedNameable`

---

public interface ModuleElement
extends [Element](Element.md "interface in javax.lang.model.element"), [QualifiedNameable](QualifiedNameable.md "interface in javax.lang.model.element")

Represents a module program element. Provides access to
information about the module, its directives, and its members.

Since:
:   9

See Also:
:   * [`Elements.getModuleOf(javax.lang.model.element.Element)`](../util/Elements.md#getModuleOf(javax.lang.model.element.Element))

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `ModuleElement.Directive`

  Represents a directive within the declaration of this
  module.

  `static enum`

  `ModuleElement.DirectiveKind`

  The `kind` of a directive.

  `static interface`

  `ModuleElement.DirectiveVisitor<R,P>`

  A visitor of module directives, in the style of the visitor design
  pattern.

  `static interface`

  `ModuleElement.ExportsDirective`

  An exported package of a module.

  `static interface`

  `ModuleElement.OpensDirective`

  An opened package of a module.

  `static interface`

  `ModuleElement.ProvidesDirective`

  An implementation of a service provided by a module.

  `static interface`

  `ModuleElement.RequiresDirective`

  A dependency of a module.

  `static interface`

  `ModuleElement.UsesDirective`

  A reference to a service used by a module.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `asType()`

  Returns a [pseudo-type](../type/NoType.md "interface in javax.lang.model.type")
  for this module.

  `List<? extends ModuleElement.Directive>`

  `getDirectives()`

  Returns the directives contained in the declaration of this module.

  `List<? extends Element>`

  `getEnclosedElements()`

  Returns the packages within this module.

  `Element`

  `getEnclosingElement()`

  Returns `null` since a module is not enclosed by another
  element.

  `Name`

  `getQualifiedName()`

  Returns the fully qualified name of this module.

  `Name`

  `getSimpleName()`

  Returns the simple name of this module.

  `boolean`

  `isOpen()`

  Returns `true` if this is an open module and `false` otherwise.

  `boolean`

  `isUnnamed()`

  Returns `true` if this is an unnamed module and `false` otherwise.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, getModifiers, hashCode`

* ## Method Details

  + ### asType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") asType()

    Returns a [pseudo-type](../type/NoType.md "interface in javax.lang.model.type")
    for this module.

    Specified by:
    :   `asType` in interface `Element`

    Returns:
    :   a [pseudo-type](../type/NoType.md "interface in javax.lang.model.type")
        for this module

    See Also:
    :   - [`NoType`](../type/NoType.md "interface in javax.lang.model.type")
        - [`TypeKind.MODULE`](../type/TypeKind.md#MODULE)
  + ### getQualifiedName

    [Name](Name.md "interface in javax.lang.model.element") getQualifiedName()

    Returns the fully qualified name of this module. For an
    [unnamed module](#isUnnamed()), an [empty name](Name.md#empty_name) is returned.

    Specified by:
    :   `getQualifiedName` in interface `QualifiedNameable`

    Returns:
    :   the fully qualified name of this module, or an
        empty name if this is an unnamed module
  + ### getSimpleName

    [Name](Name.md "interface in javax.lang.model.element") getSimpleName()

    Returns the simple name of this module. For an [unnamed module](#isUnnamed()), an [empty name](Name.md#empty_name) is returned.

    Specified by:
    :   `getSimpleName` in interface `Element`

    Returns:
    :   the simple name of this module or an empty name if
        this is an unnamed module

    See Also:
    :   - [`PackageElement.getSimpleName()`](PackageElement.md#getSimpleName())
        - [`ExecutableElement.getSimpleName()`](ExecutableElement.md#getSimpleName())
        - [`TypeElement.getSimpleName()`](TypeElement.md#getSimpleName())
        - [`VariableElement.getSimpleName()`](VariableElement.md#getSimpleName())
        - [`getSimpleName()`](#getSimpleName())
        - [`RecordComponentElement.getSimpleName()`](RecordComponentElement.md#getSimpleName())
  + ### getEnclosedElements

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [Element](Element.md "interface in javax.lang.model.element")> getEnclosedElements()

    Returns the packages within this module.

    Specified by:
    :   `getEnclosedElements` in interface `Element`

    Returns:
    :   the packages within this module

    See Also:
    :   - [`TypeElement.getEnclosedElements()`](TypeElement.md#getEnclosedElements())
        - [`PackageElement.getEnclosedElements()`](PackageElement.md#getEnclosedElements())
        - [`getEnclosedElements()`](#getEnclosedElements())
        - [`Elements.getAllMembers(javax.lang.model.element.TypeElement)`](../util/Elements.md#getAllMembers(javax.lang.model.element.TypeElement))
  + ### isOpen

    boolean isOpen()

    Returns `true` if this is an open module and `false` otherwise.

    Returns:
    :   `true` if this is an open module and `false` otherwise
  + ### isUnnamed

    boolean isUnnamed()

    Returns `true` if this is an unnamed module and `false` otherwise.

    Returns:
    :   `true` if this is an unnamed module and `false` otherwise
  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns `null` since a module is not enclosed by another
    element.

    Specified by:
    :   `getEnclosingElement` in interface `Element`

    Returns:
    :   `null`

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))
  + ### getDirectives

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [ModuleElement.Directive](ModuleElement.Directive.md "interface in javax.lang.model.element")> getDirectives()

    Returns the directives contained in the declaration of this module.

    Returns:
    :   the directives in the declaration of this module