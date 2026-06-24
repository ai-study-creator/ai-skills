Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class Mac

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.Mac

All Implemented Interfaces:
:   `Cloneable`

---

public class Mac
extends [Object](../../java/lang/Object.md "class in java.lang")
implements [Cloneable](../../java/lang/Cloneable.md "interface in java.lang")

This class provides the functionality of a "Message Authentication Code"
(MAC) algorithm.

A MAC provides a way to check
the integrity of information transmitted over or stored in an unreliable
medium, based on a secret key. Typically, message
authentication codes are used between two parties that share a secret
key in order to validate information transmitted between these
parties.

A MAC mechanism that is based on cryptographic hash functions is
referred to as HMAC. HMAC can be used with any cryptographic hash function,
e.g., SHA256 or SHA384, in combination with a secret shared key. HMAC is
specified in RFC 2104.

Every implementation of the Java platform is required to support
the following standard `Mac` algorithms:

* `HmacSHA1`
* `HmacSHA256`

These algorithms are described in the
[Mac section](../../../../specs/security/standard-names.md#mac-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Mac(MacSpi macSpi,
  Provider provider,
  String algorithm)`

  Creates a MAC object.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Object`

  `clone()`

  Returns a clone if the provider implementation is cloneable.

  `final byte[]`

  `doFinal()`

  Finishes the MAC operation.

  `final byte[]`

  `doFinal(byte[] input)`

  Processes the given array of bytes and finishes the MAC operation.

  `final void`

  `doFinal(byte[] output,
  int outOffset)`

  Finishes the MAC operation.

  `final String`

  `getAlgorithm()`

  Returns the algorithm name of this `Mac` object.

  `static final Mac`

  `getInstance(String algorithm)`

  Returns a `Mac` object that implements the
  specified MAC algorithm.

  `static final Mac`

  `getInstance(String algorithm,
  String provider)`

  Returns a `Mac` object that implements the
  specified MAC algorithm.

  `static final Mac`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `Mac` object that implements the
  specified MAC algorithm.

  `final int`

  `getMacLength()`

  Returns the length of the MAC in bytes.

  `final Provider`

  `getProvider()`

  Returns the provider of this `Mac` object.

  `final void`

  `init(Key key)`

  Initializes this `Mac` object with the given key.

  `final void`

  `init(Key key,
  AlgorithmParameterSpec params)`

  Initializes this `Mac` object with the given key and
  algorithm parameters.

  `final void`

  `reset()`

  Resets this `Mac` object.

  `final void`

  `update(byte input)`

  Processes the given byte.

  `final void`

  `update(byte[] input)`

  Processes the given array of bytes.

  `final void`

  `update(byte[] input,
  int offset,
  int len)`

  Processes the first `len` bytes in `input`,
  starting at `offset` inclusive.

  `final void`

  `update(ByteBuffer input)`

  Processes `input.remaining()` bytes in the ByteBuffer
  `input`, starting at `input.position()`.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Mac

    protected Mac([MacSpi](MacSpi.md "class in javax.crypto") macSpi,
    [Provider](../../java/security/Provider.md "class in java.security") provider,
    [String](../../java/lang/String.md "class in java.lang") algorithm)

    Creates a MAC object.

    Parameters:
    :   `macSpi` - the delegate
    :   `provider` - the provider
    :   `algorithm` - the algorithm
