Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class UID

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.server.UID

All Implemented Interfaces:
:   `Serializable`

---

public final class UID
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A `UID` represents an identifier that is unique over time
with respect to the host it is generated on, or one of 216
"well-known" identifiers.

The [`UID()`](#%3Cinit%3E()) constructor can be used to generate an
identifier that is unique over time with respect to the host it is
generated on. The [`UID(short)`](#%3Cinit%3E(short)) constructor can be used to
create one of 216 well-known identifiers.

A `UID` instance contains three primitive values:

* `unique`, an `int` that uniquely identifies
  the VM that this `UID` was generated in, with respect to its
  host and at the time represented by the `time` value (an
  example implementation of the `unique` value would be a
  process identifier),
  or zero for a well-known `UID`* `time`, a `long` equal to a time (as returned
    by [`System.currentTimeMillis()`](../../../../java.base/java/lang/System.md#currentTimeMillis())) at which the VM that this
    `UID` was generated in was alive,
    or zero for a well-known `UID`* `count`, a `short` to distinguish
      `UID`s generated in the same VM with the same
      `time` value

An independently generated `UID` instance is unique
over time with respect to the host it is generated on as long as
the host requires more than one millisecond to reboot and its system
clock is never set backward. A globally unique identifier can be
constructed by pairing a `UID` instance with a unique host
identifier, such as an IP address.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.UID)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UID()`

  Generates a `UID` that is unique over time with
  respect to the host that it was generated on.

  `UID(short num)`

  Creates a "well-known" `UID`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified object with this `UID` for
  equality.

  `int`

  `hashCode()`

  Returns the hash code value for this `UID`.

  `static UID`

  `read(DataInput in)`

  Constructs and returns a new `UID` instance by
  unmarshalling a binary representation from an
  `DataInput` instance.

  `String`

  `toString()`

  Returns a string representation of this `UID`.

  `void`

  `write(DataOutput out)`

  Marshals a binary representation of this `UID` to
  a `DataOutput` instance.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UID

    public UID()

    Generates a `UID` that is unique over time with
    respect to the host that it was generated on.
  + ### UID

    public UID(short num)

    Creates a "well-known" `UID`.
    There are 216 possible such well-known ids.

    A `UID` created via this constructor will not
    clash with any `UID`s generated via the no-arg
    constructor.

    Parameters:
    :   `num` - number for well-known `UID`
* ## Method Details

  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `UID`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this `UID`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified object with this `UID` for
    equality.
    This method returns `true` if and only if the
    specified object is a `UID` instance with the same
    `unique`, `time`, and `count`
    values as this one.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare this `UID` to

    Returns:
    :   `true` if the given object is equivalent to
        this one, and `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `UID`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `UID`
  + ### write

    public void write([DataOutput](../../../../java.base/java/io/DataOutput.md "interface in java.io") out)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Marshals a binary representation of this `UID` to
    a `DataOutput` instance.

    Specifically, this method first invokes the given stream's
    [`DataOutput.writeInt(int)`](../../../../java.base/java/io/DataOutput.md#writeInt(int)) method with this `UID`'s
    `unique` value, then it invokes the stream's
    [`DataOutput.writeLong(long)`](../../../../java.base/java/io/DataOutput.md#writeLong(long)) method with this `UID`'s
    `time` value, and then it invokes the stream's
    [`DataOutput.writeShort(int)`](../../../../java.base/java/io/DataOutput.md#writeShort(int)) method with this `UID`'s
    `count` value.

    Parameters:
    :   `out` - the `DataOutput` instance to write
        this `UID` to

    Throws:
    :   `IOException` - if an I/O error occurs while performing
        this operation
  + ### read

    public static [UID](UID.md "class in java.rmi.server") read([DataInput](../../../../java.base/java/io/DataInput.md "interface in java.io") in)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs and returns a new `UID` instance by
    unmarshalling a binary representation from an
    `DataInput` instance.

    Specifically, this method first invokes the given stream's
    [`DataInput.readInt()`](../../../../java.base/java/io/DataInput.md#readInt()) method to read a `unique` value,
    then it invoke's the stream's
    [`DataInput.readLong()`](../../../../java.base/java/io/DataInput.md#readLong()) method to read a `time` value,
    then it invoke's the stream's
    [`DataInput.readShort()`](../../../../java.base/java/io/DataInput.md#readShort()) method to read a `count` value,
    and then it creates and returns a new `UID` instance
    that contains the `unique`, `time`, and
    `count` values that were read from the stream.

    Parameters:
    :   `in` - the `DataInput` instance to read
        `UID` from

    Returns:
    :   unmarshalled `UID` instance

    Throws:
    :   `IOException` - if an I/O error occurs while performing
        this operation