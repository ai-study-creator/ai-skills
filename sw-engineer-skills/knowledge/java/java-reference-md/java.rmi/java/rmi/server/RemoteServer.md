Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class RemoteServer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.rmi.server.RemoteObject](RemoteObject.md "class in java.rmi.server")

java.rmi.server.RemoteServer

All Implemented Interfaces:
:   `Serializable`, `Remote`

Direct Known Subclasses:
:   `UnicastRemoteObject`

---

public abstract class RemoteServer
extends [RemoteObject](RemoteObject.md "class in java.rmi.server")

The `RemoteServer` class is the common superclass to server
implementations and provides the framework to support a wide range
of remote reference semantics. Specifically, the functions needed
to create and export remote objects (i.e. to make them remotely
available) are provided abstractly by `RemoteServer` and
concretely by its subclass(es).

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.RemoteServer)

* ## Field Summary

  ### Fields inherited from class java.rmi.server.[RemoteObject](RemoteObject.md "class in java.rmi.server")

  `ref`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RemoteServer()`

  Constructs a `RemoteServer`.

  `protected`

  `RemoteServer(RemoteRef ref)`

  Constructs a `RemoteServer` with the given reference type.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static String`

  `getClientHost()`

  Returns a string representation of the client host for the
  remote method invocation being processed in the current thread.

  `static PrintStream`

  `getLog()`

  Returns stream for the RMI call log.

  `static void`

  `setLog(OutputStream out)`

  Log RMI calls to the output stream `out`.

  ### Methods inherited from class java.rmi.server.[RemoteObject](RemoteObject.md "class in java.rmi.server")

  `equals, getRef, hashCode, toString, toStub`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RemoteServer

    protected RemoteServer()

    Constructs a `RemoteServer`.

    Since:
    :   1.1
  + ### RemoteServer

    protected RemoteServer([RemoteRef](RemoteRef.md "interface in java.rmi.server") ref)

    Constructs a `RemoteServer` with the given reference type.

    Parameters:
    :   `ref` - the remote reference

    Since:
    :   1.1
* ## Method Details

  + ### getClientHost

    public static [String](../../../../java.base/java/lang/String.md "class in java.lang") getClientHost()
    throws [ServerNotActiveException](ServerNotActiveException.md "class in java.rmi.server")

    Returns a string representation of the client host for the
    remote method invocation being processed in the current thread.

    Returns:
    :   a string representation of the client host

    Throws:
    :   `ServerNotActiveException` - if no remote method invocation
        is being processed in the current thread

    Since:
    :   1.1
  + ### setLog

    public static void setLog([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") out)

    Log RMI calls to the output stream `out`. If
    `out` is `null`, call logging is turned off.

    If there is a security manager, its
    `checkPermission` method will be invoked with a
    `java.util.logging.LoggingPermission("control")`
    permission; this could result in a `SecurityException`.

    Parameters:
    :   `out` - the output stream to which RMI calls should be logged

    Throws:
    :   `SecurityException` - if there is a security manager and
        the invocation of its `checkPermission` method
        fails

    Since:
    :   1.1

    See Also:
    :   - [`getLog()`](#getLog())
  + ### getLog

    public static [PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") getLog()

    Returns stream for the RMI call log.

    Returns:
    :   the call log

    Since:
    :   1.1

    See Also:
    :   - [`setLog(java.io.OutputStream)`](#setLog(java.io.OutputStream))