* ## Method Details

  + ### getAlgorithm

    public final [String](../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm name of this `Mac` object.

    This is the same name that was specified in one of the
    `getInstance` calls that created this
    `Mac` object.

    Returns:
    :   the algorithm name of this `Mac` object.
  + ### getInstance

    public static final [Mac](Mac.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `Mac` object that implements the
    specified MAC algorithm.

    This method traverses the list of registered security providers,
    starting with the most preferred provider.
    A new `Mac` object encapsulating the
    `MacSpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested MAC algorithm.
        See the Mac section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#mac-algorithms)
        for information about standard algorithm names.

    Returns:
    :   the new `Mac` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `MacSpi` implementation for the specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [Mac](Mac.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm,
    [String](../../java/lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../java/security/NoSuchProviderException.md "class in java.security")

    Returns a `Mac` object that implements the
    specified MAC algorithm.

    A new `Mac` object encapsulating the
    `MacSpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../../java/security/Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the requested MAC algorithm.
        See the Mac section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#mac-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `Mac` object

    Throws:
    :   `IllegalArgumentException` - if the `provider`
        is `null` or empty
    :   `NoSuchAlgorithmException` - if a `MacSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getInstance

    public static final [Mac](Mac.md "class in javax.crypto") getInstance([String](../../java/lang/String.md "class in java.lang") algorithm,
    [Provider](../../java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Returns a `Mac` object that implements the
    specified MAC algorithm.

    A new `Mac` object encapsulating the
    `MacSpi` implementation from the specified provider
    is returned. Note that the specified provider
    does not have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the standard name of the requested MAC algorithm.
        See the Mac section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#mac-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   the new `Mac` object

    Throws:
    :   `IllegalArgumentException` - if the `provider` is
        `null`
    :   `NoSuchAlgorithmException` - if a `MacSpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](../../java/security/Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../../java/security/Provider.md "class in java.security") getProvider()

    Returns the provider of this `Mac` object.

    Returns:
    :   the provider of this `Mac` object.
  + ### getMacLength

    public final int getMacLength()

    Returns the length of the MAC in bytes.

    Returns:
    :   the MAC length in bytes.
  + ### init

    public final void init([Key](../../java/security/Key.md "interface in java.security") key)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Initializes this `Mac` object with the given key.

    Parameters:
    :   `key` - the key.

    Throws:
    :   `InvalidKeyException` - if the given key is inappropriate for
        initializing this MAC.
  + ### init

    public final void init([Key](../../java/security/Key.md "interface in java.security") key,
    [AlgorithmParameterSpec](../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") params)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this `Mac` object with the given key and
    algorithm parameters.

    Parameters:
    :   `key` - the key.
    :   `params` - the algorithm parameters.

    Throws:
    :   `InvalidKeyException` - if the given key is inappropriate for
        initializing this MAC.
    :   `InvalidAlgorithmParameterException` - if the given algorithm
        parameters are inappropriate for this MAC.
  + ### update

    public final void update(byte input)
    throws [IllegalStateException](../../java/lang/IllegalStateException.md "class in java.lang")

    Processes the given byte.

    Parameters:
    :   `input` - the input byte to be processed.

    Throws:
    :   `IllegalStateException` - if this `Mac` has not been
        initialized.
  + ### update

    public final void update(byte[] input)
    throws [IllegalStateException](../../java/lang/IllegalStateException.md "class in java.lang")

    Processes the given array of bytes.

    Parameters:
    :   `input` - the array of bytes to be processed.

    Throws:
    :   `IllegalStateException` - if this `Mac` has not been
        initialized.
  + ### update

    public final void update(byte[] input,
    int offset,
    int len)
    throws [IllegalStateException](../../java/lang/IllegalStateException.md "class in java.lang")

    Processes the first `len` bytes in `input`,
    starting at `offset` inclusive.

    Parameters:
    :   `input` - the input buffer.
    :   `offset` - the offset in `input` where the input starts.
    :   `len` - the number of bytes to process.

    Throws:
    :   `IllegalStateException` - if this `Mac` has not been
        initialized.
  + ### update

    public final void update([ByteBuffer](../../java/nio/ByteBuffer.md "class in java.nio") input)

    Processes `input.remaining()` bytes in the ByteBuffer
    `input`, starting at `input.position()`.
    Upon return, the buffer's position will be equal to its limit;
    its limit will not have changed.

    Parameters:
    :   `input` - the ByteBuffer

    Throws:
    :   `IllegalStateException` - if this `Mac` has not been
        initialized.
    :   `IllegalArgumentException` - if `input` is null

    Since:
    :   1.5
  + ### doFinal

    public final byte[] doFinal()
    throws [IllegalStateException](../../java/lang/IllegalStateException.md "class in java.lang")

    Finishes the MAC operation.

    A call to this method resets this `Mac` object to the
    state it was in when previously initialized via a call to
    `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.
    That is, the object is reset and available to generate another MAC from
    the same key, if desired, via new calls to `update` and
    `doFinal`.
    (In order to reuse this `Mac` object with a different key,
    it must be reinitialized via a call to `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.

    Returns:
    :   the MAC result.

    Throws:
    :   `IllegalStateException` - if this `Mac` has not been
        initialized.
  + ### doFinal

    public final void doFinal(byte[] output,
    int outOffset)
    throws [ShortBufferException](ShortBufferException.md "class in javax.crypto"),
    [IllegalStateException](../../java/lang/IllegalStateException.md "class in java.lang")

    Finishes the MAC operation.

    A call to this method resets this `Mac` object to the
    state it was in when previously initialized via a call to
    `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.
    That is, the object is reset and available to generate another MAC from
    the same key, if desired, via new calls to `update` and
    `doFinal`.
    (In order to reuse this `Mac` object with a different key,
    it must be reinitialized via a call to `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.

    The MAC result is stored in `output`, starting at
    `outOffset` inclusive.

    Parameters:
    :   `output` - the buffer where the MAC result is stored
    :   `outOffset` - the offset in `output` where the MAC is
        stored

    Throws:
    :   `ShortBufferException` - if the given output buffer is too small
        to hold the result
    :   `IllegalStateException` - if this `Mac` has not been
        initialized.
  + ### doFinal

    public final byte[] doFinal(byte[] input)
    throws [IllegalStateException](../../java/lang/IllegalStateException.md "class in java.lang")

    Processes the given array of bytes and finishes the MAC operation.

    A call to this method resets this `Mac` object to the
    state it was in when previously initialized via a call to
    `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.
    That is, the object is reset and available to generate another MAC from
    the same key, if desired, via new calls to `update` and
    `doFinal`.
    (In order to reuse this `Mac` object with a different key,
    it must be reinitialized via a call to `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.

    Parameters:
    :   `input` - data in bytes

    Returns:
    :   the MAC result.

    Throws:
    :   `IllegalStateException` - if this `Mac` has not been
        initialized.
  + ### reset

    public final void reset()

    Resets this `Mac` object.

    A call to this method resets this `Mac` object to the
    state it was in when previously initialized via a call to
    `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.
    That is, the object is reset and available to generate another MAC from
    the same key, if desired, via new calls to `update` and
    `doFinal`.
    (In order to reuse this `Mac` object with a different key,
    it must be reinitialized via a call to `init(Key)` or
    `init(Key, AlgorithmParameterSpec)`.
  + ### clone

    public final [Object](../../java/lang/Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../../java/lang/CloneNotSupportedException.md "class in java.lang")

    Returns a clone if the provider implementation is cloneable.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone if the provider implementation is cloneable.

    Throws:
    :   `CloneNotSupportedException` - if this is called on a
        delegate that does not support `Cloneable`.

    See Also:
    :   - [`Cloneable`](../../java/lang/Cloneable.md "interface in java.lang")