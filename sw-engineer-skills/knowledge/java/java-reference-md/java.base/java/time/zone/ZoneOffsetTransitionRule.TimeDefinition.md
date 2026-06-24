Module [java.base](../../../module-summary.md)

Package [java.time.zone](package-summary.md)

# Enum Class ZoneOffsetTransitionRule.TimeDefinition

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone")>

java.time.zone.ZoneOffsetTransitionRule.TimeDefinition

All Implemented Interfaces:
:   `Serializable`, `Comparable<ZoneOffsetTransitionRule.TimeDefinition>`, `Constable`

Enclosing class:
:   `ZoneOffsetTransitionRule`

---

public static enum ZoneOffsetTransitionRule.TimeDefinition
extends [Enum](../../lang/Enum.md "class in java.lang")<[ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone")>

A definition of the way a local time can be converted to the actual
transition date-time.

Time zone rules are expressed in one of three ways:

* Relative to UTC
* Relative to the standard offset in force
* Relative to the wall offset (what you would see on a clock on the wall)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `STANDARD`

  The local date-time is expressed in terms of the standard offset.

  `UTC`

  The local date-time is expressed in terms of the UTC offset.

  `WALL`

  The local date-time is expressed in terms of the wall offset.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `LocalDateTime`

  `createDateTime(LocalDateTime dateTime,
  ZoneOffset standardOffset,
  ZoneOffset wallOffset)`

  Converts the specified local date-time to the local date-time actually
  seen on a wall clock.

  `static ZoneOffsetTransitionRule.TimeDefinition`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ZoneOffsetTransitionRule.TimeDefinition[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### UTC

    public static final [ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone") UTC

    The local date-time is expressed in terms of the UTC offset.
  + ### WALL

    public static final [ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone") WALL

    The local date-time is expressed in terms of the wall offset.
  + ### STANDARD

    public static final [ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone") STANDARD

    The local date-time is expressed in terms of the standard offset.
* ## Method Details

  + ### values

    public static [ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ZoneOffsetTransitionRule.TimeDefinition](ZoneOffsetTransitionRule.TimeDefinition.md "enum class in java.time.zone") valueOf([String](../../lang/String.md "class in java.lang") name)

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
  + ### createDateTime

    public [LocalDateTime](../LocalDateTime.md "class in java.time") createDateTime([LocalDateTime](../LocalDateTime.md "class in java.time") dateTime,
    [ZoneOffset](../ZoneOffset.md "class in java.time") standardOffset,
    [ZoneOffset](../ZoneOffset.md "class in java.time") wallOffset)

    Converts the specified local date-time to the local date-time actually
    seen on a wall clock.

    This method converts using the type of this enum.
    The output is defined relative to the 'before' offset of the transition.

    The UTC type uses the UTC offset.
    The STANDARD type uses the standard offset.
    The WALL type returns the input date-time.
    The result is intended for use with the wall-offset.

    Parameters:
    :   `dateTime` - the local date-time, not null
    :   `standardOffset` - the standard offset, not null
    :   `wallOffset` - the wall offset, not null

    Returns:
    :   the date-time relative to the wall/before offset, not null