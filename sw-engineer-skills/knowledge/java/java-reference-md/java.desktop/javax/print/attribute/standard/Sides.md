Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Sides

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Sides

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class Sides
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `Sides` is a printing attribute class, an enumeration, that
specifies how print-stream pages are to be imposed upon the sides of an
instance of a selected medium, i.e., an impression.

The effect of a `Sides` attribute on a multidoc print job (a job with
multiple documents) depends on whether all the docs have the same sides
values specified or whether different docs have different sides values
specified, and on the (perhaps defaulted) value of the
[`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") attribute.

* If all the docs have the same sides value *n* specified, then any
  value of [`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") makes
  sense, and the printer's processing depends on the
  [`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") value:
  + `SINGLE_DOCUMENT` -- All the input docs will be combined
    together into one output document. Each media sheet will consist of
    *n* impressions from the output document.+ `SINGLE_DOCUMENT_NEW_SHEET` -- All the input docs will be
      combined together into one output document. Each media sheet will consist
      of *n* impressions from the output document. However, the first
      impression of each input doc will always start on a new media sheet; this
      means the last media sheet of an input doc may have only one impression
      on it.+ `SEPARATE_DOCUMENTS_UNCOLLATED_COPIES` -- The input docs will
        remain separate. Each media sheet will consist of *n* impressions
        from the input doc. Since the input docs are separate, the first
        impression of each input doc will always start on a new media sheet; this
        means the last media sheet of an input doc may have only one impression
        on it.+ `SEPARATE_DOCUMENTS_COLLATED_COPIES` -- The input docs will
          remain separate. Each media sheet will consist of *n* impressions
          from the input doc. Since the input docs are separate, the first
          impression of each input doc will always start on a new media sheet; this
          means the last media sheet of an input doc may have only one impression
          on it.
  + `SINGLE_DOCUMENT` -- All the input docs will be combined
    together into one output document. Each media sheet will consist of
    *ni* impressions from the output document, where *i*
    is the number of the input doc corresponding to that point in the output
    document. When the next input doc has a different sides value from the
    previous input doc, the first print-stream page of the next input doc
    goes at the start of the next media sheet, possibly leaving only one
    impression on the previous media sheet.+ `SINGLE_DOCUMENT_NEW_SHEET` -- All the input docs will be
      combined together into one output document. Each media sheet will consist
      of *n* impressions from the output document. However, the first
      impression of each input doc will always start on a new media sheet; this
      means the last impression of an input doc may have only one impression on
      it.+ `SEPARATE_DOCUMENTS_UNCOLLATED_COPIES` -- The input docs will
        remain separate. For input doc *i,* each media sheet will consist of
        *ni* impressions from the input doc. Since the input docs
        are separate, the first impression of each input doc will always start on
        a new media sheet; this means the last media sheet of an input doc may
        have only one impression on it.+ `SEPARATE_DOCUMENTS_COLLATED_COPIES` -- The input docs will
          remain separate. For input doc *i,* each media sheet will consist of
          *ni* impressions from the input doc. Since the input docs
          are separate, the first impression of each input doc will always start on
          a new media sheet; this means the last media sheet of an input doc may
          have only one impression on it.

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Sides)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Sides`

  `DUPLEX`

  An alias for "two sided long edge" (see
  [`TWO_SIDED_LONG_EDGE`](#TWO_SIDED_LONG_EDGE)).

  `static final Sides`

  `ONE_SIDED`

  Imposes each consecutive print-stream page upon the same side of
  consecutive media sheets.

  `static final Sides`

  `TUMBLE`

  An alias for "two sided short edge" (see
  [`TWO_SIDED_SHORT_EDGE`](#TWO_SIDED_SHORT_EDGE)).

  `static final Sides`

  `TWO_SIDED_LONG_EDGE`

  Imposes each consecutive pair of print-stream pages upon front and back
  sides of consecutive media sheets, such that the orientation of each pair
  of print-stream pages on the medium would be correct for the reader as if
  for binding on the long edge.

  `static final Sides`

  `TWO_SIDED_SHORT_EDGE`

  Imposes each consecutive pair of print-stream pages upon front and back
  sides of consecutive media sheets, such that the orientation of each pair
  of print-stream pages on the medium would be correct for the reader as if
  for binding on the short edge.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Sides(int value)`

  Construct a new sides enumeration value with the given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `protected EnumSyntax[]`

  `getEnumValueTable()`

  Returns the enumeration value table for class `Sides`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `Sides`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ONE\_SIDED

    public static final [Sides](Sides.md "class in javax.print.attribute.standard") ONE\_SIDED

    Imposes each consecutive print-stream page upon the same side of
    consecutive media sheets.
  + ### TWO\_SIDED\_LONG\_EDGE

    public static final [Sides](Sides.md "class in javax.print.attribute.standard") TWO\_SIDED\_LONG\_EDGE

    Imposes each consecutive pair of print-stream pages upon front and back
    sides of consecutive media sheets, such that the orientation of each pair
    of print-stream pages on the medium would be correct for the reader as if
    for binding on the long edge. This imposition is also known as "duplex"
    (see [`DUPLEX`](#DUPLEX)).
  + ### TWO\_SIDED\_SHORT\_EDGE

    public static final [Sides](Sides.md "class in javax.print.attribute.standard") TWO\_SIDED\_SHORT\_EDGE

    Imposes each consecutive pair of print-stream pages upon front and back
    sides of consecutive media sheets, such that the orientation of each pair
    of print-stream pages on the medium would be correct for the reader as if
    for binding on the short edge. This imposition is also known as "tumble"
    (see [`TUMBLE`](#TUMBLE)).
  + ### DUPLEX

    public static final [Sides](Sides.md "class in javax.print.attribute.standard") DUPLEX

    An alias for "two sided long edge" (see
    [`TWO_SIDED_LONG_EDGE`](#TWO_SIDED_LONG_EDGE)).
  + ### TUMBLE

    public static final [Sides](Sides.md "class in javax.print.attribute.standard") TUMBLE

    An alias for "two sided short edge" (see
    [`TWO_SIDED_SHORT_EDGE`](#TWO_SIDED_SHORT_EDGE)).
* ## Constructor Details

  + ### Sides

    protected Sides(int value)

    Construct a new sides enumeration value with the given integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `Sides`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `Sides`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Sides`, the category is class `Sides` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Sides`, the category name is `"sides"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name