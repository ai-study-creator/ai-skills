Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class PSSParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.PSSParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class PSSParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies a parameter spec for the RSASSA-PSS signature scheme,
as defined in the
[PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.

Its ASN.1 definition in the PKCS #1 standard is described below:

```
 RSASSA-PSS-params ::= SEQUENCE {
   hashAlgorithm      [0] HashAlgorithm      DEFAULT sha1,
   maskGenAlgorithm   [1] MaskGenAlgorithm   DEFAULT mgf1SHA1,
   saltLength         [2] INTEGER            DEFAULT 20,
   trailerField       [3] TrailerField       DEFAULT trailerFieldBC(1)
 }
```

where

```
 HashAlgorithm ::= AlgorithmIdentifier {
   {OAEP-PSSDigestAlgorithms}
 }
 MaskGenAlgorithm ::= AlgorithmIdentifier { {PKCS1MGFAlgorithms} }
 TrailerField ::= INTEGER { trailerFieldBC(1) }

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
```

Since:
:   1.4

See Also:
:   * [`MGF1ParameterSpec`](MGF1ParameterSpec.md "class in java.security.spec")
    * [`AlgorithmParameterSpec`](AlgorithmParameterSpec.md "interface in java.security.spec")
    * [`Signature`](../Signature.md "class in java.security")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final PSSParameterSpec`

  `DEFAULT`

  Deprecated.

  This field uses the default values defined in the PKCS #1
  standard.

  `static final int`

  `TRAILER_FIELD_BC`

  The `TrailerFieldBC` constant as defined in the PKCS #1 standard.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PSSParameterSpec(int saltLen)`

  Deprecated.

  This constructor uses the default values defined in
  the PKCS #1 standard except for the salt length.

  `PSSParameterSpec(String mdName,
  String mgfName,
  AlgorithmParameterSpec mgfSpec,
  int saltLen,
  int trailerField)`

  Creates a new `PSSParameterSpec` as defined in
  the PKCS #1 standard using the specified message digest,
  mask generation function, parameters for mask generation
  function, salt length, and trailer field values.
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

  `int`

  `getSaltLength()`

  Returns the salt length in bytes.

  `int`

  `getTrailerField()`

  Returns the value for the trailer field.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### TRAILER\_FIELD\_BC

    public static final int TRAILER\_FIELD\_BC

    The `TrailerFieldBC` constant as defined in the PKCS #1 standard.

    Since:
    :   11

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.security.spec.PSSParameterSpec.TRAILER_FIELD_BC)
  + ### DEFAULT

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")([since](../../lang/Deprecated.md#since())="19")
    public static final [PSSParameterSpec](PSSParameterSpec.md "class in java.security.spec") DEFAULT

    Deprecated.

    This field uses the default values defined in the PKCS #1
    standard. Some of these defaults are no longer recommended due
    to advances in cryptanalysis -- see the
    [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt)
    standard for more details. Thus, it is recommended to create
    a new `PSSParameterSpec` with the desired parameter values
    using the
    [`PSSParameterSpec(String, String, AlgorithmParameterSpec, int, int)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.security.spec.AlgorithmParameterSpec,int,int)) constructor.

    The PSS parameter set with all default values.

    Since:
    :   1.5
* ## Constructor Details

  + ### PSSParameterSpec

    public PSSParameterSpec([String](../../lang/String.md "class in java.lang") mdName,
    [String](../../lang/String.md "class in java.lang") mgfName,
    [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") mgfSpec,
    int saltLen,
    int trailerField)

    Creates a new `PSSParameterSpec` as defined in
    the PKCS #1 standard using the specified message digest,
    mask generation function, parameters for mask generation
    function, salt length, and trailer field values.

    Parameters:
    :   `mdName` - the algorithm name of the hash function
    :   `mgfName` - the algorithm name of the mask generation function
    :   `mgfSpec` - the parameters for the mask generation function.
        If null is specified, null will be returned by
        getMGFParameters().
    :   `saltLen` - the length of salt in bytes
    :   `trailerField` - the value of the trailer field

    Throws:
    :   `NullPointerException` - if `mdName`, or `mgfName`
        is null
    :   `IllegalArgumentException` - if `saltLen` or
        `trailerField` is less than 0

    Since:
    :   1.5
  + ### PSSParameterSpec

    [@Deprecated](../../lang/Deprecated.md "annotation interface in java.lang")([since](../../lang/Deprecated.md#since())="19")
    public PSSParameterSpec(int saltLen)

    Deprecated.

    This constructor uses the default values defined in
    the PKCS #1 standard except for the salt length. Some of these
    defaults are no longer recommended due to advances in
    cryptanalysis -- see the
    [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt)
    standard for more details. Thus, it is recommended to explicitly
    specify all desired parameter values with the
    [`PSSParameterSpec(String, String, AlgorithmParameterSpec, int, int)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.security.spec.AlgorithmParameterSpec,int,int)) constructor.

    Creates a new `PSSParameterSpec`
    using the specified salt length and other default values as
    defined in the PKCS #1 standard.

    Parameters:
    :   `saltLen` - the length of salt in bytes

    Throws:
    :   `IllegalArgumentException` - if `saltLen` is
        less than 0
* ## Method Details

  + ### getDigestAlgorithm

    public [String](../../lang/String.md "class in java.lang") getDigestAlgorithm()

    Returns the message digest algorithm name.

    Returns:
    :   the message digest algorithm name

    Since:
    :   1.5
  + ### getMGFAlgorithm

    public [String](../../lang/String.md "class in java.lang") getMGFAlgorithm()

    Returns the mask generation function algorithm name.

    Returns:
    :   the mask generation function algorithm name

    Since:
    :   1.5
  + ### getMGFParameters

    public [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") getMGFParameters()

    Returns the parameters for the mask generation function.

    Returns:
    :   the parameters for the mask generation function

    Since:
    :   1.5
  + ### getSaltLength

    public int getSaltLength()

    Returns the salt length in bytes.

    Returns:
    :   the salt length
  + ### getTrailerField

    public int getTrailerField()

    Returns the value for the trailer field.

    Returns:
    :   the value for the trailer field

    Since:
    :   1.5
  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.