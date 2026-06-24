Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface ConstantDesc

All Known Subinterfaces:
:   `ClassDesc`, `DirectMethodHandleDesc`, `MethodHandleDesc`, `MethodTypeDesc`

---

public sealed interface ConstantDesc
permits [ClassDesc](ClassDesc.md "interface in java.lang.constant"), [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant"), [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant"), [Double](../Double.md "class in java.lang"), [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<T>, [Float](../Float.md "class in java.lang"), [Integer](../Integer.md "class in java.lang"), [Long](../Long.md "class in java.lang"), [String](../String.md "class in java.lang")

A [nominal descriptor](package-summary.md#nominal) for a loadable
constant value, as defined in JVMS . Such a descriptor can be resolved via
[`resolveConstantDesc(MethodHandles.Lookup)`](#resolveConstantDesc(java.lang.invoke.MethodHandles.Lookup)) to yield the
constant value itself.

Class names in a nominal descriptor, like class names in the constant pool
of a classfile, must be interpreted with respect to a particular class
loader, which is not part of the nominal descriptor.

Static constants that are expressible natively in the constant pool ([`String`](../String.md "class in java.lang"),
[`Integer`](../Integer.md "class in java.lang"), [`Long`](../Long.md "class in java.lang"), [`Float`](../Float.md "class in java.lang"), and [`Double`](../Double.md "class in java.lang")) implement
[`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant"), and serve as nominal descriptors for themselves.
Native linkable constants ([`Class`](../Class.md "class in java.lang"), [`MethodType`](../invoke/MethodType.md "class in java.lang.invoke"), and
[`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke")) have counterpart [ConstantDesc](ConstantDesc.md "interface in java.lang.constant") types:
[`ClassDesc`](ClassDesc.md "interface in java.lang.constant"), [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant"), and [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant").
Other constants are represented by subtypes of [`DynamicConstantDesc`](DynamicConstantDesc.md "class in java.lang.constant").

APIs that perform generation or parsing of bytecode are encouraged to use
[ConstantDesc](ConstantDesc.md "interface in java.lang.constant") to describe the operand of an `ldc` instruction
(including dynamic constants), the static bootstrap arguments of
dynamic constants and `invokedynamic` instructions, and other
bytecodes or classfile structures that make use of the constant pool.

Constants describing various common constants (such as [`ClassDesc`](ClassDesc.md "interface in java.lang.constant")
instances for platform types) can be found in [`ConstantDescs`](ConstantDescs.md "class in java.lang.constant").

Implementations of [ConstantDesc](ConstantDesc.md "interface in java.lang.constant") should be immutable
and their behavior should not rely on object identity.

Non-platform classes should not implement [ConstantDesc](ConstantDesc.md "interface in java.lang.constant") directly.
Instead, they should extend [`DynamicConstantDesc`](DynamicConstantDesc.md "class in java.lang.constant") (as [`Enum.EnumDesc`](../Enum.EnumDesc.md "class in java.lang")
and [`VarHandle.VarHandleDesc`](../invoke/VarHandle.VarHandleDesc.md "class in java.lang.invoke") do.)

Nominal descriptors should be compared using the
[`Object.equals(Object)`](../Object.md#equals(java.lang.Object)) method. There is no guarantee that any
particular entity will always be represented by the same descriptor instance.

Since:
:   12

See Also:
:   * [`Constable`](Constable.md "interface in java.lang.constant")
    * [`ConstantDescs`](ConstantDescs.md "class in java.lang.constant")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this descriptor reflectively, emulating the resolution behavior
  of JVMS and the access control behavior of JVMS .

* ## Method Details

  + ### resolveConstantDesc

    [Object](../Object.md "class in java.lang") resolveConstantDesc([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
    throws [ReflectiveOperationException](../ReflectiveOperationException.md "class in java.lang")

    Resolves this descriptor reflectively, emulating the resolution behavior
    of JVMS and the access control behavior of JVMS . The resolution
    and access control context is provided by the [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke")
    parameter. No caching of the resulting value is performed.

    Parameters:
    :   `lookup` - The [`MethodHandles.Lookup`](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") to provide name resolution
        and access control context

    Returns:
    :   the resolved constant value

    Throws:
    :   `ReflectiveOperationException` - if a class, method, or field
        could not be reflectively resolved in the course of resolution
    :   `LinkageError` - if a linkage error occurs