Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class Modifier

[java.lang.Object](../Object.md "class in java.lang")

java.lang.reflect.Modifier

---

public class Modifier
extends [Object](../Object.md "class in java.lang")

The Modifier class provides `static` methods and
constants to decode class and member access modifiers. The sets of
modifiers are represented as integers with distinct bit positions
representing different modifiers. The values for the constants
representing the modifiers are taken from the tables in sections
, , , and of
The Java Virtual Machine Specification.

Since:
:   1.1

See Also:
:   * [`Class.getModifiers()`](../Class.md#getModifiers())
    * [`Member.getModifiers()`](Member.md#getModifiers())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ABSTRACT`

  The `int` value representing the `abstract`
  modifier.

  `static final int`

  `FINAL`

  The `int` value representing the `final`
  modifier.

  `static final int`

  `INTERFACE`

  The `int` value representing the `interface`
  modifier.

  `static final int`

  `NATIVE`

  The `int` value representing the `native`
  modifier.

  `static final int`

  `PRIVATE`

  The `int` value representing the `private`
  modifier.

  `static final int`

  `PROTECTED`

  The `int` value representing the `protected`
  modifier.

  `static final int`

  `PUBLIC`

  The `int` value representing the `public`
  modifier.

  `static final int`

  `STATIC`

  The `int` value representing the `static`
  modifier.

  `static final int`

  `STRICT`

  The `int` value representing the `strictfp`
  modifier.

  `static final int`

  `SYNCHRONIZED`

  The `int` value representing the `synchronized`
  modifier.

  `static final int`

  `TRANSIENT`

  The `int` value representing the `transient`
  modifier.

  `static final int`

  `VOLATILE`

  The `int` value representing the `volatile`
  modifier.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static int`

  `classModifiers()`

  Return an `int` value OR-ing together the source language
  modifiers that can be applied to a class.

  `static int`

  `constructorModifiers()`

  Return an `int` value OR-ing together the source language
  modifiers that can be applied to a constructor.

  `static int`

  `fieldModifiers()`

  Return an `int` value OR-ing together the source language
  modifiers that can be applied to a field.

  `static int`

  `interfaceModifiers()`

  Return an `int` value OR-ing together the source language
  modifiers that can be applied to an interface.

  `static boolean`

  `isAbstract(int mod)`

  Return `true` if the integer argument includes the
  `abstract` modifier, `false` otherwise.

  `static boolean`

  `isFinal(int mod)`

  Return `true` if the integer argument includes the
  `final` modifier, `false` otherwise.

  `static boolean`

  `isInterface(int mod)`

  Return `true` if the integer argument includes the
  `interface` modifier, `false` otherwise.

  `static boolean`

  `isNative(int mod)`

  Return `true` if the integer argument includes the
  `native` modifier, `false` otherwise.

  `static boolean`

  `isPrivate(int mod)`

  Return `true` if the integer argument includes the
  `private` modifier, `false` otherwise.

  `static boolean`

  `isProtected(int mod)`

  Return `true` if the integer argument includes the
  `protected` modifier, `false` otherwise.

  `static boolean`

  `isPublic(int mod)`

  Return `true` if the integer argument includes the
  `public` modifier, `false` otherwise.

  `static boolean`

  `isStatic(int mod)`

  Return `true` if the integer argument includes the
  `static` modifier, `false` otherwise.

  `static boolean`

  `isStrict(int mod)`

  Return `true` if the integer argument includes the
  `strictfp` modifier, `false` otherwise.

  `static boolean`

  `isSynchronized(int mod)`

  Return `true` if the integer argument includes the
  `synchronized` modifier, `false` otherwise.

  `static boolean`

  `isTransient(int mod)`

  Return `true` if the integer argument includes the
  `transient` modifier, `false` otherwise.

  `static boolean`

  `isVolatile(int mod)`

  Return `true` if the integer argument includes the
  `volatile` modifier, `false` otherwise.

  `static int`

  `methodModifiers()`

  Return an `int` value OR-ing together the source language
  modifiers that can be applied to a method.

  `static int`

  `parameterModifiers()`

  Return an `int` value OR-ing together the source language
  modifiers that can be applied to a parameter.

  `static String`

  `toString(int mod)`

  Return a string describing the access modifier flags in
  the specified modifier.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### PUBLIC

    public static final int PUBLIC

    The `int` value representing the `public`
    modifier.

    See Also:
    :   - [`AccessFlag.PUBLIC`](AccessFlag.md#PUBLIC)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.PUBLIC)
  + ### PRIVATE

    public static final int PRIVATE

    The `int` value representing the `private`
    modifier.

    See Also:
    :   - [`AccessFlag.PRIVATE`](AccessFlag.md#PRIVATE)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.PRIVATE)
  + ### PROTECTED

    public static final int PROTECTED

    The `int` value representing the `protected`
    modifier.

    See Also:
    :   - [`AccessFlag.PROTECTED`](AccessFlag.md#PROTECTED)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.PROTECTED)
  + ### STATIC

    public static final int STATIC

    The `int` value representing the `static`
    modifier.

    See Also:
    :   - [`AccessFlag.STATIC`](AccessFlag.md#STATIC)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.STATIC)
  + ### FINAL

    public static final int FINAL

    The `int` value representing the `final`
    modifier.

    See Also:
    :   - [`AccessFlag.FINAL`](AccessFlag.md#FINAL)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.FINAL)
  + ### SYNCHRONIZED

    public static final int SYNCHRONIZED

    The `int` value representing the `synchronized`
    modifier.

    See Also:
    :   - [`AccessFlag.SYNCHRONIZED`](AccessFlag.md#SYNCHRONIZED)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.SYNCHRONIZED)
  + ### VOLATILE

    public static final int VOLATILE

    The `int` value representing the `volatile`
    modifier.

    See Also:
    :   - [`AccessFlag.VOLATILE`](AccessFlag.md#VOLATILE)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.VOLATILE)
  + ### TRANSIENT

    public static final int TRANSIENT

    The `int` value representing the `transient`
    modifier.

    See Also:
    :   - [`AccessFlag.TRANSIENT`](AccessFlag.md#TRANSIENT)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.TRANSIENT)
  + ### NATIVE

    public static final int NATIVE

    The `int` value representing the `native`
    modifier.

    See Also:
    :   - [`AccessFlag.NATIVE`](AccessFlag.md#NATIVE)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.NATIVE)
  + ### INTERFACE

    public static final int INTERFACE

    The `int` value representing the `interface`
    modifier.

    See Also:
    :   - [`AccessFlag.INTERFACE`](AccessFlag.md#INTERFACE)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.INTERFACE)
  + ### ABSTRACT

    public static final int ABSTRACT

    The `int` value representing the `abstract`
    modifier.

    See Also:
    :   - [`AccessFlag.ABSTRACT`](AccessFlag.md#ABSTRACT)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.ABSTRACT)
  + ### STRICT

    public static final int STRICT

    The `int` value representing the `strictfp`
    modifier.

    See Also:
    :   - [`AccessFlag.STRICT`](AccessFlag.md#STRICT)
        - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Modifier.STRICT)
* ## Method Details

  + ### isPublic

    public static boolean isPublic(int mod)

    Return `true` if the integer argument includes the
    `public` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `public` modifier; `false` otherwise.
  + ### isPrivate

    public static boolean isPrivate(int mod)

    Return `true` if the integer argument includes the
    `private` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `private` modifier; `false` otherwise.
  + ### isProtected

    public static boolean isProtected(int mod)

    Return `true` if the integer argument includes the
    `protected` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `protected` modifier; `false` otherwise.
  + ### isStatic

    public static boolean isStatic(int mod)

    Return `true` if the integer argument includes the
    `static` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `static` modifier; `false` otherwise.
  + ### isFinal

    public static boolean isFinal(int mod)

    Return `true` if the integer argument includes the
    `final` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `final` modifier; `false` otherwise.
  + ### isSynchronized

    public static boolean isSynchronized(int mod)

    Return `true` if the integer argument includes the
    `synchronized` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `synchronized` modifier; `false` otherwise.
  + ### isVolatile

    public static boolean isVolatile(int mod)

    Return `true` if the integer argument includes the
    `volatile` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `volatile` modifier; `false` otherwise.
  + ### isTransient

    public static boolean isTransient(int mod)

    Return `true` if the integer argument includes the
    `transient` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `transient` modifier; `false` otherwise.
  + ### isNative

    public static boolean isNative(int mod)

    Return `true` if the integer argument includes the
    `native` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `native` modifier; `false` otherwise.
  + ### isInterface

    public static boolean isInterface(int mod)

    Return `true` if the integer argument includes the
    `interface` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `interface` modifier; `false` otherwise.
  + ### isAbstract

    public static boolean isAbstract(int mod)

    Return `true` if the integer argument includes the
    `abstract` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `abstract` modifier; `false` otherwise.
  + ### isStrict

    public static boolean isStrict(int mod)

    Return `true` if the integer argument includes the
    `strictfp` modifier, `false` otherwise.

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   `true` if `mod` includes the
        `strictfp` modifier; `false` otherwise.
  + ### toString

    public static [String](../String.md "class in java.lang") toString(int mod)

    Return a string describing the access modifier flags in
    the specified modifier. For example:
    > ```
    >     public final synchronized strictfp
    > ```

    The modifier names are returned in an order consistent with the
    suggested modifier orderings given in sections 8.1.1, 8.3.1, 8.4.3, 8.8.3, and 9.1.1 of
    The Java Language Specification.
    The full modifier ordering used by this method is:
    > `public protected private abstract static final transient
    > volatile synchronized native strictfp
    > interface`

    The `interface` modifier discussed in this class is
    not a true modifier in the Java language and it appears after
    all other modifiers listed by this method. This method may
    return a string of modifiers that are not valid modifiers of a
    Java entity; in other words, no checking is done on the
    possible validity of the combination of modifiers represented
    by the input.
    Note that to perform such checking for a known kind of entity,
    such as a constructor or method, first AND the argument of
    `toString` with the appropriate mask from a method like
    [`constructorModifiers()`](#constructorModifiers()) or [`methodModifiers()`](#methodModifiers()).

    Parameters:
    :   `mod` - a set of modifiers

    Returns:
    :   a string representation of the set of modifiers
        represented by `mod`
  + ### classModifiers

    public static int classModifiers()

    Return an `int` value OR-ing together the source language
    modifiers that can be applied to a class.

    Returns:
    :   an `int` value OR-ing together the source language
        modifiers that can be applied to a class.

    Since:
    :   1.7
  + ### interfaceModifiers

    public static int interfaceModifiers()

    Return an `int` value OR-ing together the source language
    modifiers that can be applied to an interface.

    Returns:
    :   an `int` value OR-ing together the source language
        modifiers that can be applied to an interface.

    Since:
    :   1.7
  + ### constructorModifiers

    public static int constructorModifiers()

    Return an `int` value OR-ing together the source language
    modifiers that can be applied to a constructor.

    Returns:
    :   an `int` value OR-ing together the source language
        modifiers that can be applied to a constructor.

    Since:
    :   1.7
  + ### methodModifiers

    public static int methodModifiers()

    Return an `int` value OR-ing together the source language
    modifiers that can be applied to a method.

    Returns:
    :   an `int` value OR-ing together the source language
        modifiers that can be applied to a method.

    Since:
    :   1.7
  + ### fieldModifiers

    public static int fieldModifiers()

    Return an `int` value OR-ing together the source language
    modifiers that can be applied to a field.

    Returns:
    :   an `int` value OR-ing together the source language
        modifiers that can be applied to a field.

    Since:
    :   1.7
  + ### parameterModifiers

    public static int parameterModifiers()

    Return an `int` value OR-ing together the source language
    modifiers that can be applied to a parameter.

    Returns:
    :   an `int` value OR-ing together the source language
        modifiers that can be applied to a parameter.

    Since:
    :   1.8