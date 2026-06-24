Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface ObjectStreamConstants

All Known Implementing Classes:
:   `ObjectInputStream`, `ObjectOutputStream`

---

public interface ObjectStreamConstants

Constants written into the Object Serialization Stream.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `baseWireHandle`

  First wire handle to be assigned.

  `static final int`

  `PROTOCOL_VERSION_1`

  A Stream Protocol Version.

  `static final int`

  `PROTOCOL_VERSION_2`

  A Stream Protocol Version.

  `static final byte`

  `SC_BLOCK_DATA`

  Bit mask for ObjectStreamClass flag.

  `static final byte`

  `SC_ENUM`

  Bit mask for ObjectStreamClass flag.

  `static final byte`

  `SC_EXTERNALIZABLE`

  Bit mask for ObjectStreamClass flag.

  `static final byte`

  `SC_SERIALIZABLE`

  Bit mask for ObjectStreamClass flag.

  `static final byte`

  `SC_WRITE_METHOD`

  Bit mask for ObjectStreamClass flag.

  `static final SerializablePermission`

  `SERIAL_FILTER_PERMISSION`

  Enable setting the system-wide serial filter.

  `static final short`

  `STREAM_MAGIC`

  Magic number that is written to the stream header.

  `static final short`

  `STREAM_VERSION`

  Version number that is written to the stream header.

  `static final SerializablePermission`

  `SUBCLASS_IMPLEMENTATION_PERMISSION`

  Enable overriding of readObject and writeObject.

  `static final SerializablePermission`

  `SUBSTITUTION_PERMISSION`

  Enable substitution of one object for another during
  serialization/deserialization.

  `static final byte`

  `TC_ARRAY`

  new Array.

  `static final byte`

  `TC_BASE`

  First tag value.

  `static final byte`

  `TC_BLOCKDATA`

  Block of optional data.

  `static final byte`

  `TC_BLOCKDATALONG`

  long Block data.

  `static final byte`

  `TC_CLASS`

  Reference to Class.

  `static final byte`

  `TC_CLASSDESC`

  new Class Descriptor.

  `static final byte`

  `TC_ENDBLOCKDATA`

  End of optional block data blocks for an object.

  `static final byte`

  `TC_ENUM`

  new Enum constant.

  `static final byte`

  `TC_EXCEPTION`

  Exception during write.

  `static final byte`

  `TC_LONGSTRING`

  Long string.

  `static final byte`

  `TC_MAX`

  Last tag value.

  `static final byte`

  `TC_NULL`

  Null object reference.

  `static final byte`

  `TC_OBJECT`

  new Object.

  `static final byte`

  `TC_PROXYCLASSDESC`

  new Proxy Class Descriptor.

  `static final byte`

  `TC_REFERENCE`

  Reference to an object already written into the stream.

  `static final byte`

  `TC_RESET`

  Reset stream context.

  `static final byte`

  `TC_STRING`

  new String.

