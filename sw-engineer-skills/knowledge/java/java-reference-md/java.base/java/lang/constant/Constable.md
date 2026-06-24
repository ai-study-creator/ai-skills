Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface Constable

---

public interface Constable

Represents a type which is *constable*. A constable type is one whose
values are constants that can be represented in the constant pool of a Java
classfile as described in JVMS , and whose instances can describe themselves
nominally as a [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant").

Some constable types have a native representation in the constant pool:
[`String`](../String.md "class in java.lang"), [`Integer`](../Integer.md "class in java.lang"), [`Long`](../Long.md "class in java.lang"), [`Float`](../Float.md "class in java.lang"),
[`Double`](../Double.md "class in java.lang"), [`Class`](../Class.md "class in java.lang"), [`MethodType`](../invoke/MethodType.md "class in java.lang.invoke"), and [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke").
The types [`String`](../String.md "class in java.lang"), [`Integer`](../Integer.md "class in java.lang"), [`Long`](../Long.md "class in java.lang"), [`Float`](../Float.md "class in java.lang"),
and [`Double`](../Double.md "class in java.lang") serve as their own nominal descriptors; [`Class`](../Class.md "class in java.lang"),
[`MethodType`](../invoke/MethodType.md "class in java.lang.invoke"), and [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke") have corresponding nominal
descriptors [`ClassDesc`](ClassDesc.md "interface in java.lang.constant"), [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant"), and [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant").

Other reference types can be constable if their instances can describe
themselves in nominal form as a [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant"). Examples in the Java SE
Platform API are types that support Java language features such as [`Enum`](../Enum.md "class in java.lang"),
and runtime support classes such as [`VarHandle`](../invoke/VarHandle.md "class in java.lang.invoke"). These are typically
described with a [`DynamicConstantDesc`](DynamicConstantDesc.md "class in java.lang.constant"), which describes dynamically
generated constants (JVMS ).

The nominal form of an instance of a constable type is obtained via
[`describeConstable()`](#describeConstable()). A [Constable](Constable.md "interface in java.lang.constant") need
not be able to (or may choose not to) describe all its instances in the form of
a [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant"); this method returns an [`Optional`](../../util/Optional.md "class in java.util") that can be
empty to indicate that a nominal descriptor could not be created for an instance.
(For example, [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke") will produce nominal descriptors for direct
method handles, but not necessarily those produced by method handle
combinators.)

Since:
:   12

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Optional<? extends ConstantDesc>`

  `describeConstable()`

  Returns an [`Optional`](../../util/Optional.md "class in java.util") containing the nominal descriptor for this
  instance, if one can be constructed, or an empty [`Optional`](../../util/Optional.md "class in java.util")
  if one cannot be constructed.

* ## Method Details

  + ### describeConstable

    [Optional](../../util/Optional.md "class in java.util")<? extends [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")> describeConstable()

    Returns an [`Optional`](../../util/Optional.md "class in java.util") containing the nominal descriptor for this
    instance, if one can be constructed, or an empty [`Optional`](../../util/Optional.md "class in java.util")
    if one cannot be constructed.

    Returns:
    :   An [`Optional`](../../util/Optional.md "class in java.util") containing the resulting nominal descriptor,
        or an empty [`Optional`](../../util/Optional.md "class in java.util") if one cannot be constructed.