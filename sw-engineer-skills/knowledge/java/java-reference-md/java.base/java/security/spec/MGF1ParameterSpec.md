Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class MGF1ParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.MGF1ParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class MGF1ParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the set of parameters used with mask generation
function MGF1 in OAEP Padding and RSASSA-PSS signature scheme, as
defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.

Its ASN.1 definition in PKCS#1 standard is described below:

```
 PKCS1MGFAlgorithms    ALGORITHM-IDENTIFIER ::= {
   { OID id-mgf1 PARAMETERS HashAlgorithm },
   ...  -- Allows for future expansion --
 }
```

where

```
 HashAlgorithm ::= AlgorithmIdentifier {
   {OAEP-PSSDigestAlgorithms}
 }

 OAEP-PSSDigestAlgorithms    ALGORITHM-IDENTIFIER ::= {
   { OID id-sha1       PARAMETERS NULL }|
   { OID id-sha224     PARAMETERS NULL }|
   { OID id-sha256     PARAMETERS NULL }|
   { OID id-sha384     PARAMETERS NULL }|
   { OID id-sha512     PARAMETERS NULL }|
   { OID id-sha512-224 PARAMETERS NULL }|
   { OID id-sha512-256 PARAMETERS NULL },
   ...  -- Allows for future expansion --
 }
```

Since:
:   1.5

See Also:
:   * [`PSSParameterSpec`](PSSParameterSpec.md "class in java.security.spec")
    * [`OAEPParameterSpec`](../../../javax/crypto/spec/OAEPParameterSpec.md "class in javax.crypto.spec")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final MGF1ParameterSpec`

  `SHA1`

  The `MGF1ParameterSpec` uses a "SHA-1" message digest.

  `static final MGF1ParameterSpec`

  `SHA224`

  The `MGF1ParameterSpec` uses a "SHA-224" message digest.

  `static final MGF1ParameterSpec`

  `SHA256`

  The `MGF1ParameterSpec` uses a "SHA-256" message digest.

  `static final MGF1ParameterSpec`

  `SHA3_224`

  The `MGF1ParameterSpec` uses a "SHA3-224" message digest.

  `static final MGF1ParameterSpec`

  `SHA3_256`

  The `MGF1ParameterSpec` uses a "SHA3-256" message digest.

  `static final MGF1ParameterSpec`

  `SHA3_384`

  The `MGF1ParameterSpec` uses a "SHA3-384" message digest.

  `static final MGF1ParameterSpec`

  `SHA3_512`

  The `MGF1ParameterSpec` uses a "SHA3-512" message digest.

  `static final MGF1ParameterSpec`

  `SHA384`

  The `MGF1ParameterSpec` uses a "SHA-384" message digest.

  `static final MGF1ParameterSpec`

  `SHA512`

  The `MGF1ParameterSpec` uses a "SHA-512" message digest.

  `static final MGF1ParameterSpec`

  `SHA512_224`

  The `MGF1ParameterSpec` uses a "SHA-512/224" message digest.

  `static final MGF1ParameterSpec`

  `SHA512_256`

  The `MGF1ParameterSpec` uses a "SHA-512/256" message digest.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MGF1ParameterSpec(String mdName)`

  Constructs a parameter set for mask generation function MGF1
  as defined in the PKCS #1 standard.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDigestAlgorithm()`

  Returns the algorithm name of the message digest used by the mask
  generation function.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### SHA1

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA1

    The `MGF1ParameterSpec` uses a "SHA-1" message digest.
  + ### SHA224

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA224

    The `MGF1ParameterSpec` uses a "SHA-224" message digest.
  + ### SHA256

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA256

    The `MGF1ParameterSpec` uses a "SHA-256" message digest.
  + ### SHA384

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA384

    The `MGF1ParameterSpec` uses a "SHA-384" message digest.
  + ### SHA512

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA512

    The `MGF1ParameterSpec` uses a "SHA-512" message digest.
  + ### SHA512\_224

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA512\_224

    The `MGF1ParameterSpec` uses a "SHA-512/224" message digest.

    Since:
    :   11
  + ### SHA512\_256

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA512\_256

    The `MGF1ParameterSpec` uses a "SHA-512/256" message digest.

    Since:
    :   11
  + ### SHA3\_224

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA3\_224

    The `MGF1ParameterSpec` uses a "SHA3-224" message digest.

    Since:
    :   16
  + ### SHA3\_256

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA3\_256

    The `MGF1ParameterSpec` uses a "SHA3-256" message digest.

    Since:
    :   16
  + ### SHA3\_384

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA3\_384

    The `MGF1ParameterSpec` uses a "SHA3-384" message digest.

    Since:
    :   16
  + ### SHA3\_512

    public static final [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec") SHA3\_512

    The `MGF1ParameterSpec` uses a "SHA3-512" message digest.

    Since:
    :   16
* ## Constructor Details

  + ### MGF1ParameterSpec

    public MGF1ParameterSpec([String](../../lang/String.md "class in java.lang") mdName)

    Constructs a parameter set for mask generation function MGF1
    as defined in the PKCS #1 standard.

    Parameters:
    :   `mdName` - the algorithm name for the message digest
        used in this mask generation function MGF1.

    Throws:
    :   `NullPointerException` - if `mdName` is null.
* ## Method Details

  + ### getDigestAlgorithm

    public [String](../../lang/String.md "class in java.lang") getDigestAlgorithm()

    Returns the algorithm name of the message digest used by the mask
    generation function.

    Returns:
    :   the algorithm name of the message digest.
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.