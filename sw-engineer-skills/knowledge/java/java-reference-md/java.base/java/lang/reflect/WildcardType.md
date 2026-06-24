Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface WildcardType

All Superinterfaces:
:   `Type`

---

public interface WildcardType
extends [Type](Type.md "interface in java.lang.reflect")

WildcardType represents a wildcard type expression, such as
`?`, `? extends Number`, or `? super Integer`.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Type[]`

  `getLowerBounds()`

  Returns an array of `Type` objects representing the
  lower bound(s) of this type variable.

  `Type[]`

  `getUpperBounds()`

  Returns an array of `Type` objects representing the upper
  bound(s) of this type variable.

  ### Methods inherited from interface java.lang.reflect.[Type](Type.md "interface in java.lang.reflect")

  `getTypeName`

* ## Method Details

  + ### getUpperBounds

    [Type](Type.md "interface in java.lang.reflect")[] getUpperBounds()

    Returns an array of `Type` objects representing the upper
    bound(s) of this type variable. If no upper bound is
    explicitly declared, the upper bound is `Object`.

    For each upper bound B :
    - if B is a parameterized type or a type variable, it is created,
      (see [`ParameterizedType`](ParameterizedType.md "interface in java.lang.reflect")
      for the details of the creation process for parameterized types).- Otherwise, B is resolved.

    Returns:
    :   an array of Types representing the upper bound(s) of this
        type variable

    Throws:
    :   `TypeNotPresentException` - if any of the
        bounds refers to a non-existent type declaration
    :   `MalformedParameterizedTypeException` - if any of the
        bounds refer to a parameterized type that cannot be instantiated
        for any reason
  + ### getLowerBounds

    [Type](Type.md "interface in java.lang.reflect")[] getLowerBounds()

    Returns an array of `Type` objects representing the
    lower bound(s) of this type variable. If no lower bound is
    explicitly declared, the lower bound is the type of `null`.
    In this case, a zero length array is returned.

    For each lower bound B :
    - if B is a parameterized type or a type variable, it is created,
      (see [`ParameterizedType`](ParameterizedType.md "interface in java.lang.reflect")
      for the details of the creation process for parameterized types).- Otherwise, B is resolved.

    Returns:
    :   an array of Types representing the lower bound(s) of this
        type variable

    Throws:
    :   `TypeNotPresentException` - if any of the
        bounds refers to a non-existent type declaration
    :   `MalformedParameterizedTypeException` - if any of the
        bounds refer to a parameterized type that cannot be instantiated
        for any reason