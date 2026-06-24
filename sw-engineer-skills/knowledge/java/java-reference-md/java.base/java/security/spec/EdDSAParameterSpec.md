Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class EdDSAParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.EdDSAParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class EdDSAParameterSpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

A class used to specify EdDSA signature and verification parameters. All
algorithm modes in [RFC 8032:
Edwards-Curve Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032) can be specified using
combinations of the settings in this class.

* If prehash is true, then the mode is Ed25519ph or Ed448ph
* Otherwise, if a context is present, the mode is Ed25519ctx or Ed448
* Otherwise, the mode is Ed25519 or Ed448

Since:
:   15

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EdDSAParameterSpec(boolean prehash)`

  Construct an `EdDSAParameterSpec` by specifying whether the prehash mode
  is used.

  `EdDSAParameterSpec(boolean prehash,
  byte[] context)`

  Construct an `EdDSAParameterSpec` by specifying a context and whether the
  prehash mode is used.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Optional<byte[]>`

  `getContext()`

  Get the context that the signature will use.

  `boolean`

  `isPrehash()`

  Get whether the prehash mode is specified.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EdDSAParameterSpec

    public EdDSAParameterSpec(boolean prehash)

    Construct an `EdDSAParameterSpec` by specifying whether the prehash mode
    is used. No context is provided so this constructor specifies a mode
    in which the context is null. Note that this mode may be different
    from the mode in which an empty array is used as the context.

    Parameters:
    :   `prehash` - whether the prehash mode is specified.
  + ### EdDSAParameterSpec

    public EdDSAParameterSpec(boolean prehash,
    byte[] context)

    Construct an `EdDSAParameterSpec` by specifying a context and whether the
    prehash mode is used. The context may not be null, but it may be an
    empty array. The mode used when the context is an empty array may not be
    the same as the mode used when the context is absent.

    Parameters:
    :   `prehash` - whether the prehash mode is specified.
    :   `context` - the context is copied and bound to the signature.

    Throws:
    :   `NullPointerException` - if context is null.
    :   `InvalidParameterException` - if context length is greater than 255.
* ## Method Details

  + ### isPrehash

    public boolean isPrehash()

    Get whether the prehash mode is specified.

    Returns:
    :   whether the prehash mode is specified.
  + ### getContext

    public [Optional](../../util/Optional.md "class in java.util")<byte[]> getContext()

    Get the context that the signature will use.

    Returns:
    :   `Optional` contains a copy of the context or empty
        if context is null.