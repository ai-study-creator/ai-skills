Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class GCMParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.GCMParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class GCMParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

Specifies the set of parameters required by a [`Cipher`](../Cipher.md "class in javax.crypto") using the Galois/Counter Mode (GCM) mode.

Simple block cipher modes (such as CBC) generally require only an
initialization vector (such as `IvParameterSpec`),
but GCM needs these parameters:

* `IV`: Initialization Vector (IV)
* `tLen`: length (in bits) of authentication tag T

In addition to the parameters described here, other GCM inputs/output
(Additional Authenticated Data (AAD), Keys, block ciphers,
plain/ciphertext and authentication tags) are handled in the `Cipher` class.

Please see  [RFC 5116](http://www.ietf.org/rfc/rfc5116.txt) for more information on the Authenticated Encryption with
Associated Data (AEAD) algorithm, and [NIST Special Publication 800-38D](http://csrc.nist.gov/publications/nistpubs/800-38D/SP-800-38D.pdf), "NIST Recommendation for Block
Cipher Modes of Operation: Galois/Counter Mode (GCM) and GMAC."

The GCM specification states that `tLen` may only have the
values {128, 120, 112, 104, 96}, or {64, 32} for certain
applications. Other values can be specified for this class, but not
all CSP implementations will support them.

Since:
:   1.7

See Also:
:   * [`Cipher`](../Cipher.md "class in javax.crypto")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GCMParameterSpec(int tLen,
  byte[] src)`

  Constructs a GCMParameterSpec using the specified authentication
  tag bit-length and IV buffer.

  `GCMParameterSpec(int tLen,
  byte[] src,
  int offset,
  int len)`

  Constructs a GCMParameterSpec object using the specified
  authentication tag bit-length and a subset of the specified
  buffer as the IV.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getIV()`

  Returns the Initialization Vector (IV).

  `int`

  `getTLen()`

  Returns the authentication tag length.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GCMParameterSpec

    public GCMParameterSpec(int tLen,
    byte[] src)

    Constructs a GCMParameterSpec using the specified authentication
    tag bit-length and IV buffer.

    Parameters:
    :   `tLen` - the authentication tag length (in bits)
    :   `src` - the IV source buffer. The contents of the buffer are
        copied to protect against subsequent modification.

    Throws:
    :   `IllegalArgumentException` - if `tLen` is negative,
        or `src` is null.
  + ### GCMParameterSpec

    public GCMParameterSpec(int tLen,
    byte[] src,
    int offset,
    int len)

    Constructs a GCMParameterSpec object using the specified
    authentication tag bit-length and a subset of the specified
    buffer as the IV.

    Parameters:
    :   `tLen` - the authentication tag length (in bits)
    :   `src` - the IV source buffer. The contents of the
        buffer are copied to protect against subsequent modification.
    :   `offset` - the offset in `src` where the IV starts
    :   `len` - the number of IV bytes

    Throws:
    :   `IllegalArgumentException` - if `tLen` is negative,
        `src` is null, `len` or `offset` is negative,
        or the sum of `offset` and `len` is greater than the
        length of the `src` byte array.
* ## Method Details

  + ### getTLen

    public int getTLen()

    Returns the authentication tag length.

    Returns:
    :   the authentication tag length (in bits)
  + ### getIV

    public byte[] getIV()

    Returns the Initialization Vector (IV).

    Returns:
    :   the IV. Creates a new array each time this method
        is called.