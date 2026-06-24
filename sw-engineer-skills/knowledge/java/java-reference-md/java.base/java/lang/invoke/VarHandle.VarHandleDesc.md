Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class VarHandle.VarHandleDesc

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.constant.DynamicConstantDesc](../constant/DynamicConstantDesc.md "class in java.lang.constant")<[VarHandle](VarHandle.md "class in java.lang.invoke")>

java.lang.invoke.VarHandle.VarHandleDesc

All Implemented Interfaces:
:   `ConstantDesc`

Enclosing class:
:   `VarHandle`

---

public static final class VarHandle.VarHandleDesc
extends [DynamicConstantDesc](../constant/DynamicConstantDesc.md "class in java.lang.constant")<[VarHandle](VarHandle.md "class in java.lang.invoke")>

A [nominal descriptor](../../../../java.base/java/lang/constant/package-summary.md#nominal) for a
[`VarHandle`](VarHandle.md "class in java.lang.invoke") constant.

Since:
:   12

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static VarHandle.VarHandleDesc`

  `ofArray(ClassDesc arrayClass)`

  Returns a [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") corresponding to a [`VarHandle`](VarHandle.md "class in java.lang.invoke")
  for an array type.

  `static VarHandle.VarHandleDesc`

  `ofField(ClassDesc declaringClass,
  String name,
  ClassDesc fieldType)`

  Returns a [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") corresponding to a [`VarHandle`](VarHandle.md "class in java.lang.invoke")
  for an instance field.

  `static VarHandle.VarHandleDesc`

  `ofStaticField(ClassDesc declaringClass,
  String name,
  ClassDesc fieldType)`

  Returns a [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") corresponding to a [`VarHandle`](VarHandle.md "class in java.lang.invoke")
  for a static field.

  `VarHandle`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this descriptor reflectively, emulating the resolution behavior
  of JVMS and the access control behavior of JVMS .

  `String`

  `toString()`

  Returns a compact textual description of this constant description.

  `ClassDesc`

  `varType()`

  Returns a [`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant") describing the type of the variable described
  by this descriptor.

  ### Methods inherited from class java.lang.constant.[DynamicConstantDesc](../constant/DynamicConstantDesc.md "class in java.lang.constant")

  `bootstrapArgs, bootstrapArgsList, bootstrapMethod, constantName, constantType, equals, hashCode, of, of, ofCanonical, ofNamed`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### ofField

    public static [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") ofField([ClassDesc](../constant/ClassDesc.md "interface in java.lang.constant") declaringClass,
    [String](../String.md "class in java.lang") name,
    [ClassDesc](../constant/ClassDesc.md "interface in java.lang.constant") fieldType)

    Returns a [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") corresponding to a [`VarHandle`](VarHandle.md "class in java.lang.invoke")
    for an instance field.

    Parameters:
    :   `declaringClass` - a [`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant") describing the declaring class,
        for field var handles
    :   `name` - the unqualified name of the field
    :   `fieldType` - a [`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant") describing the type of the field

    Returns:
    :   the [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke")

    Throws:
    :   `NullPointerException` - if any of the arguments are null
  + ### ofStaticField

    public static [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") ofStaticField([ClassDesc](../constant/ClassDesc.md "interface in java.lang.constant") declaringClass,
    [String](../String.md "class in java.lang") name,
    [ClassDesc](../constant/ClassDesc.md "interface in java.lang.constant") fieldType)

    Returns a [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") corresponding to a [`VarHandle`](VarHandle.md "class in java.lang.invoke")
    for a static field.

    Parameters:
    :   `declaringClass` - a [`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant") describing the declaring class,
        for field var handles
    :   `name` - the unqualified name of the field
    :   `fieldType` - a [`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant") describing the type of the field

    Returns:
    :   the [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke")

    Throws:
    :   `NullPointerException` - if any of the arguments are null
  + ### ofArray

    public static [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") ofArray([ClassDesc](../constant/ClassDesc.md "interface in java.lang.constant") arrayClass)

    Returns a [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke") corresponding to a [`VarHandle`](VarHandle.md "class in java.lang.invoke")
    for an array type.

    Parameters:
    :   `arrayClass` - a [`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant") describing the type of the array

    Returns:
    :   the [VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke")

    Throws:
    :   `NullPointerException` - if any of the arguments are null
  + ### varType

    public [ClassDesc](../constant/ClassDesc.md "interface in java.lang.constant") varType()

    Returns a [`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant") describing the type of the variable described
    by this descriptor.

    Returns:
    :   the variable type
  + ### resolveConstantDesc

    public [VarHandle](VarHandle.md "class in java.lang.invoke") resolveConstantDesc([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
    throws [ReflectiveOperationException](../ReflectiveOperationException.md "class in java.lang")

    Description copied from interface: `ConstantDesc`

    Resolves this descriptor reflectively, emulating the resolution behavior
    of JVMS and the access control behavior of JVMS . The resolution
    and access control context is provided by the [`MethodHandles.Lookup`](MethodHandles.Lookup.md "class in java.lang.invoke")
    parameter. No caching of the resulting value is performed.

    Specified by:
    :   `resolveConstantDesc` in interface `ConstantDesc`

    Overrides:
    :   `resolveConstantDesc` in class `DynamicConstantDesc<VarHandle>`

    Parameters:
    :   `lookup` - The [`MethodHandles.Lookup`](MethodHandles.Lookup.md "class in java.lang.invoke") to provide name resolution
        and access control context

    Returns:
    :   the resolved constant value

    Throws:
    :   `ReflectiveOperationException` - if a class, method, or field
        could not be reflectively resolved in the course of resolution
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a compact textual description of this constant description.
    For a field [VarHandle](VarHandle.md "class in java.lang.invoke"), includes the owner, name, and type
    of the field, and whether it is static; for an array [VarHandle](VarHandle.md "class in java.lang.invoke"),
    the name of the component type.

    Overrides:
    :   `toString` in class `DynamicConstantDesc<VarHandle>`

    Returns:
    :   A compact textual description of this descriptor