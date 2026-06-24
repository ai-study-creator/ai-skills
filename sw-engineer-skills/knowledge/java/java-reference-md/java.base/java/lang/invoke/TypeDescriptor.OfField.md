Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Interface TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>

Type Parameters:
:   `F` - the class implementing [TypeDescriptor.OfField](TypeDescriptor.OfField.md "interface in java.lang.invoke")

All Superinterfaces:
:   `TypeDescriptor`

All Known Subinterfaces:
:   `ClassDesc`

All Known Implementing Classes:
:   `Class`

Enclosing interface:
:   `TypeDescriptor`

---

public static interface TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>
extends [TypeDescriptor](TypeDescriptor.md "interface in java.lang.invoke")

An entity that has a field type descriptor.
Field descriptors conforming to JVMS can be described
nominally via [`Class::describeConstable`](../Class.md#describeConstable());
otherwise they cannot be described nominally.

Since:
:   12

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.invoke.[TypeDescriptor](TypeDescriptor.md "interface in java.lang.invoke")

  `TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>, TypeDescriptor.OfMethod<F extends TypeDescriptor.OfField<F>,M extends TypeDescriptor.OfMethod<F,M>>`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `F`

  `arrayType()`

  Return a descriptor for the array type whose component type is described by this
  descriptor

  `F`

  `componentType()`

  If this field descriptor describes an array type, return
  a descriptor for its component type, otherwise return `null`.

  `boolean`

  `isArray()`

  Does this field descriptor describe an array type?

  `boolean`

  `isPrimitive()`

  Does this field descriptor describe a primitive type (including void.)

  ### Methods inherited from interface java.lang.invoke.[TypeDescriptor](TypeDescriptor.md "interface in java.lang.invoke")

  `descriptorString`

* ## Method Details

  + ### isArray

    boolean isArray()

    Does this field descriptor describe an array type?

    Returns:
    :   whether this field descriptor describes an array type
  + ### isPrimitive

    boolean isPrimitive()

    Does this field descriptor describe a primitive type (including void.)

    Returns:
    :   whether this field descriptor describes a primitive type
  + ### componentType

    [F](TypeDescriptor.OfField.md "type parameter in TypeDescriptor.OfField") componentType()

    If this field descriptor describes an array type, return
    a descriptor for its component type, otherwise return `null`.

    Returns:
    :   the component type, or `null` if this field descriptor does
        not describe an array type
  + ### arrayType

    [F](TypeDescriptor.OfField.md "type parameter in TypeDescriptor.OfField") arrayType()

    Return a descriptor for the array type whose component type is described by this
    descriptor

    Returns:
    :   the descriptor for the array type