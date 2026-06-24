Module [java.base](../../../module-summary.md)

Package [java.time.chrono](package-summary.md)

# Enum Class HijrahEra

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Enum](../../lang/Enum.md "class in java.lang")<[HijrahEra](HijrahEra.md "enum class in java.time.chrono")>

java.time.chrono.HijrahEra

All Implemented Interfaces:
:   `Serializable`, `Comparable<HijrahEra>`, `Constable`, `Era`, `TemporalAccessor`, `TemporalAdjuster`

---

public enum HijrahEra
extends [Enum](../../lang/Enum.md "class in java.lang")<[HijrahEra](HijrahEra.md "enum class in java.time.chrono")>
implements [Era](Era.md "interface in java.time.chrono")

An era in the Hijrah calendar system.

The Hijrah calendar system has only one era covering the
proleptic years greater than zero.

**Do not use `ordinal()` to obtain the numeric representation of `HijrahEra`.
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

  `AH`

  The singleton instance for the current era, 'Anno Hegirae',
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

  `static HijrahEra`

  `of(int hijrahEra)`

  Obtains an instance of `HijrahEra` from an `int` value.

  `ValueRange`

  `range(TemporalField field)`

  Gets the range of valid values for the specified field.

  `static HijrahEra`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static HijrahEra[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.time.chrono.[Era](Era.md "interface in java.time.chrono")

  `adjustInto, get, getLong, isSupported, query`

* ## Enum Constant Details

  + ### AH

    public static final [HijrahEra](HijrahEra.md "enum class in java.time.chrono") AH

    The singleton instance for the current era, 'Anno Hegirae',
    which has the numeric value 1.
* ## Method Details

  + ### values

    public static [HijrahEra](HijrahEra.md "enum class in java.time.chrono")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [HijrahEra](HijrahEra.md "enum class in java.time.chrono") valueOf([String](../../lang/String.md "class in java.lang") name)

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

    public static [HijrahEra](HijrahEra.md "enum class in java.time.chrono") of(int hijrahEra)

    Obtains an instance of `HijrahEra` from an `int` value.

    The current era, which is the only accepted value, has the value 1

    Parameters:
    :   `hijrahEra` - the era to represent, only 1 supported

    Returns:
    :   the HijrahEra.AH singleton, not null

    Throws:
    :   `DateTimeException` - if the value is invalid
  + ### getValue

    public int getValue()

    Gets the numeric era `int` value.

    The era AH has the value 1.

    Specified by:
    :   `getValue` in interface `Era`

    Returns:
    :   the era value, 1 (AH)
  + ### range

    public [ValueRange](../temporal/ValueRange.md "class in java.time.temporal") range([TemporalField](../temporal/TemporalField.md "interface in java.time.temporal") field)

    Gets the range of valid values for the specified field.

    The range object expresses the minimum and maximum valid values for a field.
    This era is used to enhance the accuracy of the returned range.
    If it is not possible to return the range, because the field is not supported
    or for some other reason, an exception is thrown.

    If the field is a [`ChronoField`](../temporal/ChronoField.md "enum class in java.time.temporal") then the query is implemented here.
    The `ERA` field returns the range.
    All other `ChronoField` instances will throw an `UnsupportedTemporalTypeException`.

    If the field is not a `ChronoField`, then the result of this method
    is obtained by invoking `TemporalField.rangeRefinedBy(TemporalAccessor)`
    passing `this` as the argument.
    Whether the range can be obtained is determined by the field.

    The `ERA` field returns a range for the one valid Hijrah era.

    Specified by:
    :   `range` in interface `Era`

    Specified by:
    :   `range` in interface `TemporalAccessor`

    Parameters:
    :   `field` - the field to query the range for, not null

    Returns:
    :   the range of valid values for the field, not null

    Throws:
    :   `DateTimeException` - if the range for the field cannot be obtained
    :   `UnsupportedTemporalTypeException` - if the unit is not supported
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