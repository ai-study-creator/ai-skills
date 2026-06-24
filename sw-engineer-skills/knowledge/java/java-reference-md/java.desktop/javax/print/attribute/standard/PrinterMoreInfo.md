Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterMoreInfo

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.URISyntax](../URISyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterMoreInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class PrinterMoreInfo
extends [URISyntax](../URISyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PrinterMoreInfo` is a printing attribute class, a `URI`,
that is used to obtain more information about this specific printer. For
example, this could be an HTTP type `URI` referencing an HTML page
accessible to a web browser. The information obtained from this `URI`
is intended for end user consumption. Features outside the scope of the Print
Service API can be accessed from this `URI`. The information is
intended to be specific to this printer instance and site specific services
(e.g. job pricing, services offered, end user assistance).

In contrast, the
[`PrinterMoreInfoManufacturer`](PrinterMoreInfoManufacturer.md "class in javax.print.attribute.standard") attribute is
used to find out more information about this general kind of printer rather
than this specific printer.

**IPP Compatibility:** The string form returned by `toString()`
gives the IPP uri value. The category name returned by `getName()`
gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterMoreInfo)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterMoreInfo(URI uri)`

  Constructs a new printer more info attribute with the specified
  `URI`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this printer more info attribute is equivalent to the
  passed in object.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class javax.print.attribute.[URISyntax](../URISyntax.md "class in javax.print.attribute")

  `getURI, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrinterMoreInfo

    public PrinterMoreInfo([URI](../../../../../java.base/java/net/URI.md "class in java.net") uri)

    Constructs a new printer more info attribute with the specified
    `URI`.

    Parameters:
    :   `uri` - `URI`

    Throws:
    :   `NullPointerException` - if `uri` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this printer more info attribute is equivalent to the
    passed in object. To be equivalent, all of the following conditions must
    be true:
    1. `object` is not `null`.+ `object` is an instance of class `PrinterMoreInfo`.+ This printer more info attribute's `URI` and `object`'s
           `URI` are equal.

    Overrides:
    :   `equals` in class `URISyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this printer more
        info attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterMoreInfo`, the category is class
    `PrinterMoreInfo` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterMoreInfo`, the category name is
    `"printer-more-info"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name