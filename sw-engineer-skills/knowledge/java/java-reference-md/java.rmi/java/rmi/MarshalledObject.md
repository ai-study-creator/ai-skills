Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class MarshalledObject<T>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.MarshalledObject<T>

Type Parameters:
:   `T` - the type of the object contained in this
    `MarshalledObject`

All Implemented Interfaces:
:   `Serializable`

---

public final class MarshalledObject<T>
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A `MarshalledObject` contains a byte stream with the serialized
representation of an object given to its constructor. The `get`
method returns a new copy of the original object, as deserialized from
the contained byte stream. The contained object is serialized and
deserialized with the same serialization semantics used for marshaling
and unmarshaling parameters and return values of RMI calls: When the
serialized form is created:

* classes are annotated with a codebase URL from where the class
  can be loaded (if available), and* any remote object in the `MarshalledObject` is
    represented by a serialized instance of its stub.

When copy of the object is retrieved (via the `get` method),
if the class is not available locally, it will be loaded from the
appropriate location (specified the URL annotated with the class descriptor
when the class was serialized.

`MarshalledObject` facilitates passing objects in RMI calls
that are not automatically deserialized immediately by the remote peer.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.MarshalledObject)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MarshalledObject(T obj)`

  Creates a new `MarshalledObject` that contains the
  serialized representation of the current state of the supplied object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this `MarshalledObject` to another object.

  `T`

  `get()`

  Returns a new copy of the contained marshalledobject.

  `int`

  `hashCode()`

  Return a hash code for this `MarshalledObject`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MarshalledObject

    public MarshalledObject([T](MarshalledObject.md "type parameter in MarshalledObject") obj)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new `MarshalledObject` that contains the
    serialized representation of the current state of the supplied object.
    The object is serialized with the semantics used for marshaling
    parameters for RMI calls.

    Parameters:
    :   `obj` - the object to be serialized (must be serializable)

    Throws:
    :   `IOException` - if an `IOException` occurs; an
        `IOException` may occur if `obj` is not
        serializable.

    Since:
    :   1.2
* ## Method Details

  + ### get

    public [T](MarshalledObject.md "type parameter in MarshalledObject") get()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Returns a new copy of the contained marshalledobject. The internal
    representation is deserialized with the semantics used for
    unmarshaling parameters for RMI calls.
    If the MarshalledObject was read from an ObjectInputStream,
    the filter from that stream is used to deserialize the object.

    Returns:
    :   a copy of the contained object

    Throws:
    :   `IOException` - if an `IOException` occurs while
        deserializing the object from its internal representation.
    :   `ClassNotFoundException` - if a
        `ClassNotFoundException` occurs while deserializing
        the object from its internal representation.
        could not be found

    Since:
    :   1.2
  + ### hashCode

    public int hashCode()

    Return a hash code for this `MarshalledObject`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this `MarshalledObject` to another object.
    Returns true if and only if the argument refers to a
    `MarshalledObject` that contains exactly the same
    serialized representation of an object as this one does. The
    comparison ignores any class codebase annotation, meaning that
    two objects are equivalent if they have the same serialized
    representation *except* for the codebase of each class
    in the serialized representation.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare with this `MarshalledObject`

    Returns:
    :   `true` if the argument contains an equivalent
        serialized object; `false` otherwise

    Since:
    :   1.2

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")