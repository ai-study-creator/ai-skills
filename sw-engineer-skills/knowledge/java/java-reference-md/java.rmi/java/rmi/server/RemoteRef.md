Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface RemoteRef

All Superinterfaces:
:   `Externalizable`, `Serializable`

All Known Subinterfaces:
:   `ServerRef`

---

public interface RemoteRef
extends [Externalizable](../../../../java.base/java/io/Externalizable.md "interface in java.io")

`RemoteRef` represents the handle for a remote object. A
`RemoteStub` uses a remote reference to carry out a
remote method invocation to a remote object.

Since:
:   1.1

See Also:
:   * [`RemoteStub`](RemoteStub.md "class in java.rmi.server")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `packagePrefix`

  Initialize the server package prefix: assumes that the
  implementation of server ref classes (e.g., UnicastRef,
  UnicastServerRef) are located in the package defined by the
  prefix.

  `static final long`

  `serialVersionUID`

  Deprecated.

  A `serialVersionUID` field in an interface is
  ineffectual.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `done(RemoteCall call)`

  Deprecated.

  1.2 style stubs no longer use this method.

  `String`

  `getRefClass(ObjectOutput out)`

  Returns the class name of the ref type to be serialized onto
  the stream 'out'.

  `Object`

  `invoke(Remote obj,
  Method method,
  Object[] params,
  long opnum)`

  Invoke a method.

  `void`

  `invoke(RemoteCall call)`

  Deprecated.

  1.2 style stubs no longer use this method.

  `RemoteCall`

  `newCall(RemoteObject obj,
  Operation[] op,
  int opnum,
  long hash)`

  Deprecated.

  1.2 style stubs no longer use this method.

  `boolean`

  `remoteEquals(RemoteRef obj)`

  Compares two remote objects for equality.

  `int`

  `remoteHashCode()`

  Returns a hashcode for a remote object.

  `String`

  `remoteToString()`

  Returns a String that represents the reference of this remote
  object.

  ### Methods inherited from interface java.io.[Externalizable](../../../../java.base/java/io/Externalizable.md "interface in java.io")

  `readExternal, writeExternal`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    indicate compatibility with JDK 1.1.x version of class.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.RemoteRef.serialVersionUID)
  + ### packagePrefix

    static final [String](../../../../java.base/java/lang/String.md "class in java.lang") packagePrefix

    Initialize the server package prefix: assumes that the
    implementation of server ref classes (e.g., UnicastRef,
    UnicastServerRef) are located in the package defined by the
    prefix.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.RemoteRef.packagePrefix)
