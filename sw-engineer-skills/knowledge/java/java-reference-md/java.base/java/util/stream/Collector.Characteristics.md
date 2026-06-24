Module [java.base](../../../module-summary.md)

Package [java.util.stream](package-summary.md)

# Enum Class Collector.Characteristics

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream")>

java.util.stream.Collector.Characteristics

All Implemented Interfaces:
:   `Serializable`, `Comparable<Collector.Characteristics>`, `Constable`

Enclosing interface:
:   `Collector<T,A,R>`

---

public static enum Collector.Characteristics
extends [Enum](../../lang/Enum.md "class in java.lang")<[Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream")>

Characteristics indicating properties of a `Collector`, which can
be used to optimize reduction implementations.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CONCURRENT`

  Indicates that this collector is *concurrent*, meaning that
  the result container can support the accumulator function being
  called concurrently with the same result container from multiple
  threads.

  `IDENTITY_FINISH`

  Indicates that the finisher function is the identity function and
  can be elided.

  `UNORDERED`

  Indicates that the collection operation does not commit to preserving
  the encounter order of input elements.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Collector.Characteristics`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Collector.Characteristics[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### CONCURRENT

    public static final [Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream") CONCURRENT

    Indicates that this collector is *concurrent*, meaning that
    the result container can support the accumulator function being
    called concurrently with the same result container from multiple
    threads.

    If a `CONCURRENT` collector is not also `UNORDERED`,
    then it should only be evaluated concurrently if applied to an
    unordered data source.
  + ### UNORDERED

    public static final [Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream") UNORDERED

    Indicates that the collection operation does not commit to preserving
    the encounter order of input elements. (This might be true if the
    result container has no intrinsic order, such as a [`Set`](../Set.md "interface in java.util").)
  + ### IDENTITY\_FINISH

    public static final [Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream") IDENTITY\_FINISH

    Indicates that the finisher function is the identity function and
    can be elided. If set, it must be the case that an unchecked cast
    from A to R will succeed.
* ## Method Details

  + ### values

    public static [Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Collector.Characteristics](Collector.Characteristics.md "enum class in java.util.stream") valueOf([String](../../lang/String.md "class in java.lang") name)

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