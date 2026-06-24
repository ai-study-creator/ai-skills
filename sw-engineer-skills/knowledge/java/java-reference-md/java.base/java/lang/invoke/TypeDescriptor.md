Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Interface TypeDescriptor

All Known Subinterfaces:
:   `ClassDesc`, `MethodTypeDesc`, `TypeDescriptor.OfField<F>`, `TypeDescriptor.OfMethod<F,M>`

All Known Implementing Classes:
:   `Class`, `MethodType`

---

public interface TypeDescriptor

An entity that has a type descriptor.

Since:
:   12

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `TypeDescriptor.OfField<F extends TypeDescriptor.OfField<F>>`

  An entity that has a field type descriptor.

  `static interface`

  `TypeDescriptor.OfMethod<F extends TypeDescriptor.OfField<F>,M extends TypeDescriptor.OfMethod<F,M>>`

  An entity that has a method type descriptor
  Method descriptors conforming to JVMS can be described
  nominally via [`MethodType::describeConstable`](MethodType.md#describeConstable());
  otherwise they cannot be described nominally.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `descriptorString()`

  Returns the descriptor string for this `TypeDescriptor` object.

* ## Method Details

  + ### descriptorString

    [String](../String.md "class in java.lang") descriptorString()

    Returns the descriptor string for this `TypeDescriptor` object.
    If this `TypeDescriptor` object can be described in nominal form,
    then this method returns a type descriptor as specified in JVMS .
    The result descriptor string can be used to produce
    a [nominal descriptor](../constant/ConstantDesc.md "interface in java.lang.constant").
    Otherwise, the result string is not a type descriptor.
    No [nominal descriptor](../constant/ConstantDesc.md "interface in java.lang.constant")
    can be produced from the result string.

    Returns:
    :   the descriptor string for this `TypeDescriptor` object