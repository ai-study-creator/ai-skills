Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobPriority

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobPriority

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class JobPriority
extends [IntegerSyntax](../IntegerSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobPriority` is an integer valued printing attribute class that
specifies a print job's priority.

If a `JobPriority` attribute is specified for a Print Job, it specifies
a priority for scheduling the job. A higher value specifies a higher
priority. The value 1 indicates the lowest possible priority. The value 100
indicates the highest possible priority. Among those jobs that are ready to
print, a printer must print all jobs with a priority value of *n* before
printing those with a priority value of *n*-1 for all *n.*

If the client does not specify a `JobPriority` attribute for a Print
Job and the printer does support the JobPriority attribute, the printer must
use an implementation-defined default JobPriority value.

The client can always specify any job priority value from 1 to 100 for a job.
However, a Print Service instance may support fewer than 100 different job
priority levels. If this is the case, the Print Service instance
automatically maps the client-specified job priority value to one of the
supported job priority levels, dividing the 100 job priority values equally
among the available job priority levels.

**IPP Compatibility:** The integer value gives the IPP integer value. The
category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobPriority)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobPriority(int value)`

  Construct a new job priority attribute with the given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job priority attribute is equivalent to the passed
  in object.

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

  + ### JobPriority

    public JobPriority(int value)

    Construct a new job priority attribute with the given integer value.

    Parameters:
    :   `value` - Integer value

    Throws:
    :   `IllegalArgumentException` - if `value` is less than 1 or
        greater than 100
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job priority attribute is equivalent to the passed
    in object. To be equivalent, all of the following conditions must be
    true:
    1. `object` is not `null`.+ `object` is an instance of class `JobPriority`.+ This job priority attribute's value and `object`'s value are
           equal.

    Overrides:
    :   `equals` in class `IntegerSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job priority
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobPriority`, the category is class
    `JobPriority` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobPriority`, the category name is
    `"job-priority"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name