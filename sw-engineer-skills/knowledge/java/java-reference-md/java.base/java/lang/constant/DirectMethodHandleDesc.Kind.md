Module [java.base](../../../module-summary.md)

Package [java.lang.constant](package-summary.md)

# Enum Class DirectMethodHandleDesc.Kind

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")>

java.lang.constant.DirectMethodHandleDesc.Kind

All Implemented Interfaces:
:   `Serializable`, `Comparable<DirectMethodHandleDesc.Kind>`, `Constable`

Enclosing interface:
:   `DirectMethodHandleDesc`

---

public static enum DirectMethodHandleDesc.Kind
extends [Enum](../Enum.md "class in java.lang")<[DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")>

Kinds of method handles that can be described with [DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant").

Since:
:   12

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CONSTRUCTOR`

  A method handle for a constructor

  `GETTER`

  A method handle for a read accessor for an instance field

  `INTERFACE_SPECIAL`

  A method handle for an interface method invoked as with `invokespecial`

  `INTERFACE_STATIC`

  A method handle for a method invoked as with `invokestatic`

  `INTERFACE_VIRTUAL`

  A method handle for a method invoked as with `invokeinterface`

  `SETTER`

  A method handle for a write accessor for an instance field

  `SPECIAL`

  A method handle for a method invoked as with `invokespecial`

  `STATIC`

  A method handle for a method invoked as with `invokestatic`

  `STATIC_GETTER`

  A method handle for a read accessor for a static field

  `STATIC_SETTER`

  A method handle for a write accessor for a static field

  `VIRTUAL`

  A method handle for a method invoked as with `invokevirtual`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `final boolean`

  `isInterface`

  Is this an interface

  `final int`

  `refKind`

  The corresponding `refKind` value for this kind of method handle,
  as defined by [`MethodHandleInfo`](../invoke/MethodHandleInfo.md "interface in java.lang.invoke")
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static DirectMethodHandleDesc.Kind`

  `valueOf(int refKind)`

  Returns the enumeration member with the given `refKind` field.

  `static DirectMethodHandleDesc.Kind`

  `valueOf(int refKind,
  boolean isInterface)`

  Returns the enumeration member with the given the `refKind` and
  `isInterface` arguments.

  `static DirectMethodHandleDesc.Kind`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static DirectMethodHandleDesc.Kind[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### STATIC

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") STATIC

    A method handle for a method invoked as with `invokestatic`
  + ### INTERFACE\_STATIC

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") INTERFACE\_STATIC

    A method handle for a method invoked as with `invokestatic`
  + ### VIRTUAL

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") VIRTUAL

    A method handle for a method invoked as with `invokevirtual`
  + ### INTERFACE\_VIRTUAL

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") INTERFACE\_VIRTUAL

    A method handle for a method invoked as with `invokeinterface`
  + ### SPECIAL

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") SPECIAL

    A method handle for a method invoked as with `invokespecial`
  + ### INTERFACE\_SPECIAL

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") INTERFACE\_SPECIAL

    A method handle for an interface method invoked as with `invokespecial`
  + ### CONSTRUCTOR

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") CONSTRUCTOR

    A method handle for a constructor
  + ### GETTER

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") GETTER

    A method handle for a read accessor for an instance field
  + ### SETTER

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") SETTER

    A method handle for a write accessor for an instance field
  + ### STATIC\_GETTER

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") STATIC\_GETTER

    A method handle for a read accessor for a static field
  + ### STATIC\_SETTER

    public static final [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") STATIC\_SETTER

    A method handle for a write accessor for a static field
* ## Field Details

  + ### refKind

    public final int refKind

    The corresponding `refKind` value for this kind of method handle,
    as defined by [`MethodHandleInfo`](../invoke/MethodHandleInfo.md "interface in java.lang.invoke")
  + ### isInterface

    public final boolean isInterface

    Is this an interface
* ## Method Details

  + ### values

    public static [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") valueOf([String](../String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null
  + ### valueOf

    public static [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") valueOf(int refKind)

    Returns the enumeration member with the given `refKind` field.
    Behaves as if `valueOf(refKind, false)`. As a special case,
    if `refKind` is `REF_invokeInterface` (9) then the
    `isInterface` field will be true.

    Parameters:
    :   `refKind` - refKind of desired member

    Returns:
    :   the matching enumeration member

    Throws:
    :   `IllegalArgumentException` - if there is no such member
  + ### valueOf

    public static [DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant") valueOf(int refKind,
    boolean isInterface)

    Returns the enumeration member with the given the `refKind` and
    `isInterface` arguments.
    For most values of `refKind` there is an exact match regardless of the value of `isInterface`.
    These are:
    - `REF_invokeVirtual` which matches to `VIRTUAL`- `REF_invokeInterface` which matches to `INTERFACE_VIRTUAL`- `REF_newInvokeSpecial` which matches to `CONSTRUCTOR`- `REF_getField` which matches to `GETTER`- `REF_putField` which matches to `SETTER`- `REF_getStatic` which matches to `STATIC_GETTER`- `REF_putStatic` which matches to `STATIC_SETTER`As for the rest, the returned kind will depend on the value (false or true accordingly) of `isInterface`:
    - `REF_invokeStatic` which matches to `STATIC` or `INTERFACE_STATIC`- `REF_invokeSpecial` which matches to `SPECIAL` or `INTERFACE_SPECIAL`

    Parameters:
    :   `refKind` - refKind of desired member
    :   `isInterface` - whether desired member is for interface methods

    Returns:
    :   the matching enumeration member

    Throws:
    :   `IllegalArgumentException` - if there is no such member