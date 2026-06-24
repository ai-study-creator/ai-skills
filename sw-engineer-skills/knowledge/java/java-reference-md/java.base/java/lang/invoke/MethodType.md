Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class MethodType

[java.lang.Object](../Object.md "class in java.lang")

java.lang.invoke.MethodType

All Implemented Interfaces:
:   `Serializable`, `Constable`, `TypeDescriptor`, `TypeDescriptor.OfMethod<Class<?>,MethodType>`

---

public final class MethodType
extends [Object](../Object.md "class in java.lang")
implements [Constable](../constant/Constable.md "interface in java.lang.constant"), [TypeDescriptor.OfMethod](TypeDescriptor.OfMethod.md "interface in java.lang.invoke")<[Class](../Class.md "class in java.lang")<?>,[MethodType](MethodType.md "class in java.lang.invoke")>, [Serializable](../../io/Serializable.md "interface in java.io")

A method type represents the arguments and return type accepted and
returned by a method handle, or the arguments and return type passed
and expected by a method handle caller. Method types must be properly
matched between a method handle and all its callers,
and the JVM's operations enforce this matching at, specifically
during calls to [`MethodHandle.invokeExact`](MethodHandle.md#invokeExact(java.lang.Object...))
and [`MethodHandle.invoke`](MethodHandle.md#invoke(java.lang.Object...)), and during execution
of `invokedynamic` instructions.

The structure is a return type accompanied by any number of parameter types.
The types (primitive, `void`, and reference) are represented by [`Class`](../Class.md "class in java.lang") objects.
(For ease of exposition, we treat `void` as if it were a type.
In fact, it denotes the absence of a return type.)

All instances of `MethodType` are immutable.
Two instances are completely interchangeable if they compare equal.
Equality depends on pairwise correspondence of the return and parameter types and on nothing else.

This type can be created only by factory methods.
All factory methods may cache values, though caching is not guaranteed.
Some factory methods are static, while others are virtual methods which
modify precursor method types, e.g., by changing a selected parameter.

Factory methods which operate on groups of parameter types
are systematically presented in two versions, so that both Java arrays and
Java lists can be used to work with groups of parameter types.
The query methods `parameterArray` and `parameterList`
also provide a choice between arrays and lists.

`MethodType` objects are sometimes derived from bytecode instructions
such as `invokedynamic`, specifically from the type descriptor strings associated
with the instructions in a class file's constant pool.

Like classes and strings, method types can also be represented directly
in a class file's constant pool as constants.
A method type may be loaded by an `ldc` instruction which refers
to a suitable `CONSTANT_MethodType` constant pool entry.
The entry refers to a `CONSTANT_Utf8` spelling for the descriptor string.
(For full details on method type constants, see sections and of the Java Virtual Machine
Specification.)

When the JVM materializes a `MethodType` from a descriptor string,
all classes named in the descriptor must be accessible, and will be loaded.
(But the classes need not be initialized, as is the case with a `CONSTANT_Class`.)
This loading may occur at any time before the `MethodType` object is first derived.

**Nominal Descriptors**

A `MethodType` can be described in [nominal form](../constant/MethodTypeDesc.md "interface in java.lang.constant")
if and only if all of the parameter types and return type can be described
with a [`nominal descriptor`](../Class.md#describeConstable()) represented by
[`ClassDesc`](../constant/ClassDesc.md "interface in java.lang.constant"). If a method type can be described nominally, then:

* The method type has a [`nominal descriptor`](../constant/MethodTypeDesc.md "interface in java.lang.constant")
  returned by [`MethodType::describeConstable`](#describeConstable()).
* The descriptor string returned by
  [`MethodType::descriptorString`](#descriptorString()) or
  [`MethodType::toMethodDescriptorString`](#toMethodDescriptorString())
  for the method type is a method descriptor (JVMS ).

If any of the parameter types or return type cannot be described
nominally, i.e. [`Class::describeConstable`](../Class.md#describeConstable())
returns an empty optional for that type,
then the method type cannot be described nominally:

* The method type has no [`nominal descriptor`](../constant/MethodTypeDesc.md "interface in java.lang.constant") and
  [`MethodType::describeConstable`](#describeConstable()) returns
  an empty optional.
* The descriptor string returned by
  [`MethodType::descriptorString`](#descriptorString()) or
  [`MethodType::toMethodDescriptorString`](#toMethodDescriptorString())
  for the method type is not a type descriptor.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.lang.invoke.MethodType)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.invoke.[TypeDescriptor](TypeDescriptor.md "interface in java.lang.invoke")

  `TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>, TypeDescriptor.OfMethod<F extends TypeDescriptor.OfField<F>,M extends TypeDescriptor.OfMethod<F,M>>`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `MethodType`

  `appendParameterTypes(Class<?>... ptypesToInsert)`

  Finds or creates a method type with additional parameter types.

  `MethodType`

  `appendParameterTypes(List<Class<?>> ptypesToInsert)`

  Finds or creates a method type with additional parameter types.

  `MethodType`

  `changeParameterType(int num,
  Class<?> nptype)`

  Finds or creates a method type with a single different parameter type.

  `MethodType`

  `changeReturnType(Class<?> nrtype)`

  Finds or creates a method type with a different return type.

  `Optional<MethodTypeDesc>`

  `describeConstable()`

  Returns a nominal descriptor for this instance, if one can be
  constructed, or an empty [`Optional`](../../util/Optional.md "class in java.util") if one cannot be.

  `String`

  `descriptorString()`

  Returns the descriptor string for this method type.

  `MethodType`

  `dropParameterTypes(int start,
  int end)`

  Finds or creates a method type with some parameter types omitted.

  `boolean`

  `equals(Object x)`

  Compares the specified object with this type for equality.

  `MethodType`

  `erase()`

  Erases all reference types to `Object`.

  `static MethodType`

  `fromMethodDescriptorString(String descriptor,
  ClassLoader loader)`

  Finds or creates an instance of a method type of the given method descriptor
  (JVMS ).

  `MethodType`

  `generic()`

  Converts all types, both reference and primitive, to `Object`.

  `static MethodType`

  `genericMethodType(int objectArgCount)`

  Finds or creates a method type whose components are all `Object`.

  `static MethodType`

  `genericMethodType(int objectArgCount,
  boolean finalArray)`

  Finds or creates a method type whose components are `Object` with an optional trailing `Object[]` array.

  `int`

  `hashCode()`

  Returns the hash code value for this method type.

  `boolean`

  `hasPrimitives()`

  Reports if this type contains a primitive argument or return value.

  `boolean`

  `hasWrappers()`

  Reports if this type contains a wrapper argument or return value.

  `MethodType`

  `insertParameterTypes(int num,
  Class<?>... ptypesToInsert)`

  Finds or creates a method type with additional parameter types.

  `MethodType`

  `insertParameterTypes(int num,
  List<Class<?>> ptypesToInsert)`

  Finds or creates a method type with additional parameter types.

  `Class<?>`

  `lastParameterType()`

  Returns the last parameter type of this method type.

  `static MethodType`

  `methodType(Class<?> rtype)`

  Finds or creates a method type with the given components.

  `static MethodType`

  `methodType(Class<?> rtype,
  Class<?> ptype0)`

  Finds or creates a method type with the given components.

  `static MethodType`

  `methodType(Class<?> rtype,
  Class<?>[] ptypes)`

  Finds or creates an instance of the given method type.

  `static MethodType`

  `methodType(Class<?> rtype,
  Class<?> ptype0,
  Class<?>... ptypes)`

  Finds or creates a method type with the given components.

  `static MethodType`

  `methodType(Class<?> rtype,
  MethodType ptypes)`

  Finds or creates a method type with the given components.

  `static MethodType`

  `methodType(Class<?> rtype,
  List<Class<?>> ptypes)`

  Finds or creates a method type with the given components.

  `Class<?>[]`

  `parameterArray()`

  Presents the parameter types as an array (a convenience method).

  `int`

  `parameterCount()`

  Returns the number of parameter types in this method type.

  `List<Class<?>>`

  `parameterList()`

  Presents the parameter types as a list (a convenience method).

  `Class<?>`

  `parameterType(int num)`

  Returns the parameter type at the specified index, within this method type.

  `Class<?>`

  `returnType()`

  Returns the return type of this method type.

  `String`

  `toMethodDescriptorString()`

  Returns the descriptor string for this method type.

  `String`

  `toString()`

  Returns a string representation of the method type,
  of the form `"(PT0,PT1...)RT"`.

  `MethodType`

  `unwrap()`

  Converts all wrapper types to their corresponding primitive types.

  `MethodType`

  `wrap()`

  Converts all primitive types to their corresponding wrapper types.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### methodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") methodType([Class](../Class.md "class in java.lang")<?> rtype,
    [Class](../Class.md "class in java.lang")<?>[] ptypes)

    Finds or creates an instance of the given method type.

    Parameters:
    :   `rtype` - the return type
    :   `ptypes` - the parameter types

    Returns:
    :   a method type with the given components

    Throws:
    :   `NullPointerException` - if `rtype` or `ptypes` or any element of `ptypes` is null
    :   `IllegalArgumentException` - if any element of `ptypes` is `void.class`
  + ### methodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") methodType([Class](../Class.md "class in java.lang")<?> rtype,
    [List](../../util/List.md "interface in java.util")<[Class](../Class.md "class in java.lang")<?>> ptypes)

    Finds or creates a method type with the given components.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Parameters:
    :   `rtype` - the return type
    :   `ptypes` - the parameter types

    Returns:
    :   a method type with the given components

    Throws:
    :   `NullPointerException` - if `rtype` or `ptypes` or any element of `ptypes` is null
    :   `IllegalArgumentException` - if any element of `ptypes` is `void.class`
  + ### methodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") methodType([Class](../Class.md "class in java.lang")<?> rtype,
    [Class](../Class.md "class in java.lang")<?> ptype0,
    [Class](../Class.md "class in java.lang")<?>... ptypes)

    Finds or creates a method type with the given components.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    The leading parameter type is prepended to the remaining array.

    Parameters:
    :   `rtype` - the return type
    :   `ptype0` - the first parameter type
    :   `ptypes` - the remaining parameter types

    Returns:
    :   a method type with the given components

    Throws:
    :   `NullPointerException` - if `rtype` or `ptype0` or `ptypes` or any element of `ptypes` is null
    :   `IllegalArgumentException` - if `ptype0` or `ptypes` or any element of `ptypes` is `void.class`
  + ### methodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") methodType([Class](../Class.md "class in java.lang")<?> rtype)

    Finds or creates a method type with the given components.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    The resulting method has no parameter types.

    Parameters:
    :   `rtype` - the return type

    Returns:
    :   a method type with the given return value

    Throws:
    :   `NullPointerException` - if `rtype` is null
  + ### methodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") methodType([Class](../Class.md "class in java.lang")<?> rtype,
    [Class](../Class.md "class in java.lang")<?> ptype0)

    Finds or creates a method type with the given components.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    The resulting method has the single given parameter type.

    Parameters:
    :   `rtype` - the return type
    :   `ptype0` - the parameter type

    Returns:
    :   a method type with the given return value and parameter type

    Throws:
    :   `NullPointerException` - if `rtype` or `ptype0` is null
    :   `IllegalArgumentException` - if `ptype0` is `void.class`
  + ### methodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") methodType([Class](../Class.md "class in java.lang")<?> rtype,
    [MethodType](MethodType.md "class in java.lang.invoke") ptypes)

    Finds or creates a method type with the given components.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    The resulting method has the same parameter types as `ptypes`,
    and the specified return type.

    Parameters:
    :   `rtype` - the return type
    :   `ptypes` - the method type which supplies the parameter types

    Returns:
    :   a method type with the given components

    Throws:
    :   `NullPointerException` - if `rtype` or `ptypes` is null
  + ### genericMethodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") genericMethodType(int objectArgCount,
    boolean finalArray)

    Finds or creates a method type whose components are `Object` with an optional trailing `Object[]` array.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    All parameters and the return type will be `Object`,
    except the final array parameter if any, which will be `Object[]`.

    Parameters:
    :   `objectArgCount` - number of parameters (excluding the final array parameter if any)
    :   `finalArray` - whether there will be a trailing array parameter, of type `Object[]`

    Returns:
    :   a generally applicable method type, for all calls of the given fixed argument count and a collected array of further arguments

    Throws:
    :   `IllegalArgumentException` - if `objectArgCount` is negative or greater than 255 (or 254, if `finalArray` is true)

    See Also:
    :   - [`genericMethodType(int)`](#genericMethodType(int))
  + ### genericMethodType

    public static [MethodType](MethodType.md "class in java.lang.invoke") genericMethodType(int objectArgCount)

    Finds or creates a method type whose components are all `Object`.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    All parameters and the return type will be Object.

    Parameters:
    :   `objectArgCount` - number of parameters

    Returns:
    :   a generally applicable method type, for all calls of the given argument count

    Throws:
    :   `IllegalArgumentException` - if `objectArgCount` is negative or greater than 255

    See Also:
    :   - [`genericMethodType(int, boolean)`](#genericMethodType(int,boolean))
  + ### changeParameterType

    public [MethodType](MethodType.md "class in java.lang.invoke") changeParameterType(int num,
    [Class](../Class.md "class in java.lang")<?> nptype)

    Finds or creates a method type with a single different parameter type.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Specified by:
    :   `changeParameterType` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Parameters:
    :   `num` - the index (zero-based) of the parameter type to change
    :   `nptype` - a new parameter type to replace the old one with

    Returns:
    :   the same type, except with the selected parameter changed

    Throws:
    :   `IndexOutOfBoundsException` - if `num` is not a valid index into `parameterArray()`
    :   `IllegalArgumentException` - if `nptype` is `void.class`
    :   `NullPointerException` - if `nptype` is null
  + ### insertParameterTypes

    public [MethodType](MethodType.md "class in java.lang.invoke") insertParameterTypes(int num,
    [Class](../Class.md "class in java.lang")<?>... ptypesToInsert)

    Finds or creates a method type with additional parameter types.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Specified by:
    :   `insertParameterTypes` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Parameters:
    :   `num` - the position (zero-based) of the inserted parameter type(s)
    :   `ptypesToInsert` - zero or more new parameter types to insert into the parameter list

    Returns:
    :   the same type, except with the selected parameter(s) inserted

    Throws:
    :   `IndexOutOfBoundsException` - if `num` is negative or greater than `parameterCount()`
    :   `IllegalArgumentException` - if any element of `ptypesToInsert` is `void.class`
        or if the resulting method type would have more than 255 parameter slots
    :   `NullPointerException` - if `ptypesToInsert` or any of its elements is null
  + ### appendParameterTypes

    public [MethodType](MethodType.md "class in java.lang.invoke") appendParameterTypes([Class](../Class.md "class in java.lang")<?>... ptypesToInsert)

    Finds or creates a method type with additional parameter types.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Parameters:
    :   `ptypesToInsert` - zero or more new parameter types to insert after the end of the parameter list

    Returns:
    :   the same type, except with the selected parameter(s) appended

    Throws:
    :   `IllegalArgumentException` - if any element of `ptypesToInsert` is `void.class`
        or if the resulting method type would have more than 255 parameter slots
    :   `NullPointerException` - if `ptypesToInsert` or any of its elements is null
  + ### insertParameterTypes

    public [MethodType](MethodType.md "class in java.lang.invoke") insertParameterTypes(int num,
    [List](../../util/List.md "interface in java.util")<[Class](../Class.md "class in java.lang")<?>> ptypesToInsert)

    Finds or creates a method type with additional parameter types.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Parameters:
    :   `num` - the position (zero-based) of the inserted parameter type(s)
    :   `ptypesToInsert` - zero or more new parameter types to insert into the parameter list

    Returns:
    :   the same type, except with the selected parameter(s) inserted

    Throws:
    :   `IndexOutOfBoundsException` - if `num` is negative or greater than `parameterCount()`
    :   `IllegalArgumentException` - if any element of `ptypesToInsert` is `void.class`
        or if the resulting method type would have more than 255 parameter slots
    :   `NullPointerException` - if `ptypesToInsert` or any of its elements is null
  + ### appendParameterTypes

    public [MethodType](MethodType.md "class in java.lang.invoke") appendParameterTypes([List](../../util/List.md "interface in java.util")<[Class](../Class.md "class in java.lang")<?>> ptypesToInsert)

    Finds or creates a method type with additional parameter types.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Parameters:
    :   `ptypesToInsert` - zero or more new parameter types to insert after the end of the parameter list

    Returns:
    :   the same type, except with the selected parameter(s) appended

    Throws:
    :   `IllegalArgumentException` - if any element of `ptypesToInsert` is `void.class`
        or if the resulting method type would have more than 255 parameter slots
    :   `NullPointerException` - if `ptypesToInsert` or any of its elements is null
  + ### dropParameterTypes

    public [MethodType](MethodType.md "class in java.lang.invoke") dropParameterTypes(int start,
    int end)

    Finds or creates a method type with some parameter types omitted.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Specified by:
    :   `dropParameterTypes` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Parameters:
    :   `start` - the index (zero-based) of the first parameter type to remove
    :   `end` - the index (greater than `start`) of the first parameter type after not to remove

    Returns:
    :   the same type, except with the selected parameter(s) removed

    Throws:
    :   `IndexOutOfBoundsException` - if `start` is negative or greater than `parameterCount()`
        or if `end` is negative or greater than `parameterCount()`
        or if `start` is greater than `end`
  + ### changeReturnType

    public [MethodType](MethodType.md "class in java.lang.invoke") changeReturnType([Class](../Class.md "class in java.lang")<?> nrtype)

    Finds or creates a method type with a different return type.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).

    Specified by:
    :   `changeReturnType` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Parameters:
    :   `nrtype` - a return parameter type to replace the old one with

    Returns:
    :   the same type, except with the return type change

    Throws:
    :   `NullPointerException` - if `nrtype` is null
  + ### hasPrimitives

    public boolean hasPrimitives()

    Reports if this type contains a primitive argument or return value.
    The return type `void` counts as a primitive.

    Returns:
    :   true if any of the types are primitives
  + ### hasWrappers

    public boolean hasWrappers()

    Reports if this type contains a wrapper argument or return value.
    Wrappers are types which box primitive values, such as [`Integer`](../Integer.md "class in java.lang").
    The reference type `java.lang.Void` counts as a wrapper,
    if it occurs as a return type.

    Returns:
    :   true if any of the types are wrappers
  + ### erase

    public [MethodType](MethodType.md "class in java.lang.invoke") erase()

    Erases all reference types to `Object`.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    All primitive types (including `void`) will remain unchanged.

    Returns:
    :   a version of the original type with all reference types replaced
  + ### generic

    public [MethodType](MethodType.md "class in java.lang.invoke") generic()

    Converts all types, both reference and primitive, to `Object`.
    Convenience method for [`genericMethodType`](#genericMethodType(int)).
    The expression `type.wrap().erase()` produces the same value
    as `type.generic()`.

    Returns:
    :   a version of the original type with all types replaced
  + ### wrap

    public [MethodType](MethodType.md "class in java.lang.invoke") wrap()

    Converts all primitive types to their corresponding wrapper types.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    All reference types (including wrapper types) will remain unchanged.
    A `void` return type is changed to the type `java.lang.Void`.
    The expression `type.wrap().erase()` produces the same value
    as `type.generic()`.

    Returns:
    :   a version of the original type with all primitive types replaced
  + ### unwrap

    public [MethodType](MethodType.md "class in java.lang.invoke") unwrap()

    Converts all wrapper types to their corresponding primitive types.
    Convenience method for [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    All primitive types (including `void`) will remain unchanged.
    A return type of `java.lang.Void` is changed to `void`.

    Returns:
    :   a version of the original type with all wrapper types replaced
  + ### parameterType

    public [Class](../Class.md "class in java.lang")<?> parameterType(int num)

    Returns the parameter type at the specified index, within this method type.

    Specified by:
    :   `parameterType` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Parameters:
    :   `num` - the index (zero-based) of the desired parameter type

    Returns:
    :   the selected parameter type

    Throws:
    :   `IndexOutOfBoundsException` - if `num` is not a valid index into `parameterArray()`
  + ### parameterCount

    public int parameterCount()

    Returns the number of parameter types in this method type.

    Specified by:
    :   `parameterCount` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Returns:
    :   the number of parameter types
  + ### returnType

    public [Class](../Class.md "class in java.lang")<?> returnType()

    Returns the return type of this method type.

    Specified by:
    :   `returnType` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Returns:
    :   the return type
  + ### parameterList

    public [List](../../util/List.md "interface in java.util")<[Class](../Class.md "class in java.lang")<?>> parameterList()

    Presents the parameter types as a list (a convenience method).
    The list will be immutable.

    Specified by:
    :   `parameterList` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Returns:
    :   the parameter types (as an immutable list)
  + ### lastParameterType

    public [Class](../Class.md "class in java.lang")<?> lastParameterType()

    Returns the last parameter type of this method type.
    If this type has no parameters, the sentinel value
    `void.class` is returned instead.

    Returns:
    :   the last parameter type if any, else `void.class`

    Since:
    :   10
  + ### parameterArray

    public [Class](../Class.md "class in java.lang")<?>[] parameterArray()

    Presents the parameter types as an array (a convenience method).
    Changes to the array will not result in changes to the type.

    Specified by:
    :   `parameterArray` in interface `TypeDescriptor.OfMethod<Class<?>,MethodType>`

    Returns:
    :   the parameter types (as a fresh copy if necessary)
  + ### equals

    public boolean equals([Object](../Object.md "class in java.lang") x)

    Compares the specified object with this type for equality.
    That is, it returns `true` if and only if the specified object
    is also a method type with exactly the same parameters and return type.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `x` - object to compare

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.equals(Object)`](../Object.md#equals(java.lang.Object))
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this method type.
    It is defined to be the same as the hashcode of a List
    whose elements are the return type followed by the
    parameter types.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this method type

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`equals(Object)`](#equals(java.lang.Object))
        - [`List.hashCode()`](../../util/List.md#hashCode())
  + ### toString

    public [String](../String.md "class in java.lang") toString()

    Returns a string representation of the method type,
    of the form `"(PT0,PT1...)RT"`.
    The string representation of a method type is a
    parenthesis enclosed, comma separated list of type names,
    followed immediately by the return type.

    Each type is represented by its
    [`simple name`](../Class.md#getSimpleName()).

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### fromMethodDescriptorString

    public static [MethodType](MethodType.md "class in java.lang.invoke") fromMethodDescriptorString([String](../String.md "class in java.lang") descriptor,
    [ClassLoader](../ClassLoader.md "class in java.lang") loader)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [TypeNotPresentException](../TypeNotPresentException.md "class in java.lang")

    Finds or creates an instance of a method type of the given method descriptor
    (JVMS ). This method is a convenience method for
    [`methodType`](#methodType(java.lang.Class,java.lang.Class%5B%5D)).
    Any class or interface name embedded in the descriptor string will be
    resolved by the given loader (or if it is `null`, on the system class loader).

    Parameters:
    :   `descriptor` - a method descriptor string
    :   `loader` - the class loader in which to look up the types

    Returns:
    :   a method type of the given method descriptor

    Throws:
    :   `NullPointerException` - if the string is `null`
    :   `IllegalArgumentException` - if the string is not a method descriptor
    :   `TypeNotPresentException` - if a named type cannot be found
    :   `SecurityException` - if the security manager is present and
        `loader` is `null` and the caller does not have the
        [`RuntimePermission`](../RuntimePermission.md "class in java.lang")`("getClassLoader")`
  + ### toMethodDescriptorString

    public [String](../String.md "class in java.lang") toMethodDescriptorString()

    Returns the descriptor string for this method type. This method
    is equivalent to calling [`MethodType::descriptorString`](#descriptorString()).

    Returns:
    :   the descriptor string for this method type

    See Also:
    :   - [Nominal Descriptor for `MethodType`](#descriptor)
  + ### descriptorString

    public [String](../String.md "class in java.lang") descriptorString()

    Returns the descriptor string for this method type.

    If this method type can be [described nominally](#descriptor),
    then the result is a method type descriptor (JVMS ).
    [`MethodTypeDesc`](../constant/MethodTypeDesc.md "interface in java.lang.constant") for this method type
    can be produced by calling [`MethodTypeDesc::ofDescriptor`](../constant/MethodTypeDesc.md#ofDescriptor(java.lang.String)) with the result descriptor string.

    If this method type cannot be [described nominally](#descriptor)
    and the result is a string of the form:
    > `"(<parameter-descriptors>)<return-descriptor>"`

    where `<parameter-descriptors>` is the concatenation of the
    [descriptor string](../Class.md#descriptorString()) of all
    of the parameter types and the [descriptor string](../Class.md#descriptorString())
    of the return type. No [`MethodTypeDesc`](../constant/MethodTypeDesc.md "interface in java.lang.constant")
    can be produced from the result string.

    Specified by:
    :   `descriptorString` in interface `TypeDescriptor`

    Returns:
    :   the descriptor string for this method type

    Since:
    :   12

    See Also:
    :   - [Nominal Descriptor for `MethodType`](#descriptor)
  + ### describeConstable

    public [Optional](../../util/Optional.md "class in java.util")<[MethodTypeDesc](../constant/MethodTypeDesc.md "interface in java.lang.constant")> describeConstable()

    Returns a nominal descriptor for this instance, if one can be
    constructed, or an empty [`Optional`](../../util/Optional.md "class in java.util") if one cannot be.

    Specified by:
    :   `describeConstable` in interface `Constable`

    Returns:
    :   An [`Optional`](../../util/Optional.md "class in java.util") containing the resulting nominal descriptor,
        or an empty [`Optional`](../../util/Optional.md "class in java.util") if one cannot be constructed.

    Since:
    :   12

    See Also:
    :   - [Nominal Descriptor for `MethodType`](#descriptor)