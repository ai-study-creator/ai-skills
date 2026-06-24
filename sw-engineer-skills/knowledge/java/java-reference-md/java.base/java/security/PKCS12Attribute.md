Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class PKCS12Attribute

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.PKCS12Attribute

All Implemented Interfaces:
:   `KeyStore.Entry.Attribute`

---

public final class PKCS12Attribute
extends [Object](../lang/Object.md "class in java.lang")
implements [KeyStore.Entry.Attribute](KeyStore.Entry.Attribute.md "interface in java.security")

An attribute associated with a PKCS12 keystore entry.
The attribute name is an ASN.1 Object Identifier and the attribute
value is a set of ASN.1 types.

Since:
:   1.8

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PKCS12Attribute(byte[] encoded)`

  Constructs a PKCS12 attribute from its ASN.1 DER encoding.

  `PKCS12Attribute(String name,
  String value)`

  Constructs a PKCS12 attribute from its name and value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this `PKCS12Attribute` and a specified object for
  equality.

  `byte[]`

  `getEncoded()`

  Returns the attribute's ASN.1 DER encoding.

  `String`

  `getName()`

  Returns the attribute's ASN.1 Object Identifier represented as a
  list of dot-separated integers.

  `String`

  `getValue()`

  Returns the attribute's ASN.1 DER-encoded value as a string.

  `int`

  `hashCode()`

  Returns the hashcode for this `PKCS12Attribute`.

  `String`

  `toString()`

  Returns a string representation of this `PKCS12Attribute`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PKCS12Attribute

    public PKCS12Attribute([String](../lang/String.md "class in java.lang") name,
    [String](../lang/String.md "class in java.lang") value)

    Constructs a PKCS12 attribute from its name and value.
    The name is an ASN.1 Object Identifier represented as a list of
    dot-separated integers.
    A string value is represented as the string itself.
    A binary value is represented as a string of colon-separated
    pairs of hexadecimal digits.
    Multivalued attributes are represented as a comma-separated
    list of values, enclosed in square brackets. See
    [`Arrays.toString(java.lang.Object[])`](../util/Arrays.md#toString(java.lang.Object%5B%5D)).

    A string value will be DER-encoded as an ASN.1 UTF8String and a
    binary value will be DER-encoded as an ASN.1 Octet String.

    Parameters:
    :   `name` - the attribute's identifier
    :   `value` - the attribute's value

    Throws:
    :   `NullPointerException` - if `name` or `value`
        is `null`
    :   `IllegalArgumentException` - if `name` or
        `value` is incorrectly formatted
  + ### PKCS12Attribute

    public PKCS12Attribute(byte[] encoded)

    Constructs a PKCS12 attribute from its ASN.1 DER encoding.
    The DER encoding is specified by the following ASN.1 definition:

    ```
     Attribute ::= SEQUENCE {
         type   AttributeType,
         values SET OF AttributeValue
     }
     AttributeType ::= OBJECT IDENTIFIER
     AttributeValue ::= ANY defined by type
    ```

    Parameters:
    :   `encoded` - the attribute's ASN.1 DER encoding. It is cloned
        to prevent subsequent modification.

    Throws:
    :   `NullPointerException` - if `encoded` is
        `null`
    :   `IllegalArgumentException` - if `encoded` is
        incorrectly formatted
* ## Method Details

  + ### getName

    public [String](../lang/String.md "class in java.lang") getName()

    Returns the attribute's ASN.1 Object Identifier represented as a
    list of dot-separated integers.

    Specified by:
    :   `getName` in interface `KeyStore.Entry.Attribute`

    Returns:
    :   the attribute's identifier
  + ### getValue

    public [String](../lang/String.md "class in java.lang") getValue()

    Returns the attribute's ASN.1 DER-encoded value as a string.
    An ASN.1 DER-encoded value is returned in one of the following
    `String` formats:
    - the DER encoding of a basic ASN.1 type that has a natural
      string representation is returned as the string itself.
      Such types are currently limited to BOOLEAN, INTEGER,
      OBJECT IDENTIFIER, UTCTime, GeneralizedTime and the
      following six ASN.1 string types: UTF8String,
      PrintableString, T61String, IA5String, BMPString and
      GeneralString.- the DER encoding of any other ASN.1 type is not decoded but
        returned as a binary string of colon-separated pairs of
        hexadecimal digits.Multivalued attributes are represented as a comma-separated
    list of values, enclosed in square brackets. See
    [`Arrays.toString(java.lang.Object[])`](../util/Arrays.md#toString(java.lang.Object%5B%5D)).

    Specified by:
    :   `getValue` in interface `KeyStore.Entry.Attribute`

    Returns:
    :   the attribute value's string encoding
  + ### getEncoded

    public byte[] getEncoded()

    Returns the attribute's ASN.1 DER encoding.

    Returns:
    :   a clone of the attribute's DER encoding
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares this `PKCS12Attribute` and a specified object for
    equality.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the comparison object

    Returns:
    :   true if `obj` is a `PKCS12Attribute` and
        their DER encodings are equal.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hashcode for this `PKCS12Attribute`.
    The hash code is computed from its DER encoding.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string representation of this `PKCS12Attribute`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a name/value pair separated by an 'equals' symbol