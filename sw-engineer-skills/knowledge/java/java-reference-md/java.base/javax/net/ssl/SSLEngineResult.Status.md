Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Enum Class SSLEngineResult.Status

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java/lang/Enum.md "class in java.lang")<[SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl")>

javax.net.ssl.SSLEngineResult.Status

All Implemented Interfaces:
:   `Serializable`, `Comparable<SSLEngineResult.Status>`, `Constable`

Enclosing class:
:   `SSLEngineResult`

---

public static enum SSLEngineResult.Status
extends [Enum](../../../java/lang/Enum.md "class in java.lang")<[SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl")>

An `SSLEngineResult` enum describing the overall result
of the `SSLEngine` operation.
The `Status` value does not reflect the
state of a `SSLEngine` handshake currently
in progress. The `SSLEngineResult's HandshakeStatus`
should be consulted for that information.

Since:
:   1.5

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `BUFFER_OVERFLOW`

  The `SSLEngine` was not able to process the
  operation because there are not enough bytes available in the
  destination buffer to hold the result.

  `BUFFER_UNDERFLOW`

  The `SSLEngine` was not able to unwrap the
  incoming data because there were not enough source bytes
  available to make a complete packet.

  `CLOSED`

  The operation just closed this side of the
  `SSLEngine`, or the operation
  could not be completed because it was already closed.

  `OK`

  The `SSLEngine` completed the operation, and
  is available to process similar calls.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static SSLEngineResult.Status`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static SSLEngineResult.Status[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### BUFFER\_UNDERFLOW

    public static final [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") BUFFER\_UNDERFLOW

    The `SSLEngine` was not able to unwrap the
    incoming data because there were not enough source bytes
    available to make a complete packet.

    Repeat the call once more bytes are available.
  + ### BUFFER\_OVERFLOW

    public static final [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") BUFFER\_OVERFLOW

    The `SSLEngine` was not able to process the
    operation because there are not enough bytes available in the
    destination buffer to hold the result.

    Repeat the call once more bytes are available.

    See Also:
    :   - [`SSLSession.getPacketBufferSize()`](SSLSession.md#getPacketBufferSize())
        - [`SSLSession.getApplicationBufferSize()`](SSLSession.md#getApplicationBufferSize())
  + ### OK

    public static final [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") OK

    The `SSLEngine` completed the operation, and
    is available to process similar calls.
  + ### CLOSED

    public static final [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") CLOSED

    The operation just closed this side of the
    `SSLEngine`, or the operation
    could not be completed because it was already closed.
* ## Method Details

  + ### values

    public static [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [SSLEngineResult.Status](SSLEngineResult.Status.md "enum class in javax.net.ssl") valueOf([String](../../../java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null