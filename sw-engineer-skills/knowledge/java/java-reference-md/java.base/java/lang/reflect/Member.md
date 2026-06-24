Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Interface Member

All Known Implementing Classes:
:   `Constructor`, `Executable`, `Field`, `Method`

---

public interface Member

Member is an interface that reflects identifying information about
a single member (a field or a method) or a constructor.

Since:
:   1.1

See Also:
:   * [`Class`](../Class.md "class in java.lang")
    * [`Field`](Field.md "class in java.lang.reflect")
    * [`Method`](Method.md "class in java.lang.reflect")
    * [`Constructor`](Constructor.md "class in java.lang.reflect")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DECLARED`

  Identifies the set of declared members of a class or interface.

  `static final int`

  `PUBLIC`

  Identifies the set of all public members of a class or interface,
  including inherited members.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default Set<AccessFlag>`

  `accessFlags()`

  Returns an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for this member, possibly empty.

  `Class<?>`

  `getDeclaringClass()`

  Returns the Class object representing the class or interface
  that declares the member or constructor represented by this Member.

  `int`

  `getModifiers()`

  Returns the Java language modifiers for the member or
  constructor represented by this Member, as an integer.

  `String`

  `getName()`

  Returns the simple name of the underlying member or constructor
  represented by this Member.

  `boolean`

  `isSynthetic()`

  Returns `true` if this member was introduced by
  the compiler; returns `false` otherwise.

* ## Field Details

  + ### PUBLIC

    static final int PUBLIC

    Identifies the set of all public members of a class or interface,
    including inherited members.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Member.PUBLIC)
  + ### DECLARED

    static final int DECLARED

    Identifies the set of declared members of a class or interface.
    Inherited members are not included.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.reflect.Member.DECLARED)
* ## Method Details

  + ### getDeclaringClass

    [Class](../Class.md "class in java.lang")<?> getDeclaringClass()

    Returns the Class object representing the class or interface
    that declares the member or constructor represented by this Member.

    Returns:
    :   an object representing the declaring class of the
        underlying member
  + ### getName

    [String](../String.md "class in java.lang") getName()

    Returns the simple name of the underlying member or constructor
    represented by this Member.

    Returns:
    :   the simple name of the underlying member
  + ### getModifiers

    int getModifiers()

    Returns the Java language modifiers for the member or
    constructor represented by this Member, as an integer. The
    Modifier class should be used to decode the modifiers in
    the integer.

    Returns:
    :   the Java language modifiers for the underlying member

    See Also:
    :   - [`Modifier`](Modifier.md "class in java.lang.reflect")
        - [`accessFlags()`](#accessFlags())
  + ### accessFlags

    default [Set](../../util/Set.md "interface in java.util")<[AccessFlag](AccessFlag.md "enum class in java.lang.reflect")> accessFlags()

    Returns an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for this member, possibly empty.

    Returns:
    :   an unmodifiable set of the [access flags](AccessFlag.md "enum class in java.lang.reflect") for this member, possibly empty

    Since:
    :   20

    See Also:
    :   - [`getModifiers()`](#getModifiers())
  + ### isSynthetic

    boolean isSynthetic()

    Returns `true` if this member was introduced by
    the compiler; returns `false` otherwise.

    Returns:
    :   true if and only if this member was introduced by
        the compiler.

    Since:
    :   1.5