Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Interface TypeDescriptor.OfMethod<F extends [TypeDescriptor.OfField](TypeDescriptor.OfField.md "interface in java.lang.invoke")<F>,M extends TypeDescriptor.OfMethod<F,M>>

Type Parameters:
:   `F` - the type representing field type descriptors
:   `M` - the class implementing [TypeDescriptor.OfMethod](TypeDescriptor.OfMethod.md "interface in java.lang.invoke")

All Superinterfaces:
:   `TypeDescriptor`

All Known Subinterfaces:
:   `MethodTypeDesc`

All Known Implementing Classes:
:   `MethodType`

Enclosing interface:
:   `TypeDescriptor`

---

public static interface TypeDescriptor.OfMethod<F extends [TypeDescriptor.OfField](TypeDescriptor.OfField.md "interface in java.lang.invoke")<F>,M extends TypeDescriptor.OfMethod<F,M>>
extends [TypeDescriptor](TypeDescriptor.md "interface in java.lang.invoke")

An entity that has a method type descriptor
Method descriptors conforming to JVMS can be described
nominally via [`MethodType::describeConstable`](MethodType.md#describeConstable());
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

  `M`

  `changeParameterType(int index,
  F paramType)`

  Return a method descriptor that is identical to this one,
  except that a single parameter type has been changed to the specified type.

  `M`

  `changeReturnType(F newReturn)`

  Return a method descriptor that is identical to this one, except that the return
  type has been changed to the specified type

  `M`

  `dropParameterTypes(int start,
  int end)`

  Return a method descriptor that is identical to this one,
  except that a range of parameter types have been removed.

  `M`

  `insertParameterTypes(int pos,
  F... paramTypes)`

  Return a method descriptor that is identical to this one,
  except that a range of additional parameter types have been inserted.

  `F[]`

  `parameterArray()`

  Return an array of field descriptors for the parameter types of the method type
  described by this descriptor

  `int`

  `parameterCount()`

  Return the number of parameters in the method type

  `List<F>`

  `parameterList()`

  Return an immutable list of field descriptors for the parameter types of the method type
  described by this descriptor

  `F`

  `parameterType(int i)`

  Return a field descriptor describing the requested parameter of the method type
  described by this descriptor

  `F`

  `returnType()`

  Return a field descriptor describing the return type of the method type described
  by this descriptor

  ### Methods inherited from interface java.lang.invoke.[TypeDescriptor](TypeDescriptor.md "interface in java.lang.invoke")

  `descriptorString`

* ## Method Details

  + ### parameterCount

    int parameterCount()

    Return the number of parameters in the method type

    Returns:
    :   the number of parameters
  + ### parameterType

    [F](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") parameterType(int i)

    Return a field descriptor describing the requested parameter of the method type
    described by this descriptor

    Parameters:
    :   `i` - the index of the parameter

    Returns:
    :   a field descriptor for the requested parameter type

    Throws:
    :   `IndexOutOfBoundsException` - if the index is outside the half-open
        range {[0, parameterCount)}
  + ### returnType

    [F](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") returnType()

    Return a field descriptor describing the return type of the method type described
    by this descriptor

    Returns:
    :   a field descriptor for the return type
  + ### parameterArray

    [F](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod")[] parameterArray()

    Return an array of field descriptors for the parameter types of the method type
    described by this descriptor

    Returns:
    :   field descriptors for the parameter types
  + ### parameterList

    [List](../../util/List.md "interface in java.util")<[F](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod")> parameterList()

    Return an immutable list of field descriptors for the parameter types of the method type
    described by this descriptor

    Returns:
    :   field descriptors for the parameter types
  + ### changeReturnType

    [M](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") changeReturnType([F](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") newReturn)

    Return a method descriptor that is identical to this one, except that the return
    type has been changed to the specified type

    Parameters:
    :   `newReturn` - a field descriptor for the new return type

    Returns:
    :   the new method descriptor

    Throws:
    :   `NullPointerException` - if any argument is `null`
  + ### changeParameterType

    [M](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") changeParameterType(int index,
    [F](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") paramType)

    Return a method descriptor that is identical to this one,
    except that a single parameter type has been changed to the specified type.

    Parameters:
    :   `index` - the index of the parameter to change
    :   `paramType` - a field descriptor describing the new parameter type

    Returns:
    :   the new method descriptor

    Throws:
    :   `NullPointerException` - if any argument is `null`
    :   `IndexOutOfBoundsException` - if the index is outside the half-open
        range {[0, parameterCount)}
  + ### dropParameterTypes

    [M](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") dropParameterTypes(int start,
    int end)

    Return a method descriptor that is identical to this one,
    except that a range of parameter types have been removed.

    Parameters:
    :   `start` - the index of the first parameter to remove
    :   `end` - the index after the last parameter to remove

    Returns:
    :   the new method descriptor

    Throws:
    :   `IndexOutOfBoundsException` - if `start` is outside the half-open
        range `[0, parameterCount)`, or `end` is outside the closed range
        `[0, parameterCount]`, or if `start > end`
  + ### insertParameterTypes

    [M](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod") insertParameterTypes(int pos,
    [F](TypeDescriptor.OfMethod.md "type parameter in TypeDescriptor.OfMethod")... paramTypes)

    Return a method descriptor that is identical to this one,
    except that a range of additional parameter types have been inserted.

    Parameters:
    :   `pos` - the index at which to insert the first inserted parameter
    :   `paramTypes` - field descriptors describing the new parameter types
        to insert

    Returns:
    :   the new method descriptor

    Throws:
    :   `NullPointerException` - if any argument is `null`
    :   `IndexOutOfBoundsException` - if `pos` is outside the closed
        range {[0, parameterCount]}