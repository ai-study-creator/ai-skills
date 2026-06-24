Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.keyinfo](package-summary.md)

# Interface X509IssuerSerial

All Superinterfaces:
:   `XMLStructure`

---

public interface X509IssuerSerial
extends [XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

A representation of the XML `X509IssuerSerial` element as
defined in the [W3C Recommendation for XML-Signature Syntax and Processing](http://www.w3.org/TR/xmldsig-core/).
An `X509IssuerSerial` object contains an X.509 issuer
distinguished name (DN) and serial number pair. The XML schema definition is
defined as:

```
   <element name="X509IssuerSerial" type="ds:X509IssuerSerialType"/>
   <complexType name="X509IssuerSerialType">
     <sequence>
       <element name="X509IssuerName" type="string"/>
       <element name="X509SerialNumber" type="integer"/>
     </sequence>
   </complexType>
```

An `X509IssuerSerial` instance may be created by invoking the
[`newX509IssuerSerial`](KeyInfoFactory.md#newX509IssuerSerial(java.lang.String,java.math.BigInteger)) method
of the [`KeyInfoFactory`](KeyInfoFactory.md "class in javax.xml.crypto.dsig.keyinfo") class, and passing it a
`String` and `BigInteger` representing the X.500
DN and serial number. Here is an example of creating an
`X509IssuerSerial` from the issuer DN and serial number of an
existing [`X509Certificate`](../../../../../../java.base/java/security/cert/X509Certificate.md "class in java.security.cert"):

```
 KeyInfoFactory factory = KeyInfoFactory.getInstance("DOM");
 X509IssuerSerial issuer = factory.newX509IssuerSerial
     (cert.getIssuerX500Principal().getName(), cert.getSerialNumber());
```

Since:
:   1.6

See Also:
:   * [`X509Data.getContent()`](X509Data.md#getContent())
    * [`KeyInfoFactory.newX509IssuerSerial(String, BigInteger)`](KeyInfoFactory.md#newX509IssuerSerial(java.lang.String,java.math.BigInteger))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getIssuerName()`

  Returns the X.500 distinguished name of this
  `X509IssuerSerial` in
  [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt) String format.

  `BigInteger`

  `getSerialNumber()`

  Returns the serial number of this `X509IssuerSerial`.

  ### Methods inherited from interface javax.xml.crypto.[XMLStructure](../../XMLStructure.md "interface in javax.xml.crypto")

  `isFeatureSupported`

* ## Method Details

  + ### getIssuerName

    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getIssuerName()

    Returns the X.500 distinguished name of this
    `X509IssuerSerial` in
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt) String format.

    Returns:
    :   the X.500 distinguished name in RFC 2253 String format (never
        `null`)
  + ### getSerialNumber

    [BigInteger](../../../../../../java.base/java/math/BigInteger.md "class in java.math") getSerialNumber()

    Returns the serial number of this `X509IssuerSerial`.

    Returns:
    :   the serial number (never `null`)