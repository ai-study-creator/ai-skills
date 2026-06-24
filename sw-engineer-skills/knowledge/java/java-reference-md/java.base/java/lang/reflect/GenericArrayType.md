Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface GenericArrayType

All Superinterfaces:
:   `Type`

---

public interface GenericArrayType
extends [Type](Type.md "interface in java.lang.reflect")

`GenericArrayType` represents an array type whose component
type is either a parameterized type or a type variable.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Type`

  `getGenericComponentType()`

  Returns a `Type` object representing the component type
  of this array.

  ### Methods inherited from interface java.lang.reflect.[Type](Type.md "interface in java.lang.reflect")

  `getTypeName`

* ## Method Details

  + ### getGenericComponentType

    [Type](Type.md "interface in java.lang.reflect") getGenericComponentType()

    Returns a `Type` object representing the component type
    of this array. This method creates the component type of the
    array. See the declaration of [`ParameterizedType`](ParameterizedType.md "interface in java.lang.reflect") for the
    semantics of the creation process for parameterized types and
    see [`TypeVariable`](TypeVariable.md "interface in java.lang.reflect") for the
    creation process for type variables.

    Returns:
    :   a `Type` object representing the component type
        of this array

    Throws:
    :   `TypeNotPresentException` - if the underlying array type's component
        type refers to a non-existent class or interface declaration
    :   `MalformedParameterizedTypeException` - if the
        underlying array type's component type refers to a
        parameterized type that cannot be instantiated for any reason