Module [java.base](../../../module-summary.md)

Package [java.time.chrono](package-summary.md)

# Enum Class IsoEra

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[IsoEra](IsoEra.md "enum class in java.time.chrono")>

java.time.chrono.IsoEra

All Implemented Interfaces:
:   `Serializable`, `Comparable<IsoEra>`, `Constable`, `Era`, `TemporalAccessor`, `TemporalAdjuster`

---

public enum IsoEra
extends [Enum](../../lang/Enum.md "class in java.lang")<[IsoEra](IsoEra.md "enum class in java.time.chrono")>
implements [Era](Era.md "interface in java.time.chrono")

An era in the ISO calendar system.

The ISO-8601 standard does not define eras.
A definition has therefore been created with two eras - 'Current era' (CE) for
years on or after 0001-01-01 (ISO), and 'Before current era' (BCE) for years before that.

ISO years and eras

| year-of-era | era | proleptic-year |
| --- | --- | --- |
| 2 | CE | 2 |
| 1 | CE | 1 |
| 1 | BCE | 0 |
| 2 | BCE | -1 |

**Do not use `ordinal()` to obtain the numeric representation of `IsoEra`.
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

  `BCE`

  The singleton instance for the era before the current one, 'Before Current Era',
  which has the numeric value 0.

  `CE`

  The singleton instance for the current era, 'Current Era',
  which has the numeric value 1.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getValue()`

  Gets the numeric era `int` value.

  `static IsoEra`

  `of(int isoEra)`

  Obtains an instance of `IsoEra` from an `int` value.

  `static IsoEra`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static IsoEra[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.time.chrono.[Era](Era.md "interface in java.time.chrono")

  `adjustInto, get, getDisplayName, getLong, isSupported, query, range`

* ## Enum Constant Details

  + ### BCE

    public static final [IsoEra](IsoEra.md "enum class in java.time.chrono") BCE

    The singleton instance for the era before the current one, 'Before Current Era',
    which has the numeric value 0.
  + ### CE

    public static final [IsoEra](IsoEra.md "enum class in java.time.chrono") CE

    The singleton instance for the current era, 'Current Era',
    which has the numeric value 1.
* ## Method Details

  + ### values

    public static [IsoEra](IsoEra.md "enum class in java.time.chrono")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [IsoEra](IsoEra.md "enum class in java.time.chrono") valueOf([String](../../lang/String.md "class in java.lang") name)

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

    public static [IsoEra](IsoEra.md "enum class in java.time.chrono") of(int isoEra)

    Obtains an instance of `IsoEra` from an `int` value.

    `IsoEra` is an enum representing the ISO eras of BCE/CE.
    This factory allows the enum to be obtained from the `int` value.

    Parameters:
    :   `isoEra` - the BCE/CE value to represent, from 0 (BCE) to 1 (CE)

    Returns:
    :   the era singleton, not null

    Throws:
    :   `DateTimeException` - if the value is invalid
  + ### getValue

    public int getValue()

    Gets the numeric era `int` value.

    The era BCE has the value 0, while the era CE has the value 1.

    Specified by:
    :   `getValue` in interface `Era`

    Returns:
    :   the era value, from 0 (BCE) to 1 (CE)