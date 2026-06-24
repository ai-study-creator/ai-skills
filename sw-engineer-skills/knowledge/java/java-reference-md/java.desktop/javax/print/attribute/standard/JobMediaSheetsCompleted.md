Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobMediaSheetsCompleted

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobMediaSheetsCompleted

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`

---

public final class JobMediaSheetsCompleted
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobMediaSheetsCompleted` is an integer valued printing attribute
class that specifies the number of media sheets which have completed marking
and stacking for the entire job so far, whether those sheets have been
processed on one side or on both.

The `JobMediaSheetsCompleted` attribute describes the progress of the
job. This attribute is intended to be a counter. That is, the
`JobMediaSheetsCompleted` value for a job that has not started
processing must be 0. When the job's [`JobState`](JobState.md "class in javax.print.attribute.standard") is
`PROCESSING` or `PROCESSING_STOPPED`, the
`JobMediaSheetsCompleted` value is intended to increase as the job is
processed; it indicates the amount of the job that has been processed at the
time the Print Job's attribute set is queried or at the time a print job
event is reported. When the job enters the `COMPLETED`,
`CANCELED`, or `ABORTED` states, the
`JobMediaSheetsCompleted` value is the final value for the job.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [`JobMediaSheets`](JobMediaSheets.md "class in javax.print.attribute.standard")
    * [`JobMediaSheetsSupported`](JobMediaSheetsSupported.md "class in javax.print.attribute.standard")
    * [`JobKOctetsProcessed`](JobKOctetsProcessed.md "class in javax.print.attribute.standard")
    * [`JobImpressionsCompleted`](JobImpressionsCompleted.md "class in javax.print.attribute.standard")
    * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobMediaSheetsCompleted)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobMediaSheetsCompleted(int value)`

  Construct a new job media sheets completed attribute with the given
  integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job media sheets completed attribute is equivalent
  to the passed in object.

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

  + ### JobMediaSheetsCompleted

    public JobMediaSheetsCompleted(int value)

    Construct a new job media sheets completed attribute with the given
    integer value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value` is negative
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job media sheets completed attribute is equivalent
    to the passed in object. To be equivalent, all of the following
    conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class
         `JobMediaSheetsCompleted`.+ This job media sheets completed attribute's value and
           `object`'s value are equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job media
        sheets completed attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobMediaSheetsCompleted`, the category is class
    `JobMediaSheetsCompleted` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobMediaSheetsCompleted`, the category name is
    `"job-media-sheets-completed"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name