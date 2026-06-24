Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobMessageFromOperator

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.TextSyntax](../TextSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobMessageFromOperator

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`

---

public final class JobMessageFromOperator
extends [TextSyntax](../TextSyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobMessageFromOperator` is a printing attribute class, a text
attribute, that provides a message from an operator, system administrator, or
"intelligent" process to indicate to the end user the reasons for
modification or other management action taken on a job.

A Print Job's attribute set includes zero instances or one instance of a
`JobMessageFromOperator` attribute, not more than one instance. A new
`JobMessageFromOperator` attribute replaces an existing
`JobMessageFromOperator` attribute, if any. In other words,
`JobMessageFromOperator` is not intended to be a history log. If it
wishes, the client can detect changes to a Print Job's
`JobMessageFromOperator` attribute and maintain the client's own
history log of the `JobMessageFromOperator` attribute values.

**IPP Compatibility:** The string value gives the IPP name value. The
locale gives the IPP natural language. The category name returned by
`getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobMessageFromOperator)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobMessageFromOperator(String message,
  Locale locale)`

  Constructs a new job message from operator attribute with the given
  message and locale.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job message from operator attribute is equivalent to
  the passed in object.

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

  + ### JobMessageFromOperator

    public JobMessageFromOperator([String](../../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a new job message from operator attribute with the given
    message and locale.

    Parameters:
    :   `message` - the message
    :   `locale` - Natural language of the text string. `null` is
        interpreted to mean the default locale as returned by
        `Locale.getDefault()`

    Throws:
    :   `NullPointerException` - if `message` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job message from operator attribute is equivalent to
    the passed in object. To be equivalent, all of the following conditions
    must be true:
    1. `object` is not `null`.+ `object` is an instance of class
         `JobMessageFromOperator`.+ This job message from operator attribute's underlying string and
           `object`'s underlying string are equal.+ This job message from operator attribute's locale and
             `object`'s locale are equal.

    Overrides:
    :   `equals` in class `TextSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job message
        from operator attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobMessageFromOperator`, the category is class
    `JobMessageFromOperator` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobMessageFromOperator`, the category name is
    `"job-message-from-operator"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name