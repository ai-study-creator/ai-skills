Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class TextSyntax

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.TextSyntax

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

Direct Known Subclasses:
:   `DocumentName`, `JobMessageFromOperator`, `JobName`, `JobOriginatingUserName`, `OutputDeviceAssigned`, `PrinterInfo`, `PrinterLocation`, `PrinterMakeAndModel`, `PrinterMessageFromOperator`, `PrinterName`, `RequestingUserName`

---

public abstract class TextSyntax
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Class `TextSyntax` is an abstract base class providing the common
implementation of all attributes whose value is a string. The text attribute
includes a locale to indicate the natural language. Thus, a text attribute
always represents a localized string. Once constructed, a text attribute's
value is immutable.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.TextSyntax)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TextSyntax(String value,
  Locale locale)`

  Constructs a `TextAttribute` with the specified string and locale.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object object)`

  Returns whether this text attribute is equivalent to the passed in
  object.

  `Locale`

  `getLocale()`

  Returns this text attribute's text string's natural language (locale).

  `String`

  `getValue()`

  Returns this text attribute's text string.

  `int`

  `hashCode()`

  Returns a hashcode for this text attribute.

  `String`

  `toString()`

  Returns a `String` identifying this text attribute.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TextSyntax

    protected TextSyntax([String](../../../../java.base/java/lang/String.md "class in java.lang") value,
    [Locale](../../../../java.base/java/util/Locale.md "class in java.util") locale)

    Constructs a `TextAttribute` with the specified string and locale.

    Parameters:
    :   `value` - text string
    :   `locale` - natural language of the text string. `null` is
        interpreted to mean the default locale for as returned by
        `Locale.getDefault()`

    Throws:
    :   `NullPointerException` - if `value` is `null`
* ## Method Details

  + ### getValue

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getValue()

    Returns this text attribute's text string.

    Returns:
    :   the text string
  + ### getLocale

    public [Locale](../../../../java.base/java/util/Locale.md "class in java.util") getLocale()

    Returns this text attribute's text string's natural language (locale).

    Returns:
    :   the locale
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this text attribute.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashcode value for this object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Returns whether this text attribute is equivalent to the passed in
    object. To be equivalent, all of the following conditions must be true:
    1. `object` is not `null`.+ `object` is an instance of class `TextSyntax`.+ This text attribute's underlying string and `object`'s
           underlying string are equal.+ This text attribute's locale and `object`'s locale are equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - `Object` to compare to

    Returns:
    :   `true` if `object` is equivalent to this text
        attribute, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a `String` identifying this text attribute. The
    `String` is the attribute's underlying text string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` identifying this object