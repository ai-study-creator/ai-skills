Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class RequestingUserName

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.TextSyntax](../TextSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.RequestingUserName

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintRequestAttribute`

---

public final class RequestingUserName
extends [TextSyntax](../TextSyntax.md "class in javax.print.attribute")
implements [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute")

Class `RequestingUserName` is a printing attribute class, a text
attribute, that specifies the name of the end user that submitted the print
job. A requesting user name is an arbitrary string defined by the client. The
printer does not put the client-specified `RequestingUserName`
attribute into the Print Job's attribute set; rather, the printer puts in a
[`JobOriginatingUserName`](JobOriginatingUserName.md "class in javax.print.attribute.standard") attribute. This means
that services which support specifying a username with this attribute should
also report a `JobOriginatingUserName` in the job's attribute set. Note
that many print services may have a way to independently authenticate the
user name, and so may state support for a requesting user name, but in
practice will then report the user name authenticated by the service rather
than that specified via this attribute.

**IPP Compatibility:** The string value gives the IPP name value. The
locale gives the IPP natural language. The category name returned by
`getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.RequestingUserName)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RequestingUserName(String userName,
  Locale locale)`

  Constructs a new requesting user name attribute with the given user name
  and locale.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this requesting user name attribute is equivalent to the
  passed in object.

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

  + ### RequestingUserName

    public RequestingUserName([String](../../../../../java.base/java/lang/String.md "class in java.lang") userName,
    [Locale](../../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a new requesting user name attribute with the given user name
    and locale.

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

    Returns whether this requesting user name attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `RequestingUserName`.+ This requesting user name attribute's underlying string and
           `object`'s underlying string are equal.+ This requesting user name attribute's locale and `object`'s
             locale are equal.

    Overrides:
    :   `equals` in class `TextSyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this requesting
        user name attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `RequestingUserName`, the category is class
    `RequestingUserName` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `RequestingUserName`, the category name is
    `"requesting-user-name"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name