* ## Field Details

  + ### STREAM\_MAGIC

    static final short STREAM\_MAGIC

    Magic number that is written to the stream header.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.STREAM_MAGIC)
  + ### STREAM\_VERSION

    static final short STREAM\_VERSION

    Version number that is written to the stream header.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.STREAM_VERSION)
  + ### TC\_BASE

    static final byte TC\_BASE

    First tag value.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_BASE)
  + ### TC\_NULL

    static final byte TC\_NULL

    Null object reference.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_NULL)
  + ### TC\_REFERENCE

    static final byte TC\_REFERENCE

    Reference to an object already written into the stream.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_REFERENCE)
  + ### TC\_CLASSDESC

    static final byte TC\_CLASSDESC

    new Class Descriptor.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_CLASSDESC)
  + ### TC\_OBJECT

    static final byte TC\_OBJECT

    new Object.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_OBJECT)
  + ### TC\_STRING

    static final byte TC\_STRING

    new String.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_STRING)
  + ### TC\_ARRAY

    static final byte TC\_ARRAY

    new Array.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_ARRAY)
  + ### TC\_CLASS

    static final byte TC\_CLASS

    Reference to Class.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_CLASS)
  + ### TC\_BLOCKDATA

    static final byte TC\_BLOCKDATA

    Block of optional data. Byte following tag indicates number
    of bytes in this block data.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_BLOCKDATA)
  + ### TC\_ENDBLOCKDATA

    static final byte TC\_ENDBLOCKDATA

    End of optional block data blocks for an object.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_ENDBLOCKDATA)
  + ### TC\_RESET

    static final byte TC\_RESET

    Reset stream context. All handles written into stream are reset.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_RESET)
  + ### TC\_BLOCKDATALONG

    static final byte TC\_BLOCKDATALONG

    long Block data. The long following the tag indicates the
    number of bytes in this block data.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_BLOCKDATALONG)
  + ### TC\_EXCEPTION

    static final byte TC\_EXCEPTION

    Exception during write.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_EXCEPTION)
  + ### TC\_LONGSTRING

    static final byte TC\_LONGSTRING

    Long string.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_LONGSTRING)
  + ### TC\_PROXYCLASSDESC

    static final byte TC\_PROXYCLASSDESC

    new Proxy Class Descriptor.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_PROXYCLASSDESC)
  + ### TC\_ENUM

    static final byte TC\_ENUM

    new Enum constant.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_ENUM)
  + ### TC\_MAX

    static final byte TC\_MAX

    Last tag value.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.TC_MAX)
  + ### baseWireHandle

    static final int baseWireHandle

    First wire handle to be assigned.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.baseWireHandle)
  + ### SC\_WRITE\_METHOD

    static final byte SC\_WRITE\_METHOD

    Bit mask for ObjectStreamClass flag. Indicates a Serializable class
    defines its own writeObject method.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.SC_WRITE_METHOD)
  + ### SC\_BLOCK\_DATA

    static final byte SC\_BLOCK\_DATA

    Bit mask for ObjectStreamClass flag. Indicates Externalizable data
    written in Block Data mode.
    Added for PROTOCOL\_VERSION\_2.

    Since:
    :   1.2

    See Also:
    :   - [`PROTOCOL_VERSION_2`](#PROTOCOL_VERSION_2)
        - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.SC_BLOCK_DATA)
  + ### SC\_SERIALIZABLE

    static final byte SC\_SERIALIZABLE

    Bit mask for ObjectStreamClass flag. Indicates class is Serializable.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.SC_SERIALIZABLE)
  + ### SC\_EXTERNALIZABLE

    static final byte SC\_EXTERNALIZABLE

    Bit mask for ObjectStreamClass flag. Indicates class is Externalizable.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.SC_EXTERNALIZABLE)
  + ### SC\_ENUM

    static final byte SC\_ENUM

    Bit mask for ObjectStreamClass flag. Indicates class is an enum type.

    Since:
    :   1.5

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.SC_ENUM)
  + ### SUBSTITUTION\_PERMISSION

    static final [SerializablePermission](SerializablePermission.md "class in java.io") SUBSTITUTION\_PERMISSION

    Enable substitution of one object for another during
    serialization/deserialization.

    Since:
    :   1.2

    See Also:
    :   - [`ObjectOutputStream.enableReplaceObject(boolean)`](ObjectOutputStream.md#enableReplaceObject(boolean))
        - [`ObjectInputStream.enableResolveObject(boolean)`](ObjectInputStream.md#enableResolveObject(boolean))
  + ### SUBCLASS\_IMPLEMENTATION\_PERMISSION

    static final [SerializablePermission](SerializablePermission.md "class in java.io") SUBCLASS\_IMPLEMENTATION\_PERMISSION

    Enable overriding of readObject and writeObject.

    Since:
    :   1.2

    See Also:
    :   - [`ObjectOutputStream.writeObjectOverride(Object)`](ObjectOutputStream.md#writeObjectOverride(java.lang.Object))
        - [`ObjectInputStream.readObjectOverride()`](ObjectInputStream.md#readObjectOverride())
  + ### SERIAL\_FILTER\_PERMISSION

    static final [SerializablePermission](SerializablePermission.md "class in java.io") SERIAL\_FILTER\_PERMISSION

    Enable setting the system-wide serial filter.

    Since:
    :   9

    See Also:
    :   - [`ObjectInputFilter.Config.setSerialFilter(ObjectInputFilter)`](ObjectInputFilter.Config.md#setSerialFilter(java.io.ObjectInputFilter))
  + ### PROTOCOL\_VERSION\_1

    static final int PROTOCOL\_VERSION\_1

    A Stream Protocol Version.

    All externalizable data is written in JDK 1.1 external data
    format after calling this method. This version is needed to write
    streams containing Externalizable data that can be read by
    pre-JDK 1.1.6 JVMs.

    Since:
    :   1.2

    See Also:
    :   - [`ObjectOutputStream.useProtocolVersion(int)`](ObjectOutputStream.md#useProtocolVersion(int))
        - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.PROTOCOL_VERSION_1)
  + ### PROTOCOL\_VERSION\_2

    static final int PROTOCOL\_VERSION\_2

    A Stream Protocol Version.

    This protocol is written by JVM 1.2.

    Externalizable data is written in block data mode and is
    terminated with TC\_ENDBLOCKDATA. Externalizable class descriptor
    flags has SC\_BLOCK\_DATA enabled. JVM 1.1.6 and greater can
    read this format change.

    Enables writing a nonSerializable class descriptor into the
    stream. The serialVersionUID of a nonSerializable class is
    set to 0L.

    Since:
    :   1.2

    See Also:
    :   - [`ObjectOutputStream.useProtocolVersion(int)`](ObjectOutputStream.md#useProtocolVersion(int))
        - [`SC_BLOCK_DATA`](#SC_BLOCK_DATA)
        - [Constant Field Values](../../../constant-values.md#java.io.ObjectStreamConstants.PROTOCOL_VERSION_2)