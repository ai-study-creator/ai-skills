Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface ParameterizedType

All Superinterfaces:
:   `Type`

---

public interface ParameterizedType
extends [Type](Type.md "interface in java.lang.reflect")

ParameterizedType represents a parameterized type such as
`Collection<String>`.

A parameterized type is created the first time it is needed by a
reflective method, as specified in this package. When a
parameterized type p is created, the generic class or interface declaration
that p instantiates is resolved, and all type arguments of p are created
recursively. See [`TypeVariable`](TypeVariable.md "interface in java.lang.reflect") for details on the creation process for type
variables. Repeated creation of a parameterized type has no effect.

Instances of classes that implement this interface must implement
an equals() method that equates any two instances that share the
same generic class or interface declaration and have equal type parameters.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Type[]`

  `getActualTypeArguments()`

  Returns an array of `Type` objects representing the actual type
  arguments to this type.

  `Type`

  `getOwnerType()`

  Returns a `Type` object representing the type that this type
  is a member of.

  `Type`

  `getRawType()`

  Returns the `Type` object representing the class or interface
  that declared this type.

  ### Methods inherited from interface java.lang.reflect.[Type](Type.md "interface in java.lang.reflect")

  `getTypeName`

* ## Method Details

  + ### getActualTypeArguments

    [Type](Type.md "interface in java.lang.reflect")[] getActualTypeArguments()

    Returns an array of `Type` objects representing the actual type
    arguments to this type.

    Note that in some cases, the returned array be empty. This can occur
    if this type represents a non-parameterized type nested within
    a parameterized type.

    Returns:
    :   an array of `Type` objects representing the actual type
        arguments to this type

    Throws:
    :   `TypeNotPresentException` - if any of the actual type arguments
        refers to a non-existent class or interface declaration
    :   `MalformedParameterizedTypeException` - if any of the
        actual type parameters refer to a parameterized type that cannot
        be instantiated for any reason

    Since:
    :   1.5
  + ### getRawType

    [Type](Type.md "interface in java.lang.reflect") getRawType()

    Returns the `Type` object representing the class or interface
    that declared this type.

    Returns:
    :   the `Type` object representing the class or interface
        that declared this type

    Since:
    :   1.5
  + ### getOwnerType

    [Type](Type.md "interface in java.lang.reflect") getOwnerType()

    Returns a `Type` object representing the type that this type
    is a member of. For example, if this type is `O<T>.I<S>`,
    return a representation of `O<T>`.

    If this type is a top-level type, `null` is returned.

    Returns:
    :   a `Type` object representing the type that
        this type is a member of. If this type is a top-level type,
        `null` is returned

    Throws:
    :   `TypeNotPresentException` - if the owner type
        refers to a non-existent class or interface declaration
    :   `MalformedParameterizedTypeException` - if the owner type
        refers to a parameterized type that cannot be instantiated
        for any reason

    Since:
    :   1.5