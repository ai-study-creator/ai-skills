Module [java.base](../../../module-summary.md)

# Package java.lang.constant

---

package java.lang.constant

Classes and interfaces to represent *nominal descriptors* for run-time
entities such as classes or method handles, and classfile entities such as
constant pool entries or `invokedynamic` call sites. These classes
are suitable for use in bytecode reading and writing APIs, `invokedynamic`
bootstraps, bytecode intrinsic APIs, and compile-time or link-time program
analysis tools.

Every API that reads and writes bytecode instructions needs to model the
operands to these instructions and other classfile structures (such as entries
in the bootstrap methods table or stack maps, which frequently reference
entries in the classfile constant pool.) Such entries can denote values of
fundamental types, such as strings or integers; parts of a program, such as
classes or method handles; or values of arbitrary user-defined types. The
[`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant") hierarchy provides a representation of
constant pool entries in nominal form that is convenient for APIs to model
operands of bytecode instructions.

## Nominal Descriptors

A [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant") is a description of a constant
value. Such a description is the *nominal form* of the constant value;
it is not the value itself, but rather a "recipe" for describing the value,
storing the value in a constant pool entry, or reconstituting the value given
a class loading context. Every [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")
knows how to *resolve* itself -- compute the value that it describes --
via [`ConstantDesc.resolveConstantDesc`](ConstantDesc.md#resolveConstantDesc(java.lang.invoke.MethodHandles.Lookup)).
This allows an API which accepts [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")
objects to evaluate them reflectively, provided that the classes and methods
referenced in their nominal description are present and accessible.

The subtypes of [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant") describe various kinds
of constant values. For each type of loadable constant pool entry defined in JVMS ,
there is a corresponding subtype of [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant"):
[`ClassDesc`](ClassDesc.md "interface in java.lang.constant"), [`MethodTypeDesc`](MethodTypeDesc.md "interface in java.lang.constant"),
[`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant"), [`String`](../String.md "class in java.lang"),
[`Integer`](../Integer.md "class in java.lang"), [`Long`](../Long.md "class in java.lang"), [`Float`](../Float.md "class in java.lang"),
[`Double`](../Double.md "class in java.lang"), and [`DynamicConstantDesc`](DynamicConstantDesc.md "class in java.lang.constant"). These classes
provide type-specific accessor methods to extract the nominal information for
that kind of constant. When a bytecode-writing API encounters a [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant"),
it should examine it to see which of these types it is, cast it, extract
its nominal information, and generate the corresponding entry to the constant pool.
When a bytecode-reading API encounters a constant pool entry, it can
convert it to the appropriate type of nominal descriptor. For dynamic
constants, bytecode-reading APIs may wish to use the factory
[`DynamicConstantDesc.ofCanonical`](DynamicConstantDesc.md#ofCanonical(java.lang.constant.DirectMethodHandleDesc,java.lang.String,java.lang.constant.ClassDesc,java.lang.constant.ConstantDesc%5B%5D)),
which will inspect the bootstrap and, for well-known bootstraps, return
a more specific subtype of [`DynamicConstantDesc`](DynamicConstantDesc.md "class in java.lang.constant"), such as
[`Enum.EnumDesc`](../Enum.EnumDesc.md "class in java.lang").

Another way to obtain the nominal description of a value is to ask the value
itself. A [`Constable`](Constable.md "interface in java.lang.constant") is a type whose values
can describe themselves in nominal form as a [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant").
Fundamental types such as [`String`](../String.md "class in java.lang") and [`Class`](../Class.md "class in java.lang")
implement [`Constable`](Constable.md "interface in java.lang.constant"), as can user-defined
classes. Entities that generate classfiles (such as compilers) can introspect
over constable objects to obtain a more efficient way to represent their values
in classfiles.

This package also includes [`DynamicCallSiteDesc`](DynamicCallSiteDesc.md "class in java.lang.constant"),
which represents a (non-loadable) `Constant_InvokeDynamic_info` constant
pool entry. It describes the bootstrap method, invocation name and type,
and bootstrap arguments associated with an `invokedynamic` instruction.
It is also suitable for describing `invokedynamic` call sites in bytecode
reading and writing APIs.

Other members of this package are [`ModuleDesc`](ModuleDesc.md "interface in java.lang.constant")
and [`PackageDesc`](PackageDesc.md "interface in java.lang.constant"). They represent module and package
info structures, suitable for describing modules and their content in bytecode
reading and writing APIs.

Since:
:   12

* Related Packages

  Package

  Description

  [java.lang](../package-summary.md)

  Provides classes that are fundamental to the design of the Java
  programming language.
* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [ClassDesc](ClassDesc.md "interface in java.lang.constant")

  A [nominal descriptor](package-summary.md#nominal) for a
  [`Class`](../Class.md "class in java.lang") constant.

  [Constable](Constable.md "interface in java.lang.constant")

  Represents a type which is *constable*.

  [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")

  A [nominal descriptor](package-summary.md#nominal) for a loadable
  constant value, as defined in JVMS .

  [ConstantDescs](ConstantDescs.md "class in java.lang.constant")

  Predefined values of [nominal descriptor](package-summary.md#nominal)
  for common constants, including descriptors for primitive class types and
  other common platform types, and descriptors for method handles for standard
  bootstrap methods.

  [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant")

  A [nominal descriptor](package-summary.md#nominal) for a direct
  [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke").

  [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")

  Kinds of method handles that can be described with [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant").

  [DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant")

  A [nominal descriptor](package-summary.md#nominal) for an
  `invokedynamic` call site.

  [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<T>

  A [nominal descriptor](package-summary.md#nominal) for a
  dynamic constant (one described in the constant pool with
  `Constant_Dynamic_info`.)

  [MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")

  A [nominal descriptor](package-summary.md#nominal) for a
  [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke") constant.

  [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant")

  A [nominal descriptor](package-summary.md#nominal) for a
  [MethodType](../invoke/MethodType.md "class in java.lang.invoke") constant.

  [ModuleDesc](ModuleDesc.md "interface in java.lang.constant")

  A nominal descriptor for a `Module` constant.

  [PackageDesc](PackageDesc.md "interface in java.lang.constant")

  A nominal descriptor for a `Package` constant.