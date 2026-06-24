Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Interface ClassDesc

All Superinterfaces:
:   `ConstantDesc`, `TypeDescriptor`, `TypeDescriptor.OfField<ClassDesc>`

---

public sealed interface ClassDesc
extends [ConstantDesc](ConstantDesc.md "interface in java.lang.constant"), [TypeDescriptor.OfField](../invoke/TypeDescriptor.OfField.md "interface in java.lang.invoke")<[ClassDesc](ClassDesc.md "interface in java.lang.constant")>

A [nominal descriptor](package-summary.md#nominal) for a
[`Class`](../Class.md "class in java.lang") constant.

For common system types, including all the primitive types, there are
predefined [ClassDesc](ClassDesc.md "interface in java.lang.constant") constants in [`ConstantDescs`](ConstantDescs.md "class in java.lang.constant").
(The `java.lang.constant` APIs consider `void` to be a primitive type.)
To create a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a class or interface type, use [`of(java.lang.String)`](#of(java.lang.String)) or
[`ofDescriptor(String)`](#ofDescriptor(java.lang.String)); to create a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for an array
type, use [`ofDescriptor(String)`](#ofDescriptor(java.lang.String)), or first obtain a
[ClassDesc](ClassDesc.md "interface in java.lang.constant") for the component type and then call the [`arrayType()`](#arrayType())
or [`arrayType(int)`](#arrayType(int)) methods.

Since:
:   12

See Also:
:   * [`ConstantDescs`](ConstantDescs.md "class in java.lang.constant")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.invoke.[TypeDescriptor](../invoke/TypeDescriptor.md "interface in java.lang.invoke")

  `TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>, TypeDescriptor.OfMethod<F extends TypeDescriptor.OfField<F>,M extends TypeDescriptor.OfMethod<F,M>>`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default ClassDesc`

  `arrayType()`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for an array type whose component type
  is described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

  `default ClassDesc`

  `arrayType(int rank)`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for an array type of the specified rank,
  whose component type is described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

  `default ClassDesc`

  `componentType()`

  Returns the component type of this [ClassDesc](ClassDesc.md "interface in java.lang.constant"), if it describes
  an array type, or `null` otherwise.

  `String`

  `descriptorString()`

  Returns a field type descriptor string for this type

  `default String`

  `displayName()`

  Returns a human-readable name for the type described by this descriptor.

  `boolean`

  `equals(Object o)`

  Compare the specified object with this descriptor for equality.

  `default boolean`

  `isArray()`

  Returns whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes an array type.

  `default boolean`

  `isClassOrInterface()`

  Returns whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes a class or interface type.

  `default boolean`

  `isPrimitive()`

  Returns whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes a primitive type.

  `default ClassDesc`

  `nested(String nestedName)`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a nested class of the class or
  interface type described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

  `default ClassDesc`

  `nested(String firstNestedName,
  String... moreNestedNames)`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a nested class of the class or
  interface type described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

  `static ClassDesc`

  `of(String name)`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a class or interface type,
  given the name of the class or interface, such as `"java.lang.String"`.

  `static ClassDesc`

  `of(String packageName,
  String className)`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a class or interface type,
  given a package name and the unqualified (simple) name for the
  class or interface.

  `static ClassDesc`

  `ofDescriptor(String descriptor)`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") given a descriptor string for a class,
  interface, array, or primitive type.

  `static ClassDesc`

  `ofInternalName(String name)`

  Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a class or interface type,
  given the name of the class or interface in internal form,
  such as `"java/lang/String"`.

  `default String`

  `packageName()`

  Returns the package name of this [ClassDesc](ClassDesc.md "interface in java.lang.constant"), if it describes
  a class or interface type.

  `Class<?>`

  `resolveConstantDesc(MethodHandles.Lookup lookup)`

  Resolves this descriptor reflectively, emulating the resolution behavior
  of JVMS and the access control behavior of JVMS .

* ## Method Details

  + ### of

    static [ClassDesc](ClassDesc.md "interface in java.lang.constant") of([String](../String.md "class in java.lang") name)

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a class or interface type,
    given the name of the class or interface, such as `"java.lang.String"`.
    (To create a descriptor for an array type, either use [`ofDescriptor(String)`](#ofDescriptor(java.lang.String))
    or [`arrayType()`](#arrayType()); to create a descriptor for a primitive type, use
    [`ofDescriptor(String)`](#ofDescriptor(java.lang.String)) or use the predefined constants in
    [`ConstantDescs`](ConstantDescs.md "class in java.lang.constant")).

    Parameters:
    :   `name` - the fully qualified (dot-separated) binary class name

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the desired class

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalArgumentException` - if the name string is not in the
        correct format

    See Also:
    :   - [`ofDescriptor(String)`](#ofDescriptor(java.lang.String))
        - [`ofInternalName(String)`](#ofInternalName(java.lang.String))
  + ### ofInternalName

    static [ClassDesc](ClassDesc.md "interface in java.lang.constant") ofInternalName([String](../String.md "class in java.lang") name)

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a class or interface type,
    given the name of the class or interface in internal form,
    such as `"java/lang/String"`.

    Parameters:
    :   `name` - the fully qualified class name, in internal (slash-separated) form

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the desired class

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalArgumentException` - if the name string is not in the
        correct format

    Since:
    :   20

    See Also:
    :   - [`of(String)`](#of(java.lang.String))
        - [`ofDescriptor(String)`](#ofDescriptor(java.lang.String))
  + ### of

    static [ClassDesc](ClassDesc.md "interface in java.lang.constant") of([String](../String.md "class in java.lang") packageName,
    [String](../String.md "class in java.lang") className)

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a class or interface type,
    given a package name and the unqualified (simple) name for the
    class or interface.

    Parameters:
    :   `packageName` - the package name (dot-separated); if the package
        name is the empty string, the class is considered to
        be in the unnamed package
    :   `className` - the unqualified (simple) class name

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the desired class

    Throws:
    :   `NullPointerException` - if any argument is `null`
    :   `IllegalArgumentException` - if the package name or class name are
        not in the correct format
  + ### ofDescriptor

    static [ClassDesc](ClassDesc.md "interface in java.lang.constant") ofDescriptor([String](../String.md "class in java.lang") descriptor)

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") given a descriptor string for a class,
    interface, array, or primitive type.

    Parameters:
    :   `descriptor` - a field descriptor string

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the desired class

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalArgumentException` - if the descriptor string is not in the
        correct format

    See Also:
    :   - [`of(String)`](#of(java.lang.String))
        - [`ofInternalName(String)`](#ofInternalName(java.lang.String))
  + ### arrayType

    default [ClassDesc](ClassDesc.md "interface in java.lang.constant") arrayType()

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for an array type whose component type
    is described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

    Specified by:
    :   `arrayType` in interface `TypeDescriptor.OfField<ClassDesc>`

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the array type

    Throws:
    :   `IllegalStateException` - if the resulting [ClassDesc](ClassDesc.md "interface in java.lang.constant") would have an array rank of greater than 255
  + ### arrayType

    default [ClassDesc](ClassDesc.md "interface in java.lang.constant") arrayType(int rank)

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for an array type of the specified rank,
    whose component type is described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

    Parameters:
    :   `rank` - the rank of the array

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the array type

    Throws:
    :   `IllegalArgumentException` - if the rank is less than or
        equal to zero or if the rank of the resulting array type is
        greater than 255
  + ### nested

    default [ClassDesc](ClassDesc.md "interface in java.lang.constant") nested([String](../String.md "class in java.lang") nestedName)

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a nested class of the class or
    interface type described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

    Parameters:
    :   `nestedName` - the unqualified name of the nested class

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the nested class

    Throws:
    :   `NullPointerException` - if the argument is `null`
    :   `IllegalStateException` - if this [ClassDesc](ClassDesc.md "interface in java.lang.constant") does not
        describe a class or interface type
    :   `IllegalArgumentException` - if the nested class name is invalid
  + ### nested

    default [ClassDesc](ClassDesc.md "interface in java.lang.constant") nested([String](../String.md "class in java.lang") firstNestedName,
    [String](../String.md "class in java.lang")... moreNestedNames)

    Returns a [ClassDesc](ClassDesc.md "interface in java.lang.constant") for a nested class of the class or
    interface type described by this [ClassDesc](ClassDesc.md "interface in java.lang.constant").

    Parameters:
    :   `firstNestedName` - the unqualified name of the first level of nested class
    :   `moreNestedNames` - the unqualified name(s) of the remaining levels of
        nested class

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the nested class

    Throws:
    :   `NullPointerException` - if any argument or its contents is `null`
    :   `IllegalStateException` - if this [ClassDesc](ClassDesc.md "interface in java.lang.constant") does not
        describe a class or interface type
    :   `IllegalArgumentException` - if the nested class name is invalid
  + ### isArray

    default boolean isArray()

    Returns whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes an array type.

    Specified by:
    :   `isArray` in interface `TypeDescriptor.OfField<ClassDesc>`

    Returns:
    :   whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes an array type
  + ### isPrimitive

    default boolean isPrimitive()

    Returns whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes a primitive type.

    Specified by:
    :   `isPrimitive` in interface `TypeDescriptor.OfField<ClassDesc>`

    Returns:
    :   whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes a primitive type
  + ### isClassOrInterface

    default boolean isClassOrInterface()

    Returns whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes a class or interface type.

    Returns:
    :   whether this [ClassDesc](ClassDesc.md "interface in java.lang.constant") describes a class or interface type
  + ### componentType

    default [ClassDesc](ClassDesc.md "interface in java.lang.constant") componentType()

    Returns the component type of this [ClassDesc](ClassDesc.md "interface in java.lang.constant"), if it describes
    an array type, or `null` otherwise.

    Specified by:
    :   `componentType` in interface `TypeDescriptor.OfField<ClassDesc>`

    Returns:
    :   a [ClassDesc](ClassDesc.md "interface in java.lang.constant") describing the component type, or `null`
        if this descriptor does not describe an array type
  + ### packageName

    default [String](../String.md "class in java.lang") packageName()

    Returns the package name of this [ClassDesc](ClassDesc.md "interface in java.lang.constant"), if it describes
    a class or interface type.

    Returns:
    :   the package name, or the empty string if the class is in the
        default package, or this [ClassDesc](ClassDesc.md "interface in java.lang.constant") does not describe a class or interface type
  + ### displayName

    default [String](../String.md "class in java.lang") displayName()

    Returns a human-readable name for the type described by this descriptor.

    Returns:
    :   the human-readable name
  + ### descriptorString

    [String](../String.md "class in java.lang") descriptorString()

    Returns a field type descriptor string for this type

    Specified by:
    :   `descriptorString` in interface `TypeDescriptor`

    Returns:
    :   the descriptor string
  + ### resolveConstantDesc

    [Class](../Class.md "class in java.lang")<?> resolveConstantDesc([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup)
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

    Compare the specified object with this descriptor for equality. Returns
    `true` if and only if the specified object is also a
    [ClassDesc](ClassDesc.md "interface in java.lang.constant") and both describe the same type.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the other object

    Returns:
    :   whether this descriptor is equal to the other object

    See Also:
    :   - [`Object.hashCode()`](../Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")