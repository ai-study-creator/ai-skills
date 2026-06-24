Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class KEM.Encapsulated

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.KEM.Encapsulated

Enclosing class:
:   `KEM`

---

public static final class KEM.Encapsulated
extends [Object](../../java/lang/Object.md "class in java.lang")

This class specifies the return value of the encapsulate method of
a Key Encapsulation Mechanism (KEM), which includes the shared secret
(as a `SecretKey`), the key encapsulation message,
and optional parameters.

Note: the key encapsulation message can be also referred to as ciphertext.

Since:
:   21

See Also:
:   * [`KEM.newEncapsulator(PublicKey, AlgorithmParameterSpec, SecureRandom)`](KEM.md#newEncapsulator(java.security.PublicKey,java.security.spec.AlgorithmParameterSpec,java.security.SecureRandom))
    * [`KEM.Encapsulator.encapsulate(int, int, String)`](KEM.Encapsulator.md#encapsulate(int,int,java.lang.String))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Encapsulated(SecretKey key,
  byte[] encapsulation,
  byte[] params)`

  Constructs an `Encapsulated` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `encapsulation()`

  Returns the key encapsulation message.

  `SecretKey`

  `key()`

  Returns the `SecretKey`.

  `byte[]`

  `params()`

  Returns the optional parameters in a byte array.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Encapsulated

    public Encapsulated([SecretKey](SecretKey.md "interface in javax.crypto") key,
    byte[] encapsulation,
    byte[] params)

    Constructs an `Encapsulated` object.

    Parameters:
    :   `key` - the shared secret as a key, must not be `null`.
    :   `encapsulation` - the key encapsulation message, must not
        be `null`. The contents of the array are copied
        to protect against subsequent modification.
    :   `params` - optional parameters, can be `null`.
        The contents of the array are copied to protect
        against subsequent modification.

    Throws:
    :   `NullPointerException` - if `key` or `encapsulation`
        is `null`
* ## Method Details

  + ### key

    public [SecretKey](SecretKey.md "interface in javax.crypto") key()

    Returns the `SecretKey`.

    Returns:
    :   the secret key
  + ### encapsulation

    public byte[] encapsulation()

    Returns the key encapsulation message.

    Returns:
    :   the key encapsulation message. A new copy of the byte array
        is returned.
  + ### params

    public byte[] params()

    Returns the optional parameters in a byte array.

    Returns:
    :   the optional parameters in a byte array or `null`
        if not specified. A new copy of the byte array is returned.