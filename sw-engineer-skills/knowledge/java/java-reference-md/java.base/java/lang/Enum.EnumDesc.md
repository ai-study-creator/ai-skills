Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Enum.EnumDesc<E extends [Enum](Enum.md "class in java.lang")<E>>

[java.lang.Object](Object.md "class in java.lang")

[java.lang.constant.DynamicConstantDesc](constant/DynamicConstantDesc.md "class in java.lang.constant")<E>

java.lang.Enum.EnumDesc<E>

Type Parameters:
:   `E` - the type of the enum constant

All Implemented Interfaces:
:   `ConstantDesc`

Enclosing class:
:   `Enum<E extends Enum<E>>`

---

public static final class Enum.EnumDesc<E extends [Enum](Enum.md "class in java.lang")<E>>
extends [DynamicConstantDesc](constant/DynamicConstantDesc.md "class in java.lang.constant")<E>

A [nominal descriptor](../../../java.base/java/lang/constant/package-summary.md#nominal) for an
`enum` constant.

Since:
:   12

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static <E extends Enum<E>>  
  Enum.EnumDesc<E>`

  `of(ClassDesc enumClass,
  String constantName)`

  Returns a nominal descriptor for the specified `enum` class and name

  `E`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this descriptor reflectively, emulating the resolution behavior
  of JVMS and the access control behavior of JVMS .

  `String`

  `toString()`

  Returns a compact textual description of this constant description,
  including the bootstrap method, the constant name and type, and
  the static bootstrap arguments.

  ### Methods inherited from class java.lang.constant.[DynamicConstantDesc](constant/DynamicConstantDesc.md "class in java.lang.constant")

  `bootstrapArgs, bootstrapArgsList, bootstrapMethod, constantName, constantType, equals, hashCode, of, of, ofCanonical, ofNamed`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### of

    public static <E extends [Enum](Enum.md "class in java.lang")<E>> [Enum.EnumDesc](Enum.EnumDesc.md "class in java.lang")<E> of([ClassDesc](constant/ClassDesc.md "interface in java.lang.constant") enumClass,
    [String](String.md "class in java.lang") constantName)

    Returns a nominal descriptor for the specified `enum` class and name

    Type Parameters:
    :   `E` - the type of the enum constant

    Parameters:
    :   `enumClass` - a [`ClassDesc`](constant/ClassDesc.md "interface in java.lang.constant") describing the `enum` class
    :   `constantName` - the unqualified name of the enum constant

    Returns:
    :   the nominal descriptor

    Throws:
    :   `NullPointerException` - if any argument is null

    Since:
    :   12
  + ### resolveConstantDesc

    public [E](Enum.EnumDesc.md "type parameter in Enum.EnumDesc") resolveConstantDesc([MethodHandles.Lookup](invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
    throws [ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

    Description copied from interface: `ConstantDesc`

    Resolves this descriptor reflectively, emulating the resolution behavior
    of JVMS and the access control behavior of JVMS . The resolution
    and access control context is provided by the [`MethodHandles.Lookup`](invoke/MethodHandles.Lookup.md "class in java.lang.invoke")
    parameter. No caching of the resulting value is performed.

    Specified by:
    :   `resolveConstantDesc` in interface `ConstantDesc`

    Overrides:
    :   `resolveConstantDesc` in class `DynamicConstantDesc<E extends Enum<E>>`

    Parameters:
    :   `lookup` - The [`MethodHandles.Lookup`](invoke/MethodHandles.Lookup.md "class in java.lang.invoke") to provide name resolution
        and access control context

    Returns:
    :   the resolved constant value

    Throws:
    :   `ReflectiveOperationException` - if a class, method, or field
        could not be reflectively resolved in the course of resolution
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Description copied from class: `DynamicConstantDesc`

    Returns a compact textual description of this constant description,
    including the bootstrap method, the constant name and type, and
    the static bootstrap arguments.

    Overrides:
    :   `toString` in class `DynamicConstantDesc<E extends Enum<E>>`

    Returns:
    :   A compact textual description of this call site descriptor