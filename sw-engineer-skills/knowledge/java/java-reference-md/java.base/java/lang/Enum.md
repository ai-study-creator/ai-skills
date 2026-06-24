Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Enum<E extends Enum<E>>

[java.lang.Object](Object.md "class in java.lang")

java.lang.Enum<E>

Type Parameters:
:   `E` - The type of the enum subclass

All Implemented Interfaces:
:   `Serializable`, `Comparable<E>`, `Constable`

---

public abstract class Enum<E extends Enum<E>>
extends [Object](Object.md "class in java.lang")
implements [Constable](constant/Constable.md "interface in java.lang.constant"), [Comparable](Comparable.md "interface in java.lang")<E>, [Serializable](../io/Serializable.md "interface in java.io")

This is the common base class of all Java language enumeration classes.
More information about enums, including descriptions of the
implicitly declared methods synthesized by the compiler, can be
found in section of The Java Language
Specification.
Enumeration classes are all serializable and receive special handling
by the serialization mechanism. The serialized representation used
for enum constants cannot be customized. Declarations of methods
and fields that would otherwise interact with serialization are
ignored, including `serialVersionUID`; see the
[Java
Object Serialization Specification](../../../../specs/serialization/index.md) for details.

Note that when using an enumeration type as the type of a set
or as the type of the keys in a map, specialized and efficient
[set](../util/EnumSet.md "class in java.util") and [map](../util/EnumMap.md "class in java.util") implementations are available.

Since:
:   1.5

