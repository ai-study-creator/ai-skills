Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.keyinfo](package-summary.md)

# Interface KeyValue

All Superinterfaces:
:   `XMLStructure`

---

public interface KeyValue
extends [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `KeyValue` element as defined
in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/). A
`KeyValue` object contains a single public key that may be
useful in validating the signature. The XML schema definition is defined as:

```
    <element name="KeyValue" type="ds:KeyValueType"/>
    <complexType name="KeyValueType" mixed="true">
      <choice>
        <element ref="ds:DSAKeyValue"/>
        <element ref="ds:RSAKeyValue"/>
        <!-- <element ref="dsig11:ECKeyValue"/> -->
        <!-- ECC keys (XMLDsig 1.1) will use the any element -->
        <any namespace="##other" processContents="lax"/>
      </choice>
    </complexType>

    <element name="DSAKeyValue" type="ds:DSAKeyValueType"/>
    <complexType name="DSAKeyValueType">
      <sequence>
        <sequence minOccurs="0">
          <element name="P" type="ds:CryptoBinary"/>
          <element name="Q" type="ds:CryptoBinary"/>
        </sequence>
        <element name="G" type="ds:CryptoBinary" minOccurs="0"/>
        <element name="Y" type="ds:CryptoBinary"/>
        <element name="J" type="ds:CryptoBinary" minOccurs="0"/>
        <sequence minOccurs="0">
          <element name="Seed" type="ds:CryptoBinary"/>
          <element name="PgenCounter" type="ds:CryptoBinary"/>
        </sequence>
      </sequence>
    </complexType>

    <element name="RSAKeyValue" type="ds:RSAKeyValueType"/>
    <complexType name="RSAKeyValueType">
      <sequence>
        <element name="Modulus" type="ds:CryptoBinary"/>
        <element name="Exponent" type="ds:CryptoBinary"/>
      </sequence>
    </complexType>

    <complexType name="ECKeyValueType">
      <sequence>
        <choice>
          <element name="ECParameters" type="dsig11:ECParametersType" />
          <element name="NamedCurve" type="dsig11:NamedCurveType" />
        </choice>
        <element name="PublicKey" type="dsig11:ECPointType" />
      </sequence>
      <attribute name="Id" type="ID" use="optional" />
    </complexType>

    <complexType name="NamedCurveType">
      <attribute name="URI" type="anyURI" use="required" />
    </complexType>

    <simpleType name="ECPointType">
      <restriction base="ds:CryptoBinary" />
    </simpleType>
```

See section 4.5.2.3.1 of the W3C Recommendation for the definition
of ECParametersType.

A `KeyValue` instance may be created by invoking the
[`newKeyValue`](KeyInfoFactory.md#newKeyValue(java.security.PublicKey)) method of the
[`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") class, and passing it a [`PublicKey`](../../../../../../java.base/java/security/PublicKey.md "interface in java.security") representing the value of the public key. Here is
an example of creating a `KeyValue` from a [`DSAPublicKey`](../../../../../../java.base/java/security/interfaces/DSAPublicKey.md "interface in java.security.interfaces")
of a [`Certificate`](../../../../../../java.base/java/security/cert/Certificate.md "class in java.security.cert") stored in a
[`KeyStore`](../../../../../../java.base/java/security/KeyStore.md "class in java.security"):

```
 KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
 PublicKey dsaPublicKey = keyStore.getCertificate("myDSASigningCert").getPublicKey();
 KeyInfoFactory factory = KeyInfoFactory.getInstance("DOM");
 KeyValue keyValue = factory.newKeyValue(dsaPublicKey);
```

This class returns the `DSAKeyValue` and
`RSAKeyValue` elements as objects of type
[`DSAPublicKey`](../../../../../../java.base/java/security/interfaces/DSAPublicKey.md "interface in java.security.interfaces") and [`RSAPublicKey`](../../../../../../java.base/java/security/interfaces/RSAPublicKey.md "interface in java.security.interfaces"), respectively. Note that not
all of the fields in the schema are accessible as parameters of these
types.

Since:
:   1.6

See Also:
:   * [`KeyInfoFactory.newKeyValue(PublicKey)`](KeyInfoFactory.md#newKeyValue(java.security.PublicKey))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `DSA_TYPE`

  URI identifying the DSA KeyValue KeyInfo type:
  http://www.w3.org/2000/09/xmldsig#DSAKeyValue.

  `static final String`

  `EC_TYPE`

  URI identifying the EC KeyValue KeyInfo type:
  http://www.w3.org/2009/xmldsig11#ECKeyValue.

  `static final String`

  `RSA_TYPE`

  URI identifying the RSA KeyValue KeyInfo type:
  http://www.w3.org/2000/09/xmldsig#RSAKeyValue.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `PublicKey`

  `getPublicKey()`

  Returns the public key of this `KeyValue`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Field Details

  + ### DSA\_TYPE

    static final [String](../../../../../../java.base/java/lang/String.md "class in java.lang") DSA\_TYPE

    URI identifying the DSA KeyValue KeyInfo type:
    http://www.w3.org/2000/09/xmldsig#DSAKeyValue. This can be specified as
    the value of the `type` parameter of the
    [`RetrievalMethod`](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo") class to describe a remote
    `DSAKeyValue` structure.

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.xml.crypto.dsig.keyinfo.KeyValue.DSA_TYPE)
  + ### RSA\_TYPE

    static final [String](../../../../../../java.base/java/lang/String.md "class in java.lang") RSA\_TYPE

    URI identifying the RSA KeyValue KeyInfo type:
    http://www.w3.org/2000/09/xmldsig#RSAKeyValue. This can be specified as
    the value of the `type` parameter of the
    [`RetrievalMethod`](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo") class to describe a remote
    `RSAKeyValue` structure.

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.xml.crypto.dsig.keyinfo.KeyValue.RSA_TYPE)
  + ### EC\_TYPE

    static final [String](../../../../../../java.base/java/lang/String.md "class in java.lang") EC\_TYPE

    URI identifying the EC KeyValue KeyInfo type:
    http://www.w3.org/2009/xmldsig11#ECKeyValue. This can be specified as
    the value of the `type` parameter of the
    [`RetrievalMethod`](RetrievalMethod.md "interface in javax.xml.crypto.dsig.keyinfo") class to describe a remote
    `ECKeyValue` structure.

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.xml.crypto.dsig.keyinfo.KeyValue.EC_TYPE)
* ## Method Details

  + ### getPublicKey

    [PublicKey](../../../../../../java.base/java/security/PublicKey.md "interface in java.security") getPublicKey()
    throws [KeyException](../../../../../../java.base/java/security/KeyException.md "class in java.security")

    Returns the public key of this `KeyValue`.

    Returns:
    :   the public key of this `KeyValue`

    Throws:
    :   `KeyException` - if this `KeyValue` cannot be converted
        to a `PublicKey`