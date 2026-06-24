Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Enum Class AccessFlag

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Enum](../Enum.md "class in java.lang")<[AccessFlag](AccessFlag.md "enum class in java.lang.reflect")>

java.lang.reflect.AccessFlag

All Implemented Interfaces:
:   `Serializable`, `Comparable<AccessFlag>`, `Constable`

---

public enum AccessFlag
extends [Enum](../Enum.md "class in java.lang")<[AccessFlag](AccessFlag.md "enum class in java.lang.reflect")>

Represents a JVM access or module-related flag on a runtime member,
such as a [class](../Class.md "class in java.lang"), [field](Field.md "class in java.lang.reflect"), or
[method](Executable.md "class in java.lang.reflect").

JVM access and module-related flags are related to, but distinct
from Java language [modifiers](Modifier.md "class in java.lang.reflect"). Some modifiers
and access flags have a one-to-one correspondence, such as `public`. In other cases, some language-level modifiers do
*not* have an access flag, such as `sealed` (JVMS
) and some access flags have no corresponding
modifier, such as [synthetic](#SYNTHETIC).

The values for the constants representing the access and module
flags are taken from sections of The Java Virtual Machine
Specification including (class access and
property modifiers), (field access and property flags),
(method access and property flags),
(nested class access and property flags), (method
parameters), and (module flags and requires,
exports, and opens flags).

The [mask](#mask()) values for the different access
flags are *not* distinct. Flags are defined for different
kinds of JVM structures and the same bit position has different
meanings in different contexts. For example, `0x0000_0040`
indicates a [`volatile`](#VOLATILE) field but a [bridge method](#BRIDGE); `0x0000_0080` indicates a [`transient`](#TRANSIENT) field but a [variable
arity (varargs)](#VARARGS) method.

Since:
:   20

See Also:
:   * [`Modifier`](Modifier.md "class in java.lang.reflect")
    * [`ModuleDescriptor.Modifier`](../module/ModuleDescriptor.Modifier.md "enum class in java.lang.module")
    * [`ModuleDescriptor.Requires.Modifier`](../module/ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")
    * [`ModuleDescriptor.Exports.Modifier`](../module/ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")
    * [`ModuleDescriptor.Opens.Modifier`](../module/ModuleDescriptor.Opens.Modifier.md "enum class in java.lang.module")
    * [`Modifier`](../../../../java.compiler/javax/lang/model/element/Modifier.md "enum class in javax.lang.model.element")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `AccessFlag.Location`

  A location within a class file where flags can be applied.

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ABSTRACT`

  The access flag `ACC_ABSTRACT`, corresponding to the
  source modifier [`abstract`](Modifier.md#ABSTRACT), with a mask
  value of `0x0400`.

  `ANNOTATION`

  The access flag `ACC_ANNOTATION` with a mask value of
  `0x2000`.

  `BRIDGE`

  The access flag `ACC_BRIDGE` with a mask value of
  `0x0040`

  `ENUM`

  The access flag `ACC_ENUM` with a mask value of
  `0x4000`.

  `FINAL`

  The access flag `ACC_FINAL`, corresponding to the source
  modifier [`final`](Modifier.md#FINAL), with a mask
  value of `0x0010`.

  `INTERFACE`

  The access flag `ACC_INTERFACE` with a mask value of
  `0x0200`.

  `MANDATED`

  The access flag `ACC_MANDATED` with a mask value of
  `0x8000`.

  `MODULE`

  The access flag `ACC_MODULE` with a mask value of `0x8000`.

  `NATIVE`

  The access flag `ACC_NATIVE`, corresponding to the source
  modifier [`native`](Modifier.md#NATIVE), with a mask value of
  `0x0100`.

  `OPEN`

  The module flag `ACC_OPEN` with a mask value of `0x0020`.

  `PRIVATE`

  The access flag `ACC_PRIVATE`, corresponding to the
  source modifier [`private`](Modifier.md#PRIVATE), with a mask
  value of `0x0002`.

  `PROTECTED`

  The access flag `ACC_PROTECTED`, corresponding to the
  source modifier [`protected`](Modifier.md#PROTECTED), with a mask
  value of `0x0004`.

  `PUBLIC`

  The access flag `ACC_PUBLIC`, corresponding to the source
  modifier [`public`](Modifier.md#PUBLIC), with a mask value of
  `0x0001`.

  `STATIC`

  The access flag `ACC_STATIC`, corresponding to the source
  modifier [`static`](Modifier.md#STATIC), with a mask value of
  `0x0008`.

  `STATIC_PHASE`

  The module requires flag `ACC_STATIC_PHASE` with a mask
  value of `0x0040`.

  `STRICT`

  The access flag `ACC_STRICT`, corresponding to the source
  modifier [`strictfp`](Modifier.md#STRICT), with a mask value of
  `0x0800`.

  `SUPER`

  The access flag `ACC_SUPER` with a mask value of `0x0020`.

  `SYNCHRONIZED`

  The access flag `ACC_SYNCHRONIZED`, corresponding to the
  source modifier [`synchronized`](Modifier.md#SYNCHRONIZED), with
  a mask value of `0x0020`.

  `SYNTHETIC`

  The access flag `ACC_SYNTHETIC` with a mask value of
  `0x1000`.

  `TRANSIENT`

  The access flag `ACC_TRANSIENT`, corresponding to the
  source modifier [`transient`](Modifier.md#TRANSIENT), with a
  mask value of `0x0080`.

  `TRANSITIVE`

  The module requires flag `ACC_TRANSITIVE` with a mask
  value of `0x0020`.

  `VARARGS`

  The access flag `ACC_VARARGS` with a mask value of
  `0x0080`.

  `VOLATILE`

  The access flag `ACC_VOLATILE`, corresponding to the
  source modifier [`volatile`](Modifier.md#VOLATILE), with a mask
  value of `0x0040`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Set<AccessFlag.Location>`

  `locations()`

  Returns kinds of constructs the flag can be applied to in the
  latest class file format version.

  `Set<AccessFlag.Location>`

  `locations(ClassFileFormatVersion cffv)`

  Returns kinds of constructs the flag can be applied to in the
  given class file format version.

  `int`

  `mask()`

  Returns the corresponding integer mask for the access flag.

  `static Set<AccessFlag>`

  `maskToAccessFlags(int mask,
  AccessFlag.Location location)`

  Returns an unmodifiable set of access flags for the given mask value
  appropriate for the location in question.

  `boolean`

  `sourceModifier()`

  Returns whether or not the flag has a directly corresponding
  modifier in the Java programming language.

  `static AccessFlag`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static AccessFlag[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PUBLIC

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") PUBLIC

    The access flag `ACC_PUBLIC`, corresponding to the source
    modifier [`public`](Modifier.md#PUBLIC), with a mask value of
    `0x0001`.
  + ### PRIVATE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") PRIVATE

    The access flag `ACC_PRIVATE`, corresponding to the
    source modifier [`private`](Modifier.md#PRIVATE), with a mask
    value of `0x0002`.
  + ### PROTECTED

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") PROTECTED

    The access flag `ACC_PROTECTED`, corresponding to the
    source modifier [`protected`](Modifier.md#PROTECTED), with a mask
    value of `0x0004`.
  + ### STATIC

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") STATIC

    The access flag `ACC_STATIC`, corresponding to the source
    modifier [`static`](Modifier.md#STATIC), with a mask value of
    `0x0008`.
  + ### FINAL

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") FINAL

    The access flag `ACC_FINAL`, corresponding to the source
    modifier [`final`](Modifier.md#FINAL), with a mask
    value of `0x0010`.
  + ### SUPER

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") SUPER

    The access flag `ACC_SUPER` with a mask value of `0x0020`.
  + ### OPEN

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") OPEN

    The module flag `ACC_OPEN` with a mask value of `0x0020`.

    See Also:
    :   - [`ModuleDescriptor.isOpen()`](../module/ModuleDescriptor.md#isOpen())
  + ### TRANSITIVE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") TRANSITIVE

    The module requires flag `ACC_TRANSITIVE` with a mask
    value of `0x0020`.

    See Also:
    :   - [`ModuleDescriptor.Requires.Modifier.TRANSITIVE`](../module/ModuleDescriptor.Requires.Modifier.md#TRANSITIVE)
  + ### SYNCHRONIZED

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") SYNCHRONIZED

    The access flag `ACC_SYNCHRONIZED`, corresponding to the
    source modifier [`synchronized`](Modifier.md#SYNCHRONIZED), with
    a mask value of `0x0020`.
  + ### STATIC\_PHASE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") STATIC\_PHASE

    The module requires flag `ACC_STATIC_PHASE` with a mask
    value of `0x0040`.

    See Also:
    :   - [`ModuleDescriptor.Requires.Modifier.STATIC`](../module/ModuleDescriptor.Requires.Modifier.md#STATIC)
  + ### VOLATILE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") VOLATILE

    The access flag `ACC_VOLATILE`, corresponding to the
    source modifier [`volatile`](Modifier.md#VOLATILE), with a mask
    value of `0x0040`.
  + ### BRIDGE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") BRIDGE

    The access flag `ACC_BRIDGE` with a mask value of
    `0x0040`

    See Also:
    :   - [`Method.isBridge()`](Method.md#isBridge())
  + ### TRANSIENT

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") TRANSIENT

    The access flag `ACC_TRANSIENT`, corresponding to the
    source modifier [`transient`](Modifier.md#TRANSIENT), with a
    mask value of `0x0080`.
  + ### VARARGS

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") VARARGS

    The access flag `ACC_VARARGS` with a mask value of
    `0x0080`.

    See Also:
    :   - [`Executable.isVarArgs()`](Executable.md#isVarArgs())
  + ### NATIVE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") NATIVE

    The access flag `ACC_NATIVE`, corresponding to the source
    modifier [`native`](Modifier.md#NATIVE), with a mask value of
    `0x0100`.
  + ### INTERFACE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") INTERFACE

    The access flag `ACC_INTERFACE` with a mask value of
    `0x0200`.

    See Also:
    :   - [`Class.isInterface()`](../Class.md#isInterface())
  + ### ABSTRACT

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") ABSTRACT

    The access flag `ACC_ABSTRACT`, corresponding to the
    source modifier [`abstract`](Modifier.md#ABSTRACT), with a mask
    value of `0x0400`.
  + ### STRICT

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") STRICT

    The access flag `ACC_STRICT`, corresponding to the source
    modifier [`strictfp`](Modifier.md#STRICT), with a mask value of
    `0x0800`.
  + ### SYNTHETIC

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") SYNTHETIC

    The access flag `ACC_SYNTHETIC` with a mask value of
    `0x1000`.

    See Also:
    :   - [`Class.isSynthetic()`](../Class.md#isSynthetic())
        - [`Executable.isSynthetic()`](Executable.md#isSynthetic())
        - [`ModuleDescriptor.Modifier.SYNTHETIC`](../module/ModuleDescriptor.Modifier.md#SYNTHETIC)
  + ### ANNOTATION

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") ANNOTATION

    The access flag `ACC_ANNOTATION` with a mask value of
    `0x2000`.

    See Also:
    :   - [`Class.isAnnotation()`](../Class.md#isAnnotation())
  + ### ENUM

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") ENUM

    The access flag `ACC_ENUM` with a mask value of
    `0x4000`.

    See Also:
    :   - [`Class.isEnum()`](../Class.md#isEnum())
  + ### MANDATED

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") MANDATED

    The access flag `ACC_MANDATED` with a mask value of
    `0x8000`.
  + ### MODULE

    public static final [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") MODULE

    The access flag `ACC_MODULE` with a mask value of `0x8000`.
* ## Method Details

  + ### values

    public static [AccessFlag](AccessFlag.md "enum class in java.lang.reflect")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [AccessFlag](AccessFlag.md "enum class in java.lang.reflect") valueOf([String](../String.md "class in java.lang") name)

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
  + ### mask

    public int mask()

    Returns the corresponding integer mask for the access flag.

    Returns:
    :   the corresponding integer mask for the access flag
  + ### sourceModifier

    public boolean sourceModifier()

    Returns whether or not the flag has a directly corresponding
    modifier in the Java programming language.

    Returns:
    :   whether or not the flag has a directly corresponding
        modifier in the Java programming language
  + ### locations

    public [Set](../../util/Set.md "interface in java.util")<[AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect")> locations()

    Returns kinds of constructs the flag can be applied to in the
    latest class file format version.

    Returns:
    :   kinds of constructs the flag can be applied to in the
        latest class file format version
  + ### locations

    public [Set](../../util/Set.md "interface in java.util")<[AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect")> locations([ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect") cffv)

    Returns kinds of constructs the flag can be applied to in the
    given class file format version.

    Parameters:
    :   `cffv` - the class file format version to use

    Returns:
    :   kinds of constructs the flag can be applied to in the
        given class file format version

    Throws:
    :   `NullPointerException` - if the parameter is `null`
  + ### maskToAccessFlags

    public static [Set](../../util/Set.md "interface in java.util")<[AccessFlag](AccessFlag.md "enum class in java.lang.reflect")> maskToAccessFlags(int mask,
    [AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect") location)

    Returns an unmodifiable set of access flags for the given mask value
    appropriate for the location in question.

    Parameters:
    :   `mask` - bit mask of access flags
    :   `location` - context to interpret mask value

    Returns:
    :   an unmodifiable set of access flags for the given mask value
        appropriate for the location in question

    Throws:
    :   `IllegalArgumentException` - if the mask contains bit
        positions not support for the location in question