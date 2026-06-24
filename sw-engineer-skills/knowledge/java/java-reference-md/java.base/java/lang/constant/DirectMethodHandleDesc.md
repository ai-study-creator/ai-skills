Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface DirectMethodHandleDesc

All Superinterfaces:
:   `ConstantDesc`, `MethodHandleDesc`

---

public sealed interface DirectMethodHandleDesc
extends [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")

A [nominal descriptor](package-summary.md#nominal) for a direct
[`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke"). A [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") corresponds to
a `Constant_MethodHandle_info` entry in the constant pool of a classfile.

Since:
:   12

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static enum`

  `DirectMethodHandleDesc.Kind`

  Kinds of method handles that can be described with [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant").
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isOwnerInterface()`

  Indicates if the method is declared by an interface

  `DirectMethodHandleDesc.Kind`

  `kind()`

  Returns the `kind` of the method handle described by this nominal
  descriptor.

  `String`

  `lookupDescriptor()`

  Returns the lookup descriptor of the method handle described by this descriptor,
  after adjusting for the invocation mode.

  `String`

  `methodName()`

  Returns the name of the method or field described by this nominal descriptor.

  `ClassDesc`

  `owner()`

  Returns a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the class declaring the
  method or field described by this nominal descriptor.

  `int`

  `refKind()`

  Returns the `refKind` of the method handle described by this nominal
  reference, as defined by [`MethodHandleInfo`](../invoke/MethodHandleInfo.md "interface in java.lang.invoke").

  ### Methods inherited from interface java.lang.constant.[MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")

  `asType, equals, invocationType, resolveConstantDesc`

* ## Method Details

  + ### kind

    [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") kind()

    Returns the `kind` of the method handle described by this nominal
    descriptor.

    Returns:
    :   the [`DirectMethodHandleDesc.Kind`](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")
  + ### refKind

    int refKind()

    Returns the `refKind` of the method handle described by this nominal
    reference, as defined by [`MethodHandleInfo`](../invoke/MethodHandleInfo.md "interface in java.lang.invoke").

    Returns:
    :   the reference kind
  + ### isOwnerInterface

    boolean isOwnerInterface()

    Indicates if the method is declared by an interface

    Returns:
    :   true if the method is declared by an interface
  + ### owner

    [ClassDesc](ClassDesc.md "interface in java.lang.constant") owner()

    Returns a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the class declaring the
    method or field described by this nominal descriptor.

    Returns:
    :   the class declaring the method or field
  + ### methodName

    [String](../String.md "class in java.lang") methodName()

    Returns the name of the method or field described by this nominal descriptor.
    For constructors, returns the reserved name ["<init>"](ConstantDescs.md#INIT_NAME).

    Returns:
    :   the name of the method or field
  + ### lookupDescriptor

    [String](../String.md "class in java.lang") lookupDescriptor()

    Returns the lookup descriptor of the method handle described by this descriptor,
    after adjusting for the invocation mode. This will correspond to either
    a method type descriptor string (for methods and constructors), or a field
    descriptor string (for field access method handles). The lookup descriptor
    string is in the same format as accepted by [`MethodHandleDesc.of(Kind, ClassDesc, String, String)`](MethodHandleDesc.md#of(java.lang.constant.DirectMethodHandleDesc.Kind,java.lang.constant.ClassDesc,java.lang.String,java.lang.String)).

    Returns:
    :   the lookup descriptor string