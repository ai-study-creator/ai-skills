Module [java.base](../../../module-summary.md)

Package [java.time.temporal](package-summary.md)

# Interface TemporalField

All Known Implementing Classes:
:   `ChronoField`

---

public interface TemporalField

A field of date-time, such as month-of-year or minute-of-hour.

Date and time is expressed using fields which partition the time-line into something
meaningful for humans. Implementations of this interface represent those fields.

The most commonly used units are defined in [`ChronoField`](ChronoField.md "enum class in java.time.temporal").
Further fields are supplied in [`IsoFields`](IsoFields.md "class in java.time.temporal"), [`WeekFields`](WeekFields.md "class in java.time.temporal") and [`JulianFields`](JulianFields.md "class in java.time.temporal").
Fields can also be written by application code by implementing this interface.

The field works using double dispatch. Client code calls methods on a date-time like
`LocalDateTime` which check if the field is a `ChronoField`.
If it is, then the date-time must handle it.
Otherwise, the method call is re-dispatched to the matching method in this interface.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `<R extends Temporal>  
  R`

  `adjustInto(R temporal,
  long newValue)`

  Returns a copy of the specified temporal object with the value of this field set.

  `TemporalUnit`

  `getBaseUnit()`

  Gets the unit that the field is measured in.

  `default String`

  `getDisplayName(Locale locale)`

  Gets the display name for the field in the requested locale.

  `long`

  `getFrom(TemporalAccessor temporal)`

  Gets the value of this field from the specified temporal object.

  `TemporalUnit`

  `getRangeUnit()`

  Gets the range that the field is bound by.

  `boolean`

  `isDateBased()`

  Checks if this field represents a component of a date.

  `boolean`

  `isSupportedBy(TemporalAccessor temporal)`

  Checks if this field is supported by the temporal object.

  `boolean`

  `isTimeBased()`

  Checks if this field represents a component of a time.

  `ValueRange`

  `range()`

  Gets the range of valid values for the field.

  `ValueRange`

  `rangeRefinedBy(TemporalAccessor temporal)`

  Get the range of valid values for this field using the temporal object to
  refine the result.

  `default TemporalAccessor`

  `resolve(Map<TemporalField,Long> fieldValues,
  TemporalAccessor partialTemporal,
  ResolverStyle resolverStyle)`

  Resolves this field to provide a simpler alternative or a date.

  `String`

  `toString()`

  Gets a descriptive name for the field.

