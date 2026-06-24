Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class RemoteObject

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.server.RemoteObject

All Implemented Interfaces:
:   `Serializable`, `Remote`

Direct Known Subclasses:
:   `RemoteObjectInvocationHandler`, `RemoteServer`, `RemoteStub`

---

public abstract class RemoteObject
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Remote](../Remote.md "interface in java.rmi"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `RemoteObject` class implements the
`java.lang.Object` behavior for remote objects.
`RemoteObject` provides the remote semantics of Object by
implementing methods for hashCode, equals, and toString.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.RemoteObject)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected RemoteRef`

  `ref`

  The object's remote reference.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RemoteObject()`

  Creates a remote object.

  `protected`

  `RemoteObject(RemoteRef newref)`

  Creates a remote object, initialized with the specified remote
  reference.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares two remote objects for equality.

  `RemoteRef`

  `getRef()`

  Returns the remote reference for the remote object.

  `int`

  `hashCode()`

  Returns a hashcode for a remote object.

  `String`

  `toString()`

  Returns a String that represents the value of this remote object.

  `static Remote`

  `toStub(Remote obj)`

  Returns the stub for the remote object `obj` passed
  as a parameter.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ref

    protected transient [RemoteRef](RemoteRef.md "interface in java.rmi.server") ref

    The object's remote reference.
* ## Constructor Details

  + ### RemoteObject

    protected RemoteObject()

    Creates a remote object.
  + ### RemoteObject

    protected RemoteObject([RemoteRef](RemoteRef.md "interface in java.rmi.server") newref)

    Creates a remote object, initialized with the specified remote
    reference.

    Parameters:
    :   `newref` - remote reference
* ## Method Details

  + ### getRef

    public [RemoteRef](RemoteRef.md "interface in java.rmi.server") getRef()

    Returns the remote reference for the remote object.

    Note: The object returned from this method may be an instance of
    an implementation-specific class. The `RemoteObject`
    class ensures serialization portability of its instances' remote
    references through the behavior of its custom
    `writeObject` and `readObject` methods. An
    instance of `RemoteRef` should not be serialized outside
    of its `RemoteObject` wrapper instance or the result may
    be unportable.

    Returns:
    :   remote reference for the remote object

    Since:
    :   1.2
  + ### toStub

    public static [Remote](../Remote.md "interface in java.rmi") toStub([Remote](../Remote.md "interface in java.rmi") obj)
    throws [NoSuchObjectException](../NoSuchObjectException.md "class in java.rmi")

    Returns the stub for the remote object `obj` passed
    as a parameter. This operation is only valid *after*
    the object has been exported.

    Parameters:
    :   `obj` - the remote object whose stub is needed

    Returns:
    :   the stub for the remote object, `obj`.

    Throws:
    :   `NoSuchObjectException` - if the stub for the
        remote object could not be found.

    Since:
    :   1.2
  + ### hashCode

    public int hashCode()

    Returns a hashcode for a remote object. Two remote object stubs
    that refer to the same remote object will have the same hash code
    (in order to support remote objects as keys in hash tables).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Hashtable`](../../../../java.base/java/util/Hashtable.md "class in java.util")
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares two remote objects for equality.
    Returns a boolean that indicates whether this remote object is
    equivalent to the specified Object. This method is used when a
    remote object is stored in a hashtable.
    If the specified Object is not itself an instance of RemoteObject,
    then this method delegates by returning the result of invoking the
    `equals` method of its parameter with this remote object
    as the argument.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the Object to compare with

    Returns:
    :   true if these Objects are equal; false otherwise.

    See Also:
    :   - [`Hashtable`](../../../../java.base/java/util/Hashtable.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a String that represents the value of this remote object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.