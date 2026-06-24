Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobImpressions

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobImpressions

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class JobImpressions
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobImpressions` is an integer valued printing attribute class
that specifies the total size in number of impressions of the document(s)
being submitted. An "impression" is the image (possibly many print-stream
pages in different configurations) imposed onto a single media page.

The `JobImpressions` attribute describes the size of the job. This
attribute is not intended to be a counter; it is intended to be useful
routing and scheduling information if known. The printer may try to compute
the `JobImpressions` attribute's value if it is not supplied in the
Print Request. Even if the client does supply a value for the
`JobImpressions` attribute in the Print Request, the printer may choose
to change the value if the printer is able to compute a value which is more
accurate than the client supplied value. The printer may be able to determine
the correct value for the `JobImpressions` attribute either right at
job submission time or at any later point in time.

As with [`JobKOctets`](JobKOctets.md "class in javax.print.attribute.standard"), the `JobImpressions` value must
not include the multiplicative factors contributed by the number of copies
specified by the [`Copies`](Copies.md "class in javax.print.attribute.standard") attribute, independent of whether the
device can process multiple copies without making multiple passes over the
job or document data and independent of whether the output is collated or
not. Thus the value is independent of the implementation and reflects the
size of the document(s) measured in impressions independent of the number of
copies.

As with [`JobKOctets`](JobKOctets.md "class in javax.print.attribute.standard"), the `JobImpressions` value must
also not include the multiplicative factor due to a copies instruction
embedded in the document data. If the document data actually includes
replications of the document data, this value will include such replication.
In other words, this value is always the number of impressions in the source
document data, rather than a measure of the number of impressions to be
produced by the job.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [`JobImpressionsSupported`](JobImpressionsSupported.md "class in javax.print.attribute.standard")
    * [`JobImpressionsCompleted`](JobImpressionsCompleted.md "class in javax.print.attribute.standard")
    * [`JobKOctets`](JobKOctets.md "class in javax.print.attribute.standard")
    * [`JobMediaSheets`](JobMediaSheets.md "class in javax.print.attribute.standard")
    * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobImpressions)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobImpressions(int value)`

  Construct a new job impressions attribute with the given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job impressions attribute is equivalent to the
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

  + ### JobImpressions

    public JobImpressions(int value)

    Construct a new job impressions attribute with the given integer value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value` is negative
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job impressions attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `JobImpressions`.+ This job impressions attribute's value and `object`'s value
           are equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job
        impressions attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobImpressions`, the category is class
    `JobImpressions` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobImpressions`, the category name is
    `"job-impressions"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name