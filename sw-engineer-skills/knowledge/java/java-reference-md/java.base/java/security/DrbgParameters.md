Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class DrbgParameters

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.DrbgParameters

---

public class DrbgParameters
extends [Object](../lang/Object.md "class in java.lang")

This class specifies the parameters used by a DRBG (Deterministic
Random Bit Generator).

According to
[NIST Special Publication 800-90A Revision 1, Recommendation for Random
Number Generation Using Deterministic Random Bit Generators](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-90Ar1.pdf) (800-90Ar1),
> A DRBG is based on a DRBG mechanism as specified in this Recommendation
> and includes a source of randomness. A DRBG mechanism uses an algorithm
> (i.e., a DRBG algorithm) that produces a sequence of bits from an initial
> value that is determined by a seed that is determined from the output of
> the randomness source."

The 800-90Ar1 specification allows for a variety of DRBG implementation
choices, such as:

* an entropy source,* a DRBG mechanism (for example, Hash\_DRBG),* a DRBG algorithm (for example, SHA-256 for Hash\_DRBG and AES-256
      for CTR\_DRBG. Please note that it is not the algorithm used in
      [`SecureRandom.getInstance(java.lang.String)`](SecureRandom.md#getInstance(java.lang.String)), which we will call a
      *SecureRandom algorithm* below),* optional features, including prediction resistance
        and reseeding supports,* highest security strength.

These choices are set in each implementation and are not directly
managed by the `SecureRandom` API. Check your DRBG provider's
documentation to find an appropriate implementation for the situation.

On the other hand, the 800-90Ar1 specification does have some configurable
options, such as:

* required security strength,* if prediction resistance is required,* personalization string and additional input.

A DRBG instance can be instantiated with parameters from an
[`DrbgParameters.Instantiation`](DrbgParameters.Instantiation.md "class in java.security") object and other information
(for example, the nonce, which is not managed by this API). This maps
to the `Instantiate_function` defined in NIST SP 800-90Ar1.

A DRBG instance can be reseeded with parameters from a
[`DrbgParameters.Reseed`](DrbgParameters.Reseed.md "class in java.security") object. This maps to the
`Reseed_function` defined in NIST SP 800-90Ar1. Calling
[`SecureRandom.reseed()`](SecureRandom.md#reseed()) is equivalent to calling
[`SecureRandom.reseed(SecureRandomParameters)`](SecureRandom.md#reseed(java.security.SecureRandomParameters)) with the effective
instantiated prediction resistance flag (as returned by
[`SecureRandom.getParameters()`](SecureRandom.md#getParameters())) with no additional input.

A DRBG instance generates data with additional parameters from a
[`DrbgParameters.NextBytes`](DrbgParameters.NextBytes.md "class in java.security") object. This maps to the
`Generate_function` defined in NIST SP 800-90Ar1. Calling
[`SecureRandom.nextBytes(byte[])`](SecureRandom.md#nextBytes(byte%5B%5D)) is equivalent to calling
[`SecureRandom.nextBytes(byte[], SecureRandomParameters)`](SecureRandom.md#nextBytes(byte%5B%5D,java.security.SecureRandomParameters))
with the effective instantiated strength and prediction resistance flag
(as returned by [`SecureRandom.getParameters()`](SecureRandom.md#getParameters())) with no
additional input.

A DRBG should be implemented as a subclass of [`SecureRandomSpi`](SecureRandomSpi.md "class in java.security").
It is recommended that the implementation contain the 1-arg
[constructor](SecureRandomSpi.md#%3Cinit%3E(java.security.SecureRandomParameters))
that takes a `DrbgParameters.Instantiation` argument. If implemented
this way, this implementation can be chosen by any
`SecureRandom.getInstance()` method. If it is chosen by a
`SecureRandom.getInstance()` with a [`SecureRandomParameters`](SecureRandomParameters.md "interface in java.security")
parameter, the parameter is passed into this constructor. If it is chosen
by a `SecureRandom.getInstance()` without a
`SecureRandomParameters` parameter, the constructor is called with
a `null` argument and the implementation should choose its own
parameters. Its [`SecureRandom.getParameters()`](SecureRandom.md#getParameters()) must always return a
non-null effective `DrbgParameters.Instantiation` object that reflects
how the DRBG is actually instantiated. A caller can use this information
to determine whether a `SecureRandom` object is a DRBG and what
features it supports. Please note that the returned value does not
necessarily equal to the `DrbgParameters.Instantiation` object passed
into the `SecureRandom.getInstance()` call. For example,
the requested capability can be [`DrbgParameters.Capability.NONE`](DrbgParameters.Capability.md#NONE)
but the effective value can be [`DrbgParameters.Capability.RESEED_ONLY`](DrbgParameters.Capability.md#RESEED_ONLY)
if the implementation supports reseeding. The implementation must implement
the [`SecureRandomSpi.engineNextBytes(byte[], SecureRandomParameters)`](SecureRandomSpi.md#engineNextBytes(byte%5B%5D,java.security.SecureRandomParameters))
method which takes a `DrbgParameters.NextBytes` parameter. Unless
the result of [`SecureRandom.getParameters()`](SecureRandom.md#getParameters()) has its
[capability](DrbgParameters.Instantiation.md#getCapability()) being
[`NONE`](DrbgParameters.Capability.md#NONE), it must implement
[`SecureRandomSpi.engineReseed(SecureRandomParameters)`](SecureRandomSpi.md#engineReseed(java.security.SecureRandomParameters)) which takes
a `DrbgParameters.Reseed` parameter.

On the other hand, if a DRBG implementation does not contain a constructor
that has an `DrbgParameters.Instantiation` argument (not recommended),
it can only be chosen by a `SecureRandom.getInstance()` without
a `SecureRandomParameters` parameter, but will not be chosen if
a `getInstance` method with a `SecureRandomParameters` parameter
is called. If implemented this way, its [`SecureRandom.getParameters()`](SecureRandom.md#getParameters())
must return `null`, and it does not need to implement either
[`SecureRandomSpi.engineNextBytes(byte[], SecureRandomParameters)`](SecureRandomSpi.md#engineNextBytes(byte%5B%5D,java.security.SecureRandomParameters))
or [`SecureRandomSpi.engineReseed(SecureRandomParameters)`](SecureRandomSpi.md#engineReseed(java.security.SecureRandomParameters)).

A DRBG might reseed itself automatically if the seed period is bigger
than the maximum seed life defined by the DRBG mechanism.

A DRBG implementation should support serialization and deserialization
by retaining the configuration and effective parameters, but the internal
state must not be serialized and the deserialized object must be
reinstantiated.

Examples:
> ```
>  SecureRandom drbg;
>  byte[] buffer = new byte[32];
>
>  // Any DRBG is OK
>  drbg = SecureRandom.getInstance("DRBG");
>  drbg.nextBytes(buffer);
>
>  SecureRandomParameters params = drbg.getParameters();
>  if (params instanceof DrbgParameters.Instantiation) {
>      DrbgParameters.Instantiation ins = (DrbgParameters.Instantiation) params;
>      if (ins.getCapability().supportsReseeding()) {
>          drbg.reseed();
>      }
>  }
>
>  // The following call requests a weak DRBG instance. It is only
>  // guaranteed to support 112 bits of security strength.
>  drbg = SecureRandom.getInstance("DRBG",
>          DrbgParameters.instantiation(112, NONE, null));
>
>  // Both the next two calls will likely fail, because drbg could be
>  // instantiated with a smaller strength with no prediction resistance
>  // support.
>  drbg.nextBytes(buffer,
>          DrbgParameters.nextBytes(256, false, "more".getBytes()));
>  drbg.nextBytes(buffer,
>          DrbgParameters.nextBytes(112, true, "more".getBytes()));
>
>  // The following call requests a strong DRBG instance, with a
>  // personalization string. If it successfully returns an instance,
>  // that instance is guaranteed to support 256 bits of security strength
>  // with prediction resistance available.
>  drbg = SecureRandom.getInstance("DRBG", DrbgParameters.instantiation(
>          256, PR_AND_RESEED, "hello".getBytes()));
>
>  // Prediction resistance is not requested in this single call,
>  // but an additional input is used.
>  drbg.nextBytes(buffer,
>          DrbgParameters.nextBytes(-1, false, "more".getBytes()));
>
>  // Same for this call.
>  drbg.reseed(DrbgParameters.reseed(false, "extra".getBytes()));
> ```

Since:
:   9

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `DrbgParameters.Capability`

  The reseedable and prediction resistance capabilities of a DRBG.

  `static final class`

  `DrbgParameters.Instantiation`

  DRBG parameters for instantiation.

  `static final class`

  `DrbgParameters.NextBytes`

  DRBG parameters for random bits generation.

  `static final class`

  `DrbgParameters.Reseed`

  DRBG parameters for reseed.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static DrbgParameters.Instantiation`

  `instantiation(int strength,
  DrbgParameters.Capability capability,
  byte[] personalizationString)`

  Generates a [`DrbgParameters.Instantiation`](DrbgParameters.Instantiation.md "class in java.security") object.

  `static DrbgParameters.NextBytes`

  `nextBytes(int strength,
  boolean predictionResistance,
  byte[] additionalInput)`

  Generates a [`DrbgParameters.NextBytes`](DrbgParameters.NextBytes.md "class in java.security") object.

  `static DrbgParameters.Reseed`

  `reseed(boolean predictionResistance,
  byte[] additionalInput)`

  Generates a [`DrbgParameters.Reseed`](DrbgParameters.Reseed.md "class in java.security") object.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### instantiation

    public static [DrbgParameters.Instantiation](DrbgParameters.Instantiation.md "class in java.security") instantiation(int strength,
    [DrbgParameters.Capability](DrbgParameters.Capability.md "enum class in java.security") capability,
    byte[] personalizationString)

    Generates a [`DrbgParameters.Instantiation`](DrbgParameters.Instantiation.md "class in java.security") object.

    Parameters:
    :   `strength` - security strength in bits, -1 for default strength
        if used in `getInstance`.
    :   `capability` - capability
    :   `personalizationString` - personalization string as a byte array,
        can be `null`. The content of this
        byte array will be copied.

    Returns:
    :   a new `Instantiation` object

    Throws:
    :   `NullPointerException` - if `capability` is `null`
    :   `IllegalArgumentException` - if `strength` is less than -1
  + ### nextBytes

    public static [DrbgParameters.NextBytes](DrbgParameters.NextBytes.md "class in java.security") nextBytes(int strength,
    boolean predictionResistance,
    byte[] additionalInput)

    Generates a [`DrbgParameters.NextBytes`](DrbgParameters.NextBytes.md "class in java.security") object.

    Parameters:
    :   `strength` - requested security strength in bits. If set to -1, the
        effective strength will be used.
    :   `predictionResistance` - prediction resistance requested
    :   `additionalInput` - additional input, can be `null`.
        The content of this byte array will be copied.

    Returns:
    :   a new `NextBytes` object

    Throws:
    :   `IllegalArgumentException` - if `strength` is less than -1
  + ### reseed

    public static [DrbgParameters.Reseed](DrbgParameters.Reseed.md "class in java.security") reseed(boolean predictionResistance,
    byte[] additionalInput)

    Generates a [`DrbgParameters.Reseed`](DrbgParameters.Reseed.md "class in java.security") object.

    Parameters:
    :   `predictionResistance` - prediction resistance requested
    :   `additionalInput` - additional input, can be `null`.
        The content of this byte array will be copied.

    Returns:
    :   a new `Reseed` object