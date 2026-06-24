Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class KeyPair

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.KeyPair

All Implemented Interfaces:
:   `Serializable`

---

public final class KeyPair
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

This class is a simple holder for a key pair (a public key and a
private key). It does not enforce any security, and, when initialized,
should be treated like a PrivateKey.

Since:
:   1.1

See Also:
:   * [`PublicKey`](PublicKey.md "interface in java.security")
    * [`PrivateKey`](PrivateKey.md "interface in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.KeyPair)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyPair(PublicKey publicKey,
  PrivateKey privateKey)`

  Constructs a key pair from the given public key and private key.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PrivateKey`

  `getPrivate()`

  Returns a reference to the private key component of this key pair.

  `PublicKey`

  `getPublic()`

  Returns a reference to the public key component of this key pair.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### KeyPair

    public KeyPair([PublicKey](PublicKey.md "interface in java.security") publicKey,
    [PrivateKey](PrivateKey.md "interface in java.security") privateKey)

    Constructs a key pair from the given public key and private key.

    Note that this constructor only stores references to the public
    and private key components in the generated key pair. This is safe,
    because `Key` objects are immutable.

    Parameters:
    :   `publicKey` - the public key.
    :   `privateKey` - the private key.
* ## Method Details

  + ### getPublic

    public [PublicKey](PublicKey.md "interface in java.security") getPublic()

    Returns a reference to the public key component of this key pair.

    Returns:
    :   a reference to the public key.
  + ### getPrivate

    public [PrivateKey](PrivateKey.md "interface in java.security") getPrivate()

    Returns a reference to the private key component of this key pair.

    Returns:
    :   a reference to the private key.