Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class Signature

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.security.SignatureSpi](SignatureSpi.md "class in java.security")

java.security.Signature

---

public abstract class Signature
extends [SignatureSpi](SignatureSpi.md "class in java.security")

The `Signature` class is used to provide applications the functionality
of a digital signature algorithm. Digital signatures are used for
authentication and integrity assurance of digital data.

The signature algorithm can be, among others, the NIST standard
DSA, using DSA and SHA-256. The DSA algorithm using the
SHA-256 message digest algorithm can be specified as `SHA256withDSA`.
In the case of RSA the signing algorithm could be specified as, for example,
`SHA256withRSA`.
The algorithm name must be specified, as there is no default.

A `Signature` object can be used to generate and verify digital
signatures.

There are three phases to the use of a `Signature` object for
either signing data or verifying a signature:

1. Initialization, with either
   * a public key, which initializes the signature for
     verification (see [`initVerify`](#initVerify(java.security.PublicKey))), or* a private key (and optionally a Secure Random Number Generator),
       which initializes the signature for signing
       (see [`initSign(PrivateKey)`](#initSign(java.security.PrivateKey))
       and [`initSign(PrivateKey, SecureRandom)`](#initSign(java.security.PrivateKey,java.security.SecureRandom))).- Updating

     Depending on the type of initialization, this will update the
     bytes to be signed or verified. See the
     [`update`](#update(byte)) methods.- Signing or Verifying a signature on all updated bytes. See the
       [`sign`](#sign()) methods and the [`verify`](#verify(byte%5B%5D))
       method.

Note that this class is abstract and extends from
`SignatureSpi` for historical reasons.
Application developers should only take notice of the methods defined in
this `Signature` class; all the methods in
the superclass are intended for cryptographic service providers who wish to
supply their own implementations of digital signature algorithms.

Every implementation of the Java platform is required to support the
following standard `Signature` algorithms:

* `SHA1withDSA`
* `SHA256withDSA`
* `SHA1withRSA`
* `SHA256withRSA`

These algorithms are described in the [Signature section](../../../../specs/security/standard-names.md#signature-algorithms) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other algorithms are supported.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static final int`

  `SIGN`

  Possible [`state`](#state) value, signifying that
  this `Signature` object has been initialized for signing.

  `protected int`

  `state`

  Current state of this `Signature` object.

  `protected static final int`

  `UNINITIALIZED`

  Possible [`state`](#state) value, signifying that
  this `Signature` object has not yet been initialized.

  `protected static final int`

  `VERIFY`

  Possible [`state`](#state) value, signifying that
  this `Signature` object has been initialized for verification.

  ### Fields inherited from class java.security.[SignatureSpi](SignatureSpi.md "class in java.security")

  `appRandom`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Signature(String algorithm)`

  Creates a `Signature` object for the specified algorithm.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone if the implementation is cloneable.

  `final String`

  `getAlgorithm()`

  Returns the name of the algorithm for this `Signature` object.

  `static Signature`

  `getInstance(String algorithm)`

  Returns a `Signature` object that implements the specified
  signature algorithm.

  `static Signature`

  `getInstance(String algorithm,
  String provider)`

  Returns a `Signature` object that implements the specified
  signature algorithm.

  `static Signature`

  `getInstance(String algorithm,
  Provider provider)`

  Returns a `Signature` object that implements the specified
  signature algorithm.

  `final Object`

  `getParameter(String param)`

  Deprecated.

  `final AlgorithmParameters`

  `getParameters()`

  Returns the parameters used with this `Signature` object.

  `final Provider`

  `getProvider()`

  Returns the provider of this `Signature` object.

  `final void`

  `initSign(PrivateKey privateKey)`

  Initialize this object for signing.

  `final void`

  `initSign(PrivateKey privateKey,
  SecureRandom random)`

  Initialize this object for signing.

  `final void`

  `initVerify(Certificate certificate)`

  Initializes this object for verification, using the public key from
  the given certificate.

  `final void`

  `initVerify(PublicKey publicKey)`

  Initializes this object for verification.

  `final void`

  `setParameter(String param,
  Object value)`

  Deprecated.

  Use
  [`setParameter`](#setParameter(java.security.spec.AlgorithmParameterSpec)).

  `final void`

  `setParameter(AlgorithmParameterSpec params)`

  Initializes this `Signature` object with the specified parameter
  values.

  `final byte[]`

  `sign()`

  Returns the signature bytes of all the data updated.

  `final int`

  `sign(byte[] outbuf,
  int offset,
  int len)`

  Finishes the signature operation and stores the resulting signature
  bytes in the provided buffer `outbuf`, starting at
  `offset`.

  `String`

  `toString()`

  Returns a string representation of this `Signature` object,
  providing information that includes the state of the object
  and the name of the algorithm used.

  `final void`

  `update(byte b)`

  Updates the data to be signed or verified by a byte.

  `final void`

  `update(byte[] data)`

  Updates the data to be signed or verified, using the specified
  array of bytes.

  `final void`

  `update(byte[] data,
  int off,
  int len)`

  Updates the data to be signed or verified, using the specified
  array of bytes, starting at the specified offset.

  `final void`

  `update(ByteBuffer data)`

  Updates the data to be signed or verified using the specified
  ByteBuffer.

  `final boolean`

  `verify(byte[] signature)`

  Verifies the passed-in signature.

  `final boolean`

  `verify(byte[] signature,
  int offset,
  int length)`

  Verifies the passed-in signature in the specified array
  of bytes, starting at the specified offset.

  ### Methods inherited from class java.security.[SignatureSpi](SignatureSpi.md "class in java.security")

  `engineGetParameter, engineGetParameters, engineInitSign, engineInitSign, engineInitVerify, engineSetParameter, engineSetParameter, engineSign, engineSign, engineUpdate, engineUpdate, engineUpdate, engineVerify, engineVerify`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### UNINITIALIZED

    protected static final int UNINITIALIZED

    Possible [`state`](#state) value, signifying that
    this `Signature` object has not yet been initialized.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.security.Signature.UNINITIALIZED)
  + ### SIGN

    protected static final int SIGN

    Possible [`state`](#state) value, signifying that
    this `Signature` object has been initialized for signing.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.security.Signature.SIGN)
  + ### VERIFY

    protected static final int VERIFY

    Possible [`state`](#state) value, signifying that
    this `Signature` object has been initialized for verification.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.security.Signature.VERIFY)
  + ### state

    protected int state

    Current state of this `Signature` object.
* ## Constructor Details

  + ### Signature

    protected Signature([String](../lang/String.md "class in java.lang") algorithm)

    Creates a `Signature` object for the specified algorithm.

    Parameters:
    :   `algorithm` - the standard string name of the algorithm.
        See the Signature section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#signature-algorithms)
        for information about standard algorithm names.
* ## Method Details

  + ### getInstance

    public static [Signature](Signature.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a `Signature` object that implements the specified
    signature algorithm.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new `Signature` object encapsulating the
    `SignatureSpi` implementation from the first
    provider that supports the specified algorithm is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the standard name of the algorithm requested.
        See the Signature section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#signature-algorithms)
        for information about standard algorithm names.

    Returns:
    :   the new `Signature` object

    Throws:
    :   `NoSuchAlgorithmException` - if no `Provider` supports a
        `Signature` implementation for the
        specified algorithm
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [Signature](Signature.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [String](../lang/String.md "class in java.lang") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](NoSuchProviderException.md "class in java.security")

    Returns a `Signature` object that implements the specified
    signature algorithm.

    A new `Signature` object encapsulating the
    `SignatureSpi` implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](Security.md#getProviders()) method.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the Signature section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#signature-algorithms)
        for information about standard algorithm names.
    :   `provider` - the name of the provider.

    Returns:
    :   the new `Signature` object

    Throws:
    :   `IllegalArgumentException` - if the provider name is `null`
        or empty
    :   `NoSuchAlgorithmException` - if a `SignatureSpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `algorithm` is `null`

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getInstance

    public static [Signature](Signature.md "class in java.security") getInstance([String](../lang/String.md "class in java.lang") algorithm,
    [Provider](Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](NoSuchAlgorithmException.md "class in java.security")

    Returns a `Signature` object that implements the specified
    signature algorithm.

    A new `Signature` object encapsulating the
    `SignatureSpi` implementation from the specified provider
    is returned. Note that the specified provider does not
    have to be registered in the provider list.

    Parameters:
    :   `algorithm` - the name of the algorithm requested.
        See the Signature section in the [Java Security Standard Algorithm Names Specification](../../../../specs/security/standard-names.md#signature-algorithms)
        for information about standard algorithm names.
    :   `provider` - the provider.

    Returns:
    :   the new `Signature` object

    Throws:
    :   `IllegalArgumentException` - if the provider is `null`
    :   `NoSuchAlgorithmException` - if a `SignatureSpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `NullPointerException` - if `algorithm` is `null`

    Since:
    :   1.4

    See Also:
    :   - [`Provider`](Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](Provider.md "class in java.security") getProvider()

    Returns the provider of this `Signature` object.

    Returns:
    :   the provider of this `Signature` object
  + ### initVerify

    public final void initVerify([PublicKey](PublicKey.md "interface in java.security") publicKey)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Initializes this object for verification. If this method is called
    again with a different argument, it negates the effect
    of this call.

    Parameters:
    :   `publicKey` - the public key of the identity whose signature is
        going to be verified.

    Throws:
    :   `InvalidKeyException` - if the key is invalid.
  + ### initVerify

    public final void initVerify([Certificate](cert/Certificate.md "class in java.security.cert") certificate)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Initializes this object for verification, using the public key from
    the given certificate.

    If the certificate is of type X.509 and has a *key usage*
    extension field marked as critical, and the value of the *key usage*
    extension field implies that the public key in
    the certificate and its corresponding private key are not
    supposed to be used for digital signatures, an
    `InvalidKeyException` is thrown.

    Parameters:
    :   `certificate` - the certificate of the identity whose signature is
        going to be verified.

    Throws:
    :   `InvalidKeyException` - if the public key in the certificate
        is not encoded properly or does not include required parameter
        information or cannot be used for digital signature purposes.

    Since:
    :   1.3
  + ### initSign

    public final void initSign([PrivateKey](PrivateKey.md "interface in java.security") privateKey)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Initialize this object for signing. If this method is called
    again with a different argument, it negates the effect
    of this call.

    Parameters:
    :   `privateKey` - the private key of the identity whose signature
        is going to be generated.

    Throws:
    :   `InvalidKeyException` - if the key is invalid.
  + ### initSign

    public final void initSign([PrivateKey](PrivateKey.md "interface in java.security") privateKey,
    [SecureRandom](SecureRandom.md "class in java.security") random)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Initialize this object for signing. If this method is called
    again with a different argument, it negates the effect
    of this call.

    Parameters:
    :   `privateKey` - the private key of the identity whose signature
        is going to be generated
    :   `random` - the source of randomness for this `Signature` object

    Throws:
    :   `InvalidKeyException` - if the key is invalid.
  + ### sign

    public final byte[] sign()
    throws [SignatureException](SignatureException.md "class in java.security")

    Returns the signature bytes of all the data updated.
    The format of the signature depends on the underlying
    signature scheme.

    A call to this method resets this `Signature` object to the
    state it was in when previously initialized for signing via a
    call to `initSign(PrivateKey)`. That is, the object is
    reset and available to generate another signature from the same
    signer, if desired, via new calls to `update` and
    `sign`.

    Returns:
    :   the signature bytes of the signing operation's result.

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly or if this signature algorithm is unable to
        process the input data provided.
  + ### sign

    public final int sign(byte[] outbuf,
    int offset,
    int len)
    throws [SignatureException](SignatureException.md "class in java.security")

    Finishes the signature operation and stores the resulting signature
    bytes in the provided buffer `outbuf`, starting at
    `offset`.
    The format of the signature depends on the underlying
    signature scheme.

    This `Signature` object is reset to its initial state (the
    state it was in after a call to one of the `initSign` methods) and
    can be reused to generate further signatures with the same private key.

    Parameters:
    :   `outbuf` - buffer for the signature result.
    :   `offset` - offset into `outbuf` where the signature is
        stored.
    :   `len` - number of bytes within `outbuf` allotted for the
        signature.

    Returns:
    :   the number of bytes placed into `outbuf`.

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly, if this signature algorithm is unable to
        process the input data provided, or if `len` is less
        than the actual signature length.
    :   `IllegalArgumentException` - if `outbuf` is `null`,
        or `offset` or `len` is less than 0, or the sum of
        `offset` and `len` is greater than the length of
        `outbuf`.

    Since:
    :   1.2
  + ### verify

    public final boolean verify(byte[] signature)
    throws [SignatureException](SignatureException.md "class in java.security")

    Verifies the passed-in signature.

    A call to this method resets this `Signature` object to the
    state it was in when previously initialized for verification via a
    call to `initVerify(PublicKey)`. That is, the object is
    reset and available to verify another signature from the identity
    whose public key was specified in the call to `initVerify`.

    Parameters:
    :   `signature` - the signature bytes to be verified.

    Returns:
    :   `true` if the signature was verified, `false` if not.

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly, the passed-in signature is improperly
        encoded or of the wrong type, if this signature algorithm is unable to
        process the input data provided, etc.
  + ### verify

    public final boolean verify(byte[] signature,
    int offset,
    int length)
    throws [SignatureException](SignatureException.md "class in java.security")

    Verifies the passed-in signature in the specified array
    of bytes, starting at the specified offset.

    A call to this method resets this `Signature` object to the
    state it was in when previously initialized for verification via a
    call to `initVerify(PublicKey)`. That is, the object is
    reset and available to verify another signature from the identity
    whose public key was specified in the call to `initVerify`.

    Parameters:
    :   `signature` - the signature bytes to be verified.
    :   `offset` - the offset to start from in the array of bytes.
    :   `length` - the number of bytes to use, starting at offset.

    Returns:
    :   `true` if the signature was verified, `false` if not.

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly, the passed-in signature is improperly
        encoded or of the wrong type, if this signature algorithm is unable to
        process the input data provided, etc.
    :   `IllegalArgumentException` - if the `signature`
        byte array is `null`, or the `offset` or `length`
        is less than 0, or the sum of the `offset` and
        `length` is greater than the length of the
        `signature` byte array.

    Since:
    :   1.4
  + ### update

    public final void update(byte b)
    throws [SignatureException](SignatureException.md "class in java.security")

    Updates the data to be signed or verified by a byte.

    Parameters:
    :   `b` - the byte to use for the update.

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly.
  + ### update

    public final void update(byte[] data)
    throws [SignatureException](SignatureException.md "class in java.security")

    Updates the data to be signed or verified, using the specified
    array of bytes.

    Parameters:
    :   `data` - the byte array to use for the update.

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly.
  + ### update

    public final void update(byte[] data,
    int off,
    int len)
    throws [SignatureException](SignatureException.md "class in java.security")

    Updates the data to be signed or verified, using the specified
    array of bytes, starting at the specified offset.

    Parameters:
    :   `data` - the array of bytes.
    :   `off` - the offset to start from in the array of bytes.
    :   `len` - the number of bytes to use, starting at offset.

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly.
    :   `IllegalArgumentException` - if `data` is `null`,
        or `off` or `len` is less than 0, or the sum of
        `off` and `len` is greater than the length of
        `data`.
  + ### update

    public final void update([ByteBuffer](../nio/ByteBuffer.md "class in java.nio") data)
    throws [SignatureException](SignatureException.md "class in java.security")

    Updates the data to be signed or verified using the specified
    ByteBuffer. Processes the `data.remaining()` bytes
    starting at `data.position()`.
    Upon return, the buffer's position will be equal to its limit;
    its limit will not have changed.

    Parameters:
    :   `data` - the ByteBuffer

    Throws:
    :   `SignatureException` - if this `Signature` object is not
        initialized properly.

    Since:
    :   1.5
  + ### getAlgorithm

    public final [String](../lang/String.md "class in java.lang") getAlgorithm()

    Returns the name of the algorithm for this `Signature` object.

    Returns:
    :   the name of the algorithm for this `Signature` object.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string representation of this `Signature` object,
    providing information that includes the state of the object
    and the name of the algorithm used.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `Signature` object.
  + ### setParameter

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public final void setParameter([String](../lang/String.md "class in java.lang") param,
    [Object](../lang/Object.md "class in java.lang") value)
    throws [InvalidParameterException](InvalidParameterException.md "class in java.security")

    Deprecated.

    Use
    [`setParameter`](#setParameter(java.security.spec.AlgorithmParameterSpec)).

    Sets the specified algorithm parameter to the specified value.
    This method supplies a general-purpose mechanism through
    which it is possible to set the various parameters of this object.
    A parameter may be any settable parameter for the algorithm, such as
    a parameter size, or a source of random bits for signature generation
    (if appropriate), or an indication of whether to perform
    a specific but optional computation. A uniform algorithm-specific
    naming scheme for each parameter is desirable but left unspecified
    at this time.

    Parameters:
    :   `param` - the string identifier of the parameter
    :   `value` - the parameter value

    Throws:
    :   `InvalidParameterException` - if `param` is an
        invalid parameter for this `Signature` object,
        the parameter is already set
        and cannot be set again, a security exception occurs, and so on.

    See Also:
    :   - [`getParameter(java.lang.String)`](#getParameter(java.lang.String))
  + ### setParameter

    public final void setParameter([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") params)
    throws [InvalidAlgorithmParameterException](InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this `Signature` object with the specified parameter
    values.

    Parameters:
    :   `params` - the parameter values

    Throws:
    :   `InvalidAlgorithmParameterException` - if the given parameter values
        are inappropriate for this `Signature` object

    See Also:
    :   - [`getParameters()`](#getParameters())
  + ### getParameters

    public final [AlgorithmParameters](AlgorithmParameters.md "class in java.security") getParameters()

    Returns the parameters used with this `Signature` object.

    The returned parameters may be the same that were used to initialize
    this `Signature` object, or may contain additional default or
    random parameter values used by the underlying signature scheme.
    If the required parameters were not supplied and can be generated by
    the `Signature` object, the generated parameters are returned;
    otherwise `null` is returned.

    However, if the signature scheme does not support returning
    the parameters as `AlgorithmParameters`, `null` is always
    returned.

    Returns:
    :   the parameters used with this `Signature` object,
        or `null`

    Throws:
    :   `UnsupportedOperationException` - if the provider does not support
        this method

    Since:
    :   1.4

    See Also:
    :   - [`setParameter(AlgorithmParameterSpec)`](#setParameter(java.security.spec.AlgorithmParameterSpec))
  + ### getParameter

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public final [Object](../lang/Object.md "class in java.lang") getParameter([String](../lang/String.md "class in java.lang") param)
    throws [InvalidParameterException](InvalidParameterException.md "class in java.security")

    Deprecated.

    Gets the value of the specified algorithm parameter. This method
    supplies a general-purpose mechanism through which it is possible to
    get the various parameters of this object. A parameter may be any
    settable parameter for the algorithm, such as a parameter size, or
    a source of random bits for signature generation (if appropriate),
    or an indication of whether to perform a specific but optional
    computation. A uniform algorithm-specific naming scheme for each
    parameter is desirable but left unspecified at this time.

    Parameters:
    :   `param` - the string name of the parameter.

    Returns:
    :   the object that represents the parameter value, or `null` if
        there is none.

    Throws:
    :   `InvalidParameterException` - if `param` is an invalid
        parameter for this engine, or another exception occurs while
        trying to get this parameter.

    See Also:
    :   - [`setParameter(String, Object)`](#setParameter(java.lang.String,java.lang.Object))
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../lang/CloneNotSupportedException.md "class in java.lang")

    Returns a clone if the implementation is cloneable.

    Overrides:
    :   `clone` in class `SignatureSpi`

    Returns:
    :   a clone if the implementation is cloneable.

    Throws:
    :   `CloneNotSupportedException` - if this is called
        on an implementation that does not support `Cloneable`.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")