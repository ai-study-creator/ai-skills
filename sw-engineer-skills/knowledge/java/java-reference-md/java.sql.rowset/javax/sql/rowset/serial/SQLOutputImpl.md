Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.serial](package-summary.md)

# Class SQLOutputImpl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.serial.SQLOutputImpl

All Implemented Interfaces:
:   `SQLOutput`

---

public class SQLOutputImpl
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [SQLOutput](../../../../../java.sql/java/sql/SQLOutput.md "interface in java.sql")

The output stream for writing the attributes of a
custom-mapped user-defined type (UDT) back to the database.
The driver uses this interface internally, and its
methods are never directly invoked by an application programmer.

When an application calls the
method `PreparedStatement.setObject`, the driver
checks to see whether the value to be written is a UDT with
a custom mapping. If it is, there will be an entry in a
type map containing the `Class` object for the
class that implements `SQLData` for this UDT.
If the value to be written is an instance of `SQLData`,
the driver will create an instance of `SQLOutputImpl`
and pass it to the method `SQLData.writeSQL`.
The method `writeSQL` in turn calls the
appropriate `SQLOutputImpl.writeXXX` methods
to write data from the `SQLData` object to
the `SQLOutputImpl` output stream as the
representation of an SQL user-defined type.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SQLOutputImpl(Vector<?> attributes,
  Map<String,?> map)`

  Creates a new `SQLOutputImpl` object
  initialized with the given vector of attributes and
  type map.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `writeArray(Array x)`

  Writes an `Array` object in the Java
  programming language to this `SQLOutputImpl`
  object.

  `void`

  `writeAsciiStream(InputStream x)`

  Writes a stream of ASCII characters to this
  `SQLOutputImpl` object.

  `void`

  `writeBigDecimal(BigDecimal x)`

  Writes a `java.math.BigDecimal` object in the Java programming
  language to this `SQLOutputImpl` object.

  `void`

  `writeBinaryStream(InputStream x)`

  Writes a stream of uninterpreted bytes to this `SQLOutputImpl`
  object.

  `void`

  `writeBlob(Blob x)`

  Writes a `Blob` object in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeBoolean(boolean x)`

  Writes a `boolean` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeByte(byte x)`

  Writes a `byte` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeBytes(byte[] x)`

  Writes an array of `bytes` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeCharacterStream(Reader x)`

  Writes a stream of Unicode characters to this
  `SQLOutputImpl` object.

  `void`

  `writeClob(Clob x)`

  Writes a `Clob` object in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeDate(Date x)`

  Writes a `java.sql.Date` object in the Java programming
  language to this `SQLOutputImpl` object.

  `void`

  `writeDouble(double x)`

  Writes a `double` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeFloat(float x)`

  Writes a `float` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeInt(int x)`

  Writes an `int` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeLong(long x)`

  Writes a `long` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeNClob(NClob x)`

  Writes an SQL `NCLOB` value to the stream.

  `void`

  `writeNString(String x)`

  Writes the next attribute to the stream as a `String`
  in the Java programming language.

  `void`

  `writeObject(SQLData x)`

  Writes to the stream the data contained in the given
  `SQLData` object.

  `void`

  `writeRef(Ref x)`

  Writes a `Ref` object in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeRowId(RowId x)`

  Writes an SQL `ROWID` value to the stream.

  `void`

  `writeShort(short x)`

  Writes a `short` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeSQLXML(SQLXML x)`

  Writes an SQL `XML` value to the stream.

  `void`

  `writeString(String x)`

  Writes a `String` in the Java programming language
  to this `SQLOutputImpl` object.

  `void`

  `writeStruct(Struct x)`

  Writes a `Struct` object in the Java
  programming language to this `SQLOutputImpl`
  object.

  `void`

  `writeTime(Time x)`

  Writes a `java.sql.Time` object in the Java programming
  language to this `SQLOutputImpl` object.

  `void`

  `writeTimestamp(Timestamp x)`

  Writes a `java.sql.Timestamp` object in the Java programming
  language to this `SQLOutputImpl` object.

  `void`

  `writeURL(URL url)`

  Writes an `java.sql.Type.DATALINK` object in the Java
  programming language to this `SQLOutputImpl` object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.sql.[SQLOutput](../../../../../java.sql/java/sql/SQLOutput.md "interface in java.sql")

  `writeObject`

