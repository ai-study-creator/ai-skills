Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class OAEPParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.OAEPParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class OAEPParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the set of parameters used with OAEP Padding,
as defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.
Its ASN.1 definition in PKCS#1 standard is described below:

```
 RSAES-OAEP-params ::= SEQUENCE {
   hashAlgorithm      [0] HashAlgorithm     DEFAULT sha1,
   maskGenAlgorithm   [1] MaskGenAlgorithm  DEFAULT mgf1SHA1,
   pSourceAlgorithm   [2] PSourceAlgorithm  DEFAULT pSpecifiedEmpty
 }
```

where

```
 HashAlgorithm ::= AlgorithmIdentifier {
   {OAEP-PSSDigestAlgorithms}
 }
 MaskGenAlgorithm ::= AlgorithmIdentifier { {PKCS1MGFAlgorithms} }
 PSourceAlgorithm ::= AlgorithmIdentifier {
   {PKCS1PSourceAlgorithms}
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
 PKCS1MGFAlgorithms    ALGORITHM-IDENTIFIER ::= {
   { OID id-mgf1 PARAMETERS HashAlgorithm },
   ...  -- Allows for future expansion --
 }
 PKCS1PSourceAlgorithms    ALGORITHM-IDENTIFIER ::= {
   { OID id-pSpecified PARAMETERS EncodingParameters },
   ...  -- Allows for future expansion --
 }
 EncodingParameters ::= OCTET STRING(SIZE(0..MAX))
```

Since:
:   1.5

See Also:
:   * [`MGF1ParameterSpec`](../../../java/security/spec/MGF1ParameterSpec.md "class in java.security.spec")
    * [`PSource`](PSource.md "class in javax.crypto.spec")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final OAEPParameterSpec`

  `DEFAULT`

  Deprecated.

  This field uses the default values defined in the PKCS #1
  standard.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OAEPParameterSpec(String mdName,
  String mgfName,
  AlgorithmParameterSpec mgfSpec,
  PSource pSrc)`

  Constructs a parameter set for OAEP padding as defined in
  the PKCS #1 standard using the specified message digest
  algorithm `mdName`, mask generation function
  algorithm `mgfName`, parameters for the mask
  generation function `mgfSpec`, and source of
  the encoding input P `pSrc`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDigestAlgorithm()`

  Returns the message digest algorithm name.

  `String`

  `getMGFAlgorithm()`

  Returns the mask generation function algorithm name.

  `AlgorithmParameterSpec`

  `getMGFParameters()`

  Returns the parameters for the mask generation function.

  `PSource`

  `getPSource()`

  Returns the source of encoding input P.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT

    [@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="19")
    public static final [OAEPParameterSpec](OAEPParameterSpec.md "class in javax.crypto.spec") DEFAULT

    Deprecated.

    This field uses the default values defined in the PKCS #1
    standard. Some of these defaults are no longer recommended due
    to advances in cryptanalysis -- see
    [Appendix B.1 of PKCS #1](https://www.rfc-editor.org/rfc/rfc8017#appendix-B.1)
    for more details. Thus, it is recommended to create
    a new `OAEPParameterSpec` with the desired parameter values
    using the
    [`OAEPParameterSpec(String, String, AlgorithmParameterSpec, PSource)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.security.spec.AlgorithmParameterSpec,javax.crypto.spec.PSource)) constructor.

    The OAEP parameter set with all default values, i.e. "SHA-1" as message
    digest algorithm, "MGF1" as mask generation function (mgf) algorithm,
    `MGF1ParameterSpec.SHA1` as parameters for the mask generation
    function, and `PSource.PSpecified.DEFAULT` as the source of the
    encoding input.
* ## Constructor Details

  + ### OAEPParameterSpec

    public OAEPParameterSpec([String](../../../java/lang/String.md "class in java.lang") mdName,
    [String](../../../java/lang/String.md "class in java.lang") mgfName,
    [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") mgfSpec,
    [PSource](PSource.md "class in javax.crypto.spec") pSrc)

    Constructs a parameter set for OAEP padding as defined in
    the PKCS #1 standard using the specified message digest
    algorithm `mdName`, mask generation function
    algorithm `mgfName`, parameters for the mask
    generation function `mgfSpec`, and source of
    the encoding input P `pSrc`.

    Parameters:
    :   `mdName` - the algorithm name for the message digest
    :   `mgfName` - the algorithm name for the mask generation function
    :   `mgfSpec` - the parameters for the mask generation function;
        if `null` is specified, `null` will be returned by
        [`getMGFParameters()`](#getMGFParameters())
    :   `pSrc` - the source of the encoding input P

    Throws:
    :   `NullPointerException` - if `mdName`,
        `mgfName`, or `pSrc` is `null`
* ## Method Details

  + ### getDigestAlgorithm

    public [String](../../../java/lang/String.md "class in java.lang") getDigestAlgorithm()

    Returns the message digest algorithm name.

    Returns:
    :   the message digest algorithm name.
  + ### getMGFAlgorithm

    public [String](../../../java/lang/String.md "class in java.lang") getMGFAlgorithm()

    Returns the mask generation function algorithm name.

    Returns:
    :   the mask generation function algorithm name.
  + ### getMGFParameters

    public [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") getMGFParameters()

    Returns the parameters for the mask generation function.

    Returns:
    :   the parameters for the mask generation function.
  + ### getPSource

    public [PSource](PSource.md "class in javax.crypto.spec") getPSource()

    Returns the source of encoding input P.

    Returns:
    :   the source of encoding input P.