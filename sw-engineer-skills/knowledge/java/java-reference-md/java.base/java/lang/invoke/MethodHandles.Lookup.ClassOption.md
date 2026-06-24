Module [java.base](../../../module-summary.md)

Package [java.lang.invoke](package-summary.md)

# Enum Class MethodHandles.Lookup.ClassOption

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[MethodHandles.Lookup.ClassOption](MethodHandles.Lookup.ClassOption.md "enum class in java.lang.invoke")>

java.lang.invoke.MethodHandles.Lookup.ClassOption

All Implemented Interfaces:
:   `Serializable`, `Comparable<MethodHandles.Lookup.ClassOption>`, `Constable`

Enclosing class:
:   `MethodHandles.Lookup`

---

public static enum MethodHandles.Lookup.ClassOption
extends [Enum](../Enum.md "class in java.lang")<[MethodHandles.Lookup.ClassOption](MethodHandles.Lookup.ClassOption.md "enum class in java.lang.invoke")>

The set of class options that specify whether a hidden class created by
[`Lookup::defineHiddenClass`](MethodHandles.Lookup.md#defineHiddenClass(byte%5B%5D,boolean,java.lang.invoke.MethodHandles.Lookup.ClassOption...)) method is dynamically added as a new member
to the nest of a lookup class and/or whether a hidden class has
a strong relationship with the class loader marked as its defining loader.

Since:
:   15

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NESTMATE`

  Specifies that a hidden class be added to [nest](../Class.md#getNestHost())
  of a lookup class as a nestmate.

  `STRONG`

  Specifies that a hidden class has a *strong*
  relationship with the class loader marked as its defining loader,
  as a normal class or interface has with its own defining loader.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static MethodHandles.Lookup.ClassOption`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static MethodHandles.Lookup.ClassOption[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NESTMATE

    public static final [MethodHandles.Lookup.ClassOption](MethodHandles.Lookup.ClassOption.md "enum class in java.lang.invoke") NESTMATE

    Specifies that a hidden class be added to [nest](../Class.md#getNestHost())
    of a lookup class as a nestmate.

    A hidden nestmate class has access to the private members of all
    classes and interfaces in the same nest.

    See Also:
    :   - [`Class.getNestHost()`](../Class.md#getNestHost())
  + ### STRONG

    public static final [MethodHandles.Lookup.ClassOption](MethodHandles.Lookup.ClassOption.md "enum class in java.lang.invoke") STRONG

    Specifies that a hidden class has a *strong*
    relationship with the class loader marked as its defining loader,
    as a normal class or interface has with its own defining loader.
    This means that the hidden class may be unloaded if and only if
    its defining loader is not reachable and thus may be reclaimed
    by a garbage collector (JLS ).

    By default, a hidden class or interface may be unloaded
    even if the class loader that is marked as its defining loader is
    [reachable](../ref/package-summary.md#reachability).
* ## Method Details

  + ### values

    public static [MethodHandles.Lookup.ClassOption](MethodHandles.Lookup.ClassOption.md "enum class in java.lang.invoke")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [MethodHandles.Lookup.ClassOption](MethodHandles.Lookup.ClassOption.md "enum class in java.lang.invoke") valueOf([String](../String.md "class in java.lang") name)

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