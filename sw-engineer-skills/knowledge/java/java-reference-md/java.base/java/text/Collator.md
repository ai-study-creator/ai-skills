Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class Collator

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.Collator

All Implemented Interfaces:
:   `Cloneable`, `Comparator<Object>`

Direct Known Subclasses:
:   `RuleBasedCollator`

---

public abstract class Collator
extends [Object](../lang/Object.md "class in java.lang")
implements [Comparator](../util/Comparator.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")>, [Cloneable](../lang/Cloneable.md "interface in java.lang")

The `Collator` class performs locale-sensitive
`String` comparison. You use this class to build
searching and sorting routines for natural language text.

`Collator` is an abstract base class. Subclasses
implement specific collation strategies. One subclass,
`RuleBasedCollator`, is currently provided with
the Java Platform and is applicable to a wide set of languages. Other
subclasses may be created to handle more specialized needs.

Like other locale-sensitive classes, you can use the static
factory method, `getInstance`, to obtain the appropriate
`Collator` object for a given locale. You will only need
to look at the subclasses of `Collator` if you need
to understand the details of a particular collation strategy or
if you need to modify that strategy.

The following example shows how to compare two strings using
the `Collator` for the default locale.

Copy![Copy snippet](../../../copy.svg)

```
// Compare two strings in the default locale
Collator myCollator = Collator.getInstance();
if (myCollator.compare("abc", "ABC") < 0) {
    System.out.println("abc is less than ABC");
} else {
    System.out.println("abc is greater than or equal to ABC");
}
```

You can set a `Collator`'s *strength* property
to determine the level of difference considered significant in
comparisons. Four strengths are provided: `PRIMARY`,
`SECONDARY`, `TERTIARY`, and `IDENTICAL`.
The exact assignment of strengths to language features is
locale dependent. For example, in Czech, "e" and "f" are considered
primary differences, while "e" and "ě" are secondary differences,
"e" and "E" are tertiary differences and "e" and "e" are identical.
The following shows how both case and accents could be ignored for
US English.

Copy![Copy snippet](../../../copy.svg)

```
// Get the Collator for US English and set its strength to PRIMARY
Collator usCollator = Collator.getInstance(Locale.US);
usCollator.setStrength(Collator.PRIMARY);
if (usCollator.compare("abc", "ABC") == 0) {
    System.out.println("Strings are equivalent");
}
```

For comparing `String`s exactly once, the `compare`
method provides the best performance. When sorting a list of
`String`s however, it is generally necessary to compare each
`String` multiple times. In this case, `CollationKey`s
provide better performance. The `CollationKey` class converts
a `String` to a series of bits that can be compared bitwise
against other `CollationKey`s. A `CollationKey` is
created by a `Collator` object for a given `String`.

Since:
:   1.1

See Also:
:   * [`RuleBasedCollator`](RuleBasedCollator.md "class in java.text")
    * [`CollationKey`](CollationKey.md "class in java.text")
    * [`CollationElementIterator`](CollationElementIterator.md "class in java.text")
    * [`Locale`](../util/Locale.md "class in java.util")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CANONICAL_DECOMPOSITION`

  Decomposition mode value.

  `static final int`

  `FULL_DECOMPOSITION`

  Decomposition mode value.

  `static final int`

  `IDENTICAL`

  Collator strength value.

  `static final int`

  `NO_DECOMPOSITION`

  Decomposition mode value.

  `static final int`

  `PRIMARY`

  Collator strength value.

  `static final int`

  `SECONDARY`

  Collator strength value.

  `static final int`

  `TERTIARY`

  Collator strength value.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Collator()`

  Default constructor.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Overrides Cloneable

  `int`

  `compare(Object o1,
  Object o2)`

  Compares its two arguments for order.

  `abstract int`

  `compare(String source,
  String target)`

  Compares the source string to the target string according to the
  collation rules for this Collator.

  `boolean`

  `equals(Object that)`

  Compares the equality of two Collators.

  `boolean`

  `equals(String source,
  String target)`

  Convenience method for comparing the equality of two strings based on
  this Collator's collation rules.

  `static Locale[]`

  `getAvailableLocales()`

  Returns an array of all locales for which the
  `getInstance` methods of this class can return
  localized instances.

  `abstract CollationKey`

  `getCollationKey(String source)`

  Transforms the String into a series of bits that can be compared bitwise
  to other CollationKeys.

  `int`

  `getDecomposition()`

  Get the decomposition mode of this Collator.

  `static Collator`

  `getInstance()`

  Gets the Collator for the current default locale.

  `static Collator`

  `getInstance(Locale desiredLocale)`

  Gets the Collator for the desired locale.

  `int`

  `getStrength()`

  Returns this Collator's strength property.

  `abstract int`

  `hashCode()`

  Generates the hash code for this Collator.

  `void`

  `setDecomposition(int decompositionMode)`

  Set the decomposition mode of this Collator.

  `void`

  `setStrength(int newStrength)`

  Sets this Collator's strength property.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.[Comparator](../util/Comparator.md "interface in java.util")

  `reversed, thenComparing, thenComparing, thenComparing, thenComparingDouble, thenComparingInt, thenComparingLong`

* ## Field Details

  + ### PRIMARY

    public static final int PRIMARY

    Collator strength value. When set, only PRIMARY differences are
    considered significant during comparison. The assignment of strengths
    to language features is locale dependent. A common example is for
    different base letters ("a" vs "b") to be considered a PRIMARY difference.

    See Also:
    :   - [`setStrength(int)`](#setStrength(int))
        - [`getStrength()`](#getStrength())
        - [Constant Field Values](../../../constant-values.md#java.text.Collator.PRIMARY)
  + ### SECONDARY

    public static final int SECONDARY

    Collator strength value. When set, only SECONDARY and above differences are
    considered significant during comparison. The assignment of strengths
    to language features is locale dependent. A common example is for
    different accented forms of the same base letter ("a" vs "ä") to be
    considered a SECONDARY difference.

    See Also:
    :   - [`setStrength(int)`](#setStrength(int))
        - [`getStrength()`](#getStrength())
        - [Constant Field Values](../../../constant-values.md#java.text.Collator.SECONDARY)
  + ### TERTIARY

    public static final int TERTIARY

    Collator strength value. When set, only TERTIARY and above differences are
    considered significant during comparison. The assignment of strengths
    to language features is locale dependent. A common example is for
    case differences ("a" vs "A") to be considered a TERTIARY difference.

    See Also:
    :   - [`setStrength(int)`](#setStrength(int))
        - [`getStrength()`](#getStrength())
        - [Constant Field Values](../../../constant-values.md#java.text.Collator.TERTIARY)
  + ### IDENTICAL

    public static final int IDENTICAL

    Collator strength value. When set, all differences are
    considered significant during comparison. The assignment of strengths
    to language features is locale dependent. A common example is for control
    characters ("\u0001" vs "\u0002") to be considered equal at the
    PRIMARY, SECONDARY, and TERTIARY levels but different at the IDENTICAL
    level. Additionally, differences between pre-composed accents such as
    "\u00C0" (A-grave) and combining accents such as "A\u0300"
    (A, combining-grave) will be considered significant at the IDENTICAL
    level if decomposition is set to NO\_DECOMPOSITION.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.text.Collator.IDENTICAL)
  + ### NO\_DECOMPOSITION

    public static final int NO\_DECOMPOSITION

    Decomposition mode value. With NO\_DECOMPOSITION
    set, accented characters will not be decomposed for collation. This
    setting provides the fastest collation but
    will only produce correct results for languages that do not use accents.

    See Also:
    :   - [`getDecomposition()`](#getDecomposition())
        - [`setDecomposition(int)`](#setDecomposition(int))
        - [Constant Field Values](../../../constant-values.md#java.text.Collator.NO_DECOMPOSITION)
  + ### CANONICAL\_DECOMPOSITION

    public static final int CANONICAL\_DECOMPOSITION

    Decomposition mode value. With CANONICAL\_DECOMPOSITION
    set, characters that are canonical variants according to Unicode
    standard will be decomposed for collation. This should be used to get
    correct collation of accented characters.

    CANONICAL\_DECOMPOSITION corresponds to Normalization Form D as
    described in
    [Unicode
    Standard Annex #15: Unicode Normalization Forms](http://www.unicode.org/reports/tr15/).

    See Also:
    :   - [`getDecomposition()`](#getDecomposition())
        - [`setDecomposition(int)`](#setDecomposition(int))
        - [Constant Field Values](../../../constant-values.md#java.text.Collator.CANONICAL_DECOMPOSITION)

    External Specifications
    :   - [Unicode Normalization Forms](https://www.unicode.org/reports/tr15)
  + ### FULL\_DECOMPOSITION

    public static final int FULL\_DECOMPOSITION

    Decomposition mode value. With FULL\_DECOMPOSITION
    set, both Unicode canonical variants and Unicode compatibility variants
    will be decomposed for collation. This causes not only accented
    characters to be collated, but also characters that have special formats
    to be collated with their norminal form. For example, the half-width and
    full-width ASCII and Katakana characters are then collated together.
    FULL\_DECOMPOSITION is the most complete and therefore the slowest
    decomposition mode.

    FULL\_DECOMPOSITION corresponds to Normalization Form KD as
    described in
    [Unicode
    Standard Annex #15: Unicode Normalization Forms](http://www.unicode.org/reports/tr15/).

    See Also:
    :   - [`getDecomposition()`](#getDecomposition())
        - [`setDecomposition(int)`](#setDecomposition(int))
        - [Constant Field Values](../../../constant-values.md#java.text.Collator.FULL_DECOMPOSITION)

    External Specifications
    :   - [Unicode Normalization Forms](https://www.unicode.org/reports/tr15)
* ## Constructor Details

  + ### Collator

    protected Collator()

    Default constructor. This constructor is
    protected so subclasses can get access to it. Users typically create
    a Collator sub-class by calling the factory method getInstance.

    See Also:
    :   - [`getInstance()`](#getInstance())
* ## Method Details

  + ### getInstance

    public static [Collator](Collator.md "class in java.text") getInstance()

    Gets the Collator for the current default locale.
    The default locale is determined by [`Locale.getDefault()`](../util/Locale.md#getDefault()).

    Returns:
    :   the Collator for the default locale.(for example, en\_US)

    See Also:
    :   - [`Locale.getDefault()`](../util/Locale.md#getDefault())
  + ### getInstance

    public static [Collator](Collator.md "class in java.text") getInstance([Locale](../util/Locale.md "class in java.util") desiredLocale)

    Gets the Collator for the desired locale. If the desired locale
    has the "`ks`" and/or the "`kk`"
    [Unicode collation settings](https://www.unicode.org/reports/tr35/tr35-collation.html#Setting_Options), this method will call [setStrength(int)](#setStrength(int))
    and/or [setDecomposition(int)](#setDecomposition(int)) on the created instance, if the specified
    Unicode collation settings are recognized based on the following mappings:

    Strength/Decomposition mappings

    | BCP 47 values for strength (ks) | Collator constants for strength |
    | --- | --- |
    | level1 | PRIMARY |
    | level2 | SECONDARY |
    | level3 | TERTIARY\* |
    | identic | IDENTICAL |
    | BCP 47 values for normalization (kk) | Collator constants for decomposition |
    | --- | --- |
    | true | CANONICAL\_DECOMPOSITION |
    | false | NO\_DECOMPOSITION\* |

    Asterisk (\*) denotes the default value.
    If the specified setting value is not recognized, the strength and/or
    decomposition is not overridden, as if there were no BCP 47 collation
    options in the desired locale.

    Parameters:
    :   `desiredLocale` - the desired locale.

    Returns:
    :   the Collator for the desired locale.

    See Also:
    :   - [`Locale`](../util/Locale.md "class in java.util")
        - [`ResourceBundle`](../util/ResourceBundle.md "class in java.util")

    External Specifications
    :   - [Unicode Locale Data Markup Language
          (LDML)](https://www.unicode.org/reports/tr35/)
  + ### compare

    public abstract int compare([String](../lang/String.md "class in java.lang") source,
    [String](../lang/String.md "class in java.lang") target)

    Compares the source string to the target string according to the
    collation rules for this Collator. Returns an integer less than,
    equal to or greater than zero depending on whether the source String is
    less than, equal to or greater than the target string. See the Collator
    class description for an example of use.

    For a one time comparison, this method has the best performance. If a
    given String will be involved in multiple comparisons, CollationKey.compareTo
    has the best performance. See the Collator class description for an example
    using CollationKeys.

    Parameters:
    :   `source` - the source string.
    :   `target` - the target string.

    Returns:
    :   Returns an integer value. Value is less than zero if source is less than
        target, value is zero if source and target are equal, value is greater than zero
        if source is greater than target.

    See Also:
    :   - [`CollationKey`](CollationKey.md "class in java.text")
        - [`getCollationKey(java.lang.String)`](#getCollationKey(java.lang.String))
  + ### compare

    public int compare([Object](../lang/Object.md "class in java.lang") o1,
    [Object](../lang/Object.md "class in java.lang") o2)

    Compares its two arguments for order. Returns a negative integer,
    zero, or a positive integer as the first argument is less than, equal
    to, or greater than the second.

    This implementation merely returns
     `compare((String)o1, (String)o2)` .

    Specified by:
    :   `compare` in interface `Comparator<Object>`

    Parameters:
    :   `o1` - the first object to be compared.
    :   `o2` - the second object to be compared.

    Returns:
    :   a negative integer, zero, or a positive integer as the
        first argument is less than, equal to, or greater than the
        second.

    Throws:
    :   `ClassCastException` - the arguments cannot be cast to Strings.

    Since:
    :   1.2

    See Also:
    :   - [`Comparator`](../util/Comparator.md "interface in java.util")
  + ### getCollationKey

    public abstract [CollationKey](CollationKey.md "class in java.text") getCollationKey([String](../lang/String.md "class in java.lang") source)

    Transforms the String into a series of bits that can be compared bitwise
    to other CollationKeys. CollationKeys provide better performance than
    Collator.compare when Strings are involved in multiple comparisons.
    See the Collator class description for an example using CollationKeys.

    Parameters:
    :   `source` - the string to be transformed into a collation key.

    Returns:
    :   the CollationKey for the given String based on this Collator's collation
        rules. If the source String is null, a null CollationKey is returned.

    See Also:
    :   - [`CollationKey`](CollationKey.md "class in java.text")
        - [`compare(java.lang.String, java.lang.String)`](#compare(java.lang.String,java.lang.String))
  + ### equals

    public boolean equals([String](../lang/String.md "class in java.lang") source,
    [String](../lang/String.md "class in java.lang") target)

    Convenience method for comparing the equality of two strings based on
    this Collator's collation rules.

    Parameters:
    :   `source` - the source string to be compared with.
    :   `target` - the target string to be compared with.

    Returns:
    :   true if the strings are equal according to the collation
        rules. false, otherwise.

    See Also:
    :   - [`compare(java.lang.String, java.lang.String)`](#compare(java.lang.String,java.lang.String))
  + ### getStrength

    public int getStrength()

    Returns this Collator's strength property. The strength property determines
    the minimum level of difference considered significant during comparison.
    See the Collator class description for an example of use.

    Returns:
    :   this Collator's current strength property.

    See Also:
    :   - [`setStrength(int)`](#setStrength(int))
        - [`PRIMARY`](#PRIMARY)
        - [`SECONDARY`](#SECONDARY)
        - [`TERTIARY`](#TERTIARY)
        - [`IDENTICAL`](#IDENTICAL)
  + ### setStrength

    public void setStrength(int newStrength)

    Sets this Collator's strength property. The strength property determines
    the minimum level of difference considered significant during comparison.
    See the Collator class description for an example of use.

    Parameters:
    :   `newStrength` - the new strength value.

    Throws:
    :   `IllegalArgumentException` - If the new strength value is not one of
        PRIMARY, SECONDARY, TERTIARY or IDENTICAL.

    See Also:
    :   - [`getStrength()`](#getStrength())
        - [`PRIMARY`](#PRIMARY)
        - [`SECONDARY`](#SECONDARY)
        - [`TERTIARY`](#TERTIARY)
        - [`IDENTICAL`](#IDENTICAL)
  + ### getDecomposition

    public int getDecomposition()

    Get the decomposition mode of this Collator. Decomposition mode
    determines how Unicode composed characters are handled. Adjusting
    decomposition mode allows the user to select between faster and more
    complete collation behavior.

    The three values for decomposition mode are:
    - NO\_DECOMPOSITION,- CANONICAL\_DECOMPOSITION- FULL\_DECOMPOSITION.See the documentation for these three constants for a description
    of their meaning.

    Returns:
    :   the decomposition mode

    See Also:
    :   - [`setDecomposition(int)`](#setDecomposition(int))
        - [`NO_DECOMPOSITION`](#NO_DECOMPOSITION)
        - [`CANONICAL_DECOMPOSITION`](#CANONICAL_DECOMPOSITION)
        - [`FULL_DECOMPOSITION`](#FULL_DECOMPOSITION)
  + ### setDecomposition

    public void setDecomposition(int decompositionMode)

    Set the decomposition mode of this Collator. See getDecomposition
    for a description of decomposition mode.

    Parameters:
    :   `decompositionMode` - the new decomposition mode.

    Throws:
    :   `IllegalArgumentException` - If the given value is not a valid decomposition
        mode.

    See Also:
    :   - [`getDecomposition()`](#getDecomposition())
        - [`NO_DECOMPOSITION`](#NO_DECOMPOSITION)
        - [`CANONICAL_DECOMPOSITION`](#CANONICAL_DECOMPOSITION)
        - [`FULL_DECOMPOSITION`](#FULL_DECOMPOSITION)
  + ### getAvailableLocales

    public static [Locale](../util/Locale.md "class in java.util")[] getAvailableLocales()

    Returns an array of all locales for which the
    `getInstance` methods of this class can return
    localized instances.
    The returned array represents the union of locales supported
    by the Java runtime and by installed
    [`CollatorProvider`](spi/CollatorProvider.md "class in java.text.spi") implementations.
    At a minimum, the returned array must contain a `Locale` instance equal to
    [`Locale.ROOT`](../util/Locale.md#ROOT) and a `Locale` instance equal to
    [`Locale.US`](../util/Locale.md#US).

    Returns:
    :   An array of locales for which localized
        `Collator` instances are available.
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()

    Overrides Cloneable

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") that)

    Compares the equality of two Collators.

    Specified by:
    :   `equals` in interface `Comparator<Object>`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `that` - the Collator to be compared with this.

    Returns:
    :   true if this Collator is the same as that Collator;
        false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public abstract int hashCode()

    Generates the hash code for this Collator.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))