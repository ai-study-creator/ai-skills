Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class Destination

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.URISyntax](../URISyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.Destination

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`, `PrintJobAttribute`, `PrintRequestAttribute`

---

public final class Destination
extends [URISyntax](../URISyntax.md "class in javax.print.attribute")
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute"), [PrintRequestAttribute](../PrintRequestAttribute.md "interface in javax.print.attribute")

Class `Destination` is a printing attribute class, a `URI`, that
is used to indicate an alternate destination for the spooled printer
formatted data. Many `PrintServices` will not support the notion of a
destination other than the printer device, and so will not support this
attribute.

A common use for this attribute will be applications which want to redirect
output to a local disk file : eg."file:out.prn". Note that proper
construction of "file:" scheme `URI` instances should be performed
using the `toURI()` method of class [`File`](../../../../../java.base/java/io/File.md "class in java.io"). See the
documentation on that class for more information.

If a destination `URI` is specified in a PrintRequest and it is not
accessible for output by the `PrintService`, a `PrintException`
will be thrown. The `PrintException` may implement `URIException`
to provide a more specific cause.

**IPP Compatibility:** Destination is not an IPP attribute.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.Destination)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Destination(URI uri)`

  Constructs a new destination attribute with the specified `URI`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this destination attribute is equivalent to the passed in
  object.

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

  + ### Destination

    public Destination([URI](../../../../../java.base/java/net/URI.md "class in java.net") uri)

    Constructs a new destination attribute with the specified `URI`.

    Parameters:
    :   `uri` - `URI`

    Throws:
    :   `NullPointerException` - if `uri` is `null`
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this destination attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `Destination`.+ This destination attribute's `URI` and `object`'s
           `URI` are equal.

    Overrides:
    :   `equals` in class `URISyntax`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this destination
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `Destination`, the category is class `Destination`
    itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `Destination`, the category name is
    `"spool-data-destination"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name