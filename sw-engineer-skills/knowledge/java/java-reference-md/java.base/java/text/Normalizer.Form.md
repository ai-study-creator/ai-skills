Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Enum Class Normalizer.Form

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Enum](../lang/Enum.md "class in java.lang")<[Normalizer.Form](Normalizer.Form.md "enum class in java.text")>

java.text.Normalizer.Form

All Implemented Interfaces:
:   `Serializable`, `Comparable<Normalizer.Form>`, `Constable`

Enclosing class:
:   `Normalizer`

---

public static enum Normalizer.Form
extends [Enum](../lang/Enum.md "class in java.lang")<[Normalizer.Form](Normalizer.Form.md "enum class in java.text")>

This enum provides constants of the four Unicode normalization forms
that are described in
[Unicode Standard Annex #15 — Unicode Normalization Forms](https://www.unicode.org/reports/tr15/)
and two methods to access them.

Since:
:   1.6

External Specifications
:   * [Unicode Normalization Forms](https://www.unicode.org/reports/tr15)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NFC`

  Canonical decomposition, followed by canonical composition.

  `NFD`

  Canonical decomposition.

  `NFKC`

  Compatibility decomposition, followed by canonical composition.

  `NFKD`

  Compatibility decomposition.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Normalizer.Form`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Normalizer.Form[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NFD

    public static final [Normalizer.Form](Normalizer.Form.md "enum class in java.text") NFD

    Canonical decomposition.
  + ### NFC

    public static final [Normalizer.Form](Normalizer.Form.md "enum class in java.text") NFC

    Canonical decomposition, followed by canonical composition.
  + ### NFKD

    public static final [Normalizer.Form](Normalizer.Form.md "enum class in java.text") NFKD

    Compatibility decomposition.
  + ### NFKC

    public static final [Normalizer.Form](Normalizer.Form.md "enum class in java.text") NFKC

    Compatibility decomposition, followed by canonical composition.
* ## Method Details

  + ### values

    public static [Normalizer.Form](Normalizer.Form.md "enum class in java.text")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Normalizer.Form](Normalizer.Form.md "enum class in java.text") valueOf([String](../lang/String.md "class in java.lang") name)

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