Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface MethodHandleDesc

All Superinterfaces:
:   `ConstantDesc`

All Known Subinterfaces:
:   `DirectMethodHandleDesc`

---

public sealed interface MethodHandleDesc
extends [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")
permits [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") (not exhaustive)

A [nominal descriptor](package-summary.md#nominal) for a
[`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke") constant.

Since:
:   12

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default MethodHandleDesc`

  `asType(MethodTypeDesc type)`

  Returns a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") that describes this method handle
  adapted to a different type, as if by [`MethodHandle.asType(MethodType)`](../invoke/MethodHandle.md#asType(java.lang.invoke.MethodType)).

  `boolean`

  `equals(Object o)`

  Compares the specified object with this descriptor for equality.

  `MethodTypeDesc`

  `invocationType()`

  Returns a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the invocation type of the
  method handle described by this nominal descriptor.

  `static DirectMethodHandleDesc`

  `of(DirectMethodHandleDesc.Kind kind,
  ClassDesc owner,
  String name,
  String lookupDescriptor)`

  Creates a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to an invocation of a
  declared method, invocation of a constructor, or access to a field.

  `static DirectMethodHandleDesc`

  `ofConstructor(ClassDesc owner,
  ClassDesc... paramTypes)`

  Returns a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to invocation of a constructor

  `static DirectMethodHandleDesc`

  `ofField(DirectMethodHandleDesc.Kind kind,
  ClassDesc owner,
  String fieldName,
  ClassDesc fieldType)`

  Creates a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to a method handle
  that accesses a field.

  `static DirectMethodHandleDesc`

  `ofMethod(DirectMethodHandleDesc.Kind kind,
  ClassDesc owner,
  String name,
  MethodTypeDesc lookupMethodType)`

  Creates a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to an invocation of a
  declared method or constructor.

  `MethodHandle`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this descriptor reflectively, emulating the resolution behavior
  of JVMS and the access control behavior of JVMS .

* ## Method Details

  + ### of

    static [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") of([DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") kind,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") owner,
    [String](../String.md "class in java.lang") name,
    [String](../String.md "class in java.lang") lookupDescriptor)

    Creates a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to an invocation of a
    declared method, invocation of a constructor, or access to a field.

    The lookup descriptor string has the same format as for the various
    variants of `CONSTANT_MethodHandle_info` and for the lookup
    methods on [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke"). For a method or constructor
    invocation, it is interpreted as a method type descriptor; for field
    access, it is interpreted as a field descriptor. If `kind` is
    `CONSTRUCTOR`, the `name` parameter is ignored and the return
    type of the lookup descriptor must be `void`. If `kind`
    corresponds to a virtual method invocation, the lookup type includes the
    method parameters but not the receiver type.

    Parameters:
    :   `kind` - The kind of method handle to be described
    :   `owner` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the class containing the
        method, constructor, or field
    :   `name` - the unqualified name of the method or field (ignored if
        `kind` is `CONSTRUCTOR`)
    :   `lookupDescriptor` - a method descriptor string the lookup type,
        if the request is for a method invocation, or
        describing the invocation type, if the request is
        for a field or constructor

    Returns:
    :   the [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")

    Throws:
    :   `NullPointerException` - if any of the non-ignored arguments are null
    :   `IllegalArgumentException` - if the descriptor string is not a valid
        method or field descriptor
  + ### ofMethod

    static [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") ofMethod([DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") kind,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") owner,
    [String](../String.md "class in java.lang") name,
    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") lookupMethodType)

    Creates a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to an invocation of a
    declared method or constructor.

    The lookup descriptor string has the same format as for the lookup
    methods on [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke"). If `kind` is
    `CONSTRUCTOR`, the name is ignored and the return type of the lookup
    type must be `void`. If `kind` corresponds to a virtual method
    invocation, the lookup type includes the method parameters but not the
    receiver type.

    Parameters:
    :   `kind` - The kind of method handle to be described; must be one of
        `SPECIAL, VIRTUAL, STATIC, INTERFACE_SPECIAL,
        INTERFACE_VIRTUAL, INTERFACE_STATIC, CONSTRUCTOR`
    :   `owner` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the class containing the
        method or constructor
    :   `name` - the unqualified name of the method (ignored if `kind`
        is `CONSTRUCTOR`)
    :   `lookupMethodType` - a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the lookup type

    Returns:
    :   the [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")

    Throws:
    :   `NullPointerException` - if any non-ignored arguments are null
    :   `IllegalArgumentException` - if the `name` has the incorrect
        format, or the kind is invalid
  + ### ofField

    static [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") ofField([DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") kind,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") owner,
    [String](../String.md "class in java.lang") fieldName,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") fieldType)

    Creates a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to a method handle
    that accesses a field.

    Parameters:
    :   `kind` - the kind of the method handle to be described; must be one of `GETTER`,
        `SETTER`, `STATIC_GETTER`, or `STATIC_SETTER`
    :   `owner` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the class containing the field
    :   `fieldName` - the unqualified name of the field
    :   `fieldType` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the type of the field

    Returns:
    :   the [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")

    Throws:
    :   `NullPointerException` - if any of the arguments are null
    :   `IllegalArgumentException` - if the `kind` is not one of the
        valid values or if the field name is not valid
  + ### ofConstructor

    static [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") ofConstructor([ClassDesc](ClassDesc.md "interface in java.lang.constant") owner,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant")... paramTypes)

    Returns a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") corresponding to invocation of a constructor

    Parameters:
    :   `owner` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the class containing the
        constructor
    :   `paramTypes` - [`ClassDesc`](ClassDesc.md "interface in java.lang.constant")s describing the parameter types of
        the constructor

    Returns:
    :   the [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")

    Throws:
    :   `NullPointerException` - if any argument or its contents is `null`
  + ### asType

    default [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") asType([MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") type)

    Returns a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") that describes this method handle
    adapted to a different type, as if by [`MethodHandle.asType(MethodType)`](../invoke/MethodHandle.md#asType(java.lang.invoke.MethodType)).

    Parameters:
    :   `type` - a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") describing the new method type

    Returns:
    :   a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") for the adapted method handle

    Throws:
    :   `NullPointerException` - if the argument is `null`
  + ### invocationType

    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") invocationType()

    Returns a [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant") describing the invocation type of the
    method handle described by this nominal descriptor. The invocation type
    describes the full set of stack values that are consumed by the invocation
    (including the receiver, if any).

    Returns:
    :   a [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant") describing the method handle type
  + ### resolveConstantDesc

    [MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke") resolveConstantDesc([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
    throws [ReflectiveOperationException](../ReflectiveOperationException.md "class in java.lang")

    Description copied from interface: `ConstantDesc`

    Resolves this descriptor reflectively, emulating the resolution behavior
    of JVMS and the access control behavior of JVMS . The resolution
    and access control context is provided by the [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke")
    parameter. No caching of the resulting value is performed.

    Specified by:
    :   `resolveConstantDesc` in interface `ConstantDesc`

    Parameters:
    :   `lookup` - The [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") to provide name resolution
        and access control context

    Returns:
    :   the resolved constant value

    Throws:
    :   `ReflectiveOperationException` - if a class, method, or field
        could not be reflectively resolved in the course of resolution
  + ### equals

    boolean equals([Object](../Object.md "class in java.lang") o)

    Compares the specified object with this descriptor for equality. Returns
    `true` if and only if the specified object is also a
    [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant"), and both encode the same nominal description
    of a method handle.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the other object

    Returns:
    :   whether this descriptor is equal to the other object

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")