Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobName

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.TextSyntax](../TextSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobName

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class JobName
extends [TextSyntax](../TextSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobName` is a printing attribute class, a text attribute, that
specifies the name of a print job. A job's name is an arbitrary string
defined by the client. It does not need to be unique between different jobs.
A Print Job's `JobName` attribute is set to the value supplied by the
client in the Print Request's attribute set. If, however, the client does not
supply a `JobName` attribute in the Print Request, the printer, when it
creates the Print Job, must generate a `JobName`. The printer should
generate the value of the Print Job's `JobName` attribute from the
first of the following sources that produces a value: (1) the
[`DocumentName`](DocumentName.md "class in javax.print.attribute.standard") attribute of the first (or only) doc in the
job, (2) the `URL` of the first (or only) doc in the job, if the doc's
print data representation object is a `URL`, or (3) any other piece of
Print Job specific and/or document content information.

**IPP Compatibility:** The string value gives the IPP name value. The
locale gives the IPP natural language. The category name returned by
`getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobName)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobName(String jobName,
  Locale locale)`

  Constructs a new job name attribute with the given job name and locale.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job name attribute is equivalent to the passed in
  object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[TextSyntax](../TextSyntax.md "class in javax.print.attribute")

  `getLocale, getValue, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JobName

    public JobName([String](../../../../../java.base/java/lang/String.md "class in java.lang") jobName,
    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a new job name attribute with the given job name and locale.

    Parameters:
    :   `jobName` - job name
    :   `locale` - natural language of the text string. `null` is
        interpreted to mean the default locale as returned by
        `Locale.getDefault()`

    Throws:
    :   `NullPointerException` - if `jobName` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job name attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `JobName`.+ This job name attribute's underlying string and `object`'s
           underlying string are equal.+ This job name attribute's locale and `object`'s locale are
             equal.

    Overrides:
    :   `equals` in class `TextSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job name
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobName`, the category is class `JobName` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobName`, the category name is `"job-name"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name