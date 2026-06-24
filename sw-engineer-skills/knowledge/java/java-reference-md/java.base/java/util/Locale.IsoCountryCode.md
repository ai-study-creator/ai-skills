Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Enum Class Locale.IsoCountryCode

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util")>

java.util.Locale.IsoCountryCode

All Implemented Interfaces:
:   `Serializable`, `Comparable<Locale.IsoCountryCode>`, `Constable`

Enclosing class:
:   `Locale`

---

public static enum Locale.IsoCountryCode
extends [Enum](../lang/Enum.md "class in java.lang")<[Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util")>

Enum for specifying the type defined in ISO 3166. This enum is used to
retrieve the two-letter ISO3166-1 alpha-2, three-letter ISO3166-1
alpha-3, four-letter ISO3166-3 country codes.

Since:
:   9

See Also:
:   * [`Locale.getISOCountries(Locale.IsoCountryCode)`](Locale.md#getISOCountries(java.util.Locale.IsoCountryCode))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `PART1_ALPHA2`

  PART1\_ALPHA2 is used to represent the ISO3166-1 alpha-2 two letter
  country codes.

  `PART1_ALPHA3`

  PART1\_ALPHA3 is used to represent the ISO3166-1 alpha-3 three letter
  country codes.

  `PART3`

  PART3 is used to represent the ISO3166-3 four letter country codes.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Locale.IsoCountryCode`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Locale.IsoCountryCode[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PART1\_ALPHA2

    public static final [Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util") PART1\_ALPHA2

    PART1\_ALPHA2 is used to represent the ISO3166-1 alpha-2 two letter
    country codes.
  + ### PART1\_ALPHA3

    public static final [Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util") PART1\_ALPHA3

    PART1\_ALPHA3 is used to represent the ISO3166-1 alpha-3 three letter
    country codes.
  + ### PART3

    public static final [Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util") PART3

    PART3 is used to represent the ISO3166-3 four letter country codes.
* ## Method Details

  + ### values

    public static [Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Locale.IsoCountryCode](Locale.IsoCountryCode.md "enum class in java.util") valueOf([String](../lang/String.md "class in java.lang") name)

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