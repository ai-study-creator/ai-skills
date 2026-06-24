Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobHoldUntil

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.DateTimeSyntax](../DateTimeSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobHoldUntil

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class JobHoldUntil
extends [DateTimeSyntax](../DateTimeSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobHoldUntil` is a printing attribute class, a date-time
attribute, that specifies the exact date and time at which the job must
become a candidate for printing.

If the value of this attribute specifies a date-time that is in the future,
the printer should add the [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") value of
`JOB_HOLD_UNTIL_SPECIFIED` to the job's
[`JobStateReasons`](JobStateReasons.md "class in javax.print.attribute.standard") attribute, must move the job to the
`PENDING_HELD` state, and must not schedule the job for printing until
the specified date-time arrives.

When the specified date-time arrives, the printer must remove the
[`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") value of
`JOB_HOLD_UNTIL_SPECIFIED` from the job's
[`JobStateReasons`](JobStateReasons.md "class in javax.print.attribute.standard") attribute, if present. If there are
no other job state reasons that keep the job in the `PENDING_HELD`
state, the printer must consider the job as a candidate for processing by
moving the job to the PENDING state.

If the specified date-time has already passed, the job must be a candidate
for processing immediately. Thus, one way to make the job immediately become
a candidate for processing is to specify a `JobHoldUntil` attribute
constructed like this
(denoting a date-time of January 1, 1970, 00:00:00 GMT):

```
     JobHoldUntil immediately = new JobHoldUntil (new Date (0L));
```

If the client does not supply this attribute in a Print Request and the
printer supports this attribute, the printer must use its
(implementation-dependent) default `JobHoldUntil` value at job
submission time (unlike most job template attributes that are used if
necessary at job processing time).

To construct a `JobHoldUntil` attribute from separate values of the
year, month, day, hour, minute, and so on, use a [`Calendar`](../../../../../java.base/java/util/Calendar.md "class in java.util")
object to construct a [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") object, then use the
[`Date`](../../../../../java.base/java/util/Date.md "class in java.util") object to construct the `JobHoldUntil` attribute. To
convert a `JobHoldUntil` attribute to separate values of the year,
month, day, hour, minute, and so on, create a [`Calendar`](../../../../../java.base/java/util/Calendar.md "class in java.util")
object and set it to the [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") from the `JobHoldUntil`
attribute.

**IPP Compatibility:** Although IPP supports a "job-hold-until" attribute
specified as a keyword, IPP does not at this time support a "job-hold-until"
attribute specified as a date and time. However, the date and time can be
converted to one of the standard IPP keywords with some loss of precision;
for example, a `JobHoldUntil` value with today's date and 9:00pm local
time might be converted to the standard IPP keyword "night". The category
name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobHoldUntil)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobHoldUntil(Date dateTime)`

  Construct a new job hold until date-time attribute with the given
  [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job hold until attribute is equivalent to the passed
  in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[DateTimeSyntax](../DateTimeSyntax.md "class in javax.print.attribute")

  `getValue, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JobHoldUntil

    public JobHoldUntil([Date](../../../../../java.base/java/util/Date.md "class in java.util") dateTime)

    Construct a new job hold until date-time attribute with the given
    [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value.

    Parameters:
    :   `dateTime` - [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value

    Throws:
    :   `NullPointerException` - if `dateTime` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job hold until attribute is equivalent to the passed
    in object. To be equivalent, all of the following conditions must be
    true:
    1. `object` is not `null`.+ `object` is an instance of class `JobHoldUntil`.+ This job hold until attribute's [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value and
           `object`'s [`Date`](../../../../../java.base/java/util/Date.md "class in java.util") value are equal.

    Overrides:
    :   `equals` in class `DateTimeSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job hold
        until attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobHoldUntil`, the category is class
    `JobHoldUntil` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobHoldUntil`, the category name is
    `"job-hold-until"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name