See Also:
:   * [`Class.getEnumConstants()`](Class.md#getEnumConstants())
    * [`EnumSet`](../util/EnumSet.md "class in java.util")
    * [`EnumMap`](../util/EnumMap.md "class in java.util")

External Specifications
:   * [Java Object Serialization Specification](../../../../specs/serialization/index.md)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `Enum.EnumDesc<E extends Enum<E>>`

  A [nominal descriptor](../../../java.base/java/lang/constant/package-summary.md#nominal) for an
  `enum` constant.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Enum(String name,
  int ordinal)`

  Sole constructor.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected final Object`

  `clone()`

  Throws CloneNotSupportedException.

  `final int`

  `compareTo(E o)`

  Compares this enum with the specified object for order.

  `final Optional<Enum.EnumDesc<E>>`

  `describeConstable()`

  Returns an enum descriptor `EnumDesc` for this instance, if one can be
  constructed, or an empty [`Optional`](../util/Optional.md "class in java.util") if one cannot be.

  `final boolean`

  `equals(Object other)`

  Returns true if the specified object is equal to this
  enum constant.

  `protected final void`

  `finalize()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finalization has been deprecated for removal.

  `final Class<E>`

  `getDeclaringClass()`

  Returns the Class object corresponding to this enum constant's
  enum type.

  `final int`

  `hashCode()`

  Returns a hash code for this enum constant.

  `final String`

  `name()`

  Returns the name of this enum constant, exactly as declared in its
  enum declaration.

  `final int`

  `ordinal()`

  Returns the ordinal of this enumeration constant (its position
  in its enum declaration, where the initial constant is assigned
  an ordinal of zero).

  `String`

  `toString()`

  Returns the name of this enum constant, as contained in the
  declaration.

  `static <T extends Enum<T>>  
  T`

  `valueOf(Class<T> enumClass,
  String name)`

  Returns the enum constant of the specified enum class with the
  specified name.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Enum

    protected Enum([String](String.md "class in java.lang") name,
    int ordinal)

    Sole constructor. Programmers cannot invoke this constructor.
    It is for use by code emitted by the compiler in response to
    enum class declarations.

    Parameters:
    :   `name` - The name of this enum constant, which is the identifier
        used to declare it.
    :   `ordinal` - The ordinal of this enumeration constant (its position
        in the enum declaration, where the initial constant is assigned
        an ordinal of zero).
* ## Method Details

  + ### name

    public final [String](String.md "class in java.lang") name()

    Returns the name of this enum constant, exactly as declared in its
    enum declaration.
    **Most programmers should use the [`toString()`](#toString()) method in
    preference to this one, as the toString method may return
    a more user-friendly name.** This method is designed primarily for
    use in specialized situations where correctness depends on getting the
    exact name, which will not vary from release to release.

    Returns:
    :   the name of this enum constant
  + ### ordinal

    public final int ordinal()

    Returns the ordinal of this enumeration constant (its position
    in its enum declaration, where the initial constant is assigned
    an ordinal of zero).
    Most programmers will have no use for this method. It is
    designed for use by sophisticated enum-based data structures, such
    as [`EnumSet`](../util/EnumSet.md "class in java.util") and [`EnumMap`](../util/EnumMap.md "class in java.util").

    Returns:
    :   the ordinal of this enumeration constant
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns the name of this enum constant, as contained in the
    declaration. This method may be overridden, though it typically
    isn't necessary or desirable. An enum class should override this
    method when a more "programmer-friendly" string form exists.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the name of this enum constant
  + ### equals

    public final boolean equals([Object](Object.md "class in java.lang") other)

    Returns true if the specified object is equal to this
    enum constant.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to be compared for equality with this object.

    Returns:
    :   true if the specified object is equal to this
        enum constant.

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code for this enum constant.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this enum constant.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### clone

    protected final [Object](Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](CloneNotSupportedException.md "class in java.lang")

    Throws CloneNotSupportedException. This guarantees that enums
    are never cloned, which is necessary to preserve their "singleton"
    status.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   (never returns)

    Throws:
    :   `CloneNotSupportedException` - if the object's class does not
        support the `Cloneable` interface. Subclasses
        that override the `clone` method can also
        throw this exception to indicate that an instance cannot
        be cloned.

    See Also:
    :   - [`Cloneable`](Cloneable.md "interface in java.lang")
  + ### compareTo

    public final int compareTo([E](Enum.md "type parameter in Enum") o)

    Compares this enum with the specified object for order. Returns a
    negative integer, zero, or a positive integer as this object is less
    than, equal to, or greater than the specified object.
    Enum constants are only comparable to other enum constants of the
    same enum type. The natural order implemented by this
    method is the order in which the constants are declared.

    Specified by:
    :   `compareTo` in interface `Comparable<E extends Enum<E>>`

    Parameters:
    :   `o` - the object to be compared.

    Returns:
    :   a negative integer, zero, or a positive integer as this object
        is less than, equal to, or greater than the specified object.
  + ### getDeclaringClass

    public final [Class](Class.md "class in java.lang")<[E](Enum.md "type parameter in Enum")> getDeclaringClass()

    Returns the Class object corresponding to this enum constant's
    enum type. Two enum constants e1 and e2 are of the
    same enum type if and only if
    e1.getDeclaringClass() == e2.getDeclaringClass().
    (The value returned by this method may differ from the one returned
    by the [`Object.getClass()`](Object.md#getClass()) method for enum constants with
    constant-specific class bodies.)

    Returns:
    :   the Class object corresponding to this enum constant's
        enum type
  + ### describeConstable

    public final [Optional](../util/Optional.md "class in java.util")<[Enum.EnumDesc](Enum.EnumDesc.md "class in java.lang")<[E](Enum.md "type parameter in Enum")>> describeConstable()

    Returns an enum descriptor `EnumDesc` for this instance, if one can be
    constructed, or an empty [`Optional`](../util/Optional.md "class in java.util") if one cannot be.

    Specified by:
    :   `describeConstable` in interface `Constable`

    Returns:
    :   An [`Optional`](../util/Optional.md "class in java.util") containing the resulting nominal descriptor,
        or an empty [`Optional`](../util/Optional.md "class in java.util") if one cannot be constructed.

    Since:
    :   12
  + ### valueOf

    public static <T extends [Enum](Enum.md "class in java.lang")<T>> T valueOf([Class](Class.md "class in java.lang")<T> enumClass,
    [String](String.md "class in java.lang") name)

    Returns the enum constant of the specified enum class with the
    specified name. The name must match exactly an identifier used
    to declare an enum constant in this class. (Extraneous whitespace
    characters are not permitted.)

    Note that for a particular enum class `T`, the
    implicitly declared `public static T valueOf(String)`
    method on that enum may be used instead of this method to map
    from a name to the corresponding enum constant. All the
    constants of an enum class can be obtained by calling the
    implicit `public static T[] values()` method of that
    class.

    Type Parameters:
    :   `T` - The enum class whose constant is to be returned

    Parameters:
    :   `enumClass` - the `Class` object of the enum class from which
        to return a constant
    :   `name` - the name of the constant to return

    Returns:
    :   the enum constant of the specified enum class with the
        specified name

    Throws:
    :   `IllegalArgumentException` - if the specified enum class has
        no constant with the specified name, or the specified
        class object does not represent an enum class
    :   `NullPointerException` - if `enumClass` or `name`
        is null

    Since:
    :   1.5
  + ### finalize

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="18",
    [forRemoval](Deprecated.md#forRemoval())=true)
    protected final void finalize()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finalization has been deprecated for removal. See
    [`Object.finalize()`](Object.md#finalize()) for background information and details
    about migration options.

    enum classes cannot have finalize methods.

    Overrides:
    :   `finalize` in class `Object`

    See Also:
    :   - [`WeakReference`](ref/WeakReference.md "class in java.lang.ref")
        - [`PhantomReference`](ref/PhantomReference.md "class in java.lang.ref")