Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class SecureRandomSpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.SecureRandomSpi

All Implemented Interfaces:
:   `Serializable`

---

public abstract class SecureRandomSpi
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

This class defines the *Service Provider Interface* (**SPI**)
for the [`SecureRandom`](SecureRandom.md "class in java.security") class.

All the abstract methods in this class must be implemented by each
service provider who wishes to supply the implementation
of a cryptographically strong pseudo-random number generator.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.security.SecureRandomSpi)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `SecureRandomSpi()`

  Constructor without a parameter.

  `protected`

  `SecureRandomSpi(SecureRandomParameters params)`

  Constructor with a parameter.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract byte[]`

  `engineGenerateSeed(int numBytes)`

  Returns the given number of seed bytes.

  `protected SecureRandomParameters`

  `engineGetParameters()`

  Returns the effective [`SecureRandomParameters`](SecureRandomParameters.md "interface in java.security") for this
  `SecureRandom` instance.

  `protected abstract void`

  `engineNextBytes(byte[] bytes)`

  Generates a user-specified number of random bytes.

  `protected void`

  `engineNextBytes(byte[] bytes,
  SecureRandomParameters params)`

  Generates a user-specified number of random bytes with
  additional parameters.

  `protected void`

  `engineReseed(SecureRandomParameters params)`

  Reseeds this random object with entropy input read from its
  entropy source with additional parameters.

  `protected abstract void`

  `engineSetSeed(byte[] seed)`

  Reseeds this random object with the given seed.

  `String`

  `toString()`

  Returns a Human-readable string representation of this
  `SecureRandom`.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SecureRandomSpi

    public SecureRandomSpi()

    Constructor without a parameter.
  + ### SecureRandomSpi

    protected SecureRandomSpi([SecureRandomParameters](SecureRandomParameters.md "interface in java.security") params)

    Constructor with a parameter.

    Parameters:
    :   `params` - the [`SecureRandomParameters`](SecureRandomParameters.md "interface in java.security") object.
        This argument can be `null`.

    Throws:
    :   `IllegalArgumentException` - if `params` is
        unrecognizable or unsupported by this `SecureRandom`

    Since:
    :   9
* ## Method Details

  + ### engineSetSeed

    protected abstract void engineSetSeed(byte[] seed)

    Reseeds this random object with the given seed. The seed supplements,
    rather than replaces, the existing seed. Thus, repeated calls
    are guaranteed never to reduce randomness.

    Parameters:
    :   `seed` - the seed.
  + ### engineNextBytes

    protected abstract void engineNextBytes(byte[] bytes)

    Generates a user-specified number of random bytes.

    Some random number generators can only generate a limited amount
    of random bytes per invocation. If the size of `bytes`
    is greater than this limit, the implementation should invoke
    its generation process multiple times to completely fill the
    buffer before returning from this method.

    Parameters:
    :   `bytes` - the array to be filled in with random bytes.
  + ### engineNextBytes

    protected void engineNextBytes(byte[] bytes,
    [SecureRandomParameters](SecureRandomParameters.md "interface in java.security") params)

    Generates a user-specified number of random bytes with
    additional parameters.

    Some random number generators can only generate a limited amount
    of random bytes per invocation. If the size of `bytes`
    is greater than this limit, the implementation should invoke
    its generation process multiple times to completely fill the
    buffer before returning from this method.

    Parameters:
    :   `bytes` - the array to be filled in with random bytes
    :   `params` - additional parameters

    Throws:
    :   `UnsupportedOperationException` - if the implementation
        has not overridden this method
    :   `IllegalArgumentException` - if `params` is `null`,
        illegal or unsupported by this `SecureRandom`

    Since:
    :   9
  + ### engineGenerateSeed

    protected abstract byte[] engineGenerateSeed(int numBytes)

    Returns the given number of seed bytes. This call may be used to
    seed other random number generators.

    Parameters:
    :   `numBytes` - the number of seed bytes to generate.

    Returns:
    :   the seed bytes.
  + ### engineReseed

    protected void engineReseed([SecureRandomParameters](SecureRandomParameters.md "interface in java.security") params)

    Reseeds this random object with entropy input read from its
    entropy source with additional parameters.

    If this method is called by [`SecureRandom.reseed()`](SecureRandom.md#reseed()),
    `params` will be `null`.

    Do not override this method if the implementation does not
    support reseeding.

    Parameters:
    :   `params` - extra parameters, can be `null`.

    Throws:
    :   `UnsupportedOperationException` - if the implementation
        has not overridden this method
    :   `IllegalArgumentException` - if `params` is
        illegal or unsupported by this `SecureRandom`

    Since:
    :   9
  + ### engineGetParameters

    protected [SecureRandomParameters](SecureRandomParameters.md "interface in java.security") engineGetParameters()

    Returns the effective [`SecureRandomParameters`](SecureRandomParameters.md "interface in java.security") for this
    `SecureRandom` instance.

    Returns:
    :   the effective [`SecureRandomParameters`](SecureRandomParameters.md "interface in java.security") parameters,
        or `null` if no parameters were used.

    Since:
    :   9
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a Human-readable string representation of this
    `SecureRandom`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation