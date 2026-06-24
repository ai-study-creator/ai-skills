Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface RecordComponentElement

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`

---

public interface RecordComponentElement
extends [Element](Element.md "interface in javax.lang.model.element")

Represents a record component.

Since:
:   16

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ExecutableElement`

  `getAccessor()`

  Returns the executable element for the accessor associated with the
  given record component.

  `Element`

  `getEnclosingElement()`

  Returns the enclosing element of this record component.

  `Name`

  `getSimpleName()`

  Returns the simple name of this record component.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, asType, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getEnclosedElements, getKind, getModifiers, hashCode`

* ## Method Details

  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns the enclosing element of this record component.
    The enclosing element of a record component is the record class
    declaring the record component.

    Specified by:
    :   `getEnclosingElement` in interface `Element`

    Returns:
    :   the enclosing element of this record component

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))
  + ### getSimpleName

    [Name](Name.md "interface in javax.lang.model.element") getSimpleName()

    Returns the simple name of this record component.

    The name of each record component must be distinct from the
    names of all other record components of the same record.

    Specified by:
    :   `getSimpleName` in interface `Element`

    Returns:
    :   the simple name of this record component

    See Also:
    :   - [`PackageElement.getSimpleName()`](PackageElement.md#getSimpleName())
        - [`ExecutableElement.getSimpleName()`](ExecutableElement.md#getSimpleName())
        - [`TypeElement.getSimpleName()`](TypeElement.md#getSimpleName())
        - [`VariableElement.getSimpleName()`](VariableElement.md#getSimpleName())
        - [`ModuleElement.getSimpleName()`](ModuleElement.md#getSimpleName())
        - [`getSimpleName()`](#getSimpleName())
  + ### getAccessor

    [ExecutableElement](ExecutableElement.md "interface in javax.lang.model.element") getAccessor()

    Returns the executable element for the accessor associated with the
    given record component.

    Returns:
    :   the record component accessor.