* ## Method Details

  + ### getDisplayName

    default [String](../../lang/String.md "class in java.lang") getDisplayName([Locale](../../util/Locale.md "class in java.util") locale)

    Gets the display name for the field in the requested locale.

    If there is no display name for the locale then a suitable default must be returned.

    The default implementation must check the locale is not null
    and return `toString()`.

    Parameters:
    :   `locale` - the locale to use, not null

    Returns:
    :   the display name for the locale or a suitable default, not null
  + ### getBaseUnit

    [TemporalUnit](TemporalUnit.md "interface in java.time.temporal") getBaseUnit()

    Gets the unit that the field is measured in.

    The unit of the field is the period that varies within the range.
    For example, in the field 'MonthOfYear', the unit is 'Months'.
    See also [`getRangeUnit()`](#getRangeUnit()).

    Returns:
    :   the unit defining the base unit of the field, not null
  + ### getRangeUnit

    [TemporalUnit](TemporalUnit.md "interface in java.time.temporal") getRangeUnit()

    Gets the range that the field is bound by.

    The range of the field is the period that the field varies within.
    For example, in the field 'MonthOfYear', the range is 'Years'.
    See also [`getBaseUnit()`](#getBaseUnit()).

    The range is never null. For example, the 'Year' field is shorthand for
    'YearOfForever'. It therefore has a unit of 'Years' and a range of 'Forever'.

    Returns:
    :   the unit defining the range of the field, not null
  + ### range

    [ValueRange](ValueRange.md "class in java.time.temporal") range()

    Gets the range of valid values for the field.

    All fields can be expressed as a `long` integer.
    This method returns an object that describes the valid range for that value.
    This method is generally only applicable to the ISO-8601 calendar system.

    Note that the result only describes the minimum and maximum valid values
    and it is important not to read too much into them. For example, there
    could be values within the range that are invalid for the field.

    Returns:
    :   the range of valid values for the field, not null
  + ### isDateBased

    boolean isDateBased()

    Checks if this field represents a component of a date.

    A field is date-based if it can be derived from
    [`EPOCH_DAY`](ChronoField.md#EPOCH_DAY).
    Note that it is valid for both `isDateBased()` and `isTimeBased()`
    to return false, such as when representing a field like minute-of-week.

    Returns:
    :   true if this field is a component of a date
  + ### isTimeBased

    boolean isTimeBased()

    Checks if this field represents a component of a time.

    A field is time-based if it can be derived from
    [`NANO_OF_DAY`](ChronoField.md#NANO_OF_DAY).
    Note that it is valid for both `isDateBased()` and `isTimeBased()`
    to return false, such as when representing a field like minute-of-week.

    Returns:
    :   true if this field is a component of a time
  + ### isSupportedBy

    boolean isSupportedBy([TemporalAccessor](TemporalAccessor.md "interface in java.time.temporal") temporal)

    Checks if this field is supported by the temporal object.

    This determines whether the temporal accessor supports this field.
    If this returns false, then the temporal cannot be queried for this field.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`TemporalAccessor.isSupported(TemporalField)`](TemporalAccessor.md#isSupported(java.time.temporal.TemporalField)):

    ```
       // these two lines are equivalent, but the second approach is recommended
       temporal = thisField.isSupportedBy(temporal);
       temporal = temporal.isSupported(thisField);
    ```

    It is recommended to use the second approach, `isSupported(TemporalField)`,
    as it is a lot clearer to read in code.

    Implementations should determine whether they are supported using the fields
    available in [`ChronoField`](ChronoField.md "enum class in java.time.temporal").

    Parameters:
    :   `temporal` - the temporal object to query, not null

    Returns:
    :   true if the date-time can be queried for this field, false if not
  + ### rangeRefinedBy

    [ValueRange](ValueRange.md "class in java.time.temporal") rangeRefinedBy([TemporalAccessor](TemporalAccessor.md "interface in java.time.temporal") temporal)

    Get the range of valid values for this field using the temporal object to
    refine the result.

    This uses the temporal object to find the range of valid values for the field.
    This is similar to [`range()`](#range()), however this method refines the result
    using the temporal. For example, if the field is `DAY_OF_MONTH` the
    `range` method is not accurate as there are four possible month lengths,
    28, 29, 30 and 31 days. Using this method with a date allows the range to be
    accurate, returning just one of those four options.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`TemporalAccessor.range(TemporalField)`](TemporalAccessor.md#range(java.time.temporal.TemporalField)):

    ```
       // these two lines are equivalent, but the second approach is recommended
       temporal = thisField.rangeRefinedBy(temporal);
       temporal = temporal.range(thisField);
    ```

    It is recommended to use the second approach, `range(TemporalField)`,
    as it is a lot clearer to read in code.

    Implementations should perform any queries or calculations using the fields
    available in [`ChronoField`](ChronoField.md "enum class in java.time.temporal").
    If the field is not supported an `UnsupportedTemporalTypeException` must be thrown.

    Parameters:
    :   `temporal` - the temporal object used to refine the result, not null

    Returns:
    :   the range of valid values for this field, not null

    Throws:
    :   `DateTimeException` - if the range for the field cannot be obtained
    :   `UnsupportedTemporalTypeException` - if the field is not supported by the temporal
  + ### getFrom

    long getFrom([TemporalAccessor](TemporalAccessor.md "interface in java.time.temporal") temporal)

    Gets the value of this field from the specified temporal object.

    This queries the temporal object for the value of this field.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`TemporalAccessor.getLong(TemporalField)`](TemporalAccessor.md#getLong(java.time.temporal.TemporalField))
    (or [`TemporalAccessor.get(TemporalField)`](TemporalAccessor.md#get(java.time.temporal.TemporalField))):

    ```
       // these two lines are equivalent, but the second approach is recommended
       temporal = thisField.getFrom(temporal);
       temporal = temporal.getLong(thisField);
    ```

    It is recommended to use the second approach, `getLong(TemporalField)`,
    as it is a lot clearer to read in code.

    Implementations should perform any queries or calculations using the fields
    available in [`ChronoField`](ChronoField.md "enum class in java.time.temporal").
    If the field is not supported an `UnsupportedTemporalTypeException` must be thrown.

    Parameters:
    :   `temporal` - the temporal object to query, not null

    Returns:
    :   the value of this field, not null

    Throws:
    :   `DateTimeException` - if a value for the field cannot be obtained
    :   `UnsupportedTemporalTypeException` - if the field is not supported by the temporal
    :   `ArithmeticException` - if numeric overflow occurs
  + ### adjustInto

    <R extends [Temporal](Temporal.md "interface in java.time.temporal")> R adjustInto(R temporal,
    long newValue)

    Returns a copy of the specified temporal object with the value of this field set.

    This returns a new temporal object based on the specified one with the value for
    this field changed. For example, on a `LocalDate`, this could be used to
    set the year, month or day-of-month.
    The returned object has the same observable type as the specified object.

    In some cases, changing a field is not fully defined. For example, if the target object is
    a date representing the 31st January, then changing the month to February would be unclear.
    In cases like this, the implementation is responsible for resolving the result.
    Typically it will choose the previous valid date, which would be the last valid
    day of February in this example.

    There are two equivalent ways of using this method.
    The first is to invoke this method directly.
    The second is to use [`Temporal.with(TemporalField, long)`](Temporal.md#with(java.time.temporal.TemporalField,long)):

    ```
       // these two lines are equivalent, but the second approach is recommended
       temporal = thisField.adjustInto(temporal);
       temporal = temporal.with(thisField);
    ```

    It is recommended to use the second approach, `with(TemporalField)`,
    as it is a lot clearer to read in code.

    Implementations should perform any queries or calculations using the fields
    available in [`ChronoField`](ChronoField.md "enum class in java.time.temporal").
    If the field is not supported an `UnsupportedTemporalTypeException` must be thrown.

    Implementations must not alter the specified temporal object.
    Instead, an adjusted copy of the original must be returned.
    This provides equivalent, safe behavior for immutable and mutable implementations.

    Type Parameters:
    :   `R` - the type of the Temporal object

    Parameters:
    :   `temporal` - the temporal object to adjust, not null
    :   `newValue` - the new value of the field

    Returns:
    :   the adjusted temporal object, not null

    Throws:
    :   `DateTimeException` - if the field cannot be set
    :   `UnsupportedTemporalTypeException` - if the field is not supported by the temporal
    :   `ArithmeticException` - if numeric overflow occurs
  + ### resolve

    default [TemporalAccessor](TemporalAccessor.md "interface in java.time.temporal") resolve([Map](../../util/Map.md "interface in java.util")<[TemporalField](TemporalField.md "interface in java.time.temporal"),[Long](../../lang/Long.md "class in java.lang")> fieldValues,
    [TemporalAccessor](TemporalAccessor.md "interface in java.time.temporal") partialTemporal,
    [ResolverStyle](../format/ResolverStyle.md "enum class in java.time.format") resolverStyle)

    Resolves this field to provide a simpler alternative or a date.

    This method is invoked during the resolve phase of parsing.
    It is designed to allow application defined fields to be simplified into
    more standard fields, such as those on `ChronoField`, or into a date.

    Applications should not normally invoke this method directly.

    Parameters:
    :   `fieldValues` - the map of fields to values, which can be updated, not null
    :   `partialTemporal` - the partially complete temporal to query for zone and
        chronology; querying for other things is undefined and not recommended, not null
    :   `resolverStyle` - the requested type of resolve, not null

    Returns:
    :   the resolved temporal object; null if resolving only
        changed the map, or no resolve occurred

    Throws:
    :   `ArithmeticException` - if numeric overflow occurs
    :   `DateTimeException` - if resolving results in an error. This must not be thrown
        by querying a field on the temporal without first checking if it is supported
  + ### toString

    [String](../../lang/String.md "class in java.lang") toString()

    Gets a descriptive name for the field.

    The should be of the format 'BaseOfRange', such as 'MonthOfYear',
    unless the field has a range of `FOREVER`, when only
    the base unit is mentioned, such as 'Year' or 'Era'.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the name of the field, not null