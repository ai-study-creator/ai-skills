Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterResolution

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.ResolutionSyntax](../ResolutionSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterResolution

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class PrinterResolution
extends [ResolutionSyntax](../ResolutionSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `PrinterResolution` is a printing attribute class that specifies
an exact resolution supported by a printer or to be used for a print job.
This attribute assumes that printers have a small set of device resolutions
at which they can operate rather than a continuum.

`PrinterResolution` is used in multiple ways:

1. When a client searches looking for a printer that supports the client's
   desired resolution exactly (no more, no less), the client specifies an
   instance of class `PrinterResolution` indicating the exact resolution
   the client wants. Only printers supporting that exact resolution will match
   the search.- When a client needs to print a job using the client's desired
     resolution exactly (no more, no less), the client specifies an instance of
     class `PrinterResolution` as an attribute of the Print Job. This will
     fail if the Print Job doesn't support that exact resolution, and
     `Fidelity` is set to true.

If a client wants to locate a printer supporting a resolution greater than
some required minimum, then it may be necessary to exclude this attribute
from a lookup request and to directly query the set of supported resolutions,
and specify the one that most closely meets the client's requirements. In
some cases this may be more simply achieved by specifying a
`PrintQuality` attribute which often controls resolution.

**IPP Compatibility:** The information needed to construct an IPP
`"printer-resolution"` attribute can be obtained by calling methods on
the PrinterResolution object. The category name returned by `getName()`
gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterResolution)

* ## Field Summary

  ### Fields inherited from class javax.print.attribute.[ResolutionSyntax](../ResolutionSyntax.md "class in javax.print.attribute")

  `DPCM, DPI`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterResolution(int crossFeedResolution,
  int feedResolution,
  int units)`

  Construct a new printer resolution attribute from the given items.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this printer resolution attribute is equivalent to the
  passed in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[ResolutionSyntax](../ResolutionSyntax.md "class in javax.print.attribute")

  `getCrossFeedResolution, getCrossFeedResolutionDphi, getFeedResolution, getFeedResolutionDphi, getResolution, hashCode, lessThanOrEquals, toString, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrinterResolution

    public PrinterResolution(int crossFeedResolution,
    int feedResolution,
    int units)

    Construct a new printer resolution attribute from the given items.

    Parameters:
    :   `crossFeedResolution` - cross feed direction resolution
    :   `feedResolution` - feed direction resolution
    :   `units` - unit conversion factor, e.g. `ResolutionSyntax.DPI`
        or `ResolutionSyntax.DPCM`

    Throws:
    :   `IllegalArgumentException` - if `crossFeedResolution < 1` or
        `feedResolution < 1` or `units < 1`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this printer resolution attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `PrinterResolution`.+ This attribute's cross feed direction resolution is equal to
           `object`'s cross feed direction resolution.+ This attribute's feed direction resolution is equal to
             `object`'s feed direction resolution.

    Overrides:
    :   `equals` in class `ResolutionSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this printer
        resolution attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterResolution`, the category is class
    `PrinterResolution` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterResolution`, the category name is
    `"printer-resolution"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name