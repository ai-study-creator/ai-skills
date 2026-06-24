Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface RemoteCall

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public interface RemoteCall

Deprecated.

no replacement.

`RemoteCall` is an abstraction used solely by the RMI runtime
(in conjunction with stubs and skeletons of remote objects) to carry out a
call to a remote object. The `RemoteCall` interface is
deprecated because it is only used by deprecated methods of
`java.rmi.server.RemoteRef`.

Since:
:   1.1

See Also:
:   * [`RemoteRef`](RemoteRef.md "interface in java.rmi.server")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `done()`

  Deprecated.

  no replacement

  `void`

  `executeCall()`

  Deprecated.

  no replacement

  `ObjectInput`

  `getInputStream()`

  Deprecated.

  no replacement

  `ObjectOutput`

  `getOutputStream()`

  Deprecated.

  no replacement

  `ObjectOutput`

  `getResultStream(boolean success)`

  Deprecated.

  no replacement

  `void`

  `releaseInputStream()`

  Deprecated.

  no replacement

  `void`

  `releaseOutputStream()`

  Deprecated.

  no replacement

* ## Method Details

  + ### getOutputStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [ObjectOutput](../../../../java.base/java/io/ObjectOutput.md "interface in java.io") getOutputStream()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated.

    no replacement

    Return the output stream the stub/skeleton should put arguments/results
    into.

    Returns:
    :   output stream for arguments/results

    Throws:
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.1
  + ### releaseOutputStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void releaseOutputStream()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated.

    no replacement

    Release the output stream; in some transports this would release
    the stream.

    Throws:
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.1
  + ### getInputStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [ObjectInput](../../../../java.base/java/io/ObjectInput.md "interface in java.io") getInputStream()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated.

    no replacement

    Get the InputStream that the stub/skeleton should get
    results/arguments from.

    Returns:
    :   input stream for reading arguments/results

    Throws:
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.1
  + ### releaseInputStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void releaseInputStream()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated.

    no replacement

    Release the input stream. This would allow some transports to release
    the channel early.

    Throws:
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.1
  + ### getResultStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [ObjectOutput](../../../../java.base/java/io/ObjectOutput.md "interface in java.io") getResultStream(boolean success)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [StreamCorruptedException](../../../../java.base/java/io/StreamCorruptedException.md "class in java.io")

    Deprecated.

    no replacement

    Returns an output stream (may put out header information
    relating to the success of the call). Should only succeed
    once per remote call.

    Parameters:
    :   `success` - If true, indicates normal return, else indicates
        exceptional return.

    Returns:
    :   output stream for writing call result

    Throws:
    :   `IOException` - if an I/O error occurs.
    :   `StreamCorruptedException` - If already been called.

    Since:
    :   1.1
  + ### executeCall

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void executeCall()
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Deprecated.

    no replacement

    Do whatever it takes to execute the call.

    Throws:
    :   `Exception` - if a general exception occurs.

    Since:
    :   1.1
  + ### done

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void done()
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Deprecated.

    no replacement

    Allow cleanup after the remote call has completed.

    Throws:
    :   `IOException` - if an I/O error occurs.

    Since:
    :   1.1