Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.serial](package-summary.md)

# Class SQLInputImpl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.serial.SQLInputImpl

All Implemented Interfaces:
:   `SQLInput`

---

public class SQLInputImpl
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [SQLInput](../../../../../java.sql/java/sql/SQLInput.md "interface in java.sql")

An input stream used for custom mapping user-defined types (UDTs).
An `SQLInputImpl` object is an input stream that contains a
stream of values that are the attributes of a UDT.

This class is used by the driver behind the scenes when the method
`getObject` is called on an SQL structured or distinct type
that has a custom mapping; a programmer never invokes
`SQLInputImpl` methods directly. They are provided here as a
convenience for those who write `RowSet` implementations.

The `SQLInputImpl` class provides a set of
reader methods analogous to the `ResultSet` getter
methods. These methods make it possible to read the values in an
`SQLInputImpl` object.

The method `wasNull` is used to determine whether the
the last value read was SQL `NULL`.

When the method `getObject` is called with an
object of a class implementing the interface `SQLData`,
the JDBC driver calls the method `SQLData.getSQLType`
to determine the SQL type of the UDT being custom mapped. The driver
creates an instance of `SQLInputImpl`, populating it with the
attributes of the UDT. The driver then passes the input
stream to the method `SQLData.readSQL`, which in turn
calls the `SQLInputImpl` reader methods
to read the attributes from the input stream.

Since:
:   1.5

See Also:
:   * [`SQLData`](../../../../../java.sql/java/sql/SQLData.md "interface in java.sql")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SQLInputImpl(Object[] attributes,
  Map<String,Class<?>> map)`

  Creates an `SQLInputImpl` object initialized with the
  given array of attributes and the given type map.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Array`

  `readArray()`

  Reads an SQL `ARRAY` value from the stream and
  returns it as an `Array` object in the Java programming
  language.

  `InputStream`

  `readAsciiStream()`

  Returns the next attribute in this `SQLInputImpl` object
  as a stream of ASCII characters.

  `BigDecimal`

  `readBigDecimal()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as a `java.math.BigDecimal`.

  `InputStream`

  `readBinaryStream()`

  Returns the next attribute in this `SQLInputImpl` object
  as a stream of uninterpreted bytes.

  `Blob`

  `readBlob()`

  Retrieves the `BLOB` value at the head of this
  `SQLInputImpl` object as a `Blob` object
  in the Java programming language.

  `boolean`

  `readBoolean()`

  Retrieves the next attribute in this `SQLInputImpl` object as
  a `boolean` in the Java programming language.

  `byte`

  `readByte()`

  Retrieves the next attribute in this `SQLInputImpl` object as
  a `byte` in the Java programming language.

  `byte[]`

  `readBytes()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as an array of bytes.

  `Reader`

  `readCharacterStream()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as a stream of Unicode characters.

  `Clob`

  `readClob()`

  Retrieves the `CLOB` value at the head of this
  `SQLInputImpl` object as a `Clob` object
  in the Java programming language.

  `Date`

  `readDate()`

  Retrieves the next attribute in this `SQLInputImpl` as
  a `java.sql.Date` object.

  `double`

  `readDouble()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as a `double` in the Java programming language.

  `float`

  `readFloat()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as a `float` in the Java programming language.

  `int`

  `readInt()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as an `int` in the Java programming language.

  `long`

  `readLong()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as a `long` in the Java programming language.

  `NClob`

  `readNClob()`

  Reads an SQL `NCLOB` value from the stream and returns it as a
  `Clob` object in the Java programming language.

  `String`

  `readNString()`

  Reads the next attribute in the stream and returns it as a `String`
  in the Java programming language.

  `Object`

  `readObject()`

  Retrieves the value at the head of this `SQLInputImpl`
  object as an `Object` in the Java programming language.

  `Ref`

  `readRef()`

  Retrieves the value at the head of this `SQLInputImpl` object
  as a `Ref` object in the Java programming language.

  `RowId`

  `readRowId()`

  Reads an SQL `ROWID` value from the stream and returns it as a
  `RowId` object in the Java programming language.

  `short`

  `readShort()`

  Retrieves the next attribute in this `SQLInputImpl` object
  as a `short` in the Java programming language.

  `SQLXML`

  `readSQLXML()`

  Reads an SQL `XML` value from the stream and returns it as a
  `SQLXML` object in the Java programming language.

  `String`

  `readString()`

  Retrieves the next attribute in this `SQLInputImpl` object as
  a `String` in the Java programming language.

  `Time`

  `readTime()`

  Retrieves the next attribute in this `SQLInputImpl` object as
  a `java.sql.Time` object.

  `Timestamp`

  `readTimestamp()`

  Retrieves the next attribute in this `SQLInputImpl` object as
  a `java.sql.Timestamp` object.

  `URL`

  `readURL()`

  Reads an SQL `DATALINK` value from the stream and
  returns it as an `URL` object in the Java programming
  language.

  `boolean`

  `wasNull()`

  Ascertains whether the last value read from this
  `SQLInputImpl` object was `null`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.sql.[SQLInput](../../../../../java.sql/java/sql/SQLInput.md "interface in java.sql")

  `readObject`

* ## Constructor Details

  + ### SQLInputImpl

    public SQLInputImpl([Object](../../../../../java.base/java/lang/Object.md "class in java.lang")[] attributes,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),[Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<?>> map)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates an `SQLInputImpl` object initialized with the
    given array of attributes and the given type map. If any of the
    attributes is a UDT whose name is in an entry in the type map,
    the attribute will be mapped according to the corresponding
    `SQLData` implementation.

    Parameters:
    :   `attributes` - an array of `Object` instances in which
        each element is an attribute of a UDT. The order of the
        attributes in the array is the same order in which
        the attributes were defined in the UDT definition.
    :   `map` - a `java.util.Map` object containing zero or more
        entries, with each entry consisting of 1) a `String`
        giving the fully
        qualified name of the UDT and 2) the `Class` object
        for the `SQLData` implementation that defines how
        the UDT is to be mapped

    Throws:
    :   `SQLException` - if the `attributes` or the `map`
        is a `null` value
* ## Method Details

  + ### readString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") readString()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object as
    a `String` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData`
    implementation.

    Specified by:
    :   `readString` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no further values in the stream.
  + ### readBoolean

    public boolean readBoolean()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object as
    a `boolean` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData`
    implementation.

    Specified by:
    :   `readBoolean` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no further values in the stream.
  + ### readByte

    public byte readByte()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object as
    a `byte` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData`
    implementation.

    Specified by:
    :   `readByte` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no further values in the stream
  + ### readShort

    public short readShort()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as a `short` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readShort` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readInt

    public int readInt()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as an `int` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readInt` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readLong

    public long readLong()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as a `long` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readLong` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readFloat

    public float readFloat()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as a `float` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readFloat` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readDouble

    public double readDouble()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as a `double` in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readDouble` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readBigDecimal

    public [BigDecimal](../../../../../java.base/java/math/BigDecimal.md "class in java.math") readBigDecimal()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as a `java.math.BigDecimal`.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readBigDecimal` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readBytes

    public byte[] readBytes()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as an array of bytes.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readBytes` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readDate

    public [Date](../../../../../java.sql/java/sql/Date.md "class in java.sql") readDate()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` as
    a `java.sql.Date` object.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type; this responsibility is delegated
    to the UDT mapping as defined by a `SQLData` implementation.

    Specified by:
    :   `readDate` in interface `SQLInput`

    Returns:
    :   the next attribute in this `SQLInputImpl` object;
        if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position or if there are no more values in the stream
  + ### readTime

    public [Time](../../../../../java.sql/java/sql/Time.md "class in java.sql") readTime()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object as
    a `java.sql.Time` object.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readTime` in interface `SQLInput`

    Returns:
    :   the attribute; if the value is `SQL NULL`, return
        `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readTimestamp

    public [Timestamp](../../../../../java.sql/java/sql/Timestamp.md "class in java.sql") readTimestamp()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object as
    a `java.sql.Timestamp` object.

    Specified by:
    :   `readTimestamp` in interface `SQLInput`

    Returns:
    :   the attribute; if the value is `SQL NULL`, return
        `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readCharacterStream

    public [Reader](../../../../../java.base/java/io/Reader.md "class in java.io") readCharacterStream()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the next attribute in this `SQLInputImpl` object
    as a stream of Unicode characters.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readCharacterStream` in interface `SQLInput`

    Returns:
    :   the attribute; if the value is `SQL NULL`, return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readAsciiStream

    public [InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") readAsciiStream()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Returns the next attribute in this `SQLInputImpl` object
    as a stream of ASCII characters.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readAsciiStream` in interface `SQLInput`

    Returns:
    :   the attribute; if the value is `SQL NULL`,
        return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readBinaryStream

    public [InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") readBinaryStream()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Returns the next attribute in this `SQLInputImpl` object
    as a stream of uninterpreted bytes.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readBinaryStream` in interface `SQLInput`

    Returns:
    :   the attribute; if the value is `SQL NULL`, return
        `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readObject

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") readObject()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the value at the head of this `SQLInputImpl`
    object as an `Object` in the Java programming language. The
    actual type of the object returned is determined by the default
    mapping of SQL types to types in the Java programming language unless
    there is a custom mapping, in which case the type of the object
    returned is determined by this stream's type map.

    The JDBC technology-enabled driver registers a type map with the stream
    before passing the stream to the application.

    When the datum at the head of the stream is an SQL `NULL`,
    this method returns `null`. If the datum is an SQL
    structured or distinct type with a custom mapping, this method
    determines the SQL type of the datum at the head of the stream,
    constructs an object of the appropriate class, and calls the method
    `SQLData.readSQL` on that object. The `readSQL`
    method then calls the appropriate `SQLInputImpl.readXXX`
    methods to retrieve the attribute values from the stream.

    Specified by:
    :   `readObject` in interface `SQLInput`

    Returns:
    :   the value at the head of the stream as an `Object`
        in the Java programming language; `null` if
        the value is SQL `NULL`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readRef

    public [Ref](../../../../../java.sql/java/sql/Ref.md "interface in java.sql") readRef()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the value at the head of this `SQLInputImpl` object
    as a `Ref` object in the Java programming language.

    Specified by:
    :   `readRef` in interface `SQLInput`

    Returns:
    :   a `Ref` object representing the SQL
        `REF` value at the head of the stream; if the value
        is `SQL NULL` return `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readBlob

    public [Blob](../../../../../java.sql/java/sql/Blob.md "interface in java.sql") readBlob()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the `BLOB` value at the head of this
    `SQLInputImpl` object as a `Blob` object
    in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readBlob` in interface `SQLInput`

    Returns:
    :   a `Blob` object representing the SQL
        `BLOB` value at the head of this stream;
        if the value is `SQL NULL`, return
        `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readClob

    public [Clob](../../../../../java.sql/java/sql/Clob.md "interface in java.sql") readClob()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the `CLOB` value at the head of this
    `SQLInputImpl` object as a `Clob` object
    in the Java programming language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readClob` in interface `SQLInput`

    Returns:
    :   a `Clob` object representing the SQL
        `CLOB` value at the head of the stream;
        if the value is `SQL NULL`, return
        `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readArray

    public [Array](../../../../../java.sql/java/sql/Array.md "interface in java.sql") readArray()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Reads an SQL `ARRAY` value from the stream and
    returns it as an `Array` object in the Java programming
    language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readArray` in interface `SQLInput`

    Returns:
    :   an `Array` object representing the SQL
        `ARRAY` value at the head of the stream; \*
        if the value is `SQL NULL`, return
        `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### wasNull

    public boolean wasNull()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Ascertains whether the last value read from this
    `SQLInputImpl` object was `null`.

    Specified by:
    :   `wasNull` in interface `SQLInput`

    Returns:
    :   `true` if the SQL value read most recently was
        `null`; otherwise, `false`; by default it
        will return false

    Throws:
    :   `SQLException` - if an error occurs determining the last value
        read was a `null` value or not;
  + ### readURL

    public [URL](../../../../../java.base/java/net/URL.md "class in java.net") readURL()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Reads an SQL `DATALINK` value from the stream and
    returns it as an `URL` object in the Java programming
    language.

    This method does not perform type-safe checking to determine if the
    returned type is the expected type as this responsibility is delegated
    to the UDT mapping as implemented by a `SQLData`
    implementation.

    Specified by:
    :   `readURL` in interface `SQLInput`

    Returns:
    :   an `URL` object representing the SQL
        `DATALINK` value at the head of the stream; \*
        if the value is `SQL NULL`, return
        `null`

    Throws:
    :   `SQLException` - if the read position is located at an invalid
        position; or if there are no further values in the stream.
  + ### readNClob

    public [NClob](../../../../../java.sql/java/sql/NClob.md "interface in java.sql") readNClob()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Reads an SQL `NCLOB` value from the stream and returns it as a
    `Clob` object in the Java programming language.

    Specified by:
    :   `readNClob` in interface `SQLInput`

    Returns:
    :   a `NClob` object representing data of the SQL `NCLOB` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### readNString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") readNString()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Reads the next attribute in the stream and returns it as a `String`
    in the Java programming language. It is intended for use when
    accessing `NCHAR`,`NVARCHAR`
    and `LONGNVARCHAR` columns.

    Specified by:
    :   `readNString` in interface `SQLInput`

    Returns:
    :   the attribute; if the value is SQL `NULL`, returns `null`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### readSQLXML

    public [SQLXML](../../../../../java.sql/java/sql/SQLXML.md "interface in java.sql") readSQLXML()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Reads an SQL `XML` value from the stream and returns it as a
    `SQLXML` object in the Java programming language.

    Specified by:
    :   `readSQLXML` in interface `SQLInput`

    Returns:
    :   a `SQLXML` object representing data of the SQL `XML` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### readRowId

    public [RowId](../../../../../java.sql/java/sql/RowId.md "interface in java.sql") readRowId()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Reads an SQL `ROWID` value from the stream and returns it as a
    `RowId` object in the Java programming language.

    Specified by:
    :   `readRowId` in interface `SQLInput`

    Returns:
    :   a `RowId` object representing data of the SQL `ROWID` value
        at the head of the stream; `null` if the value read is
        SQL `NULL`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6