Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobOriginatingUserName

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.TextSyntax](../TextSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.JobOriginatingUserName

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`

---

public final class JobOriginatingUserName
extends [TextSyntax](../TextSyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobOriginatingUserName` is a printing attribute class, a text
attribute, that contains the name of the end user that submitted the print
job. If possible, the printer sets this attribute to the most authenticated
printable user name that it can obtain from the authentication service that
authenticated the submitted Print Request. If such is not available, the
printer uses the value of the [`RequestingUserName`](RequestingUserName.md "class in javax.print.attribute.standard")
attribute supplied by the client in the Print Request's attribute set. If no
authentication service is available, and the client did not supply a
[`RequestingUserName`](RequestingUserName.md "class in javax.print.attribute.standard") attribute, the printer sets the
JobOriginatingUserName attribute to an empty (zero-length) string.

**IPP Compatibility:** The string value gives the IPP name value. The
locale gives the IPP natural language. The category name returned by
`getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobOriginatingUserName)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobOriginatingUserName(String userName,
  Locale locale)`

  Constructs a new job originating user name attribute with the given user
  name and locale.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this job originating user name attribute is equivalent to
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

  + ### JobOriginatingUserName

    public JobOriginatingUserName([String](../../../../../java.base/java/lang/String.md "class in java.lang") userName,
    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a new job originating user name attribute with the given user
    name and locale.

    Parameters:
    :   `userName` - user name
    :   `locale` - natural language of the text string. `null` is
        interpreted to mean the default locale as returned by
        `Locale.getDefault()`

    Throws:
    :   `NullPointerException` - if `userName` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this job originating user name attribute is equivalent to
    the passed in object. To be equivalent, all of the following conditions
    must be true:
    1. `object` is not `null`.+ `object` is an instance of class
         `JobOriginatingUserName`.+ This job originating user name attribute's underlying string and
           `object`'s underlying string are equal.+ This job originating user name attribute's locale and
             `object`'s locale are equal.

    Overrides:
    :   `equals` in class `TextSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this job
        originating user name attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobOriginatingUserName`, the category is class
    `JobOriginatingUserName` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `JobOriginatingUserName`, the category name is
    `"job-originating-user-name"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name