* ## Method Details

  + ### invoke

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") invoke([Remote](../Remote.md "interface in java.rmi") obj,
    [Method](../../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") method,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    long opnum)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Invoke a method. This form of delegating method invocation
    to the reference allows the reference to take care of
    setting up the connection to the remote host, marshaling
    some representation for the method and parameters, then
    communicating the method invocation to the remote host.
    This method either returns the result of a method invocation
    on the remote object which resides on the remote host or
    throws a RemoteException if the call failed or an
    application-level exception if the remote invocation throws
    an exception.

    Parameters:
    :   `obj` - the object that contains the RemoteRef (e.g., the
        RemoteStub for the object.
    :   `method` - the method to be invoked
    :   `params` - the parameter list
    :   `opnum` - a hash that may be used to represent the method

    Returns:
    :   result of remote method invocation

    Throws:
    :   `Exception` - if any exception occurs during remote method
        invocation

    Since:
    :   1.2
  + ### newCall

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [RemoteCall](RemoteCall.md "interface in java.rmi.server") newCall([RemoteObject](RemoteObject.md "class in java.rmi.server") obj,
    [Operation](Operation.md "class in java.rmi.server")[] op,
    int opnum,
    long hash)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Deprecated.

    1.2 style stubs no longer use this method. Instead of
    using a sequence of method calls on the stub's the remote reference
    (`newCall`, `invoke`, and `done`), a
    stub uses a single method, `invoke(Remote, Method, Object[],
    int)`, on the remote reference to carry out parameter
    marshalling, remote method executing and unmarshalling of the return
    value.

    Creates an appropriate call object for a new remote method
    invocation on this object. Passing operation array and index,
    allows the stubs generator to assign the operation indexes and
    interpret them. The remote reference may need the operation to
    encode in the call.

    Parameters:
    :   `obj` - remote stub through which to make call
    :   `op` - array of stub operations
    :   `opnum` - operation number
    :   `hash` - stub/skeleton interface hash

    Returns:
    :   call object representing remote call

    Throws:
    :   `RemoteException` - if failed to initiate new remote call

    Since:
    :   1.1

    See Also:
    :   - [`invoke(Remote,java.lang.reflect.Method,Object[],long)`](#invoke(java.rmi.Remote,java.lang.reflect.Method,java.lang.Object%5B%5D,long))
  + ### invoke

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void invoke([RemoteCall](RemoteCall.md "interface in java.rmi.server") call)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Deprecated.

    1.2 style stubs no longer use this method. Instead of
    using a sequence of method calls to the remote reference
    (`newCall`, `invoke`, and `done`), a
    stub uses a single method, `invoke(Remote, Method, Object[],
    int)`, on the remote reference to carry out parameter
    marshalling, remote method executing and unmarshalling of the return
    value.

    Executes the remote call.
    Invoke will raise any "user" exceptions which
    should pass through and not be caught by the stub. If any
    exception is raised during the remote invocation, invoke should
    take care of cleaning up the connection before raising the
    "user" or remote exception.

    Parameters:
    :   `call` - object representing remote call

    Throws:
    :   `Exception` - if any exception occurs during remote method

    Since:
    :   1.1

    See Also:
    :   - [`invoke(Remote,java.lang.reflect.Method,Object[],long)`](#invoke(java.rmi.Remote,java.lang.reflect.Method,java.lang.Object%5B%5D,long))
  + ### done

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void done([RemoteCall](RemoteCall.md "interface in java.rmi.server") call)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Deprecated.

    1.2 style stubs no longer use this method. Instead of
    using a sequence of method calls to the remote reference
    (`newCall`, `invoke`, and `done`), a
    stub uses a single method, `invoke(Remote, Method, Object[],
    int)`, on the remote reference to carry out parameter
    marshalling, remote method executing and unmarshalling of the return
    value.

    Allows the remote reference to clean up (or reuse) the connection.
    Done should only be called if the invoke returns successfully
    (non-exceptionally) to the stub.

    Parameters:
    :   `call` - object representing remote call

    Throws:
    :   `RemoteException` - if remote error occurs during call cleanup

    Since:
    :   1.1

    See Also:
    :   - [`invoke(Remote,java.lang.reflect.Method,Object[],long)`](#invoke(java.rmi.Remote,java.lang.reflect.Method,java.lang.Object%5B%5D,long))
  + ### getRefClass

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getRefClass([ObjectOutput](../../../../java.base/java/io/ObjectOutput.md "interface in java.io") out)

    Returns the class name of the ref type to be serialized onto
    the stream 'out'.

    Parameters:
    :   `out` - the output stream to which the reference will be serialized

    Returns:
    :   the class name (without package qualification) of the reference
        type

    Since:
    :   1.1
  + ### remoteHashCode

    int remoteHashCode()

    Returns a hashcode for a remote object. Two remote object stubs
    that refer to the same remote object will have the same hash code
    (in order to support remote objects as keys in hash tables).

    Returns:
    :   remote object hashcode

    Since:
    :   1.1

    See Also:
    :   - [`Hashtable`](../../../../java.base/java/util/Hashtable.md "class in java.util")
  + ### remoteEquals

    boolean remoteEquals([RemoteRef](RemoteRef.md "interface in java.rmi.server") obj)

    Compares two remote objects for equality.
    Returns a boolean that indicates whether this remote object is
    equivalent to the specified Object. This method is used when a
    remote object is stored in a hashtable.

    Parameters:
    :   `obj` - the Object to compare with

    Returns:
    :   true if these Objects are equal; false otherwise.

    Since:
    :   1.1

    See Also:
    :   - [`Hashtable`](../../../../java.base/java/util/Hashtable.md "class in java.util")
  + ### remoteToString

    [String](../../../../java.base/java/lang/String.md "class in java.lang") remoteToString()

    Returns a String that represents the reference of this remote
    object.

    Returns:
    :   string representing remote object reference

    Since:
    :   1.1