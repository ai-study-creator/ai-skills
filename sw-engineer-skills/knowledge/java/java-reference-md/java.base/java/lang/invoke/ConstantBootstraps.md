Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Class ConstantBootstraps

[java.lang.Object](../Object.md "class in java.lang")

java.lang.invoke.ConstantBootstraps

---

public final class ConstantBootstraps
extends [Object](../Object.md "class in java.lang")

Bootstrap methods for dynamically-computed constants.

The bootstrap methods in this class will throw a
`NullPointerException` for any reference argument that is `null`,
unless the argument is specified to be unused or specified to accept a
`null` value.

Since:
:   11

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static VarHandle`

  `arrayVarHandle(MethodHandles.Lookup lookup,
  String name,
  Class<VarHandle> type,
  Class<?> arrayClass)`

  Finds a [`VarHandle`](VarHandle.md "class in java.lang.invoke") for an array type.

  `static <E extends Enum<E>>  
  E`

  `enumConstant(MethodHandles.Lookup lookup,
  String name,
  Class<E> type)`

  Returns an `enum` constant of the type specified by `type`
  with the name specified by `name`.

  `static Object`

  `explicitCast(MethodHandles.Lookup lookup,
  String name,
  Class<?> dstType,
  Object value)`

  Applies a conversion from a source type to a destination type.

  `static VarHandle`

  `fieldVarHandle(MethodHandles.Lookup lookup,
  String name,
  Class<VarHandle> type,
  Class<?> declaringClass,
  Class<?> fieldType)`

  Finds a [`VarHandle`](VarHandle.md "class in java.lang.invoke") for an instance field.

  `static Object`

  `getStaticFinal(MethodHandles.Lookup lookup,
  String name,
  Class<?> type)`

  Returns the value of a static final field declared in the class which
  is the same as the field's type (or, for primitive-valued fields,
  declared in the wrapper class.) This is a simplified form of
  [`getStaticFinal(MethodHandles.Lookup, String, Class, Class)`](#getStaticFinal(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class))
  for the case where a class declares distinguished constant instances of
  itself.

  `static Object`

  `getStaticFinal(MethodHandles.Lookup lookup,
  String name,
  Class<?> type,
  Class<?> declaringClass)`

  Returns the value of a static final field.

  `static Object`

  `invoke(MethodHandles.Lookup lookup,
  String name,
  Class<?> type,
  MethodHandle handle,
  Object... args)`

  Returns the result of invoking a method handle with the provided
  arguments.

  `static Object`

  `nullConstant(MethodHandles.Lookup lookup,
  String name,
  Class<?> type)`

  Returns a `null` object reference for the reference type specified
  by `type`.

  `static Class<?>`

  `primitiveClass(MethodHandles.Lookup lookup,
  String name,
  Class<?> type)`

  Returns a [`Class`](../Class.md "class in java.lang") mirror for the primitive type whose type
  descriptor is specified by `name`.

  `static VarHandle`

  `staticFieldVarHandle(MethodHandles.Lookup lookup,
  String name,
  Class<VarHandle> type,
  Class<?> declaringClass,
  Class<?> fieldType)`

  Finds a [`VarHandle`](VarHandle.md "class in java.lang.invoke") for a static field.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### nullConstant

    public static [Object](../Object.md "class in java.lang") nullConstant([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<?> type)

    Returns a `null` object reference for the reference type specified
    by `type`.

    Parameters:
    :   `lookup` - unused
    :   `name` - unused
    :   `type` - a reference type

    Returns:
    :   a `null` value

    Throws:
    :   `IllegalArgumentException` - if `type` is not a reference type
  + ### primitiveClass

    public static [Class](../Class.md "class in java.lang")<?> primitiveClass([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<?> type)

    Returns a [`Class`](../Class.md "class in java.lang") mirror for the primitive type whose type
    descriptor is specified by `name`.

    Parameters:
    :   `lookup` - unused
    :   `name` - the descriptor (JVMS ) of the desired primitive type
    :   `type` - the required result type (must be `Class.class`)

    Returns:
    :   the [`Class`](../Class.md "class in java.lang") mirror

    Throws:
    :   `IllegalArgumentException` - if the name is not a descriptor for a
        primitive type or the type is not `Class.class`
  + ### enumConstant

    public static <E extends [Enum](../Enum.md "class in java.lang")<E>> E enumConstant([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<E> type)

    Returns an `enum` constant of the type specified by `type`
    with the name specified by `name`.

    Type Parameters:
    :   `E` - The enum type for which a constant value is to be returned

    Parameters:
    :   `lookup` - the lookup context describing the class performing the
        operation (normally stacked by the JVM)
    :   `name` - the name of the constant to return, which must exactly match
        an enum constant in the specified type.
    :   `type` - the `Class` object describing the enum type for which
        a constant is to be returned

    Returns:
    :   the enum constant of the specified enum type with the
        specified name

    Throws:
    :   `IllegalAccessError` - if the declaring class or the field is not
        accessible to the class performing the operation
    :   `IllegalArgumentException` - if the specified enum type has
        no constant with the specified name, or the specified
        class object does not represent an enum type

    See Also:
    :   - [`Enum.valueOf(Class, String)`](../Enum.md#valueOf(java.lang.Class,java.lang.String))
  + ### getStaticFinal

    public static [Object](../Object.md "class in java.lang") getStaticFinal([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<?> type,
    [Class](../Class.md "class in java.lang")<?> declaringClass)

    Returns the value of a static final field.

    Parameters:
    :   `lookup` - the lookup context describing the class performing the
        operation (normally stacked by the JVM)
    :   `name` - the name of the field
    :   `type` - the type of the field
    :   `declaringClass` - the class in which the field is declared

    Returns:
    :   the value of the field

    Throws:
    :   `IllegalAccessError` - if the declaring class or the field is not
        accessible to the class performing the operation
    :   `NoSuchFieldError` - if the specified field does not exist
    :   `IncompatibleClassChangeError` - if the specified field is not
        `final`
  + ### getStaticFinal

    public static [Object](../Object.md "class in java.lang") getStaticFinal([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<?> type)

    Returns the value of a static final field declared in the class which
    is the same as the field's type (or, for primitive-valued fields,
    declared in the wrapper class.) This is a simplified form of
    [`getStaticFinal(MethodHandles.Lookup, String, Class, Class)`](#getStaticFinal(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class))
    for the case where a class declares distinguished constant instances of
    itself.

    Parameters:
    :   `lookup` - the lookup context describing the class performing the
        operation (normally stacked by the JVM)
    :   `name` - the name of the field
    :   `type` - the type of the field

    Returns:
    :   the value of the field

    Throws:
    :   `IllegalAccessError` - if the declaring class or the field is not
        accessible to the class performing the operation
    :   `NoSuchFieldError` - if the specified field does not exist
    :   `IncompatibleClassChangeError` - if the specified field is not
        `final`

    See Also:
    :   - [`getStaticFinal(MethodHandles.Lookup, String, Class, Class)`](#getStaticFinal(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.Class,java.lang.Class))
  + ### invoke

    public static [Object](../Object.md "class in java.lang") invoke([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<?> type,
    [MethodHandle](MethodHandle.md "class in java.lang.invoke") handle,
    [Object](../Object.md "class in java.lang")... args)
    throws [Throwable](../Throwable.md "class in java.lang")

    Returns the result of invoking a method handle with the provided
    arguments.

    This method behaves as if the method handle to be invoked is the result
    of adapting the given method handle, via [`MethodHandle.asType(java.lang.invoke.MethodType)`](MethodHandle.md#asType(java.lang.invoke.MethodType)), to
    adjust the return type to the desired type.

    Parameters:
    :   `lookup` - unused
    :   `name` - unused
    :   `type` - the desired type of the value to be returned, which must be
        compatible with the return type of the method handle
    :   `handle` - the method handle to be invoked
    :   `args` - the arguments to pass to the method handle, as if with
        [`MethodHandle.invokeWithArguments(java.lang.Object...)`](MethodHandle.md#invokeWithArguments(java.lang.Object...)). Each argument may be
        `null`.

    Returns:
    :   the result of invoking the method handle

    Throws:
    :   `WrongMethodTypeException` - if the handle's method type cannot be
        adjusted to take the given number of arguments, or if the handle's return
        type cannot be adjusted to the desired type
    :   `ClassCastException` - if an argument or the result produced by
        invoking the handle cannot be converted by reference casting
    :   `Throwable` - anything thrown by the method handle invocation
  + ### fieldVarHandle

    public static [VarHandle](VarHandle.md "class in java.lang.invoke") fieldVarHandle([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<[VarHandle](VarHandle.md "class in java.lang.invoke")> type,
    [Class](../Class.md "class in java.lang")<?> declaringClass,
    [Class](../Class.md "class in java.lang")<?> fieldType)

    Finds a [`VarHandle`](VarHandle.md "class in java.lang.invoke") for an instance field.

    Parameters:
    :   `lookup` - the lookup context describing the class performing the
        operation (normally stacked by the JVM)
    :   `name` - the name of the field
    :   `type` - the required result type (must be `Class<VarHandle>`)
    :   `declaringClass` - the class in which the field is declared
    :   `fieldType` - the type of the field

    Returns:
    :   the [`VarHandle`](VarHandle.md "class in java.lang.invoke")

    Throws:
    :   `IllegalAccessError` - if the declaring class or the field is not
        accessible to the class performing the operation
    :   `NoSuchFieldError` - if the specified field does not exist
    :   `IllegalArgumentException` - if the type is not `VarHandle`
  + ### staticFieldVarHandle

    public static [VarHandle](VarHandle.md "class in java.lang.invoke") staticFieldVarHandle([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<[VarHandle](VarHandle.md "class in java.lang.invoke")> type,
    [Class](../Class.md "class in java.lang")<?> declaringClass,
    [Class](../Class.md "class in java.lang")<?> fieldType)

    Finds a [`VarHandle`](VarHandle.md "class in java.lang.invoke") for a static field.

    Parameters:
    :   `lookup` - the lookup context describing the class performing the
        operation (normally stacked by the JVM)
    :   `name` - the name of the field
    :   `type` - the required result type (must be `Class<VarHandle>`)
    :   `declaringClass` - the class in which the field is declared
    :   `fieldType` - the type of the field

    Returns:
    :   the [`VarHandle`](VarHandle.md "class in java.lang.invoke")

    Throws:
    :   `IllegalAccessError` - if the declaring class or the field is not
        accessible to the class performing the operation
    :   `NoSuchFieldError` - if the specified field does not exist
    :   `IllegalArgumentException` - if the type is not `VarHandle`
  + ### arrayVarHandle

    public static [VarHandle](VarHandle.md "class in java.lang.invoke") arrayVarHandle([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<[VarHandle](VarHandle.md "class in java.lang.invoke")> type,
    [Class](../Class.md "class in java.lang")<?> arrayClass)

    Finds a [`VarHandle`](VarHandle.md "class in java.lang.invoke") for an array type.

    Parameters:
    :   `lookup` - the lookup context describing the class performing the
        operation (normally stacked by the JVM)
    :   `name` - unused
    :   `type` - the required result type (must be `Class<VarHandle>`)
    :   `arrayClass` - the type of the array

    Returns:
    :   the [`VarHandle`](VarHandle.md "class in java.lang.invoke")

    Throws:
    :   `IllegalAccessError` - if the component type of the array is not
        accessible to the class performing the operation
    :   `IllegalArgumentException` - if the type is not `VarHandle`
  + ### explicitCast

    public static [Object](../Object.md "class in java.lang") explicitCast([MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [Class](../Class.md "class in java.lang")<?> dstType,
    [Object](../Object.md "class in java.lang") value)
    throws [ClassCastException](../ClassCastException.md "class in java.lang")

    Applies a conversion from a source type to a destination type.

    Given a destination type `dstType` and an input
    value `value`, one of the following will happen:
    - If `dstType` is `void.class`,
      a [`ClassCastException`](../ClassCastException.md "class in java.lang") is thrown.- If `dstType` is `Object.class`, `value` is returned as is.

    Otherwise one of the following conversions is applied to `value`:
    1. If `dstType` is a reference type, a reference cast
       is applied to `value` as if by calling `dstType.cast(value)`.+ If `dstType` is a primitive type, then, if the runtime type
         of `value` is a primitive wrapper type (such as [`Integer`](../Integer.md "class in java.lang")),
         a Java unboxing conversion is applied followed by a
         Java casting conversion converting either directly to
         `dstType`, or, if `dstType` is `boolean`,
         to `int`, which is then converted to either `true`
         or `false` depending on whether the least-significant-bit
         is 1 or 0 respectively. If the runtime type of `value` is
         not a primitive wrapper type a [`ClassCastException`](../ClassCastException.md "class in java.lang") is thrown.

    The result is the same as when using the following code:
    > ```
    >  MethodHandle id = MethodHandles.identity(dstType);
    >  MethodType mt = MethodType.methodType(dstType, Object.class);
    >  MethodHandle conv = MethodHandles.explicitCastArguments(id, mt);
    >  return conv.invoke(value);
    > ```

    Parameters:
    :   `lookup` - unused
    :   `name` - unused
    :   `dstType` - the destination type of the conversion
    :   `value` - the value to be converted

    Returns:
    :   the converted value

    Throws:
    :   `ClassCastException` - when `dstType` is `void`,
        when a cast per (1) fails, or when `dstType` is a primitive type
        and the runtime type of `value` is not a primitive wrapper type
        (such as [`Integer`](../Integer.md "class in java.lang"))

    Since:
    :   15