Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Enum Class Locale.FilteringMode

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util")>

java.util.Locale.FilteringMode

All Implemented Interfaces:
:   `Serializable`, `Comparable<Locale.FilteringMode>`, `Constable`

Enclosing class:
:   `Locale`

---

public static enum Locale.FilteringMode
extends [Enum](../lang/Enum.md "class in java.lang")<[Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util")>

This enum provides constants to select a filtering mode for locale
matching. Refer to [RFC 4647
Matching of Language Tags](https://tools.ietf.org/html/rfc4647) for details.

As an example, think of two Language Priority Lists each of which
includes only one language range and a set of following language tags:

```
    de (German)
    de-DE (German, Germany)
    de-Deva (German, in Devanagari script)
    de-Deva-DE (German, in Devanagari script, Germany)
    de-DE-1996 (German, Germany, orthography of 1996)
    de-Latn-DE (German, in Latin script, Germany)
    de-Latn-DE-1996 (German, in Latin script, Germany, orthography of 1996)
```

The filtering method will behave as follows:

Filtering method behavior

| Filtering Mode | Language Priority List: `"de-DE"` | Language Priority List: `"de-*-DE"` |
| --- | --- | --- |
| [`AUTOSELECT_FILTERING`](#AUTOSELECT_FILTERING) | Performs *basic* filtering and returns `"de-DE"` and `"de-DE-1996"`. | Performs *extended* filtering and returns `"de-DE"`, `"de-Deva-DE"`, `"de-DE-1996"`, `"de-Latn-DE"`, and `"de-Latn-DE-1996"`. |
| [`EXTENDED_FILTERING`](#EXTENDED_FILTERING) | Performs *extended* filtering and returns `"de-DE"`, `"de-Deva-DE"`, `"de-DE-1996"`, `"de-Latn-DE"`, and `"de-Latn-DE-1996"`. | Same as above. |
| [`IGNORE_EXTENDED_RANGES`](#IGNORE_EXTENDED_RANGES) | Performs *basic* filtering and returns `"de-DE"` and `"de-DE-1996"`. | Performs *basic* filtering and returns `null` because nothing matches. |
| [`MAP_EXTENDED_RANGES`](#MAP_EXTENDED_RANGES) | Same as above. | Performs *basic* filtering and returns `"de-DE"` and `"de-DE-1996"` because `"de-*-DE"` is mapped to `"de-DE"`. |
| [`REJECT_EXTENDED_RANGES`](#REJECT_EXTENDED_RANGES) | Same as above. | Throws [`IllegalArgumentException`](../lang/IllegalArgumentException.md "class in java.lang") because `"de-*-DE"` is not a valid basic language range. |

Since:
:   1.8

See Also:
:   * [`Locale.filter(List, Collection, FilteringMode)`](Locale.md#filter(java.util.List,java.util.Collection,java.util.Locale.FilteringMode))
    * [`Locale.filterTags(List, Collection, FilteringMode)`](Locale.md#filterTags(java.util.List,java.util.Collection,java.util.Locale.FilteringMode))

External Specifications
:   * [RFC 4647: Matching of Language Tags](https://www.rfc-editor.org/info/rfc4647)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `AUTOSELECT_FILTERING`

  Specifies automatic filtering mode based on the given Language
  Priority List consisting of language ranges.

  `EXTENDED_FILTERING`

  Specifies extended filtering.

  `IGNORE_EXTENDED_RANGES`

  Specifies basic filtering: Note that any extended language ranges
  included in the given Language Priority List are ignored.

  `MAP_EXTENDED_RANGES`

  Specifies basic filtering: If any extended language ranges are
  included in the given Language Priority List, they are mapped to the
  basic language range.

  `REJECT_EXTENDED_RANGES`

  Specifies basic filtering: If any extended language ranges are
  included in the given Language Priority List, the list is rejected
  and the filtering method throws [`IllegalArgumentException`](../lang/IllegalArgumentException.md "class in java.lang").
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Locale.FilteringMode`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Locale.FilteringMode[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### AUTOSELECT\_FILTERING

    public static final [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util") AUTOSELECT\_FILTERING

    Specifies automatic filtering mode based on the given Language
    Priority List consisting of language ranges. If all of the ranges
    are basic, basic filtering is selected. Otherwise, extended
    filtering is selected.
  + ### EXTENDED\_FILTERING

    public static final [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util") EXTENDED\_FILTERING

    Specifies extended filtering.
  + ### IGNORE\_EXTENDED\_RANGES

    public static final [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util") IGNORE\_EXTENDED\_RANGES

    Specifies basic filtering: Note that any extended language ranges
    included in the given Language Priority List are ignored.
  + ### MAP\_EXTENDED\_RANGES

    public static final [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util") MAP\_EXTENDED\_RANGES

    Specifies basic filtering: If any extended language ranges are
    included in the given Language Priority List, they are mapped to the
    basic language range. Specifically, a language range starting with a
    subtag `"*"` is treated as a language range `"*"`. For
    example, `"*-US"` is treated as `"*"`. If `"*"` is
    not the first subtag, `"*"` and extra `"-"` are removed.
    For example, `"ja-*-JP"` is mapped to `"ja-JP"`.
  + ### REJECT\_EXTENDED\_RANGES

    public static final [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util") REJECT\_EXTENDED\_RANGES

    Specifies basic filtering: If any extended language ranges are
    included in the given Language Priority List, the list is rejected
    and the filtering method throws [`IllegalArgumentException`](../lang/IllegalArgumentException.md "class in java.lang").
* ## Method Details

  + ### values

    public static [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Locale.FilteringMode](Locale.FilteringMode.md "enum class in java.util") valueOf([String](../lang/String.md "class in java.lang") name)

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