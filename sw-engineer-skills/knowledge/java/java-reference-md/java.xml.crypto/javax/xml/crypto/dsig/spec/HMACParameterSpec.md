Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Class HMACParameterSpec

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.crypto.dsig.spec.HMACParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`, `SignatureMethodParameterSpec`

---

public final class HMACParameterSpec
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [SignatureMethodParameterSpec](SignatureMethodParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

Parameters for the [XML Signature HMAC Algorithm](http://www.w3.org/TR/xmldsig-core/#sec-MACs). The parameters include an optional output
length which specifies the MAC truncation length in bits. The resulting
HMAC will be truncated to the specified number of bits. If the parameter is
not specified, then this implies that all the bits of the hash are to be
output. The XML Schema Definition of the `HMACOutputLength`
element is defined as:

```
 <element name="HMACOutputLength" minOccurs="0" type="ds:HMACOutputLengthType"/>
 <simpleType name="HMACOutputLengthType">
   <restriction base="integer"/>
 </simpleType>
```

Since:
:   1.6

See Also:
:   * [`SignatureMethod`](../SignatureMethod.md "interface in javax.xml.crypto.dsig")
    * [RFC 2104](http://www.ietf.org/rfc/rfc2104.txt)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HMACParameterSpec(int outputLength)`

  Creates an `HMACParameterSpec` with the specified truncation
  length.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getOutputLength()`

  Returns the truncation length.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HMACParameterSpec

    public HMACParameterSpec(int outputLength)

    Creates an `HMACParameterSpec` with the specified truncation
    length.

    Parameters:
    :   `outputLength` - the truncation length in number of bits
* ## Method Details

  + ### getOutputLength

    public int getOutputLength()

    Returns the truncation length.

    Returns:
    :   the truncation length in number of bits