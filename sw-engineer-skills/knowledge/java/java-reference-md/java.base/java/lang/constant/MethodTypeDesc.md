Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface MethodTypeDesc

All Superinterfaces:
:   `ConstantDesc`, `TypeDescriptor`, `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

---

public sealed interface MethodTypeDesc
extends [ConstantDesc](ConstantDesc.md "interface in java.lang.constant"), [TypeDescriptor.OfMethod](../invoke/TypeDescriptor.OfMethod.md "interface in java.lang.invoke")<[ClassDesc](ClassDesc.md "interface in java.lang.constant"),[MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant")>

A [nominal descriptor](package-summary.md#nominal) for a
[MethodType](../invoke/MethodType.md "class in java.lang.invoke") constant.

Since:
:   12

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.invoke.[TypeDescriptor](../invoke/TypeDescriptor.md "interface in java.lang.invoke")

  `TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>, TypeDescriptor.OfMethod<F extends TypeDescriptor.OfField<F>,M extends TypeDescriptor.OfMethod<F,M>>`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `MethodTypeDesc`

  `changeParameterType(int index,
  ClassDesc paramType)`

  Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to this one,
  except that a single parameter type has been changed to the specified type.

  `MethodTypeDesc`

  `changeReturnType(ClassDesc returnType)`

  Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to
  this one, except with the specified return type.

  `String`

  `descriptorString()`

  Returns the method type descriptor string.

  `default String`

  `displayDescriptor()`

  Returns a human-readable descriptor for this method type, using the
  canonical names for parameter and return types.

  `MethodTypeDesc`

  `dropParameterTypes(int start,
  int end)`

  Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to this one,
  except that a range of parameter types have been removed.

  `boolean`

  `equals(Object o)`

  Compares the specified object with this descriptor for equality.

  `MethodTypeDesc`

  `insertParameterTypes(int pos,
  ClassDesc... paramTypes)`

  Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to this one,
  except that a range of additional parameter types have been inserted.

  `static MethodTypeDesc`

  `of(ClassDesc returnDesc)`

  Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") with the given return type and no
  parameter types.

  `static MethodTypeDesc`

  `of(ClassDesc returnDesc,
  ClassDesc... paramDescs)`

  Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") given the return type and parameter
  types.

  `static MethodTypeDesc`

  `of(ClassDesc returnDesc,
  List<ClassDesc> paramDescs)`

  Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") given the return type and a list of
  parameter types.

  `static MethodTypeDesc`

  `ofDescriptor(String descriptor)`

  Creates a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") given a method descriptor string.

  `ClassDesc[]`

  `parameterArray()`

  Returns the parameter types as an array.

  `int`

  `parameterCount()`

  Returns the number of parameters of the method type described by
  this [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant").

  `List<ClassDesc>`

  `parameterList()`

  Returns the parameter types as an immutable [`List`](../../util/List.md "interface in java.util").

  `ClassDesc`

  `parameterType(int index)`

  Returns the parameter type of the `index`'th parameter of the method type
  described by this [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant").

  `MethodType`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this descriptor reflectively, emulating the resolution behavior
  of JVMS and the access control behavior of JVMS .

  `ClassDesc`

  `returnType()`

  Gets the return type of the method type described by this [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant").

* ## Method Details

  + ### ofDescriptor

    static [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") ofDescriptor([String](../String.md "class in java.lang") descriptor)

    Creates a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") given a method descriptor string.

    Parameters:
    :   `descriptor` - a method descriptor string

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") describing the desired method type

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalArgumentException` - if the descriptor string is not a valid
        method descriptor
  + ### of

    static [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") of([ClassDesc](ClassDesc.md "interface in java.lang.constant") returnDesc)

    Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") with the given return type and no
    parameter types.

    Parameters:
    :   `returnDesc` - a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the return type

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") with the given return type and no
        parameter types

    Throws:
    :   `NullPointerException` - if `returnDesc` is `null`

    Since:
    :   21
  + ### of

    static [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") of([ClassDesc](ClassDesc.md "interface in java.lang.constant") returnDesc,
    [List](../../util/List.md "interface in java.util")<[ClassDesc](ClassDesc.md "interface in java.lang.constant")> paramDescs)

    Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") given the return type and a list of
    parameter types.

    Parameters:
    :   `returnDesc` - a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the return type
    :   `paramDescs` - a [List](../../util/List.md "interface in java.util") of [ClassDesc](ClassDesc.md "interface in java.lang.constant")s
        describing the parameter types

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") given the return type and a list of
        parameter types

    Throws:
    :   `NullPointerException` - if any argument or its contents are `null`
    :   `IllegalArgumentException` - if any element of `paramDescs` is a
        [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") for `void`

    Since:
    :   21
  + ### of

    static [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") of([ClassDesc](ClassDesc.md "interface in java.lang.constant") returnDesc,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant")... paramDescs)

    Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") given the return type and parameter
    types.

    Parameters:
    :   `returnDesc` - a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the return type
    :   `paramDescs` - [ClassDesc](ClassDesc.md "interface in java.lang.constant")s describing the argument types

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") describing the desired method type

    Throws:
    :   `NullPointerException` - if any argument or its contents are `null`
    :   `IllegalArgumentException` - if any element of `paramDescs` is a
        [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") for `void`
  + ### returnType

    [ClassDesc](ClassDesc.md "interface in java.lang.constant") returnType()

    Gets the return type of the method type described by this [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant").

    Specified by:
    :   `returnType` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Returns:
    :   a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the return type of the method type
  + ### parameterCount

    int parameterCount()

    Returns the number of parameters of the method type described by
    this [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant").

    Specified by:
    :   `parameterCount` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Returns:
    :   the number of parameters
  + ### parameterType

    [ClassDesc](ClassDesc.md "interface in java.lang.constant") parameterType(int index)

    Returns the parameter type of the `index`'th parameter of the method type
    described by this [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant").

    Specified by:
    :   `parameterType` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Parameters:
    :   `index` - the index of the parameter to retrieve

    Returns:
    :   a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the desired parameter type

    Throws:
    :   `IndexOutOfBoundsException` - if the index is outside the half-open
        range `[0, parameterCount())`
  + ### parameterList

    [List](../../util/List.md "interface in java.util")<[ClassDesc](ClassDesc.md "interface in java.lang.constant")> parameterList()

    Returns the parameter types as an immutable [`List`](../../util/List.md "interface in java.util").

    Specified by:
    :   `parameterList` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Returns:
    :   a [`List`](../../util/List.md "interface in java.util") of [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the parameter types
  + ### parameterArray

    [ClassDesc](ClassDesc.md "interface in java.lang.constant")[] parameterArray()

    Returns the parameter types as an array.

    Specified by:
    :   `parameterArray` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Returns:
    :   an array of [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the parameter types
  + ### changeReturnType

    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") changeReturnType([ClassDesc](ClassDesc.md "interface in java.lang.constant") returnType)

    Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to
    this one, except with the specified return type.

    Specified by:
    :   `changeReturnType` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Parameters:
    :   `returnType` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the new return type

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") describing the desired method type

    Throws:
    :   `NullPointerException` - if the argument is `null`
  + ### changeParameterType

    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") changeParameterType(int index,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") paramType)

    Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to this one,
    except that a single parameter type has been changed to the specified type.

    Specified by:
    :   `changeParameterType` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Parameters:
    :   `index` - the index of the parameter to change
    :   `paramType` - a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") describing the new parameter type

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") describing the desired method type

    Throws:
    :   `NullPointerException` - if any argument is `null`
    :   `IndexOutOfBoundsException` - if the index is outside the half-open
        range `[0, parameterCount)`
  + ### dropParameterTypes

    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") dropParameterTypes(int start,
    int end)

    Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to this one,
    except that a range of parameter types have been removed.

    Specified by:
    :   `dropParameterTypes` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Parameters:
    :   `start` - the index of the first parameter to remove
    :   `end` - the index after the last parameter to remove

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") describing the desired method type

    Throws:
    :   `IndexOutOfBoundsException` - if `start` is outside the half-open
        range `[0, parameterCount)`, or `end` is outside the closed range
        `[0, parameterCount]`, or if `start > end`
  + ### insertParameterTypes

    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") insertParameterTypes(int pos,
    [ClassDesc](ClassDesc.md "interface in java.lang.constant")... paramTypes)

    Returns a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") that is identical to this one,
    except that a range of additional parameter types have been inserted.

    Specified by:
    :   `insertParameterTypes` in interface `TypeDescriptor.OfMethod<ClassDesc,MethodTypeDesc>`

    Parameters:
    :   `pos` - the index at which to insert the first inserted parameter
    :   `paramTypes` - [`ClassDesc`](ClassDesc.md "interface in java.lang.constant")s describing the new parameter types
        to insert

    Returns:
    :   a [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") describing the desired method type

    Throws:
    :   `NullPointerException` - if any argument or its contents are `null`
    :   `IndexOutOfBoundsException` - if `pos` is outside the closed
        range `[0, parameterCount]`
    :   `IllegalArgumentException` - if any element of `paramTypes`
        is a [`ClassDesc`](ClassDesc.md "interface in java.lang.constant") for `void`
  + ### descriptorString

    [String](../String.md "class in java.lang") descriptorString()

    Returns the method type descriptor string.

    Specified by:
    :   `descriptorString` in interface `TypeDescriptor`

    Returns:
    :   the method type descriptor string
  + ### displayDescriptor

    default [String](../String.md "class in java.lang") displayDescriptor()

    Returns a human-readable descriptor for this method type, using the
    canonical names for parameter and return types.

    Returns:
    :   the human-readable descriptor for this method type
  + ### resolveConstantDesc

    [MethodType](../invoke/MethodType.md "class in java.lang.invoke") resolveConstantDesc([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
    throws [ReflectiveOperationException](../ReflectiveOperationException.md "class in java.lang")

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
    [MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") both have the same arity, their return types
    are equal, and each pair of corresponding parameter types are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the other object

    Returns:
    :   whether this descriptor is equal to the other object

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")