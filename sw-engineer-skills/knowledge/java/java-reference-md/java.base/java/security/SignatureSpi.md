Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class SignatureSpi

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.SignatureSpi

Direct Known Subclasses:
:   `Signature`

---

public abstract class SignatureSpi
extends [Object](../lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `Signature` class, which is used to provide the
functionality of a digital signature algorithm. Digital signatures are used
for authentication and integrity assurance of digital data.

All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a particular signature algorithm.

Since:
:   1.2

See Also:
:   * [`Signature`](Signature.md "class in java.security")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected SecureRandom`

  `appRandom`

  Application-specified source of randomness.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SignatureSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone if the implementation is cloneable.

  `protected abstract Object`

  `engineGetParameter(String param)`

  Deprecated.

  `protected AlgorithmParameters`

  `engineGetParameters()`

  Returns the parameters used with this `Signature` object.

  `protected abstract void`

  `engineInitSign(PrivateKey privateKey)`

  Initializes this `Signature` object with the specified
  private key for signing operations.

  `protected void`

  `engineInitSign(PrivateKey privateKey,
  SecureRandom random)`

  Initializes this `Signature` object with the specified
  private key and source of randomness for signing operations.

  `protected abstract void`

  `engineInitVerify(PublicKey publicKey)`

  Initializes this `Signature` object with the specified
  public key for verification operations.

  `protected abstract void`

  `engineSetParameter(String param,
  Object value)`

  Deprecated.

  Replaced by [`engineSetParameter`](#engineSetParameter(java.security.spec.AlgorithmParameterSpec)).

  `protected void`

  `engineSetParameter(AlgorithmParameterSpec params)`

  Initializes this `Signature` object with the specified parameter
  values.

  `protected abstract byte[]`

  `engineSign()`

  Returns the signature bytes of all the data
  updated so far.

  `protected int`

  `engineSign(byte[] outbuf,
  int offset,
  int len)`

  Finishes this signature operation and stores the resulting signature
  bytes in the provided buffer `outbuf`, starting at
  `offset`.

  `protected abstract void`

  `engineUpdate(byte b)`

  Updates the data to be signed or verified
  using the specified byte.

  `protected abstract void`

  `engineUpdate(byte[] b,
  int off,
  int len)`

  Updates the data to be signed or verified, using the
  specified array of bytes, starting at the specified offset.

  `protected void`

  `engineUpdate(ByteBuffer input)`

  Updates the data to be signed or verified using the specified
  ByteBuffer.

  `protected abstract boolean`

  `engineVerify(byte[] sigBytes)`

  Verifies the passed-in signature.

  `protected boolean`

  `engineVerify(byte[] sigBytes,
  int offset,
  int length)`

  Verifies the passed-in signature in the specified array
  of bytes, starting at the specified offset.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### appRandom

    protected [SecureRandom](SecureRandom.md "class in java.security") appRandom

    Application-specified source of randomness.
* ## Constructor Details

  + ### SignatureSpi

    public SignatureSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineInitVerify

    protected abstract void engineInitVerify([PublicKey](PublicKey.md "interface in java.security") publicKey)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Initializes this `Signature` object with the specified
    public key for verification operations.

    Parameters:
    :   `publicKey` - the public key of the identity whose signature is
        going to be verified.

    Throws:
    :   `InvalidKeyException` - if the key is improperly
        encoded, parameters are missing, and so on.
  + ### engineInitSign

    protected abstract void engineInitSign([PrivateKey](PrivateKey.md "interface in java.security") privateKey)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Initializes this `Signature` object with the specified
    private key for signing operations.

    Parameters:
    :   `privateKey` - the private key of the identity whose signature
        will be generated.

    Throws:
    :   `InvalidKeyException` - if the key is improperly
        encoded, parameters are missing, and so on.
  + ### engineInitSign

    protected void engineInitSign([PrivateKey](PrivateKey.md "interface in java.security") privateKey,
    [SecureRandom](SecureRandom.md "class in java.security") random)
    throws [InvalidKeyException](InvalidKeyException.md "class in java.security")

    Initializes this `Signature` object with the specified
    private key and source of randomness for signing operations.

    This concrete method has been added to this previously-defined
    abstract class. (For backwards compatibility, it cannot be abstract.)

    Parameters:
    :   `privateKey` - the private key of the identity whose signature
        will be generated.
    :   `random` - the source of randomness

    Throws:
    :   `InvalidKeyException` - if the key is improperly
        encoded, parameters are missing, and so on.
  + ### engineUpdate

    protected abstract void engineUpdate(byte b)
    throws [SignatureException](SignatureException.md "class in java.security")

    Updates the data to be signed or verified
    using the specified byte.

    Parameters:
    :   `b` - the byte to use for the update.

    Throws:
    :   `SignatureException` - if the engine is not initialized
        properly.
  + ### engineUpdate

    protected abstract void engineUpdate(byte[] b,
    int off,
    int len)
    throws [SignatureException](SignatureException.md "class in java.security")

    Updates the data to be signed or verified, using the
    specified array of bytes, starting at the specified offset.

    Parameters:
    :   `b` - the array of bytes
    :   `off` - the offset to start from in the array of bytes
    :   `len` - the number of bytes to use, starting at offset

    Throws:
    :   `SignatureException` - if the engine is not initialized
        properly
  + ### engineUpdate

    protected void engineUpdate([ByteBuffer](../nio/ByteBuffer.md "class in java.nio") input)

    Updates the data to be signed or verified using the specified
    ByteBuffer. Processes the `data.remaining()` bytes
    starting at `data.position()`.
    Upon return, the buffer's position will be equal to its limit;
    its limit will not have changed.

    Parameters:
    :   `input` - the ByteBuffer

    Since:
    :   1.5
  + ### engineSign

    protected abstract byte[] engineSign()
    throws [SignatureException](SignatureException.md "class in java.security")

    Returns the signature bytes of all the data
    updated so far.
    The format of the signature depends on the underlying
    signature scheme.

    Returns:
    :   the signature bytes of the signing operation's result.

    Throws:
    :   `SignatureException` - if the engine is not
        initialized properly or if this signature algorithm is unable to
        process the input data provided.
  + ### engineSign

    protected int engineSign(byte[] outbuf,
    int offset,
    int len)
    throws [SignatureException](SignatureException.md "class in java.security")

    Finishes this signature operation and stores the resulting signature
    bytes in the provided buffer `outbuf`, starting at
    `offset`.
    The format of the signature depends on the underlying
    signature scheme.

    The signature implementation is reset to its initial state
    (the state it was in after a call to one of the
    `engineInitSign` methods)
    and can be reused to generate further signatures with the same private
    key.
    This method should be abstract, but we leave it concrete for
    binary compatibility. Knowledgeable providers should override this
    method.

    Parameters:
    :   `outbuf` - buffer for the signature result.
    :   `offset` - offset into `outbuf` where the signature is
        stored.
    :   `len` - number of bytes within `outbuf` allotted for the
        signature.
        Both this default implementation and the SUN provider do not
        return partial digests. If the value of this parameter is less
        than the actual signature length, this method will throw a
        `SignatureException`.
        This parameter is ignored if its value is greater than or equal to
        the actual signature length.

    Returns:
    :   the number of bytes placed into `outbuf`

    Throws:
    :   `SignatureException` - if the engine is not
        initialized properly, if this signature algorithm is unable to
        process the input data provided, or if `len` is less
        than the actual signature length.

    Since:
    :   1.2
  + ### engineVerify

    protected abstract boolean engineVerify(byte[] sigBytes)
    throws [SignatureException](SignatureException.md "class in java.security")

    Verifies the passed-in signature.

    Parameters:
    :   `sigBytes` - the signature bytes to be verified.

    Returns:
    :   `true` if the signature was verified, `false` if not.

    Throws:
    :   `SignatureException` - if the engine is not
        initialized properly, the passed-in signature is improperly
        encoded or of the wrong type, if this signature algorithm is unable to
        process the input data provided, etc.
  + ### engineVerify

    protected boolean engineVerify(byte[] sigBytes,
    int offset,
    int length)
    throws [SignatureException](SignatureException.md "class in java.security")

    Verifies the passed-in signature in the specified array
    of bytes, starting at the specified offset.

    Note: Subclasses should overwrite the default implementation.

    Parameters:
    :   `sigBytes` - the signature bytes to be verified.
    :   `offset` - the offset to start from in the array of bytes.
    :   `length` - the number of bytes to use, starting at offset.

    Returns:
    :   `true` if the signature was verified, `false` if not.

    Throws:
    :   `SignatureException` - if the engine is not
        initialized properly, the passed-in signature is improperly
        encoded or of the wrong type, if this signature algorithm is unable to
        process the input data provided, etc.

    Since:
    :   1.4
  + ### engineSetParameter

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    protected abstract void engineSetParameter([String](../lang/String.md "class in java.lang") param,
    [Object](../lang/Object.md "class in java.lang") value)
    throws [InvalidParameterException](InvalidParameterException.md "class in java.security")

    Deprecated.

    Replaced by [`engineSetParameter`](#engineSetParameter(java.security.spec.AlgorithmParameterSpec)).

    Sets the specified algorithm parameter to the specified
    value. This method supplies a general-purpose mechanism through
    which it is possible to set the various parameters of this object.
    A parameter may be any settable parameter for the algorithm, such as
    a parameter size, or a source of random bits for signature generation
    (if appropriate), or an indication of whether to perform
    a specific but optional computation. A uniform algorithm-specific
    naming scheme for each parameter is desirable but left unspecified
    at this time.

    Parameters:
    :   `param` - the string identifier of the parameter.
    :   `value` - the parameter value.

    Throws:
    :   `InvalidParameterException` - if `param` is an
        invalid parameter for this `Signature` object,
        the parameter is already set
        and cannot be set again, a security exception occurs, and so on.
  + ### engineSetParameter

    protected void engineSetParameter([AlgorithmParameterSpec](spec/AlgorithmParameterSpec.md "interface in java.security.spec") params)
    throws [InvalidAlgorithmParameterException](InvalidAlgorithmParameterException.md "class in java.security")

    Initializes this `Signature` object with the specified parameter
    values.

    Parameters:
    :   `params` - the parameters

    Throws:
    :   `UnsupportedOperationException` - if this method is not
        overridden by a provider
    :   `InvalidAlgorithmParameterException` - if this method is
        overridden by a provider and the given parameters
        are inappropriate for this `Signature` object
  + ### engineGetParameters

    protected [AlgorithmParameters](AlgorithmParameters.md "class in java.security") engineGetParameters()

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
    :   the parameters used with this `Signature` object, or
        `null`

    Throws:
    :   `UnsupportedOperationException` - if this method is not overridden
        by a provider

    Since:
    :   1.4
  + ### engineGetParameter

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    protected abstract [Object](../lang/Object.md "class in java.lang") engineGetParameter([String](../lang/String.md "class in java.lang") param)
    throws [InvalidParameterException](InvalidParameterException.md "class in java.security")

    Deprecated.

    Gets the value of the specified algorithm parameter.
    This method supplies a general-purpose mechanism through which it
    is possible to get the various parameters of this object. A parameter
    may be any settable parameter for the algorithm, such as a parameter
    size, or a source of random bits for signature generation (if
    appropriate), or an indication of whether to perform a
    specific but optional computation. A uniform algorithm-specific
    naming scheme for each parameter is desirable but left unspecified
    at this time.

    Parameters:
    :   `param` - the string name of the parameter.

    Returns:
    :   the object that represents the parameter value, or `null`
        if there is none.

    Throws:
    :   `InvalidParameterException` - if `param` is an
        invalid parameter for this engine, or another exception occurs while
        trying to get this parameter.
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../lang/CloneNotSupportedException.md "class in java.lang")

    Returns a clone if the implementation is cloneable.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone if the implementation is cloneable.

    Throws:
    :   `CloneNotSupportedException` - if this is called
        on an implementation that does not support `Cloneable`.

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")