Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class ChaCha20ParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.ChaCha20ParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public final class ChaCha20ParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies the parameters used with the
[*ChaCha20*](https://tools.ietf.org/html/rfc7539)
algorithm.

The parameters consist of a 12-byte nonce and an initial
counter value expressed as a 32-bit integer.

This class can be used to initialize a `Cipher` object that
implements the *ChaCha20* algorithm.

Since:
:   11

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ChaCha20ParameterSpec(byte[] nonce,
  int counter)`

  Constructs a parameter set for ChaCha20 from the given nonce
  and counter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getCounter()`

  Returns the configured counter value.

  `byte[]`

  `getNonce()`

  Returns the nonce value.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ChaCha20ParameterSpec

    public ChaCha20ParameterSpec(byte[] nonce,
    int counter)

    Constructs a parameter set for ChaCha20 from the given nonce
    and counter.

    Parameters:
    :   `nonce` - a 12-byte nonce value
    :   `counter` - the initial counter value

    Throws:
    :   `NullPointerException` - if `nonce` is `null`
    :   `IllegalArgumentException` - if `nonce` is not 12 bytes
        in length
* ## Method Details

  + ### getNonce

    public byte[] getNonce()

    Returns the nonce value.

    Returns:
    :   the nonce value. This method returns a new array each time
        this method is called.
  + ### getCounter

    public int getCounter()

    Returns the configured counter value.

    Returns:
    :   the counter value