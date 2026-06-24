Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class MacSpi

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.MacSpi

---

public abstract class MacSpi
extends [Object](../../java/lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `Mac` class.
All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a particular MAC algorithm.

Implementations are free to implement the Cloneable interface.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MacSpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone if the implementation is cloneable.

  `protected abstract byte[]`

  `engineDoFinal()`

  Completes the MAC computation and resets the MAC for further use,
  maintaining the secret key that the MAC was initialized with.

  `protected abstract int`

  `engineGetMacLength()`

  Returns the length of the MAC in bytes.

  `protected abstract void`

  `engineInit(Key key,
  AlgorithmParameterSpec params)`

  Initializes the MAC with the given (secret) key and algorithm
  parameters.

  `protected abstract void`

  `engineReset()`

  Resets the MAC for further use, maintaining the secret key that the
  MAC was initialized with.

  `protected abstract void`

  `engineUpdate(byte input)`

  Processes the given byte.

  `protected abstract void`

  `engineUpdate(byte[] input,
  int offset,
  int len)`

  Processes the first `len` bytes in `input`,
  starting at `offset` inclusive.

  `protected void`

  `engineUpdate(ByteBuffer input)`

  Processes `input.remaining()` bytes in the ByteBuffer
  `input`, starting at `input.position()`.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MacSpi

    public MacSpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineGetMacLength

    protected abstract int engineGetMacLength()

    Returns the length of the MAC in bytes.

    Returns:
    :   the MAC length in bytes.
  + ### engineInit

    protected abstract void engineInit([Key](../../java/security/Key.md "interface in java.security") key,
    [AlgorithmParameterSpec](../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") params)
    throws [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security"),
    [InvalidAlgorithmParameterException](../../java/security/InvalidAlgorithmParameterException.md "class in java.security")

    Initializes the MAC with the given (secret) key and algorithm
    parameters.

    Parameters:
    :   `key` - the (secret) key.
    :   `params` - the algorithm parameters.

    Throws:
    :   `InvalidKeyException` - if the given key is inappropriate for
        initializing this MAC.
    :   `InvalidAlgorithmParameterException` - if the given algorithm
        parameters are inappropriate for this MAC.
  + ### engineUpdate

    protected abstract void engineUpdate(byte input)

    Processes the given byte.

    Parameters:
    :   `input` - the input byte to be processed.
  + ### engineUpdate

    protected abstract void engineUpdate(byte[] input,
    int offset,
    int len)

    Processes the first `len` bytes in `input`,
    starting at `offset` inclusive.

    Parameters:
    :   `input` - the input buffer.
    :   `offset` - the offset in `input` where the input starts.
    :   `len` - the number of bytes to process.
  + ### engineUpdate

    protected void engineUpdate([ByteBuffer](../../java/nio/ByteBuffer.md "class in java.nio") input)

    Processes `input.remaining()` bytes in the ByteBuffer
    `input`, starting at `input.position()`.
    Upon return, the buffer's position will be equal to its limit;
    its limit will not have changed.

    Subclasses should consider overriding this method if they can
    process ByteBuffers more efficiently than byte arrays.

    Parameters:
    :   `input` - the ByteBuffer

    Throws:
    :   `NullPointerException` - if `input` is null

    Since:
    :   1.5
  + ### engineDoFinal

    protected abstract byte[] engineDoFinal()

    Completes the MAC computation and resets the MAC for further use,
    maintaining the secret key that the MAC was initialized with.

    Returns:
    :   the MAC result.
  + ### engineReset

    protected abstract void engineReset()

    Resets the MAC for further use, maintaining the secret key that the
    MAC was initialized with.
  + ### clone

    public [Object](../../java/lang/Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](../../java/lang/CloneNotSupportedException.md "class in java.lang")

    Returns a clone if the implementation is cloneable.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone if the implementation is cloneable.

    Throws:
    :   `CloneNotSupportedException` - if this is called
        on an implementation that does not support `Cloneable`.

    See Also:
    :   - [`Cloneable`](../../java/lang/Cloneable.md "interface in java.lang")