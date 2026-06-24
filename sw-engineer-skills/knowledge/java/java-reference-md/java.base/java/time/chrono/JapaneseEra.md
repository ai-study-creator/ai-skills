Module [java.base](../../../module-summary.md)

Package [java.time.chrono](package-summary.md)

# Class JapaneseEra

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.time.chrono.JapaneseEra

All Implemented Interfaces:
:   `Serializable`, `Era`, `TemporalAccessor`, `TemporalAdjuster`

---

public final class JapaneseEra
extends [Object](../../lang/Object.md "class in java.lang")
implements [Era](Era.md "interface in java.time.chrono"), [Serializable](../../io/Serializable.md "interface in java.io")

An era in the Japanese Imperial calendar system.

The Japanese government defines the official name and start date of
each era. Eras are consecutive and their date ranges do not overlap,
so the end date of one era is always the day before the start date
of the next era.

The Java SE Platform supports all eras defined by the Japanese government,
beginning with the Meiji era. Each era is identified in the Platform by an
integer value and a name. The [`of(int)`](#of(int)) and [`valueOf(String)`](#valueOf(java.lang.String))
methods may be used to obtain a singleton instance of `JapaneseEra`
for each era. The [`values()`](#values()) method returns the singleton instances
of all supported eras.

For convenience, this class declares a number of public static final fields
that refer to singleton instances returned by the [`values()`](#values()) method.

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.time.chrono.JapaneseEra)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final JapaneseEra`

  `HEISEI`

  The singleton instance for the 'Heisei' era (1989-01-08 - 2019-04-30)
  which has the value 2.

  `static final JapaneseEra`

  `MEIJI`

  The singleton instance for the 'Meiji' era (1868-01-01 - 1912-07-29)
  which has the value -1.

  `static final JapaneseEra`

  `REIWA`

  The singleton instance for the 'Reiwa' era (2019-05-01 - )
  which has the value 3.

  `static final JapaneseEra`

  `SHOWA`

  The singleton instance for the 'Showa' era (1926-12-25 - 1989-01-07)
  which has the value 1.

  `static final JapaneseEra`

  `TAISHO`

  The singleton instance for the 'Taisho' era (1912-07-30 - 1926-12-24)
  which has the value 0.
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

  `static JapaneseEra`

  `of(int japaneseEra)`

  Obtains an instance of `JapaneseEra` from an `int` value.

  `ValueRange`

  `range(TemporalField field)`

  Gets the range of valid values for the specified field.

  `String`

  `toString()`

  Returns a string representation of the object.

  `static JapaneseEra`

  `valueOf(String japaneseEra)`

  Returns the `JapaneseEra` with the name.

  `static JapaneseEra[]`

  `values()`

  Returns an array of JapaneseEras.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.time.chrono.[Era](Era.md "interface in java.time.chrono")

  `adjustInto, get, getLong, isSupported, query`

* ## Field Details

  + ### MEIJI

    public static final [JapaneseEra](JapaneseEra.md "class in java.time.chrono") MEIJI

    The singleton instance for the 'Meiji' era (1868-01-01 - 1912-07-29)
    which has the value -1.
  + ### TAISHO

    public static final [JapaneseEra](JapaneseEra.md "class in java.time.chrono") TAISHO

    The singleton instance for the 'Taisho' era (1912-07-30 - 1926-12-24)
    which has the value 0.
  + ### SHOWA

    public static final [JapaneseEra](JapaneseEra.md "class in java.time.chrono") SHOWA

    The singleton instance for the 'Showa' era (1926-12-25 - 1989-01-07)
    which has the value 1.
  + ### HEISEI

    public static final [JapaneseEra](JapaneseEra.md "class in java.time.chrono") HEISEI

    The singleton instance for the 'Heisei' era (1989-01-08 - 2019-04-30)
    which has the value 2.
  + ### REIWA

    public static final [JapaneseEra](JapaneseEra.md "class in java.time.chrono") REIWA

    The singleton instance for the 'Reiwa' era (2019-05-01 - )
    which has the value 3. The end date of this era is not specified, unless
    the Japanese Government defines it.

    Since:
    :   13
* ## Method Details

  + ### of

    public static [JapaneseEra](JapaneseEra.md "class in java.time.chrono") of(int japaneseEra)

    Obtains an instance of `JapaneseEra` from an `int` value.
    - The value `1` is associated with the 'Showa' era, because
      it contains 1970-01-01 (ISO calendar system).
    - The values `-1` and `0` are associated with two earlier
      eras, Meiji and Taisho, respectively.
    - A value greater than `1` is associated with a later era,
      beginning with Heisei (`2`).

    Every instance of `JapaneseEra` that is returned from the [`values()`](#values())
    method has an int value (available via [`Era.getValue()`](Era.md#getValue()) which is
    accepted by this method.

    Parameters:
    :   `japaneseEra` - the era to represent

    Returns:
    :   the `JapaneseEra` singleton, not null

    Throws:
    :   `DateTimeException` - if the value is invalid
  + ### valueOf

    public static [JapaneseEra](JapaneseEra.md "class in java.time.chrono") valueOf([String](../../lang/String.md "class in java.lang") japaneseEra)

    Returns the `JapaneseEra` with the name.

    The string must match exactly the name of the era.
    (Extraneous whitespace characters are not permitted.)

    Valid era names are the names of eras returned from [`values()`](#values()).

    Parameters:
    :   `japaneseEra` - the japaneseEra name; non-null

    Returns:
    :   the `JapaneseEra` singleton, never null

    Throws:
    :   `IllegalArgumentException` - if there is not JapaneseEra with the specified name
  + ### values

    public static [JapaneseEra](JapaneseEra.md "class in java.time.chrono")[] values()

    Returns an array of JapaneseEras. The array may contain eras defined
    by the Japanese government beyond the known era singletons.

    This method may be used to iterate over the JapaneseEras as follows:

    ```
     for (JapaneseEra c : JapaneseEra.values())
         System.out.println(c);
    ```

    Returns:
    :   an array of JapaneseEras
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
  + ### getValue

    public int getValue()

    Gets the numeric era `int` value.

    The [`SHOWA`](#SHOWA) era that contains 1970-01-01 (ISO calendar system) has the value 1.
    Later eras are numbered from 2 ([`HEISEI`](#HEISEI)).
    Earlier eras are numbered 0 ([`TAISHO`](#TAISHO)), -1 ([`MEIJI`](#MEIJI))).

    Specified by:
    :   `getValue` in interface `Era`

    Returns:
    :   the era value
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

    The range of valid Japanese eras can change over time due to the nature
    of the Japanese calendar system.

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
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.