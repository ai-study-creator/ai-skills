Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class SecretKeyFactorySpi

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.SecretKeyFactorySpi

---

public abstract class SecretKeyFactorySpi
extends [Object](../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `SecretKeyFactory` class.
All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a secret-key factory for a particular algorithm.

A provider should document all the key specifications supported by its
secret key factory.
For example, the DES secret-key factory supplied by the "SunJCE" provider
supports `DESKeySpec` as a transparent representation of DES
keys, and that provider's secret-key factory for Triple DES keys supports
`DESedeKeySpec` as a transparent representation of Triple DES
keys.

Since:
:   1.4

See Also:
:   * [`SecretKey`](SecretKey.md "interface in javax.crypto")
    * [`DESKeySpec`](spec/DESKeySpec.md "class in javax.crypto.spec")
    * [`DESedeKeySpec`](spec/DESedeKeySpec.md "class in javax.crypto.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SecretKeyFactorySpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract SecretKey`

  `engineGenerateSecret(KeySpec keySpec)`

  Generates a `SecretKey` object from the
  provided key specification (key material).

  `protected abstract KeySpec`

  `engineGetKeySpec(SecretKey key,
  Class<?> keySpec)`

  Returns a specification (key material) of the given key
  object in the requested format.

  `protected abstract SecretKey`

  `engineTranslateKey(SecretKey key)`

  Translates a key object, whose provider may be unknown or
  potentially untrusted, into a corresponding key object of this
  secret-key factory.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SecretKeyFactorySpi

    public SecretKeyFactorySpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineGenerateSecret

    protected abstract [SecretKey](SecretKey.md "interface in javax.crypto") engineGenerateSecret([KeySpec](../../java/security/spec/KeySpec.md "interface in java.security.spec") keySpec)
    throws [InvalidKeySpecException](../../java/security/spec/InvalidKeySpecException.md "class in java.security.spec")

    Generates a `SecretKey` object from the
    provided key specification (key material).

    Parameters:
    :   `keySpec` - the specification (key material) of the secret key

    Returns:
    :   the secret key

    Throws:
    :   `InvalidKeySpecException` - if the given key specification
        is inappropriate for this secret-key factory to produce a secret key.
  + ### engineGetKeySpec

    protected abstract [KeySpec](../../java/security/spec/KeySpec.md "interface in java.security.spec") engineGetKeySpec([SecretKey](SecretKey.md "interface in javax.crypto") key,
    [Class](../../java/lang/Class.md "class in java.lang")<?> keySpec)
    throws [InvalidKeySpecException](../../java/security/spec/InvalidKeySpecException.md "class in java.security.spec")

    Returns a specification (key material) of the given key
    object in the requested format.

    Parameters:
    :   `key` - the key
    :   `keySpec` - the requested format in which the key material shall be
        returned

    Returns:
    :   the underlying key specification (key material) in the
        requested format

    Throws:
    :   `InvalidKeySpecException` - if the requested key specification is
        inappropriate for the given key (e.g., the algorithms associated with
        `key` and `keySpec` do not match, or
        `key` references a key on a cryptographic hardware device
        whereas `keySpec` is the specification of a software-based
        key), or the given key cannot be dealt with
        (e.g., the given key has an algorithm or format not supported by this
        secret-key factory).
  + ### engineTranslateKey

    protected abstract [SecretKey](SecretKey.md "interface in javax.crypto") engineTranslateKey([SecretKey](SecretKey.md "interface in javax.crypto") key)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Translates a key object, whose provider may be unknown or
    potentially untrusted, into a corresponding key object of this
    secret-key factory.

    Parameters:
    :   `key` - the key whose provider is unknown or untrusted

    Returns:
    :   the translated key

    Throws:
    :   `InvalidKeyException` - if the given key cannot be processed
        by this secret-key factory.