* ## Constructor Details

  + ### SQLOutputImpl

    public SQLOutputImpl([Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<?> attributes,
    [Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),?> map)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new `SQLOutputImpl` object
    initialized with the given vector of attributes and
    type map. The driver will use the type map to determine
    which `SQLData.writeSQL` method to invoke.
    This method will then call the appropriate
    `SQLOutputImpl` writer methods in order and
    thereby write the attributes to the new output stream.

    Parameters:
    :   `attributes` - a `Vector` object containing the attributes of
        the UDT to be mapped to one or more objects in the Java
        programming language
    :   `map` - a `java.util.Map` object containing zero or
        more entries, with each entry consisting of 1) a `String`
        giving the fully qualified name of a UDT and 2) the
        `Class` object for the `SQLData` implementation
        that defines how the UDT is to be mapped

    Throws:
    :   `SQLException` - if the `attributes` or the `map`
        is a `null` value
* ## Method Details

  + ### writeString

    public void writeString([String](../../../../../java.base/java/lang/String.md "class in java.lang") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `String` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `CHAR`, `VARCHAR`, or
    `LONGVARCHAR` before returning it to the database.

    Specified by:
    :   `writeString` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeBoolean

    public void writeBoolean(boolean x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `boolean` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `BIT` before returning it to the database.

    Specified by:
    :   `writeBoolean` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeByte

    public void writeByte(byte x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `byte` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `BIT` before returning it to the database.

    Specified by:
    :   `writeByte` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeShort

    public void writeShort(short x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `short` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `SMALLINT` before returning it to the database.

    Specified by:
    :   `writeShort` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeInt

    public void writeInt(int x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes an `int` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `INTEGER` before returning it to the database.

    Specified by:
    :   `writeInt` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeLong

    public void writeLong(long x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `long` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `BIGINT` before returning it to the database.

    Specified by:
    :   `writeLong` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeFloat

    public void writeFloat(float x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `float` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `REAL` before returning it to the database.

    Specified by:
    :   `writeFloat` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeDouble

    public void writeDouble(double x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `double` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `DOUBLE` before returning it to the database.

    Specified by:
    :   `writeDouble` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeBigDecimal

    public void writeBigDecimal([BigDecimal](../../../../../java.base/java/math/BigDecimal.md "class in java.math") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `java.math.BigDecimal` object in the Java programming
    language to this `SQLOutputImpl` object. The driver converts
    it to an SQL `NUMERIC` before returning it to the database.

    Specified by:
    :   `writeBigDecimal` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeBytes

    public void writeBytes(byte[] x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes an array of `bytes` in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to an SQL `VARBINARY` or `LONGVARBINARY`
    before returning it to the database.

    Specified by:
    :   `writeBytes` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeDate

    public void writeDate([Date](../../../../../java.sql/java/sql/Date.md "class in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `java.sql.Date` object in the Java programming
    language to this `SQLOutputImpl` object. The driver converts
    it to an SQL `DATE` before returning it to the database.

    Specified by:
    :   `writeDate` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeTime

    public void writeTime([Time](../../../../../java.sql/java/sql/Time.md "class in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `java.sql.Time` object in the Java programming
    language to this `SQLOutputImpl` object. The driver converts
    it to an SQL `TIME` before returning it to the database.

    Specified by:
    :   `writeTime` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeTimestamp

    public void writeTimestamp([Timestamp](../../../../../java.sql/java/sql/Timestamp.md "class in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `java.sql.Timestamp` object in the Java programming
    language to this `SQLOutputImpl` object. The driver converts
    it to an SQL `TIMESTAMP` before returning it to the database.

    Specified by:
    :   `writeTimestamp` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeCharacterStream

    public void writeCharacterStream([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a stream of Unicode characters to this
    `SQLOutputImpl` object. The driver will do any necessary
    conversion from Unicode to the database `CHAR` format.

    Specified by:
    :   `writeCharacterStream` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeAsciiStream

    public void writeAsciiStream([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a stream of ASCII characters to this
    `SQLOutputImpl` object. The driver will do any necessary
    conversion from ASCII to the database `CHAR` format.

    Specified by:
    :   `writeAsciiStream` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeBinaryStream

    public void writeBinaryStream([InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a stream of uninterpreted bytes to this `SQLOutputImpl`
    object.

    Specified by:
    :   `writeBinaryStream` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeObject

    public void writeObject([SQLData](../../../../../java.sql/java/sql/SQLData.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes to the stream the data contained in the given
    `SQLData` object.
    When the `SQLData` object is `null`, this
    method writes an SQL `NULL` to the stream.
    Otherwise, it calls the `SQLData.writeSQL`
    method of the given object, which
    writes the object's attributes to the stream.

    The implementation of the method `SQLData.writeSQ`
    calls the appropriate `SQLOutputImpl.writeXXX` method(s)
    for writing each of the object's attributes in order.
    The attributes must be read from an `SQLInput`
    input stream and written to an `SQLOutputImpl`
    output stream in the same order in which they were
    listed in the SQL definition of the user-defined type.

    Specified by:
    :   `writeObject` in interface `SQLOutput`

    Parameters:
    :   `x` - the object representing data of an SQL structured or
        distinct type

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeRef

    public void writeRef([Ref](../../../../../java.sql/java/sql/Ref.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `Ref` object in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to a serializable `SerialRef` SQL `REF` value
    before returning it to the database.

    Specified by:
    :   `writeRef` in interface `SQLOutput`

    Parameters:
    :   `x` - an object representing an SQL `REF` value

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeBlob

    public void writeBlob([Blob](../../../../../java.sql/java/sql/Blob.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `Blob` object in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to a serializable `SerialBlob` SQL `BLOB` value
    before returning it to the database.

    Specified by:
    :   `writeBlob` in interface `SQLOutput`

    Parameters:
    :   `x` - an object representing an SQL `BLOB` value

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeClob

    public void writeClob([Clob](../../../../../java.sql/java/sql/Clob.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `Clob` object in the Java programming language
    to this `SQLOutputImpl` object. The driver converts
    it to a serializable `SerialClob` SQL `CLOB` value
    before returning it to the database.

    Specified by:
    :   `writeClob` in interface `SQLOutput`

    Parameters:
    :   `x` - an object representing an SQL `CLOB` value

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeStruct

    public void writeStruct([Struct](../../../../../java.sql/java/sql/Struct.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes a `Struct` object in the Java
    programming language to this `SQLOutputImpl`
    object. The driver converts this value to an SQL structured type
    before returning it to the database.

    This method should be used when an SQL structured type has been
    mapped to a `Struct` object in the Java programming
    language (the standard mapping). The method
    `writeObject` should be used if an SQL structured type
    has been custom mapped to a class in the Java programming language.

    Specified by:
    :   `writeStruct` in interface `SQLOutput`

    Parameters:
    :   `x` - an object representing the attributes of an SQL structured type

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeArray

    public void writeArray([Array](../../../../../java.sql/java/sql/Array.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes an `Array` object in the Java
    programming language to this `SQLOutputImpl`
    object. The driver converts this value to a serializable
    `SerialArray` SQL `ARRAY`
    value before returning it to the database.

    Specified by:
    :   `writeArray` in interface `SQLOutput`

    Parameters:
    :   `x` - an object representing an SQL `ARRAY` value

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeURL

    public void writeURL([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes an `java.sql.Type.DATALINK` object in the Java
    programming language to this `SQLOutputImpl` object. The
    driver converts this value to a serializable `SerialDatalink`
    SQL `DATALINK` value before return it to the database.

    Specified by:
    :   `writeURL` in interface `SQLOutput`

    Parameters:
    :   `url` - an object representing a SQL `DATALINK` value

    Throws:
    :   `SQLException` - if the `SQLOutputImpl` object is in
        use by a `SQLData` object attempting to write the attribute
        values of a UDT to the database.
  + ### writeNString

    public void writeNString([String](../../../../../java.base/java/lang/String.md "class in java.lang") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes the next attribute to the stream as a `String`
    in the Java programming language. The driver converts this to a
    SQL `NCHAR` or
    `NVARCHAR` or `LONGNVARCHAR` value
    (depending on the argument's
    size relative to the driver's limits on `NVARCHAR` values)
    when it sends it to the stream.

    Specified by:
    :   `writeNString` in interface `SQLOutput`

    Parameters:
    :   `x` - the value to pass to the database

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### writeNClob

    public void writeNClob([NClob](../../../../../java.sql/java/sql/NClob.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes an SQL `NCLOB` value to the stream.

    Specified by:
    :   `writeNClob` in interface `SQLOutput`

    Parameters:
    :   `x` - a `NClob` object representing data of an SQL
        `NCLOB` value

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### writeRowId

    public void writeRowId([RowId](../../../../../java.sql/java/sql/RowId.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes an SQL `ROWID` value to the stream.

    Specified by:
    :   `writeRowId` in interface `SQLOutput`

    Parameters:
    :   `x` - a `RowId` object representing data of an SQL
        `ROWID` value

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### writeSQLXML

    public void writeSQLXML([SQLXML](../../../../../java.sql/java/sql/SQLXML.md "interface in java.sql") x)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes an SQL `XML` value to the stream.

    Specified by:
    :   `writeSQLXML` in interface `SQLOutput`

    Parameters:
    :   `x` - a `SQLXML` object representing data of an SQL
        `XML` value

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6