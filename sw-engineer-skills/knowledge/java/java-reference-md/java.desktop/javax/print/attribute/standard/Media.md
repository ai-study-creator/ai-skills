Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Media

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Media

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`

Direct Known Subclasses:
:   `MediaName`, `MediaSizeName`, `MediaTray`

---

public abstract class Media
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [DocAttribute](../DocAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute"), [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `Media` is a printing attribute class that specifies the medium
on which to print.

Media may be specified in different ways.

* it may be specified by paper source - eg paper tray* it may be specified by a standard size - eg "A4"* it may be specified by a name - eg "letterhead"

Each of these corresponds to the IPP "media" attribute. The current API does
not support describing media by characteristics (eg colour, opacity). This
may be supported in a later revision of the specification.

A `Media` object is constructed with a value which represents one of
the ways in which the Media attribute can be specified.

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Media)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Media(int value)`

  Constructs a new media attribute specified by name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this media attribute is equivalent to the passed in
  object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getEnumValueTable, getOffset, getStringTable, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Media

    protected Media(int value)

    Constructs a new media attribute specified by name.

    Parameters:
    :   `value` - a value
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this media attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is of the same subclass of `Media` as this
         object.+ The values are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this media
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Media` and any vendor-defined subclasses, the category
    is class `Media` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Media` and any vendor-defined subclasses, the category
    name is `"media"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name