Module [java.base](../../module-summary.md)

# Package java.text

---

package java.text

Provides classes and interfaces for handling text, dates, numbers,
and messages in a manner independent of natural languages. This
means your main application or applet can be written to be
language-independent, and it can rely upon separate,
dynamically-linked localized resources. This allows the flexibility
of adding localizations for new localizations at any time.

These classes are capable of formatting dates, numbers, and
messages, parsing; searching and sorting strings; and iterating
over characters, words, sentences, and line breaks. This package
contains three main groups of classes and interfaces:

* Classes for iteration over text* Classes for formatting and parsing* Classes for string collation

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.text.spi](spi/package-summary.md)

  Service provider classes for the classes in the java.text package.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [Annotation](Annotation.md "class in java.text")

  An Annotation object is used as a wrapper for a text attribute value if
  the attribute has annotation characteristics.

  [AttributedCharacterIterator](AttributedCharacterIterator.md "interface in java.text")

  An `AttributedCharacterIterator` allows iteration through both text and
  related attribute information.

  [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")

  Defines attribute keys that are used to identify text attributes.

  [AttributedString](AttributedString.md "class in java.text")

  An AttributedString holds text and related attribute information.

  [Bidi](Bidi.md "class in java.text")

  This class implements the Unicode Bidirectional Algorithm.

  [BreakIterator](BreakIterator.md "class in java.text")

  The `BreakIterator` class implements methods for finding
  the location of boundaries in text.

  [CharacterIterator](CharacterIterator.md "interface in java.text")

  This interface defines a protocol for bidirectional iteration over text.

  [ChoiceFormat](ChoiceFormat.md "class in java.text")

  A `ChoiceFormat` allows you to attach a format to a range of numbers.

  [CollationElementIterator](CollationElementIterator.md "class in java.text")

  The `CollationElementIterator` class is used as an iterator
  to walk through each character of an international string.

  [CollationKey](CollationKey.md "class in java.text")

  A `CollationKey` represents a `String` under the
  rules of a specific `Collator` object.

  [Collator](Collator.md "class in java.text")

  The `Collator` class performs locale-sensitive
  `String` comparison.

  [CompactNumberFormat](CompactNumberFormat.md "class in java.text")

  `CompactNumberFormat` is a concrete subclass of `NumberFormat`
  that formats a decimal number in its compact form.

  [DateFormat](DateFormat.md "class in java.text")

  `DateFormat` is an abstract class for date/time formatting subclasses which
  formats and parses dates or time in a language-independent manner.

  [DateFormat.Field](DateFormat.Field.md "class in java.text")

  Defines constants that are used as attribute keys in the
  `AttributedCharacterIterator` returned
  from `DateFormat.formatToCharacterIterator` and as
  field identifiers in `FieldPosition`.

  [DateFormatSymbols](DateFormatSymbols.md "class in java.text")

  `DateFormatSymbols` is a public class for encapsulating
  localizable date-time formatting data, such as the names of the
  months, the names of the days of the week, and the time zone data.

  [DecimalFormat](DecimalFormat.md "class in java.text")

  `DecimalFormat` is a concrete subclass of
  `NumberFormat` that formats decimal numbers.

  [DecimalFormatSymbols](DecimalFormatSymbols.md "class in java.text")

  This class represents the set of symbols (such as the decimal separator,
  the grouping separator, and so on) needed by `DecimalFormat`
  to format numbers.

  [FieldPosition](FieldPosition.md "class in java.text")

  `FieldPosition` is a simple class used by `Format`
  and its subclasses to identify fields in formatted output.

  [Format](Format.md "class in java.text")

  `Format` is an abstract base class for formatting locale-sensitive
  information such as dates, messages, and numbers.

  [Format.Field](Format.Field.md "class in java.text")

  Defines constants that are used as attribute keys in the
  `AttributedCharacterIterator` returned
  from `Format.formatToCharacterIterator` and as
  field identifiers in `FieldPosition`.

  [MessageFormat](MessageFormat.md "class in java.text")

  `MessageFormat` provides a means to produce concatenated
  messages in a language-neutral way.

  [MessageFormat.Field](MessageFormat.Field.md "class in java.text")

  Defines constants that are used as attribute keys in the
  `AttributedCharacterIterator` returned
  from `MessageFormat.formatToCharacterIterator`.

  [Normalizer](Normalizer.md "class in java.text")

  This class provides the method `normalize` which transforms Unicode
  text into an equivalent composed or decomposed form, allowing for easier
  sorting and searching of text.

  [Normalizer.Form](Normalizer.Form.md "enum class in java.text")

  This enum provides constants of the four Unicode normalization forms
  that are described in
  [Unicode Standard Annex #15 — Unicode Normalization Forms](https://www.unicode.org/reports/tr15/)
  and two methods to access them.

  [NumberFormat](NumberFormat.md "class in java.text")

  `NumberFormat` is the abstract base class for all number
  formats.

  [NumberFormat.Field](NumberFormat.Field.md "class in java.text")

  Defines constants that are used as attribute keys in the
  `AttributedCharacterIterator` returned
  from `NumberFormat.formatToCharacterIterator` and as
  field identifiers in `FieldPosition`.

  [NumberFormat.Style](NumberFormat.Style.md "enum class in java.text")

  A number format style.

  [ParseException](ParseException.md "class in java.text")

  Signals that an error has been reached unexpectedly
  while parsing.

  [ParsePosition](ParsePosition.md "class in java.text")

  `ParsePosition` is a simple class used by `Format`
  and its subclasses to keep track of the current position during parsing.

  [RuleBasedCollator](RuleBasedCollator.md "class in java.text")

  The `RuleBasedCollator` class is a concrete subclass of
  `Collator` that provides a simple, data-driven, table
  collator.

  [SimpleDateFormat](SimpleDateFormat.md "class in java.text")

  `SimpleDateFormat` is a concrete class for formatting and
  parsing dates in a locale-sensitive manner.

  [StringCharacterIterator](StringCharacterIterator.md "class in java.text")

  `StringCharacterIterator` implements the
  `CharacterIterator` protocol for a `String`.