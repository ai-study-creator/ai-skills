Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterMoreInfoManufacturer

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.URISyntax](../URISyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterMoreInfoManufacturer

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class PrinterMoreInfoManufacturer
extends [URISyntax](../URISyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PrinterMoreInfoManufacturer` is a printing attribute class, a
`URI`, that is used to obtain more information about this type of
device. The information obtained from this `URI` is intended for end
user consumption. Features outside the scope of the Print Service API can be
accessed from this `URI` (e.g., latest firmware, upgrades, service
proxies, optional features available, details on color support). The
information is intended to be germane to this kind of printer without regard
to site specific modifications or services.

In contrast, the [`PrinterMoreInfo`](PrinterMoreInfo.md "class in javax.print.attribute.standard") attribute is used to
find out more information about this specific printer rather than this
general kind of printer.

**IPP Compatibility:** The string form returned by `toString()`
gives the IPP uri value. The category name returned by `getName()`
gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterMoreInfoManufacturer)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterMoreInfoManufacturer(URI uri)`

  Constructs a new printer more info manufacturer attribute with the
  specified `URI`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this printer more info manufacturer attribute is
  equivalent to the passed in object.

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

  + ### PrinterMoreInfoManufacturer

    public PrinterMoreInfoManufacturer([URI](../../../../../java.base/java/net/URI.md "class in java.net") uri)

    Constructs a new printer more info manufacturer attribute with the
    specified `URI`.

    Parameters:
    :   `uri` - `URI`

    Throws:
    :   `NullPointerException` - if `uri` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this printer more info manufacturer attribute is
    equivalent to the passed in object. To be equivalent, all of the
    following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class
         `PrinterMoreInfoManufacturer`.+ This printer more info manufacturer attribute's `URI` and
           `object`'s `URI` are equal.

    Overrides:
    :   `equals` in class `URISyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this printer more
        info manufacturer attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterMoreInfoManufacturer`, the category is class
    `PrinterMoreInfoManufacturer` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterMoreInfoManufacturer`, the category name is
    `"printer-more-info-manufacturer"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name