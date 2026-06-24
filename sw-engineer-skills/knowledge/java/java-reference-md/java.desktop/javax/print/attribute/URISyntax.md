Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class URISyntax

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.URISyntax

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `Destination`, `PrinterMoreInfo`, `PrinterMoreInfoManufacturer`, `PrinterURI`

---

public abstract class URISyntax
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Class `URISyntax` is an abstract base class providing the common
implementation of all attributes whose value is a Uniform Resource Identifier
(URI). Once constructed, a `URI` attribute's value is immutable.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.URISyntax)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `URISyntax(URI uri)`

  Constructs a `URI` attribute with the specified `URI`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this `URI` attribute is equivalent to the passed in
  object.

  `URI`

  `getURI()`

  Returns this `URI` attribute's `URI` value.

  `int`

  `hashCode()`

  Returns a hashcode for this `URI` attribute.

  `String`

  `toString()`

  Returns a `String` identifying this `URI` attribute.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### URISyntax

    protected URISyntax([URI](../../../../java.base/java/net/URI.md "class in java.net") uri)

    Constructs a `URI` attribute with the specified `URI`.

    Parameters:
    :   `uri` - the `URI`

    Throws:
    :   `NullPointerException` - if `uri` is `null`
* ## Method Details

  + ### getURI

    public [URI](../../../../java.base/java/net/URI.md "class in java.net") getURI()

    Returns this `URI` attribute's `URI` value.

    Returns:
    :   the `URI`
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this `URI` attribute.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashcode value for this object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this `URI` attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `URISyntax`.+ This `URI` attribute's underlying `URI` and
           `object`'s underlying `URI` are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this `URI`
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a `String` identifying this `URI` attribute. The
    `String` is the string representation of the attribute's underlying
    `URI`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` identifying this object