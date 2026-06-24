Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class RemoteObjectInvocationHandler

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.rmi.server.RemoteObject](RemoteObject.md "class in java.rmi.server")

java.rmi.server.RemoteObjectInvocationHandler

All Implemented Interfaces:
:   `Serializable`, `InvocationHandler`, `Remote`

---

public class RemoteObjectInvocationHandler
extends [RemoteObject](RemoteObject.md "class in java.rmi.server")
implements [InvocationHandler](../../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect")

An implementation of the `InvocationHandler` interface for
use with Java Remote Method Invocation (Java RMI). This invocation
handler can be used in conjunction with a dynamic proxy instance as a
replacement for a pregenerated stub class.

Applications are not expected to use this class directly. A remote
object exported to use a dynamic proxy with [`UnicastRemoteObject`](UnicastRemoteObject.md "class in java.rmi.server")
has an instance of this class as that proxy's invocation handler.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.RemoteObjectInvocationHandler)

* ## Field Summary

  ### Fields inherited from class java.rmi.server.[RemoteObject](RemoteObject.md "class in java.rmi.server")

  `ref`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RemoteObjectInvocationHandler(RemoteRef ref)`

  Creates a new `RemoteObjectInvocationHandler` constructed
  with the specified `RemoteRef`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `invoke(Object proxy,
  Method method,
  Object[] args)`

  Processes a method invocation made on the encapsulating
  proxy instance, `proxy`, and returns the result.

  ### Methods inherited from class java.rmi.server.[RemoteObject](RemoteObject.md "class in java.rmi.server")

  `equals, getRef, hashCode, toString, toStub`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RemoteObjectInvocationHandler

    public RemoteObjectInvocationHandler([RemoteRef](RemoteRef.md "interface in java.rmi.server") ref)

    Creates a new `RemoteObjectInvocationHandler` constructed
    with the specified `RemoteRef`.

    Parameters:
    :   `ref` - the remote ref

    Throws:
    :   `NullPointerException` - if `ref` is `null`
* ## Method Details

  + ### invoke

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") invoke([Object](../../../../java.base/java/lang/Object.md "class in java.lang") proxy,
    [Method](../../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") method,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] args)
    throws [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

    Processes a method invocation made on the encapsulating
    proxy instance, `proxy`, and returns the result.

    `RemoteObjectInvocationHandler` implements this method
    as follows:

    If `method` is one of the following methods, it
    is processed as described below:
    - [`Object.hashCode`](../../../../java.base/java/lang/Object.md#hashCode()): Returns the hash
      code value for the proxy.- [`Object.equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)): Returns `true`
        if the argument (`args[0]`) is an instance of a dynamic
        proxy class and this invocation handler is equal to the invocation
        handler of that argument, and returns `false` otherwise.- [`Object.toString`](../../../../java.base/java/lang/Object.md#toString()): Returns a string
          representation of the proxy.

    If `method` overrides [`Object.finalize`](../../../../java.base/java/lang/Object.md#finalize()),
    it is ignored.

    Otherwise, a remote call is made as follows:
    - If `proxy` is not an instance of the interface
      [`Remote`](../Remote.md "interface in java.rmi"), then an [`IllegalArgumentException`](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") is thrown.- Otherwise, the [`invoke`](RemoteRef.md#invoke(java.rmi.Remote,java.lang.reflect.Method,java.lang.Object%5B%5D,long)) method is invoked
        on this invocation handler's `RemoteRef`, passing
        `proxy`, `method`, `args`, and the
        method hash (defined in section 8.3 of the "Java Remote Method
        Invocation (RMI) Specification") for `method`, and the
        result is returned.- If an exception is thrown by `RemoteRef.invoke` and
          that exception is a checked exception that is not assignable to any
          exception in the `throws` clause of the method
          implemented by the `proxy`'s class, then that exception
          is wrapped in an [`UnexpectedException`](../UnexpectedException.md "class in java.rmi") and the wrapped
          exception is thrown. Otherwise, the exception thrown by
          `invoke` is thrown by this method.

    The semantics of this method are unspecified if the
    arguments could not have been produced by an instance of some
    valid dynamic proxy class containing this invocation handler.

    Specified by:
    :   `invoke` in interface `InvocationHandler`

    Parameters:
    :   `proxy` - the proxy instance that the method was invoked on
    :   `method` - the `Method` instance corresponding to the
        interface method invoked on the proxy instance
    :   `args` - an array of objects containing the values of the
        arguments passed in the method invocation on the proxy instance, or
        `null` if the method takes no arguments

    Returns:
    :   the value to return from the method invocation on the proxy
        instance

    Throws:
    :   `Throwable` - the exception to throw from the method invocation
        on the proxy instance

    See Also:
    :   - [`UndeclaredThrowableException`](../../../../java.base/java/lang/reflect/UndeclaredThrowableException.md "class in java.lang.reflect")