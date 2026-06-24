Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobMediaSheets

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobMediaSheets

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public class JobMediaSheets
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobMediaSheets` is an integer valued printing attribute class
that specifies the total number of media sheets to be produced for this job.

The `JobMediaSheets` attribute describes the size of the job. This
attribute is not intended to be a counter; it is intended to be useful
routing and scheduling information if known. The printer may try to compute
the `JobMediaSheets` attribute's value if it is not supplied in the
Print Request. Even if the client does supply a value for the
`JobMediaSheets` attribute in the Print Request, the printer may choose
to change the value if the printer is able to compute a value which is more
accurate than the client supplied value. The printer may be able to determine
the correct value for the `JobMediaSheets` attribute either right at
job submission time or at any later point in time.

Unlike the [`JobKOctets`](JobKOctets.md "class in javax.print.attribute.standard") and
[`JobImpressions`](JobImpressions.md "class in javax.print.attribute.standard") attributes, the `JobMediaSheets`
value must include the multiplicative factors contributed by the number of
copies specified by the [`Copies`](Copies.md "class in javax.print.attribute.standard") attribute and a "number of
copies" instruction embedded in the document data, if any. This difference
allows the system administrator to control the lower and upper bounds of both
(1) the size of the document(s) with
[`JobKOctetsSupported`](JobKOctetsSupported.md "class in javax.print.attribute.standard") and
[`JobImpressionsSupported`](JobImpressionsSupported.md "class in javax.print.attribute.standard") and (2) the size of
the job with [`JobMediaSheetsSupported`](JobMediaSheetsSupported.md "class in javax.print.attribute.standard").

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [`JobMediaSheetsSupported`](JobMediaSheetsSupported.md "class in javax.print.attribute.standard")
    * [`JobMediaSheetsCompleted`](JobMediaSheetsCompleted.md "class in javax.print.attribute.standard")
    * [`JobKOctets`](JobKOctets.md "class in javax.print.attribute.standard")
    * [`JobImpressions`](JobImpressions.md "class in javax.print.attribute.standard")
    * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobMediaSheets)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobMediaSheets(int value)`

  Construct a new job media sheets attribute with the given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job media sheets attribute is equivalent to the
  passed in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

  `getValue, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JobMediaSheets

    public JobMediaSheets(int value)

    Construct a new job media sheets attribute with the given integer value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value` is negative
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job media sheets attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `JobMediaSheets`.+ This job media sheets attribute's value and `object`'s value
           are equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job media
        sheets attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobMediaSheets` and any vendor-defined subclasses, the
    category is class `JobMediaSheets` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobMediaSheets` and any vendor-defined subclasses, the
    category name is `"job-media-sheets"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name