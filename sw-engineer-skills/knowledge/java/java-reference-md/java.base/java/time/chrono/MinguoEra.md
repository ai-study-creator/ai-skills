Module [java.base](../../../module-summary.md)

Package [java.time.chrono](package-summary.md)

# Enum Class MinguoEra

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[MinguoEra](MinguoEra.md "enum class in java.time.chrono")>

java.time.chrono.MinguoEra

All Implemented Interfaces:
:   `Serializable`, `Comparable<MinguoEra>`, `Constable`, `Era`, `TemporalAccessor`, `TemporalAdjuster`

---

public enum MinguoEra
extends [Enum](../../lang/Enum.md "class in java.lang")<[MinguoEra](MinguoEra.md "enum class in java.time.chrono")>
implements [Era](Era.md "interface in java.time.chrono")

An era in the Minguo calendar system.

The Minguo calendar system has two eras.
The current era, for years from 1 onwards, is known as the 'Republic of China' era.
All previous years, zero or earlier in the proleptic count or one and greater
in the year-of-era count, are part of the 'Before Republic of China' era.

Minguo years and eras

| year-of-era | era | proleptic-year | ISO proleptic-year |
| --- | --- | --- | --- |
| 2 | ROC | 2 | 1913 |
| 1 | ROC | 1 | 1912 |
| 1 | BEFORE\_ROC | 0 | 1911 |
| 2 | BEFORE\_ROC | -1 | 1910 |

**Do not use `ordinal()` to obtain the numeric representation of `MinguoEra`.
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

  `BEFORE_ROC`

  The singleton instance for the era before the current one, 'Before Republic of China Era',
  which has the numeric value 0.

  `ROC`

  The singleton instance for the current era, 'Republic of China Era',
  which has the numeric value 1.
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

  `static MinguoEra`

  `of(int minguoEra)`

  Obtains an instance of `MinguoEra` from an `int` value.

  `static MinguoEra`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static MinguoEra[]`

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

  + ### BEFORE\_ROC

    public static final [MinguoEra](MinguoEra.md "enum class in java.time.chrono") BEFORE\_ROC

    The singleton instance for the era before the current one, 'Before Republic of China Era',
    which has the numeric value 0.
  + ### ROC

    public static final [MinguoEra](MinguoEra.md "enum class in java.time.chrono") ROC

    The singleton instance for the current era, 'Republic of China Era',
    which has the numeric value 1.
* ## Method Details

  + ### values

    public static [MinguoEra](MinguoEra.md "enum class in java.time.chrono")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [MinguoEra](MinguoEra.md "enum class in java.time.chrono") valueOf([String](../../lang/String.md "class in java.lang") name)

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

    public static [MinguoEra](MinguoEra.md "enum class in java.time.chrono") of(int minguoEra)

    Obtains an instance of `MinguoEra` from an `int` value.

    `MinguoEra` is an enum representing the Minguo eras of BEFORE\_ROC/ROC.
    This factory allows the enum to be obtained from the `int` value.

    Parameters:
    :   `minguoEra` - the BEFORE\_ROC/ROC value to represent, from 0 (BEFORE\_ROC) to 1 (ROC)

    Returns:
    :   the era singleton, not null

    Throws:
    :   `DateTimeException` - if the value is invalid
  + ### getValue

    public int getValue()

    Gets the numeric era `int` value.

    The era BEFORE\_ROC has the value 0, while the era ROC has the value 1.

    Specified by:
    :   `getValue` in interface `Era`

    Returns:
    :   the era value, from 0 (BEFORE\_ROC) to 1 (ROC)
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