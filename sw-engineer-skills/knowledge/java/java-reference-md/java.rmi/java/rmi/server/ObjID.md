Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class ObjID

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.server.ObjID

All Implemented Interfaces:
:   `Serializable`

---

public final class ObjID
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

An `ObjID` is used to identify a remote object exported
to an RMI runtime. When a remote object is exported, it is assigned
an object identifier either implicitly or explicitly, depending on
the API used to export.

The [`ObjID()`](#%3Cinit%3E()) constructor can be used to generate a unique
object identifier. Such an `ObjID` is unique over time
with respect to the host it is generated on.
The [`ObjID(int)`](#%3Cinit%3E(int)) constructor can be used to create a
"well-known" object identifier. The scope of a well-known
`ObjID` depends on the RMI runtime it is exported to.

An `ObjID` instance contains an object number (of type
`long`) and an address space identifier (of type
[`UID`](UID.md "class in java.rmi.server")). In a unique `ObjID`, the address space
identifier is unique with respect to a given host over time. In a
well-known `ObjID`, the address space identifier is
equivalent to one returned by invoking the [`UID(short)`](UID.md#%3Cinit%3E(short))
constructor with the value zero.

If the system property `java.rmi.server.randomIDs`
is defined to equal the string `"true"` (case insensitive),
then the [`ObjID()`](#%3Cinit%3E()) constructor will use a cryptographically
strong random number generator to choose the object number of the
returned `ObjID`.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.ObjID)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ACTIVATOR_ID`

  Object number for well-known `ObjID` of the activator.

  `static final int`

  `DGC_ID`

  Object number for well-known `ObjID` of
  the distributed garbage collector.

  `static final int`

  `REGISTRY_ID`

  Object number for well-known `ObjID` of the registry.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ObjID()`

  Generates a unique object identifier.

  `ObjID(int objNum)`

  Creates a "well-known" object identifier.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified object with this `ObjID` for
  equality.

  `int`

  `hashCode()`

  Returns the hash code value for this object identifier, the
  object number.

  `static ObjID`

  `read(ObjectInput in)`

  Constructs and returns a new `ObjID` instance by
  unmarshalling a binary representation from an
  `ObjectInput` instance.

  `String`

  `toString()`

  Returns a string representation of this object identifier.

  `void`

  `write(ObjectOutput out)`

  Marshals a binary representation of this `ObjID` to
  an `ObjectOutput` instance.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### REGISTRY\_ID

    public static final int REGISTRY\_ID

    Object number for well-known `ObjID` of the registry.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.ObjID.REGISTRY_ID)
  + ### ACTIVATOR\_ID

    public static final int ACTIVATOR\_ID

    Object number for well-known `ObjID` of the activator.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.ObjID.ACTIVATOR_ID)
  + ### DGC\_ID

    public static final int DGC\_ID

    Object number for well-known `ObjID` of
    the distributed garbage collector.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.ObjID.DGC_ID)
* ## Constructor Details

  + ### ObjID

    public ObjID()

    Generates a unique object identifier.

    If the system property `java.rmi.server.randomIDs`
    is defined to equal the string `"true"` (case insensitive),
    then this constructor will use a cryptographically
    strong random number generator to choose the object number of the
    returned `ObjID`.
  + ### ObjID

    public ObjID(int objNum)

    Creates a "well-known" object identifier.

    An `ObjID` created via this constructor will not
    clash with any `ObjID`s generated via the no-arg
    constructor.

    Parameters:
    :   `objNum` - object number for well-known object identifier
* ## Method Details

  + ### write

    public void write([ObjectOutput](../../../../java.base/java/io/ObjectOutput.md "interface in java.io") out)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Marshals a binary representation of this `ObjID` to
    an `ObjectOutput` instance.

    Specifically, this method first invokes the given stream's
    [`DataOutput.writeLong(long)`](../../../../java.base/java/io/DataOutput.md#writeLong(long)) method with this object
    identifier's object number, and then it writes its address
    space identifier by invoking its [`UID.write(DataOutput)`](UID.md#write(java.io.DataOutput))
    method with the stream.

    Parameters:
    :   `out` - the `ObjectOutput` instance to write
        this `ObjID` to

    Throws:
    :   `IOException` - if an I/O error occurs while performing
        this operation
  + ### read

    public static [ObjID](ObjID.md "class in java.rmi.server") read([ObjectInput](../../../../java.base/java/io/ObjectInput.md "interface in java.io") in)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs and returns a new `ObjID` instance by
    unmarshalling a binary representation from an
    `ObjectInput` instance.

    Specifically, this method first invokes the given stream's
    [`DataInput.readLong()`](../../../../java.base/java/io/DataInput.md#readLong()) method to read an object number,
    then it invokes [`UID.read(DataInput)`](UID.md#read(java.io.DataInput)) with the
    stream to read an address space identifier, and then it
    creates and returns a new `ObjID` instance that
    contains the object number and address space identifier that
    were read from the stream.

    Parameters:
    :   `in` - the `ObjectInput` instance to read
        `ObjID` from

    Returns:
    :   unmarshalled `ObjID` instance

    Throws:
    :   `IOException` - if an I/O error occurs while performing
        this operation
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this object identifier, the
    object number.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this object identifier

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified object with this `ObjID` for
    equality.
    This method returns `true` if and only if the
    specified object is an `ObjID` instance with the same
    object number and address space identifier as this one.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare this `ObjID` to

    Returns:
    :   `true` if the given object is equivalent to
        this one, and `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this object identifier.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this object identifier