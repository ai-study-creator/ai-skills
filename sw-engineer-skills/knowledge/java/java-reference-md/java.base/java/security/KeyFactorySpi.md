Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyFactorySpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyFactorySpi

---

public abstract class KeyFactorySpi
extends [Object](../lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `KeyFactory` class.
All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a key factory for a particular algorithm.

Key factories are used to convert *keys* (opaque
cryptographic keys of type `Key`) into *key specifications*
(transparent representations of the underlying key material), and vice
versa.

Key factories are bidirectional. That is, they allow you to build an
opaque key object from a given key specification (key material), or to
retrieve the underlying key material of a key object in a suitable format.

Multiple compatible key specifications may exist for the same key.
For example, a DSA public key may be specified using
`DSAPublicKeySpec` or
`X509EncodedKeySpec`. A key factory can be used to translate
between compatible key specifications.

A provider should document all the key specifications supported by its
key factory.

Since:
:   1.2

See Also:
:   * [`KeyFactory`](KeyFactory.md "class in java.security")
    * [`Key`](Key.md "interface in java.security")
    * [`PublicKey`](PublicKey.md "interface in java.security")
    * [`PrivateKey`](PrivateKey.md "interface in java.security")
    * [`KeySpec`](spec/KeySpec.md "interface in java.security.spec")
    * [`DSAPublicKeySpec`](spec/DSAPublicKeySpec.md "class in java.security.spec")
    * [`X509EncodedKeySpec`](spec/X509EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyFactorySpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract PrivateKey`

  `engineGeneratePrivate(KeySpec keySpec)`

  Generates a private key object from the provided key
  specification (key material).

  `protected abstract PublicKey`

  `engineGeneratePublic(KeySpec keySpec)`

  Generates a public key object from the provided key
  specification (key material).

  `protected abstract <T extends KeySpec>  
  T`

  `engineGetKeySpec(Key key,
  Class<T> keySpec)`

  Returns a specification (key material) of the given key
  object.

  `protected abstract Key`

  `engineTranslateKey(Key key)`

  Translates a key object, whose provider may be unknown or
  potentially untrusted, into a corresponding key object of this key
  factory.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyFactorySpi

    public KeyFactorySpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineGeneratePublic

    protected abstract [PublicKey](PublicKey.md "interface in java.security") engineGeneratePublic([KeySpec](spec/KeySpec.md "interface in java.security.spec") keySpec)
    throws [InvalidKeySpecException](spec/InvalidKeySpecException.md "class in java.security.spec")

    Generates a public key object from the provided key
    specification (key material).

    Parameters:
    :   `keySpec` - the specification (key material) of the public key.

    Returns:
    :   the public key.

    Throws:
    :   `InvalidKeySpecException` - if the given key specification
        is inappropriate for this key factory to produce a public key.
  + ### engineGeneratePrivate

    protected abstract [PrivateKey](PrivateKey.md "interface in java.security") engineGeneratePrivate([KeySpec](spec/KeySpec.md "interface in java.security.spec") keySpec)
    throws [InvalidKeySpecException](spec/InvalidKeySpecException.md "class in java.security.spec")

    Generates a private key object from the provided key
    specification (key material).

    Parameters:
    :   `keySpec` - the specification (key material) of the private key.

    Returns:
    :   the private key.

    Throws:
    :   `InvalidKeySpecException` - if the given key specification
        is inappropriate for this key factory to produce a private key.
  + ### engineGetKeySpec

    protected abstract <T extends [KeySpec](spec/KeySpec.md "interface in java.security.spec")> T engineGetKeySpec([Key](Key.md "interface in java.security") key,
    [Class](../lang/Class.md "class in java.lang")<T> keySpec)
    throws [InvalidKeySpecException](spec/InvalidKeySpecException.md "class in java.security.spec")

    Returns a specification (key material) of the given key
    object.
    `keySpec` identifies the specification class in which
    the key material should be returned. It could, for example, be
    `DSAPublicKeySpec.class`, to indicate that the
    key material should be returned in an instance of the
    `DSAPublicKeySpec` class.

    Type Parameters:
    :   `T` - the type of the key specification to be returned

    Parameters:
    :   `key` - the key.
    :   `keySpec` - the specification class in which
        the key material should be returned.

    Returns:
    :   the underlying key specification (key material) in an instance
        of the requested specification class.

    Throws:
    :   `InvalidKeySpecException` - if the requested key specification is
        inappropriate for the given key, or the given key cannot be dealt with
        (e.g., the given key has an unrecognized format).
  + ### engineTranslateKey

    protected abstract [Key](Key.md "interface in java.security") engineTranslateKey([Key](Key.md "interface in java.security") key)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Translates a key object, whose provider may be unknown or
    potentially untrusted, into a corresponding key object of this key
    factory.

    Parameters:
    :   `key` - the key whose provider is unknown or untrusted.

    Returns:
    :   the translated key.

    Throws:
    :   `InvalidKeyException` - if the given key cannot be processed
        by this key factory.