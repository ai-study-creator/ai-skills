Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Finishings

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Finishings

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public class Finishings
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `Finishings` is a printing attribute class, an enumeration, that
identifies whether the printer applies a finishing operation of some kind of
binding to each copy of each printed document in the job. For multidoc print
jobs (jobs with multiple documents), the
[`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") attribute
determines what constitutes a "copy" for purposes of finishing.

Standard Finishings values are:

* [`NONE`](#NONE)* [`STAPLE`](#STAPLE)* [`EDGE_STITCH`](#EDGE_STITCH)* [`BIND`](#BIND)* [`SADDLE_STITCH`](#SADDLE_STITCH)* [`COVER`](#COVER)

The following `Finishings` values are more specific; they indicate a
corner or an edge as if the document were a portrait document:

* [`STAPLE_TOP_LEFT`](#STAPLE_TOP_LEFT)* [`EDGE_STITCH_LEFT`](#EDGE_STITCH_LEFT)* [`STAPLE_DUAL_LEFT`](#STAPLE_DUAL_LEFT)* [`STAPLE_BOTTOM_LEFT`](#STAPLE_BOTTOM_LEFT)* [`EDGE_STITCH_TOP`](#EDGE_STITCH_TOP)* [`STAPLE_DUAL_TOP`](#STAPLE_DUAL_TOP)* [`STAPLE_TOP_RIGHT`](#STAPLE_TOP_RIGHT)* [`EDGE_STITCH_RIGHT`](#EDGE_STITCH_RIGHT)* [`STAPLE_DUAL_RIGHT`](#STAPLE_DUAL_RIGHT)* [`STAPLE_BOTTOM_RIGHT`](#STAPLE_BOTTOM_RIGHT)* [`EDGE_STITCH_BOTTOM`](#EDGE_STITCH_BOTTOM)* [`STAPLE_DUAL_BOTTOM`](#STAPLE_DUAL_BOTTOM)

The STAPLE\_*XXX* values are specified with respect to the document as if
the document were a portrait document. If the document is actually a
landscape or a reverse-landscape document, the client supplies the
appropriate transformed value. For example, to position a staple in the upper
left hand corner of a landscape document when held for reading, the client
supplies the `STAPLE_BOTTOM_LEFT` value (since landscape is defined as
a +90 degree rotation from portrait, i.e., anti-clockwise). On the other
hand, to position a staple in the upper left hand corner of a
reverse-landscape document when held for reading, the client supplies the
`STAPLE_TOP_RIGHT` value (since reverse-landscape is defined as a -90
degree rotation from portrait, i.e., clockwise).

The angle (vertical, horizontal, angled) of each staple with respect to the
document depends on the implementation which may in turn depend on the value
of the attribute.

The effect of a `Finishings` attribute on a multidoc print job (a job
with multiple documents) depends on whether all the docs have the same
binding specified or whether different docs have different bindings
specified, and on the (perhaps defaulted) value of the
[`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") attribute.

* If all the docs have the same binding specified, then any value of
  [`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") makes sense, and
  the printer's processing depends on the
  [`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") value:
  + `SINGLE_DOCUMENT` -- All the input docs will be bound together
    as one output document with the specified binding.+ `SINGLE_DOCUMENT_NEW_SHEET` -- All the input docs will be bound
      together as one output document with the specified binding, and the first
      impression of each input doc will always start on a new media sheet.+ `SEPARATE_DOCUMENTS_UNCOLLATED_COPIES` -- Each input doc will
        be bound separately with the specified binding.+ `SEPARATE_DOCUMENTS_COLLATED_COPIES` -- Each input doc will be
          bound separately with the specified binding.* If different docs have different bindings specified, then only two
    values of [`MultipleDocumentHandling`](MultipleDocumentHandling.md "class in javax.print.attribute.standard") make
    sense, and the printer reports an error when the job is submitted if any
    other value is specified:
    + `SEPARATE_DOCUMENTS_UNCOLLATED_COPIES` -- Each input doc will
      be bound separately with its own specified binding.+ `SEPARATE_DOCUMENTS_COLLATED_COPIES` -- Each input doc will be
        bound separately with its own specified binding.

**IPP Compatibility:** Class Finishings encapsulates some of the IPP enum
values that can be included in an IPP "finishings" attribute, which is a set
of enums. The category name returned by `getName()` is the IPP
attribute name. The enumeration's integer value is the IPP enum value. The
`toString()` method returns the IPP string representation of the
attribute value. In IPP Finishings is a multi-value attribute, this API
currently allows only one binding to be specified.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Finishings)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Finishings`

  `BIND`

  This value indicates that a binding is to be applied to the document; the
  type and placement of the binding is site-defined.

  `static final Finishings`

  `COVER`

  This value is specified when it is desired to select a non-printed (or
  pre-printed) cover for the document.

  `static final Finishings`

  `EDGE_STITCH`

  Bind the document(s) with one or more staples (wire stitches) along one
  edge.

  `static final Finishings`

  `EDGE_STITCH_BOTTOM`

  Bind the document(s) with one or more staples (wire stitches) along the
  bottom edge.

  `static final Finishings`

  `EDGE_STITCH_LEFT`

  Bind the document(s) with one or more staples (wire stitches) along the
  left edge.

  `static final Finishings`

  `EDGE_STITCH_RIGHT`

  Bind the document(s) with one or more staples (wire stitches) along the
  right edge.

  `static final Finishings`

  `EDGE_STITCH_TOP`

  Bind the document(s) with one or more staples (wire stitches) along the
  top edge.

  `static final Finishings`

  `NONE`

  Perform no binding.

  `static final Finishings`

  `SADDLE_STITCH`

  Bind the document(s) with one or more staples (wire stitches) along the
  middle fold.

  `static final Finishings`

  `STAPLE`

  Bind the document(s) with one or more staples.

  `static final Finishings`

  `STAPLE_BOTTOM_LEFT`

  Bind the document(s) with one or more staples in the bottom left corner.

  `static final Finishings`

  `STAPLE_BOTTOM_RIGHT`

  Bind the document(s) with one or more staples in the bottom right corner.

  `static final Finishings`

  `STAPLE_DUAL_BOTTOM`

  Bind the document(s) with two staples (wire stitches) along the bottom
  edge assuming a portrait document (see above).

  `static final Finishings`

  `STAPLE_DUAL_LEFT`

  Bind the document(s) with two staples (wire stitches) along the left edge
  assuming a portrait document (see above).

  `static final Finishings`

  `STAPLE_DUAL_RIGHT`

  Bind the document(s) with two staples (wire stitches) along the right
  edge assuming a portrait document (see above).

  `static final Finishings`

  `STAPLE_DUAL_TOP`

  Bind the document(s) with two staples (wire stitches) along the top edge
  assuming a portrait document (see above).

  `static final Finishings`

  `STAPLE_TOP_LEFT`

  Bind the document(s) with one or more staples in the top left corner.

  `static final Finishings`

  `STAPLE_TOP_RIGHT`

  Bind the document(s) with one or more staples in the top right corner.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Finishings(int value)`

  Construct a new finishings binding enumeration value with the given
  integer value.
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

  Returns the enumeration value table for class `Finishings`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected int`

  `getOffset()`

  Returns the lowest integer value used by class `Finishings`.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `Finishings`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NONE

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") NONE

    Perform no binding.
  + ### STAPLE

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE

    Bind the document(s) with one or more staples. The exact number and
    placement of the staples is site-defined.
  + ### COVER

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") COVER

    This value is specified when it is desired to select a non-printed (or
    pre-printed) cover for the document. This does not supplant the
    specification of a printed cover (on cover stock medium) by the document
    itself.
  + ### BIND

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") BIND

    This value indicates that a binding is to be applied to the document; the
    type and placement of the binding is site-defined.
  + ### SADDLE\_STITCH

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") SADDLE\_STITCH

    Bind the document(s) with one or more staples (wire stitches) along the
    middle fold. The exact number and placement of the staples and the middle
    fold is implementation- and/or site-defined.
  + ### EDGE\_STITCH

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") EDGE\_STITCH

    Bind the document(s) with one or more staples (wire stitches) along one
    edge. The exact number and placement of the staples is implementation-
    and/or site- defined.
  + ### STAPLE\_TOP\_LEFT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_TOP\_LEFT

    Bind the document(s) with one or more staples in the top left corner.
  + ### STAPLE\_BOTTOM\_LEFT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_BOTTOM\_LEFT

    Bind the document(s) with one or more staples in the bottom left corner.
  + ### STAPLE\_TOP\_RIGHT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_TOP\_RIGHT

    Bind the document(s) with one or more staples in the top right corner.
  + ### STAPLE\_BOTTOM\_RIGHT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_BOTTOM\_RIGHT

    Bind the document(s) with one or more staples in the bottom right corner.
  + ### EDGE\_STITCH\_LEFT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") EDGE\_STITCH\_LEFT

    Bind the document(s) with one or more staples (wire stitches) along the
    left edge. The exact number and placement of the staples is
    implementation- and/or site-defined.
  + ### EDGE\_STITCH\_TOP

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") EDGE\_STITCH\_TOP

    Bind the document(s) with one or more staples (wire stitches) along the
    top edge. The exact number and placement of the staples is
    implementation- and/or site-defined.
  + ### EDGE\_STITCH\_RIGHT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") EDGE\_STITCH\_RIGHT

    Bind the document(s) with one or more staples (wire stitches) along the
    right edge. The exact number and placement of the staples is
    implementation- and/or site-defined.
  + ### EDGE\_STITCH\_BOTTOM

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") EDGE\_STITCH\_BOTTOM

    Bind the document(s) with one or more staples (wire stitches) along the
    bottom edge. The exact number and placement of the staples is
    implementation- and/or site-defined.
  + ### STAPLE\_DUAL\_LEFT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_DUAL\_LEFT

    Bind the document(s) with two staples (wire stitches) along the left edge
    assuming a portrait document (see above).
  + ### STAPLE\_DUAL\_TOP

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_DUAL\_TOP

    Bind the document(s) with two staples (wire stitches) along the top edge
    assuming a portrait document (see above).
  + ### STAPLE\_DUAL\_RIGHT

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_DUAL\_RIGHT

    Bind the document(s) with two staples (wire stitches) along the right
    edge assuming a portrait document (see above).
  + ### STAPLE\_DUAL\_BOTTOM

    public static final [Finishings](Finishings.md "class in javax.print.attribute.standard") STAPLE\_DUAL\_BOTTOM

    Bind the document(s) with two staples (wire stitches) along the bottom
    edge assuming a portrait document (see above).
* ## Constructor Details

  + ### Finishings

    protected Finishings(int value)

    Construct a new finishings binding enumeration value with the given
    integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `Finishings`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class `Finishings`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getOffset

    protected int getOffset()

    Returns the lowest integer value used by class `Finishings`.

    Overrides:
    :   `getOffset` in class `EnumSyntax`

    Returns:
    :   the offset of the lowest enumeration value
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Finishings` and any vendor-defined subclasses, the
    category is class `Finishings` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Finishings` and any vendor-defined subclasses, the
    category name is `"finishings"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name