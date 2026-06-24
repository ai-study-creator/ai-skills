Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Class DynamicConstantDesc<T>

[java.lang.Object](../Object.md "class in java.lang")

java.lang.constant.DynamicConstantDesc<T>

Type Parameters:
:   `T` - the type of the dynamic constant

All Implemented Interfaces:
:   `ConstantDesc`

Direct Known Subclasses:
:   `Enum.EnumDesc`, `VarHandle.VarHandleDesc`

---

public abstract non-sealed class DynamicConstantDesc<T>
extends [Object](../Object.md "class in java.lang")
implements [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")

A [nominal descriptor](package-summary.md#nominal) for a
dynamic constant (one described in the constant pool with
`Constant_Dynamic_info`.)

Concrete subtypes of [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant") should be immutable
and their behavior should not rely on object identity.

Since:
:   12

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DynamicConstantDesc(DirectMethodHandleDesc bootstrapMethod,
  String constantName,
  ClassDesc constantType,
  ConstantDesc... bootstrapArgs)`

  Creates a nominal descriptor for a dynamic constant.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ConstantDesc[]`

  `bootstrapArgs()`

  Returns the bootstrap arguments for this constant.

  `List<ConstantDesc>`

  `bootstrapArgsList()`

  Returns the bootstrap arguments for this constant as an immutable [`List`](../../util/List.md "interface in java.util").

  `DirectMethodHandleDesc`

  `bootstrapMethod()`

  Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") describing the bootstrap method for
  this constant.

  `String`

  `constantName()`

  Returns the name that would appear in the `NameAndType` operand
  of the `LDC` for this constant.

  `ClassDesc`

  `constantType()`

  Returns a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the type that would appear in the
  `NameAndType` operand of the `LDC` for this constant.

  `final boolean`

  `equals(Object o)`

  Compares the specified object with this descriptor for equality.

  `final int`

  `hashCode()`

  Returns a hash code value for the object.

  `static <T> DynamicConstantDesc<T>`

  `of(DirectMethodHandleDesc bootstrapMethod)`

  Returns a nominal descriptor for a dynamic constant whose bootstrap has
  no static arguments, whose name parameter is [`ConstantDescs.DEFAULT_NAME`](ConstantDescs.md#DEFAULT_NAME),
  and whose type parameter is always the same as the bootstrap method return type.

  `static <T> DynamicConstantDesc<T>`

  `of(DirectMethodHandleDesc bootstrapMethod,
  ConstantDesc... bootstrapArgs)`

  Returns a nominal descriptor for a dynamic constant whose name parameter
  is [`ConstantDescs.DEFAULT_NAME`](ConstantDescs.md#DEFAULT_NAME), and whose type parameter is always
  the same as the bootstrap method return type.

  `static <T> ConstantDesc`

  `ofCanonical(DirectMethodHandleDesc bootstrapMethod,
  String constantName,
  ClassDesc constantType,
  ConstantDesc[] bootstrapArgs)`

  Returns a nominal descriptor for a dynamic constant, transforming it into
  a more specific type if the constant bootstrap is a well-known one and a
  more specific nominal descriptor type (e.g., ClassDesc) is available.

  `static <T> DynamicConstantDesc<T>`

  `ofNamed(DirectMethodHandleDesc bootstrapMethod,
  String constantName,
  ClassDesc constantType,
  ConstantDesc... bootstrapArgs)`

  Returns a nominal descriptor for a dynamic constant.

  `T`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this descriptor reflectively, emulating the resolution behavior
  of JVMS and the access control behavior of JVMS .

  `String`

  `toString()`

  Returns a compact textual description of this constant description,
  including the bootstrap method, the constant name and type, and
  the static bootstrap arguments.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DynamicConstantDesc

    protected DynamicConstantDesc([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod,
    [String](../String.md "class in java.lang") constantName,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") constantType,
    [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")... bootstrapArgs)

    Creates a nominal descriptor for a dynamic constant.

    Parameters:
    :   `bootstrapMethod` - a [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant") describing the
        bootstrap method for the constant
    :   `constantName` - The unqualified name that would appear in the `NameAndType`
        operand of the `LDC` for this constant
    :   `constantType` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the type
        that would appear in the `NameAndType` operand
        of the `LDC` for this constant
    :   `bootstrapArgs` - [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the static arguments
        to the bootstrap, that would appear in the
        `BootstrapMethods` attribute

    Throws:
    :   `NullPointerException` - if any argument is null
    :   `IllegalArgumentException` - if the `name` has the incorrect
        format
* ## Method Details

  + ### ofCanonical

    public static <T> [ConstantDesc](ConstantDesc.md "interface in java.lang.constant") ofCanonical([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod,
    [String](../String.md "class in java.lang") constantName,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") constantType,
    [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")[] bootstrapArgs)

    Returns a nominal descriptor for a dynamic constant, transforming it into
    a more specific type if the constant bootstrap is a well-known one and a
    more specific nominal descriptor type (e.g., ClassDesc) is available.

    Classes whose [`Constable.describeConstable()`](Constable.md#describeConstable()) method produce
    a [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant") with a well-known bootstrap including
    [`Class`](../Class.md "class in java.lang") (for instances describing primitive types), [`Enum`](../Enum.md "class in java.lang"),
    and [`VarHandle`](../invoke/VarHandle.md "class in java.lang.invoke").

    Bytecode-reading APIs that process the constant pool and wish to expose
    entries as [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant") to their callers should generally use this
    method in preference to [`ofNamed(DirectMethodHandleDesc, String, ClassDesc, ConstantDesc...)`](#ofNamed(java.lang.constant.DirectMethodHandleDesc,java.lang.String,java.lang.constant.ClassDesc,java.lang.constant.ConstantDesc...))
    because this may result in a more specific type that can be provided to
    callers.

    Type Parameters:
    :   `T` - the type of the dynamic constant

    Parameters:
    :   `bootstrapMethod` - a [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant") describing the
        bootstrap method for the constant
    :   `constantName` - The unqualified name that would appear in the `NameAndType`
        operand of the `LDC` for this constant
    :   `constantType` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the type
        that would appear in the `NameAndType` operand
        of the `LDC` for this constant
    :   `bootstrapArgs` - [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the static arguments
        to the bootstrap, that would appear in the
        `BootstrapMethods` attribute

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any argument is null
    :   `IllegalArgumentException` - if the `name` has the incorrect
        format
  + ### ofNamed

    public static <T> [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<T> ofNamed([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod,
    [String](../String.md "class in java.lang") constantName,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") constantType,
    [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")... bootstrapArgs)

    Returns a nominal descriptor for a dynamic constant.

    Type Parameters:
    :   `T` - the type of the dynamic constant

    Parameters:
    :   `bootstrapMethod` - a [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant") describing the
        bootstrap method for the constant
    :   `constantName` - The unqualified name that would appear in the `NameAndType`
        operand of the `LDC` for this constant
    :   `constantType` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the type
        that would appear in the `NameAndType` operand
        of the `LDC` for this constant
    :   `bootstrapArgs` - [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the static arguments
        to the bootstrap, that would appear in the
        `BootstrapMethods` attribute

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any argument is null
    :   `IllegalArgumentException` - if the `name` has the incorrect
        format
  + ### of

    public static <T> [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<T> of([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod,
    [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")... bootstrapArgs)

    Returns a nominal descriptor for a dynamic constant whose name parameter
    is [`ConstantDescs.DEFAULT_NAME`](ConstantDescs.md#DEFAULT_NAME), and whose type parameter is always
    the same as the bootstrap method return type.

    Type Parameters:
    :   `T` - the type of the dynamic constant

    Parameters:
    :   `bootstrapMethod` - a [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant") describing the
        bootstrap method for the constant
    :   `bootstrapArgs` - [`ConstantDesc`](ConstantDesc.md "interface in java.lang.constant")s describing the static arguments
        to the bootstrap, that would appear in the
        `BootstrapMethods` attribute

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any argument is null
  + ### of

    public static <T> [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<T> of([DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod)

    Returns a nominal descriptor for a dynamic constant whose bootstrap has
    no static arguments, whose name parameter is [`ConstantDescs.DEFAULT_NAME`](ConstantDescs.md#DEFAULT_NAME),
    and whose type parameter is always the same as the bootstrap method return type.

    Type Parameters:
    :   `T` - the type of the dynamic constant

    Parameters:
    :   `bootstrapMethod` - a [`DirectMethodHandleDesc`](DirectMethodHandleDesc.md "interface in java.lang.constant") describing the
        bootstrap method for the constant

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any argument is null
  + ### constantName

    public [String](../String.md "class in java.lang") constantName()

    Returns the name that would appear in the `NameAndType` operand
    of the `LDC` for this constant.

    Returns:
    :   the constant name
  + ### constantType

    public [ClassDesc](ClassDesc.md "interface in java.lang.constant") constantType()

    Returns a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the type that would appear in the
    `NameAndType` operand of the `LDC` for this constant.

    Returns:
    :   the constant type
  + ### bootstrapMethod

    public [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant") bootstrapMethod()

    Returns a [`MethodHandleDesc`](MethodHandleDesc.md "interface in java.lang.constant") describing the bootstrap method for
    this constant.

    Returns:
    :   the bootstrap method
  + ### bootstrapArgs

    public [ConstantDesc](ConstantDesc.md "interface in java.lang.constant")[] bootstrapArgs()

    Returns the bootstrap arguments for this constant.

    Returns:
    :   the bootstrap arguments
  + ### bootstrapArgsList

    public [List](../../util/List.md "interface in java.util")<[ConstantDesc](ConstantDesc.md "interface in java.lang.constant")> bootstrapArgsList()

    Returns the bootstrap arguments for this constant as an immutable [`List`](../../util/List.md "interface in java.util").

    Returns:
    :   a [`List`](../../util/List.md "interface in java.util") of the bootstrap arguments
  + ### resolveConstantDesc

    public [T](DynamicConstantDesc.md "type parameter in DynamicConstantDesc") resolveConstantDesc([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
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

    public final boolean equals([Object](../Object.md "class in java.lang") o)

    Compares the specified object with this descriptor for equality. Returns
    `true` if and only if the specified object is also a
    [DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant"), and both descriptors have equal
    bootstrap methods, bootstrap argument lists, constant name, and
    constant type.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the `DynamicConstantDesc` to compare to this
        `DynamicConstantDesc`

    Returns:
    :   `true` if the specified `DynamicConstantDesc`
        is equal to this `DynamicConstantDesc`.

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a compact textual description of this constant description,
    including the bootstrap method, the constant name and type, and
    the static bootstrap arguments.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A compact textual description of this call site descriptor