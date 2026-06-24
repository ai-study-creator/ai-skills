Module [java.base](../../../module-summary.md)

Package [java.time.chrono](package-summary.md)

# Enum Class ThaiBuddhistEra

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono")>

java.time.chrono.ThaiBuddhistEra

All Implemented Interfaces:
:   `Serializable`, `Comparable<ThaiBuddhistEra>`, `Constable`, `Era`, `TemporalAccessor`, `TemporalAdjuster`

---

public enum ThaiBuddhistEra
extends [Enum](../../lang/Enum.md "class in java.lang")<[ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono")>
implements [Era](Era.md "interface in java.time.chrono")

An era in the Thai Buddhist calendar system.

The Thai Buddhist calendar system has two eras.
The current era, for years from 1 onwards, is known as the 'Buddhist' era.
All previous years, zero or earlier in the proleptic count or one and greater
in the year-of-era count, are part of the 'Before Buddhist' era.

Buddhist years and eras

| year-of-era | era | proleptic-year | ISO proleptic-year |
| --- | --- | --- | --- |
| 2 | BE | 2 | -542 |
| 1 | BE | 1 | -543 |
| 1 | BEFORE\_BE | 0 | -544 |
| 2 | BEFORE\_BE | -1 | -545 |

**Do not use `ordinal()` to obtain the numeric representation of `ThaiBuddhistEra`.
Use `getValue()` instead.**

Since:
:   1.8

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `BE`

  The singleton instance for the current era, 'Buddhist Era',
  which has the numeric value 1.

  `BEFORE_BE`

  The singleton instance for the era before the current one, 'Before Buddhist Era',
  which has the numeric value 0.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDisplayName(TextStyle style,
  Locale locale)`

  Gets the textual representation of this era.

  `int`

  `getValue()`

  Gets the numeric era `int` value.

  `static ThaiBuddhistEra`

  `of(int thaiBuddhistEra)`

  Obtains an instance of `ThaiBuddhistEra` from an `int` value.

  `static ThaiBuddhistEra`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ThaiBuddhistEra[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.time.chrono.[Era](Era.md "interface in java.time.chrono")

  `adjustInto, get, getLong, isSupported, query, range`

* ## Enum Constant Details

  + ### BEFORE\_BE

    public static final [ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono") BEFORE\_BE

    The singleton instance for the era before the current one, 'Before Buddhist Era',
    which has the numeric value 0.
  + ### BE

    public static final [ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono") BE

    The singleton instance for the current era, 'Buddhist Era',
    which has the numeric value 1.
* ## Method Details

  + ### values

    public static [ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono") valueOf([String](../../lang/String.md "class in java.lang") name)

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
  + ### of

    public static [ThaiBuddhistEra](ThaiBuddhistEra.md "enum class in java.time.chrono") of(int thaiBuddhistEra)

    Obtains an instance of `ThaiBuddhistEra` from an `int` value.

    `ThaiBuddhistEra` is an enum representing the Thai Buddhist eras of BEFORE\_BE/BE.
    This factory allows the enum to be obtained from the `int` value.

    Parameters:
    :   `thaiBuddhistEra` - the era to represent, from 0 to 1

    Returns:
    :   the BuddhistEra singleton, never null

    Throws:
    :   `DateTimeException` - if the era is invalid
  + ### getValue

    public int getValue()

    Gets the numeric era `int` value.

    The era BEFORE\_BE has the value 0, while the era BE has the value 1.

    Specified by:
    :   `getValue` in interface `Era`

    Returns:
    :   the era value, from 0 (BEFORE\_BE) to 1 (BE)
  + ### getDisplayName

    public [String](../../lang/String.md "class in java.lang") getDisplayName([TextStyle](../format/TextStyle.md "enum class in java.time.format") style,
    [Locale](../../util/Locale.md "class in java.util") locale)

    Gets the textual representation of this era.

    This returns the textual name used to identify the era,
    suitable for presentation to the user.
    The parameters control the style of the returned text and the locale.

    If no textual mapping is found then the [`numeric value`](Era.md#getValue()) is returned.

    Specified by:
    :   `getDisplayName` in interface `Era`

    Parameters:
    :   `style` - the style of the text required, not null
    :   `locale` - the locale to use, not null

    Returns:
    :   the text value of the era, not null