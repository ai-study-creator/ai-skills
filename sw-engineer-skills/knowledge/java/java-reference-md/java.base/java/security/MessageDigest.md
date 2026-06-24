Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class MessageDigest

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.security.MessageDigestSpi](MessageDigestSpi.md "class in java.security")

java.security.MessageDigest

---

public abstract class MessageDigest
extends [MessageDigestSpi](MessageDigestSpi.md "class in java.security")

This `MessageDigest` class provides applications the functionality of a
message digest algorithm, such as SHA-1 or SHA-256.
Message digests are secure one-way hash functions that take arbitrary-sized
data and output a fixed-length hash value.

A `MessageDigest` object starts out initialized. The data is
processed through it using the [`update`](#update(byte))
methods. At any point [`reset`](#reset()) can be called
to reset the digest. Once all the data to be updated has been
updated, one of the [`digest`](#digest()) methods should
be called to complete the hash computation.

The `digest` method can be called once for a given number
of updates. After `digest` has been called, the `MessageDigest`
object is reset to its initialized state.

Implementations are free to implement the Cloneable interface.
Client applications can test cloneability by attempting cloning
and catching the `CloneNotSupportedException`:

```
 MessageDigest md = MessageDigest.getInstance("SHA-256");

 try {
     md.update(toChapter1);
     MessageDigest tc1 = md.clone();
     byte[] toChapter1Digest = tc1.digest();
     md.update(toChapter2);
     ...etc.
 } catch (CloneNotSupportedException cnse) {
     throw new DigestException("couldn't make digest of partial content");
 }
```

Note that if a given implementation is not cloneable, it is
still possible to compute intermediate digests by instantiating
several instances, if the number of digests is known in advance.

Note that this class is abstract and extends from
`MessageDigestSpi` for historical reasons.
Application developers should only take notice of the methods defined in
this `MessageDigest` class; all the methods in
the superclass are intended for cryptographic service providers who wish to
supply their own implementations of message digest algorithms.

Every implementation of the Java platform is required to support
the following standard `MessageDigest` algorithms:

* `SHA-1`
* `SHA-256`

These algorithms are described in the [MessageDigest section](../../../../specs/security/standard-names.md#messagedigest-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.1

See Also:
:   * [`DigestInputStream`](DigestInputStream.md "class in java.security")
    * [`DigestOutputStream`](DigestOutputStream.md "class in java.security")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MessageDigest(String algorithm)`

  Creates a message digest with the specified algorithm name.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone if the implementation is cloneable.

  `byte[]`

  `digest()`

  Completes the hash computation by performing final operations
  such as padding.

  `byte[]`

  `digest(byte[] input)`

  Performs a final update on the digest using the specified array
  of bytes, then completes the digest computation.

  `int`

  `digest(byte[] buf,
  int offset,
  int len)`

  Completes the hash computation by performing final operations
  such as padding.

  `final String`

  `getAlgorithm()`

  Returns a string that identifies the algorithm, independent of
  implementation details.

  `final int`

  `getDigestLength()`

  Returns the length of the digest in bytes, or 0 if this operation is
  not supported by the provider and the implementation is not cloneable.

  `static MessageDigest`

  `getInstance(String algorithm)`

  Returns a `MessageDigest` object that implements the specified
  digest algorithm.

  `static MessageDigest`

  `getInstance(String algorithm,
  String provider)`

  Returns a `MessageDigest` object that implements the specified
  digest algorithm.

  `static MessageDigest`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `MessageDigest` object that implements the specified
  digest algorithm.

  `final Provider`

  `getProvider()`

  Returns the provider of this message digest object.

  `static boolean`

  `isEqual(byte[] digesta,
  byte[] digestb)`

  Compares two digests for equality.

  `void`

  `reset()`

  Resets the digest for further use.

  `String`

  `toString()`

  Returns a string representation of this message digest object.

  `void`

  `update(byte input)`

  Updates the digest using the specified byte.

  `void`

  `update(byte[] input)`

  Updates the digest using the specified array of bytes.

  `void`

  `update(byte[] input,
  int offset,
  int len)`

  Updates the digest using the specified array of bytes, starting
  at the specified offset.

  `final void`

  `update(ByteBuffer input)`

  Update the digest using the specified ByteBuffer.

  ### Methods inherited from class java.security.[MessageDigestSpi](MessageDigestSpi.md "class in java.security")

  `engineDigest, engineDigest, engineGetDigestLength, engineReset, engineUpdate, engineUpdate, engineUpdate`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MessageDigest

    protected MessageDigest([String](../lang/String.md "class in java.lang") algorithm)

    Creates a message digest with the specified algorithm name.

    Parameters:
    :   `algorithm` - the standard name of the digest algorithm.
        See the MessageDigest section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#messagedigest-algorithms)
        for information about standard algorithm names.
* ## Method Details

  + ### getInstance

    public static [MessageDigest](MessageDigest.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a `MessageDigest` object that implements the specified
    digest algorithm.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new `MessageDigest` object encapsulating the
    `MessageDigestSpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the MessageDigest section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#messagedigest-algorithms)
        for information about standard algorithm names.

    Returns:
    :   a `MessageDigest` object that implements the
        specified algorithm

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `MessageDigestSpi` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [MessageDigest](MessageDigest.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [String](../lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](NoSuchProviderException.md "class in java.security")

    Returns a `MessageDigest` object that implements the specified
    digest algorithm.

    A new `MessageDigest` object encapsulating the
    `MessageDigestSpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the MessageDigest section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#messagedigest-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   a `MessageDigest` object that implements the
        specified algorithm

    Throws:
    :   `IllegalArgumentException` - if the provider name is `null`
        or empty
    :   `NoSuchAlgorithmException` - if a `MessageDigestSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [MessageDigest](MessageDigest.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [Provider](Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a `MessageDigest` object that implements the specified
    digest algorithm.

    A new `MessageDigest` object encapsulating the
    `MessageDigestSpi` implementation from the specified provider
    is returned. Note that the specified provider does not
    have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the MessageDigest section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#messagedigest-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   a `MessageDigest` object that implements the
        specified algorithm

    Throws:
    :   `IllegalArgumentException` - if the specified provider is
        `null`
    :   `NoSuchAlgorithmException` - if a `MessageDigestSpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    Since:
    :   1.4

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](Provider.md "class in java.security") getProvider()

    Returns the provider of this message digest object.

    Returns:
    :   the provider of this message digest object
  + ### update

    public void update(byte input)

    Updates the digest using the specified byte.

    Parameters:
    :   `input` - the byte with which to update the digest.
  + ### update

    public void update(byte[] input,
    int offset,
    int len)

    Updates the digest using the specified array of bytes, starting
    at the specified offset.

    Parameters:
    :   `input` - the array of bytes.
    :   `offset` - the offset to start from in the array of bytes.
    :   `len` - the number of bytes to use, starting at
        `offset`.
  + ### update

    public void update(byte[] input)

    Updates the digest using the specified array of bytes.

    Parameters:
    :   `input` - the array of bytes.
  + ### update

    public final void update([ByteBuffer](../nio/ByteBuffer.md "class in java.nio") input)

    Update the digest using the specified ByteBuffer. The digest is
    updated using the `input.remaining()` bytes starting
    at `input.position()`.
    Upon return, the buffer's position will be equal to its limit;
    its limit will not have changed.

    Parameters:
    :   `input` - the ByteBuffer

    Since:
    :   1.5
  + ### digest

    public byte[] digest()

    Completes the hash computation by performing final operations
    such as padding. The digest is reset after this call is made.

    Returns:
    :   the array of bytes for the resulting hash value.
  + ### digest

    public int digest(byte[] buf,
    int offset,
    int len)
    throws [DigestException](DigestException.md "class in java.security")

    Completes the hash computation by performing final operations
    such as padding. The digest is reset after this call is made.

    Parameters:
    :   `buf` - output buffer for the computed digest
    :   `offset` - offset into the output buffer to begin storing the digest
    :   `len` - number of bytes within buf allotted for the digest

    Returns:
    :   the number of bytes placed into `buf`

    Throws:
    :   `DigestException` - if an error occurs.
  + ### digest

    public byte[] digest(byte[] input)

    Performs a final update on the digest using the specified array
    of bytes, then completes the digest computation. That is, this
    method first calls [`update(input)`](#update(byte%5B%5D)),
    passing the *input* array to the `update` method,
    then calls [`digest()`](#digest()).

    Parameters:
    :   `input` - the input to be updated before the digest is
        completed.

    Returns:
    :   the array of bytes for the resulting hash value.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string representation of this message digest object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### isEqual

    public static boolean isEqual(byte[] digesta,
    byte[] digestb)

    Compares two digests for equality. Two digests are equal if they have
    the same length and all bytes at corresponding positions are equal.

    Parameters:
    :   `digesta` - one of the digests to compare.
    :   `digestb` - the other digest to compare.

    Returns:
    :   `true` if the digests are equal, `false` otherwise.
  + ### reset

    public void reset()

    Resets the digest for further use.
  + ### getAlgorithm

    public final [String](../lang/String.md "class in java.lang") getAlgorithm()

    Returns a string that identifies the algorithm, independent of
    implementation details. The name should be a standard
    Java Security name (such as "SHA-256").
    See the MessageDigest section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#messagedigest-algorithms)
    for information about standard algorithm names.

    Returns:
    :   the name of the algorithm
  + ### getDigestLength

    public final int getDigestLength()

    Returns the length of the digest in bytes, or 0 if this operation is
    not supported by the provider and the implementation is not cloneable.

    Returns:
    :   the digest length in bytes, or 0 if this operation is not
        supported by the provider and the implementation is not cloneable.

    Since:
    :   1.2
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../lang/CloneNotSupportedException.md "class in java.lang")

    Returns a clone if the implementation is cloneable.

    Overrides:
    :   `clone` in class `MessageDigestSpi`

    Returns:
    :   a clone if the implementation is cloneable.

    Throws:
    :   `CloneNotSupportedException` - if this is called on an
        implementation that does not support `Cloneable`.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")