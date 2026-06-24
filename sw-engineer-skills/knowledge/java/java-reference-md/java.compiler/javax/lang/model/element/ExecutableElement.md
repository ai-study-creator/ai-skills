Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ExecutableElement

All Superinterfaces:
:   `AnnotatedConstruct`, `Element`, `Parameterizable`

---

public interface ExecutableElement
extends [Element](Element.md "interface in javax.lang.model.element"), [Parameterizable](Parameterizable.md "interface in javax.lang.model.element")

Represents a method, constructor, or initializer (static or
instance) of a class or interface, including annotation interface
elements.
Annotation interface elements are methods restricted to have no
formal parameters, no type parameters, and no `throws`
clause, among other restrictions; see JLS for details

Since:
:   1.6

See Also:
:   * [`ExecutableType`](../type/ExecutableType.md "interface in javax.lang.model.type")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `asType()`

  Returns the [executable type](../type/ExecutableType.md "interface in javax.lang.model.type") defined
  by this executable element.

  `AnnotationValue`

  `getDefaultValue()`

  Returns the default value if this executable is an annotation
  interface element.

  `Element`

  `getEnclosingElement()`

  Returns the class or interface defining the executable.

  `List<? extends VariableElement>`

  `getParameters()`

  Returns the formal parameters of this executable.

  `TypeMirror`

  `getReceiverType()`

  Returns the receiver type of this executable,
  or [`NoType`](../type/NoType.md "interface in javax.lang.model.type") with
  kind [`NONE`](../type/TypeKind.md#NONE)
  if the executable has no receiver type.

  `TypeMirror`

  `getReturnType()`

  Returns the return type of this executable.

  `Name`

  `getSimpleName()`

  Returns the simple name of a constructor, method, or
  initializer.

  `List<? extends TypeMirror>`

  `getThrownTypes()`

  Returns the exceptions and other throwables listed in this
  method or constructor's `throws` clause in declaration
  order.

  `List<? extends TypeParameterElement>`

  `getTypeParameters()`

  Returns the formal type parameters of this executable
  in declaration order.

  `boolean`

  `isDefault()`

  Returns `true` if this method is a default method and
  returns `false` otherwise.

  `boolean`

  `isVarArgs()`

  Returns `true` if this method or constructor accepts a variable
  number of arguments and returns `false` otherwise.

  ### Methods inherited from interface javax.lang.model.element.[Element](Element.md "interface in javax.lang.model.element")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getEnclosedElements, getKind, getModifiers, hashCode`

* ## Method Details

  + ### asType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") asType()

    Returns the [executable type](../type/ExecutableType.md "interface in javax.lang.model.type") defined
    by this executable element.

    Specified by:
    :   `asType` in interface `Element`

    Returns:
    :   the [executable type](../type/ExecutableType.md "interface in javax.lang.model.type") defined
        by this executable element

    See Also:
    :   - [`ExecutableType`](../type/ExecutableType.md "interface in javax.lang.model.type")
  + ### getTypeParameters

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeParameterElement](TypeParameterElement.md "interface in javax.lang.model.element")> getTypeParameters()

    Returns the formal type parameters of this executable
    in declaration order.

    Specified by:
    :   `getTypeParameters` in interface `Parameterizable`

    Returns:
    :   the formal type parameters, or an empty list
        if there are none
  + ### getReturnType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") getReturnType()

    Returns the return type of this executable.
    Returns a [`NoType`](../type/NoType.md "interface in javax.lang.model.type") with kind [`VOID`](../type/TypeKind.md#VOID)
    if this executable is not a method, or is a method that does not
    return a value.

    Returns:
    :   the return type of this executable
  + ### getParameters

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [VariableElement](VariableElement.md "interface in javax.lang.model.element")> getParameters()

    Returns the formal parameters of this executable.
    They are returned in declaration order.

    Returns:
    :   the formal parameters,
        or an empty list if there are none
  + ### getReceiverType

    [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") getReceiverType()

    Returns the receiver type of this executable,
    or [`NoType`](../type/NoType.md "interface in javax.lang.model.type") with
    kind [`NONE`](../type/TypeKind.md#NONE)
    if the executable has no receiver type.
    An executable which is an instance method, or a constructor of an
    inner class, has a receiver type derived from the [declaring type](#getEnclosingElement()).
    An executable which is a static method, or a constructor of a
    non-inner class, or an initializer (static or instance), has no
    receiver type.

    Returns:
    :   the receiver type of this executable

    Since:
    :   1.8
  + ### isVarArgs

    boolean isVarArgs()

    Returns `true` if this method or constructor accepts a variable
    number of arguments and returns `false` otherwise.

    Returns:
    :   `true` if this method or constructor accepts a variable
        number of arguments and returns `false` otherwise
  + ### isDefault

    boolean isDefault()

    Returns `true` if this method is a default method and
    returns `false` otherwise.

    Returns:
    :   `true` if this method is a default method and
        returns `false` otherwise

    Since:
    :   1.8
  + ### getThrownTypes

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type")> getThrownTypes()

    Returns the exceptions and other throwables listed in this
    method or constructor's `throws` clause in declaration
    order.

    Returns:
    :   the exceptions and other throwables listed in the
        `throws` clause, or an empty list if there are none
  + ### getDefaultValue

    [AnnotationValue](AnnotationValue.md "interface in javax.lang.model.element") getDefaultValue()

    Returns the default value if this executable is an annotation
    interface element. Returns `null` if this method is not
    an annotation interface element, or if it is an annotation
    interface element with no default value.

    Returns:
    :   the default value, or `null` if none
  + ### getEnclosingElement

    [Element](Element.md "interface in javax.lang.model.element") getEnclosingElement()

    Returns the class or interface defining the executable.

    Specified by:
    :   `getEnclosingElement` in interface `Element`

    Returns:
    :   the class or interface defining the executable

    See Also:
    :   - [`Elements.getPackageOf(javax.lang.model.element.Element)`](../util/Elements.md#getPackageOf(javax.lang.model.element.Element))
  + ### getSimpleName

    [Name](Name.md "interface in javax.lang.model.element") getSimpleName()

    Returns the simple name of a constructor, method, or
    initializer. For a constructor, the name `"<init>"` is
    returned, for a static initializer, the name `"<clinit>"`
    is returned, and for an anonymous class or instance
    initializer, an [empty name](Name.md#empty_name) is
    returned.

    Specified by:
    :   `getSimpleName` in interface `Element`

    Returns:
    :   the simple name of a constructor, method, or
        initializer

    See Also:
    :   - [`PackageElement.getSimpleName()`](PackageElement.md#getSimpleName())
        - [`getSimpleName()`](#getSimpleName())
        - [`TypeElement.getSimpleName()`](TypeElement.md#getSimpleName())
        - [`VariableElement.getSimpleName()`](VariableElement.md#getSimpleName())
        - [`ModuleElement.getSimpleName()`](ModuleElement.md#getSimpleName())
        - [`RecordComponentElement.getSimpleName()`](RecordComponentElement.md#getSimpleName())