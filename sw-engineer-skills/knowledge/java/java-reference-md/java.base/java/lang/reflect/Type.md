Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface Type

All Known Subinterfaces:
:   `GenericArrayType`, `ParameterizedType`, `TypeVariable<D>`, `WildcardType`

All Known Implementing Classes:
:   `Class`

---

public interface Type

Type is the common superinterface for all types in the Java
programming language. These include raw types, parameterized types,
array types, type variables and primitive types.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default String`

  `getTypeName()`

  Returns a string describing this type, including information
  about any type parameters.

* ## Method Details

  + ### getTypeName

    default [String](../String.md "class in java.lang") getTypeName()

    Returns a string describing this type, including information
    about any type parameters.

    Returns:
    :   a string describing this type

    Since:
    :   1.8