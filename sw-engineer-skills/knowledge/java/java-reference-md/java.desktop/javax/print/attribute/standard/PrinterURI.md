Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterURI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.URISyntax](../URISyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.PrinterURI

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintServiceAttribute`

---

public final class PrinterURI
extends [URISyntax](../URISyntax.md "class in javax.print.attribute")
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PrinterURI` is a printing attribute class, a `URI`, that
specifies the globally unique name of a printer. If it has such a name, an
administrator determines a printer's `URI` and sets this attribute to
that name.

**IPP Compatibility:** This implements the IPP printer-uri attribute. The
string form returned by `toString()` gives the IPP printer-uri value.
The category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterURI)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterURI(URI uri)`

  Constructs a new `PrinterURI` attribute with the specified
  `URI`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this printer name attribute is equivalent to the passed
  in object.

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

  + ### PrinterURI

    public PrinterURI([URI](../../../../../java.base/java/net/URI.md "class in java.net") uri)

    Constructs a new `PrinterURI` attribute with the specified
    `URI`.

    Parameters:
    :   `uri` - `URI` of the printer

    Throws:
    :   `NullPointerException` - if `uri` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this printer name attribute is equivalent to the passed
    in object. To be equivalent, all of the following conditions must be
    true:
    1. `object` is not `null`.+ `object` is an instance of class `PrinterURI`.+ This `PrinterURI` attribute's underlying `URI` and
           `object`'s underlying `URI` are equal.

    Overrides:
    :   `equals` in class `URISyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this
        `PrinterURI` attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterURI` and any vendor-defined subclasses, the
    category is class `PrinterURI` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterURI` and any vendor-defined subclasses, the
    category name is `"printer-uri"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name