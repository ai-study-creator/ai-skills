Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface ExecutableType

All Superinterfaces:
:   `AnnotatedConstruct`, `TypeMirror`

---

public interface ExecutableType
extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

Represents the type of an executable. An *executable*
is a method, constructor, or initializer.

The executable is
represented as when viewed as a method (or constructor or
initializer) of some reference type.
If that reference type is parameterized, then its actual
type arguments are substituted into any types returned by the methods of
this interface.

Since:
:   1.6

See Also:
:   * [`ExecutableElement`](../element/ExecutableElement.md "interface in javax.lang.model.element")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `List<? extends TypeMirror>`

  `getParameterTypes()`

  Returns the types of this executable's formal parameters.

  `TypeMirror`

  `getReceiverType()`

  Returns the receiver type of this executable,
  or [`NoType`](NoType.md "interface in javax.lang.model.type") with
  kind [`NONE`](TypeKind.md#NONE)
  if the executable has no receiver type.

  `TypeMirror`

  `getReturnType()`

  Returns the return type of this executable.

  `List<? extends TypeMirror>`

  `getThrownTypes()`

  Returns the exceptions and other throwables listed in this
  executable's `throws` clause.

  `List<? extends TypeVariable>`

  `getTypeVariables()`

  Returns the type variables declared by the formal type parameters
  of this executable.

  ### Methods inherited from interface javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")

  `accept, equals, getAnnotation, getAnnotationMirrors, getAnnotationsByType, getKind, hashCode, toString`

* ## Method Details

  + ### getTypeVariables

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeVariable](TypeVariable.md "interface in javax.lang.model.type")> getTypeVariables()

    Returns the type variables declared by the formal type parameters
    of this executable.

    Returns:
    :   the type variables declared by the formal type parameters,
        or an empty list if there are none
  + ### getReturnType

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getReturnType()

    Returns the return type of this executable.
    Returns a [`NoType`](NoType.md "interface in javax.lang.model.type") with kind [`VOID`](TypeKind.md#VOID)
    if this executable is not a method, or is a method that does not
    return a value.

    Returns:
    :   the return type of this executable
  + ### getParameterTypes

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")> getParameterTypes()

    Returns the types of this executable's formal parameters.

    Returns:
    :   the types of this executable's formal parameters,
        or an empty list if there are none
  + ### getReceiverType

    [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getReceiverType()

    Returns the receiver type of this executable,
    or [`NoType`](NoType.md "interface in javax.lang.model.type") with
    kind [`NONE`](TypeKind.md#NONE)
    if the executable has no receiver type.
    An executable which is an instance method, or a constructor of an
    inner class, has a receiver type derived from the [declaring type](../element/ExecutableElement.md#getEnclosingElement()).
    An executable which is a static method, or a constructor of a
    non-inner class, or an initializer (static or instance), has no
    receiver type.

    Returns:
    :   the receiver type of this executable

    Since:
    :   1.8
  + ### getThrownTypes

    [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")> getThrownTypes()

    Returns the exceptions and other throwables listed in this
    executable's `throws` clause.

    Returns:
    :   the exceptions and other throwables listed in this
        executable's `throws` clause,
        or an empty list if there are none.