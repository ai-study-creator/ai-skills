Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface VariableElement

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`

---

public interface VariableElement
extends [Element](Element.md "interface in javax.lang.model.element")

Represents a field, `enum` constant, method or constructor
parameter, local variable, resource variable, or exception
parameter.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `asType()`

  Returns the type of this variable.

  `Object`

  `getConstantValue()`

  Returns the value of this variable if this is a `final`
  field initialized to a compile-time constant.

  `Element`

  `getEnclosingElement()`

  Returns the enclosing element of this variable.

  `Name`

  `getSimpleName()`

  Returns the simple name of this variable element.

  `default boolean`

  `isUnnamed()`

  Preview.

  Returns `true` if this is an unnamed variable and `false` otherwise.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getEnclosedElements, getKind, getModifiers, hashCode`

* ## Method Details

  + ### asType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") asType()

    Returns the type of this variable.
    Note that the types of variables range over [many kinds](../type/TypeKind.md "enum class in javax.lang.model.type") of types, including primitive types,
    declared types, and array types, among others.

    Specified by:
    :   `asType` in interface `Element`

    Returns:
    :   the type of this variable

    See Also:
    :   - [`TypeKind`](../type/TypeKind.md "enum class in javax.lang.model.type")
  + ### getConstantValue

    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getConstantValue()

    Returns the value of this variable if this is a `final`
    field initialized to a compile-time constant. Returns `null` otherwise. The value will be of a primitive type or a
    `String`. If the value is of a primitive type, it is
    wrapped in the appropriate wrapper class (such as [`Integer`](../../../../../java.base/java/lang/Integer.md "class in java.lang")).

    Note that not all `final` fields will have
    constant values. In particular, `enum` constants are
    *not* considered to be compile-time constants. To have a
    constant value, a field's type must be either a primitive type
    or `String`.

    Returns:
    :   the value of this variable if this is a `final`
        field initialized to a compile-time constant, or `null`
        otherwise

    See Also:
    :   - [`Elements.getConstantExpression(Object)`](../util/Elements.md#getConstantExpression(java.lang.Object))
  + ### getSimpleName

    [Name](Name.md "interface in javax.lang.model.element") getSimpleName()

    Returns the simple name of this variable element.

    For method and constructor parameters, the name of each
    parameter must be distinct from the names of all other
    parameters of the same executable. If the original source
    names are not available, an implementation may synthesize names
    subject to the distinctness requirement above.

    For variables, the name of each variable is returned, or an empty name
    if the variable is unnamed.

    Specified by:
    :   `getSimpleName` in interface `Element`

    Returns:
    :   the simple name of this variable element

    See Also:
    :   - [`PackageElement.getSimpleName()`](PackageElement.md#getSimpleName())
        - [`ExecutableElement.getSimpleName()`](ExecutableElement.md#getSimpleName())
        - [`TypeElement.getSimpleName()`](TypeElement.md#getSimpleName())
        - [`getSimpleName()`](#getSimpleName())
        - [`ModuleElement.getSimpleName()`](ModuleElement.md#getSimpleName())
        - [`RecordComponentElement.getSimpleName()`](RecordComponentElement.md#getSimpleName())
  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns the enclosing element of this variable.
    The enclosing element of a method or constructor parameter is
    the executable declaring the parameter.

    Specified by:
    :   `getEnclosingElement` in interface `Element`

    Returns:
    :   the enclosing element of this variable

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))
  + ### isUnnamed

    default boolean isUnnamed()

    `isUnnamed` is a reflective preview API of the Java platform.

    Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

    Returns `true` if this is an unnamed variable and `false` otherwise.

    Returns:
    :   `true` if this is an unnamed variable and `false` otherwise

    Since:
    :   21