Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLEngineResult

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.SSLEngineResult

---

public class SSLEngineResult
extends [Object](../../../java/lang/Object.md "class in java.lang")

An encapsulation of the result state produced by
`SSLEngine` I/O calls.

A `SSLEngine` provides a means for establishing
secure communication sessions between two peers. `SSLEngine`
operations typically consume bytes from an input buffer and produce
bytes in an output buffer. This class provides operational result
values describing the state of the `SSLEngine`, including
indications of what operations are needed to finish an
ongoing handshake. Lastly, it reports the number of bytes consumed
and produced as a result of this operation.

Since:
:   1.5

See Also:
:   * [`SSLEngine`](SSLEngine.md "class in javax.net.ssl")
    * [`SSLEngine.wrap(ByteBuffer, ByteBuffer)`](SSLEngine.md#wrap(java.nio.ByteBuffer,java.nio.ByteBuffer))
    * [`SSLEngine.unwrap(ByteBuffer, ByteBuffer)`](SSLEngine.md#unwrap(java.nio.ByteBuffer,java.nio.ByteBuffer))

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static enum`

  `SSLEngineResult.HandshakeStatus`

  An `SSLEngineResult` enum describing the current
  handshaking state of this `SSLEngine`.

  `static enum`

  `SSLEngineResult.Status`

  An `SSLEngineResult` enum describing the overall result
  of the `SSLEngine` operation.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLEngineResult(SSLEngineResult.Status status,
  SSLEngineResult.HandshakeStatus handshakeStatus,
  int bytesConsumed,
  int bytesProduced)`

  Initializes a new instance of this class.

  `SSLEngineResult(SSLEngineResult.Status status,
  SSLEngineResult.HandshakeStatus handshakeStatus,
  int bytesConsumed,
  int bytesProduced,
  long sequenceNumber)`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final int`

  `bytesConsumed()`

  Returns the number of bytes consumed from the input buffer.

  `final int`

  `bytesProduced()`

  Returns the number of bytes written to the output buffer.

  `final SSLEngineResult.HandshakeStatus`

  `getHandshakeStatus()`

  Gets the handshake status of this `SSLEngine`
  operation.

  `final SSLEngineResult.Status`

  `getStatus()`

  Gets the return value of this `SSLEngine` operation.

  `final long`

  `sequenceNumber()`

  Returns the sequence number of the produced or consumed SSL/TLS/DTLS
  record (optional operation).

  `String`

  `toString()`

  Returns a String representation of this object.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLEngineResult

    public SSLEngineResult([SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") status,
    [SSLEngineResult.HandshakeStatus](SSLEngineResult.HandshakeStatus.md "enum class in javax.net.ssl") handshakeStatus,
    int bytesConsumed,
    int bytesProduced)

    Initializes a new instance of this class.

    Parameters:
    :   `status` - the return value of the operation.
    :   `handshakeStatus` - the current handshaking status.
    :   `bytesConsumed` - the number of bytes consumed from the source ByteBuffer
    :   `bytesProduced` - the number of bytes placed into the destination ByteBuffer

    Throws:
    :   `IllegalArgumentException` - if the `status` or `handshakeStatus`
        arguments are null, or if `bytesConsumed` or
        `bytesProduced` is negative.
  + ### SSLEngineResult

    public SSLEngineResult([SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") status,
    [SSLEngineResult.HandshakeStatus](SSLEngineResult.HandshakeStatus.md "enum class in javax.net.ssl") handshakeStatus,
    int bytesConsumed,
    int bytesProduced,
    long sequenceNumber)

    Initializes a new instance of this class.

    Parameters:
    :   `status` - the return value of the operation.
    :   `handshakeStatus` - the current handshaking status.
    :   `bytesConsumed` - the number of bytes consumed from the source ByteBuffer
    :   `bytesProduced` - the number of bytes placed into the destination ByteBuffer
    :   `sequenceNumber` - the sequence number (unsigned long) of the produced or
        consumed SSL/TLS/DTLS record, or `-1L` if no record
        produced or consumed

    Throws:
    :   `IllegalArgumentException` - if the `status` or `handshakeStatus`
        arguments are null, or if `bytesConsumed` or
        `bytesProduced` is negative

    Since:
    :   9
* ## Method Details

  + ### getStatus

    public final [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") getStatus()

    Gets the return value of this `SSLEngine` operation.

    Returns:
    :   the return value
  + ### getHandshakeStatus

    public final [SSLEngineResult.HandshakeStatus](SSLEngineResult.HandshakeStatus.md "enum class in javax.net.ssl") getHandshakeStatus()

    Gets the handshake status of this `SSLEngine`
    operation.

    Returns:
    :   the handshake status
  + ### bytesConsumed

    public final int bytesConsumed()

    Returns the number of bytes consumed from the input buffer.

    Returns:
    :   the number of bytes consumed.
  + ### bytesProduced

    public final int bytesProduced()

    Returns the number of bytes written to the output buffer.

    Returns:
    :   the number of bytes produced
  + ### sequenceNumber

    public final long sequenceNumber()

    Returns the sequence number of the produced or consumed SSL/TLS/DTLS
    record (optional operation).

    Returns:
    :   the sequence number of the produced or consumed SSL/TLS/DTLS
        record; or `-1L` if no record is produced or consumed,
        or this operation is not supported by the underlying provider

    Since:
    :   9

    See Also:
    :   - [`Long.compareUnsigned(long, long)`](../../../java/lang/Long.md#compareUnsigned(long,long))
  + ### toString

    public [String](../../../java/lang/String.md "class in java.lang") toString()

    Returns a String representation of this object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.