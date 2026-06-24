Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class DateFormat.Field

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.text.AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

[java.text.Format.Field](Format.Field.md "class in java.text")

java.text.DateFormat.Field

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `DateFormat`

---

public static class DateFormat.Field
extends [Format.Field](Format.Field.md "class in java.text")

Defines constants that are used as attribute keys in the
`AttributedCharacterIterator` returned
from `DateFormat.formatToCharacterIterator` and as
field identifiers in `FieldPosition`.

The class also provides two methods to map
between its constants and the corresponding Calendar constants.

Since:
:   1.4

See Also:
:   * [`Calendar`](../util/Calendar.md "class in java.util")
    * [Serialized Form](../../../serialized-form.md#java.text.DateFormat.Field)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final DateFormat.Field`

  `AM_PM`

  Constant identifying the time of day indicator
  (e.g. "a.m." or "p.m.") field.

  `static final DateFormat.Field`

  `DAY_OF_MONTH`

  Constant identifying the day of month field.

  `static final DateFormat.Field`

  `DAY_OF_WEEK`

  Constant identifying the day of week field.

  `static final DateFormat.Field`

  `DAY_OF_WEEK_IN_MONTH`

  Constant identifying the day of week field.

  `static final DateFormat.Field`

  `DAY_OF_YEAR`

  Constant identifying the day of year field.

  `static final DateFormat.Field`

  `ERA`

  Constant identifying the era field.

  `static final DateFormat.Field`

  `HOUR_OF_DAY0`

  Constant identifying the hour of day field, where the legal values
  are 0 to 23.

  `static final DateFormat.Field`

  `HOUR_OF_DAY1`

  Constant identifying the hour of day field, where the legal values
  are 1 to 24.

  `static final DateFormat.Field`

  `HOUR0`

  Constant identifying the hour field, where the legal values are
  0 to 11.

  `static final DateFormat.Field`

  `HOUR1`

  Constant identifying the hour field, where the legal values are
  1 to 12.

  `static final DateFormat.Field`

  `MILLISECOND`

  Constant identifying the millisecond field.

  `static final DateFormat.Field`

  `MINUTE`

  Constant identifying the minute field.

  `static final DateFormat.Field`

  `MONTH`

  Constant identifying the month field.

  `static final DateFormat.Field`

  `SECOND`

  Constant identifying the second field.

  `static final DateFormat.Field`

  `TIME_ZONE`

  Constant identifying the time zone field.

  `static final DateFormat.Field`

  `WEEK_OF_MONTH`

  Constant identifying the week of month field.

  `static final DateFormat.Field`

  `WEEK_OF_YEAR`

  Constant identifying the week of year field.

  `static final DateFormat.Field`

  `YEAR`

  Constant identifying the year field.

  ### Fields inherited from class java.text.[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

  `INPUT_METHOD_SEGMENT, LANGUAGE, READING`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Field(String name,
  int calendarField)`

  Creates a `Field`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getCalendarField()`

  Returns the `Calendar` field associated with this
  attribute.

  `static DateFormat.Field`

  `ofCalendarField(int calendarField)`

  Returns the `Field` constant that corresponds to
  the `Calendar` constant `calendarField`.

  `protected Object`

  `readResolve()`

  Resolves instances being deserialized to the predefined constants.

  ### Methods inherited from class java.text.[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

  `equals, getName, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ERA

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") ERA

    Constant identifying the era field.
  + ### YEAR

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") YEAR

    Constant identifying the year field.
  + ### MONTH

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") MONTH

    Constant identifying the month field.
  + ### DAY\_OF\_MONTH

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") DAY\_OF\_MONTH

    Constant identifying the day of month field.
  + ### HOUR\_OF\_DAY1

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") HOUR\_OF\_DAY1

    Constant identifying the hour of day field, where the legal values
    are 1 to 24.
  + ### HOUR\_OF\_DAY0

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") HOUR\_OF\_DAY0

    Constant identifying the hour of day field, where the legal values
    are 0 to 23.
  + ### MINUTE

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") MINUTE

    Constant identifying the minute field.
  + ### SECOND

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") SECOND

    Constant identifying the second field.
  + ### MILLISECOND

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") MILLISECOND

    Constant identifying the millisecond field.
  + ### DAY\_OF\_WEEK

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") DAY\_OF\_WEEK

    Constant identifying the day of week field.
  + ### DAY\_OF\_YEAR

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") DAY\_OF\_YEAR

    Constant identifying the day of year field.
  + ### DAY\_OF\_WEEK\_IN\_MONTH

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") DAY\_OF\_WEEK\_IN\_MONTH

    Constant identifying the day of week field.
  + ### WEEK\_OF\_YEAR

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") WEEK\_OF\_YEAR

    Constant identifying the week of year field.
  + ### WEEK\_OF\_MONTH

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") WEEK\_OF\_MONTH

    Constant identifying the week of month field.
  + ### AM\_PM

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") AM\_PM

    Constant identifying the time of day indicator
    (e.g. "a.m." or "p.m.") field.
  + ### HOUR1

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") HOUR1

    Constant identifying the hour field, where the legal values are
    1 to 12.
  + ### HOUR0

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") HOUR0

    Constant identifying the hour field, where the legal values are
    0 to 11.
  + ### TIME\_ZONE

    public static final [DateFormat.Field](DateFormat.Field.md "class in java.text") TIME\_ZONE

    Constant identifying the time zone field.
* ## Constructor Details

  + ### Field

    protected Field([String](../lang/String.md "class in java.lang") name,
    int calendarField)

    Creates a `Field`.

    Parameters:
    :   `name` - the name of the `Field`
    :   `calendarField` - the `Calendar` constant this
        `Field` corresponds to; any value, even one
        outside the range of legal `Calendar` values may
        be used, but `-1` should be used for values
        that don't correspond to legal `Calendar` values
* ## Method Details

  + ### ofCalendarField

    public static [DateFormat.Field](DateFormat.Field.md "class in java.text") ofCalendarField(int calendarField)

    Returns the `Field` constant that corresponds to
    the `Calendar` constant `calendarField`.
    If there is no direct mapping between the `Calendar`
    constant and a `Field`, null is returned.

    Parameters:
    :   `calendarField` - Calendar field constant

    Returns:
    :   Field instance representing calendarField.

    Throws:
    :   `IllegalArgumentException` - if `calendarField` is
        not the value of a `Calendar` field constant.

    See Also:
    :   - [`Calendar`](../util/Calendar.md "class in java.util")
  + ### getCalendarField

    public int getCalendarField()

    Returns the `Calendar` field associated with this
    attribute. For example, if this represents the hours field of
    a `Calendar`, this would return
    `Calendar.HOUR`. If there is no corresponding
    `Calendar` constant, this will return -1.

    Returns:
    :   Calendar constant for this field

    See Also:
    :   - [`Calendar`](../util/Calendar.md "class in java.util")
  + ### readResolve

    protected [Object](../lang/Object.md "class in java.lang") readResolve()
    throws [InvalidObjectException](../io/InvalidObjectException.md "class in java.io")

    Resolves instances being deserialized to the predefined constants.

    Overrides:
    :   `readResolve` in class `AttributedCharacterIterator.Attribute`

    Returns:
    :   resolved DateFormat.Field constant

    Throws:
    :   `InvalidObjectException` - if the constant could not be
        resolved.