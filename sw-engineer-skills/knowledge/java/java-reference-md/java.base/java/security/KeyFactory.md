Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyFactory

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyFactory

---

public class KeyFactory
extends [Object](../lang/Object.md "class in java.lang")

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

The following is an example of how to use a key factory in order to
instantiate a DSA public key from its encoding.
Assume Alice has received a digital signature from Bob.
Bob also sent her his public key (in encoded format) to verify
his signature. Alice then performs the following actions:

```
 X509EncodedKeySpec bobPubKeySpec = new X509EncodedKeySpec(bobEncodedPubKey);
 KeyFactory keyFactory = KeyFactory.getInstance("DSA");
 PublicKey bobPubKey = keyFactory.generatePublic(bobPubKeySpec);
 Signature sig = Signature.getInstance("DSA");
 sig.initVerify(bobPubKey);
 sig.update(data);
 sig.verify(signature);
```

Every implementation of the Java platform is required to support the
following standard `KeyFactory` algorithms:

* `DiffieHellman`
* `DSA`
* `RSA`

These algorithms are described in the [KeyFactory section](../../../../specs/security/standard-names.md#keyfactory-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.2

See Also:
:   * [`Key`](Key.md "interface in java.security")
    * [`PublicKey`](PublicKey.md "interface in java.security")
    * [`PrivateKey`](PrivateKey.md "interface in java.security")
    * [`KeySpec`](spec/KeySpec.md "interface in java.security.spec")
    * [`DSAPublicKeySpec`](spec/DSAPublicKeySpec.md "class in java.security.spec")
    * [`X509EncodedKeySpec`](spec/X509EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `KeyFactory(KeyFactorySpi keyFacSpi,
  Provider provider,
  String algorithm)`

  Creates a `KeyFactory` object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final PrivateKey`

  `generatePrivate(KeySpec keySpec)`

  Generates a private key object from the provided key specification
  (key material).

  `final PublicKey`

  `generatePublic(KeySpec keySpec)`

  Generates a public key object from the provided key specification
  (key material).

  `final String`

  `getAlgorithm()`

  Gets the name of the algorithm
  associated with this `KeyFactory`.

  `static KeyFactory`

  `getInstance(String algorithm)`

  Returns a `KeyFactory` object that converts
  public/private keys of the specified algorithm.

  `static KeyFactory`

  `getInstance(String algorithm,
  String provider)`

  Returns a `KeyFactory` object that converts
  public/private keys of the specified algorithm.

  `static KeyFactory`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `KeyFactory` object that converts
  public/private keys of the specified algorithm.

  `final <T extends KeySpec>  
  T`

  `getKeySpec(Key key,
  Class<T> keySpec)`

  Returns a specification (key material) of the given key object.

  `final Provider`

  `getProvider()`

  Returns the provider of this key factory object.

  `final Key`

  `translateKey(Key key)`

  Translates a key object, whose provider may be unknown or potentially
  untrusted, into a corresponding key object of this key factory.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyFactory

    protected KeyFactory([KeyFactorySpi](KeyFactorySpi.md "class in java.security") keyFacSpi,
    [Provider](Provider.md "class in java.security") provider,
    [String](../lang/String.md "class in java.lang") algorithm)

    Creates a `KeyFactory` object.

    Parameters:
    :   `keyFacSpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the name of the algorithm
        to associate with this `KeyFactory`
* ## Method Details

  + ### getInstance

    public static [KeyFactory](KeyFactory.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a `KeyFactory` object that converts
    public/private keys of the specified algorithm.

    This method traverses the list of registered security providers,
    starting with the most preferred provider.
    A new `KeyFactory` object encapsulating the
    `KeyFactorySpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the requested key algorithm.
        See the KeyFactory section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#keyfactory-algorithms)
        for information about standard algorithm names.

    Returns:
    :   the new `KeyFactory` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `KeyFactorySpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [KeyFactory](KeyFactory.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [String](../lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](NoSuchProviderException.md "class in java.security")

    Returns a `KeyFactory` object that converts
    public/private keys of the specified algorithm.

    A new `KeyFactory` object encapsulating the
    `KeyFactorySpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the requested key algorithm.
        See the KeyFactory section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#keyfactory-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `KeyFactory` object

    Throws:
    :   `IllegalArgumentException` - if the provider name is `null`
        or empty
    :   `NoSuchAlgorithmException` - if a `KeyFactorySpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [KeyFactory](KeyFactory.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [Provider](Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a `KeyFactory` object that converts
    public/private keys of the specified algorithm.

    A new `KeyFactory` object encapsulating the
    `KeyFactorySpi` implementation from the specified provider
    is returned. Note that the specified provider does not
    have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the name of the requested key algorithm.
        See the KeyFactory section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#keyfactory-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   the new `KeyFactory` object

    Throws:
    :   `IllegalArgumentException` - if the specified provider is
        `null`
    :   `NoSuchAlgorithmException` - if a `KeyFactorySpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    Since:
    :   1.4

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](Provider.md "class in java.security") getProvider()

    Returns the provider of this key factory object.

    Returns:
    :   the provider of this key factory object
  + ### getAlgorithm

    public final [String](../lang/String.md "class in java.lang") getAlgorithm()

    Gets the name of the algorithm
    associated with this `KeyFactory`.

    Returns:
    :   the name of the algorithm associated with this
        `KeyFactory`
  + ### generatePublic

    public final [PublicKey](PublicKey.md "interface in java.security") generatePublic([KeySpec](spec/KeySpec.md "interface in java.security.spec") keySpec)
    throws [InvalidKeySpecException](spec/InvalidKeySpecException.md "class in java.security.spec")

    Generates a public key object from the provided key specification
    (key material).

    Parameters:
    :   `keySpec` - the specification (key material) of the public key.

    Returns:
    :   the public key.

    Throws:
    :   `InvalidKeySpecException` - if the given key specification
        is inappropriate for this key factory to produce a public key.
  + ### generatePrivate

    public final [PrivateKey](PrivateKey.md "interface in java.security") generatePrivate([KeySpec](spec/KeySpec.md "interface in java.security.spec") keySpec)
    throws [InvalidKeySpecException](spec/InvalidKeySpecException.md "class in java.security.spec")

    Generates a private key object from the provided key specification
    (key material).

    Parameters:
    :   `keySpec` - the specification (key material) of the private key.

    Returns:
    :   the private key.

    Throws:
    :   `InvalidKeySpecException` - if the given key specification
        is inappropriate for this key factory to produce a private key.
  + ### getKeySpec

    public final <T extends [KeySpec](spec/KeySpec.md "interface in java.security.spec")> T getKeySpec([Key](Key.md "interface in java.security") key,
    [Class](../lang/Class.md "class in java.lang")<T> keySpec)
    throws [InvalidKeySpecException](spec/InvalidKeySpecException.md "class in java.security.spec")

    Returns a specification (key material) of the given key object.
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
        inappropriate for the given key, or the given key cannot be processed
        (e.g., the given key has an unrecognized algorithm or format).
  + ### translateKey

    public final [Key](Key.md "interface in java.security") translateKey([Key](Key.md "interface in java.security") key)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Translates a key object, whose provider may be unknown or potentially
    untrusted, into a corresponding key object of this key factory.

    Parameters:
    :   `key` - the key whose provider is unknown or untrusted.

    Returns:
    :   the translated key.

    Throws:
    :   `InvalidKeyException` - if the given key cannot be processed
        by this key factory.