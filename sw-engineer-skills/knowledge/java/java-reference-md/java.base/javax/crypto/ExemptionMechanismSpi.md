Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class ExemptionMechanismSpi

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.ExemptionMechanismSpi

---

public abstract class ExemptionMechanismSpi
extends [Object](../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `ExemptionMechanism` class.
All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a particular exemption mechanism.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ExemptionMechanismSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `protected abstract byte[]`

  `engineGenExemptionBlob()`

  Generates the exemption mechanism key blob.

  `protected abstract int`

  `engineGenExemptionBlob(byte[] output,
  int outputOffset)`

  Generates the exemption mechanism key blob, and stores the result in
  the `output` buffer, starting at `outputOffset`
  inclusive.

  `protected abstract int`

  `engineGetOutputSize(int inputLen)`

  Returns the length in bytes that an output buffer would need to be in
  order to hold the result of the next
  [`engineGenExemptionBlob`](#engineGenExemptionBlob(byte%5B%5D,int))
  operation, given the input length `inputLen` (in bytes).

  `protected abstract void`

  `engineInit(Key key)`

  Initializes this exemption mechanism with a key.

  `protected abstract void`

  `engineInit(Key key,
  AlgorithmParameters params)`

  Initializes this exemption mechanism with a key and a set of algorithm
  parameters.

  `protected abstract void`

  `engineInit(Key key,
  AlgorithmParameterSpec params)`

  Initializes this exemption mechanism with a key and a set of algorithm
  parameters.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ExemptionMechanismSpi

    public ExemptionMechanismSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineGetOutputSize

    protected abstract int engineGetOutputSize(int inputLen)

    Returns the length in bytes that an output buffer would need to be in
    order to hold the result of the next
    [`engineGenExemptionBlob`](#engineGenExemptionBlob(byte%5B%5D,int))
    operation, given the input length `inputLen` (in bytes).

    The actual output length of the next
    [`engineGenExemptionBlob`](#engineGenExemptionBlob(byte%5B%5D,int))
    call may be smaller than the length returned by this method.

    Parameters:
    :   `inputLen` - the input length (in bytes)

    Returns:
    :   the required output buffer size (in bytes)
  + ### engineInit

    protected abstract void engineInit([Key](../../java/security/Key.md "interface in java.security") key)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security"),
    [ExemptionMechanismException](ExemptionMechanismException.md "class in javax.crypto")

    Initializes this exemption mechanism with a key.

    If this exemption mechanism requires any algorithm parameters
    that cannot be derived from the given `key`, the underlying
    exemption mechanism implementation is supposed to generate the required
    parameters itself (using provider-specific default values); in the case
    that algorithm parameters must be specified by the caller, an
    `InvalidKeyException` is raised.

    Parameters:
    :   `key` - the key for this exemption mechanism

    Throws:
    :   `InvalidKeyException` - if the given key is inappropriate for
        this exemption mechanism.
    :   `ExemptionMechanismException` - if problem(s) encountered in the
        process of initializing.
  + ### engineInit

    protected abstract void engineInit([Key](../../java/security/Key.md "interface in java.security") key,
    [AlgorithmParameterSpec](../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") params)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../java/security/InvalidAlgorithmParameterException.md "class in java.security"),
    [ExemptionMechanismException](ExemptionMechanismException.md "class in javax.crypto")

    Initializes this exemption mechanism with a key and a set of algorithm
    parameters.

    If this exemption mechanism requires any algorithm parameters and
    `params` is null, the underlying exemption mechanism
    implementation is supposed to generate the required parameters
    itself (using provider-specific default values); in the case that
    algorithm parameters must be specified by the caller, an
    `InvalidAlgorithmParameterException` is raised.

    Parameters:
    :   `key` - the key for this exemption mechanism
    :   `params` - the algorithm parameters

    Throws:
    :   `InvalidKeyException` - if the given key is inappropriate for
        this exemption mechanism.
    :   `InvalidAlgorithmParameterException` - if the given algorithm
        parameters are inappropriate for this exemption mechanism.
    :   `ExemptionMechanismException` - if problem(s) encountered in the
        process of initializing.
  + ### engineInit

    protected abstract void engineInit([Key](../../java/security/Key.md "interface in java.security") key,
    [AlgorithmParameters](../../java/security/AlgorithmParameters.md "class in java.security") params)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../java/security/InvalidAlgorithmParameterException.md "class in java.security"),
    [ExemptionMechanismException](ExemptionMechanismException.md "class in javax.crypto")

    Initializes this exemption mechanism with a key and a set of algorithm
    parameters.

    If this exemption mechanism requires any algorithm parameters
    and `params` is null, the underlying exemption mechanism
    implementation is supposed to generate the required parameters
    itself (using provider-specific default values); in the case that
    algorithm parameters must be specified by the caller, an
    `InvalidAlgorithmParameterException` is raised.

    Parameters:
    :   `key` - the key for this exemption mechanism
    :   `params` - the algorithm parameters

    Throws:
    :   `InvalidKeyException` - if the given key is inappropriate for
        this exemption mechanism.
    :   `InvalidAlgorithmParameterException` - if the given algorithm
        parameters are inappropriate for this exemption mechanism.
    :   `ExemptionMechanismException` - if problem(s) encountered in the
        process of initializing.
  + ### engineGenExemptionBlob

    protected abstract byte[] engineGenExemptionBlob()
    throws [ExemptionMechanismException](ExemptionMechanismException.md "class in javax.crypto")

    Generates the exemption mechanism key blob.

    Returns:
    :   the new buffer with the result key blob.

    Throws:
    :   `ExemptionMechanismException` - if problem(s) encountered in the
        process of generating.
  + ### engineGenExemptionBlob

    protected abstract int engineGenExemptionBlob(byte[] output,
    int outputOffset)
    throws [ShortBufferException](ShortBufferException.md "class in javax.crypto"),
    [ExemptionMechanismException](ExemptionMechanismException.md "class in javax.crypto")

    Generates the exemption mechanism key blob, and stores the result in
    the `output` buffer, starting at `outputOffset`
    inclusive.

    If the `output` buffer is too small to hold the result,
    a `ShortBufferException` is thrown. In this case, repeat this
    call with a larger output buffer. Use
    [`engineGetOutputSize`](#engineGetOutputSize(int)) to determine
    how big the output buffer should be.

    Parameters:
    :   `output` - the buffer for the result
    :   `outputOffset` - the offset in `output` where the result
        is stored

    Returns:
    :   the number of bytes stored in `output`

    Throws:
    :   `ShortBufferException` - if the given output buffer is too small
        to hold the result.
    :   `ExemptionMechanismException` - if problem(s) encountered in the
        process of generating.