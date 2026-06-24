Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.serial](package-summary.md)

# Class SerialClob

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.serial.SerialClob

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Clob`

---

public class SerialClob
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Clob](../../../../../java.sql/java/sql/Clob.md "interface in java.sql"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A serialized mapping in the Java programming language of an SQL
`CLOB` value.

The `SerialClob` class provides a constructor for creating
an instance from a `Clob` object. Note that the `Clob`
object should have brought the SQL `CLOB` value's data over
to the client before a `SerialClob` object
is constructed from it. The data of an SQL `CLOB` value can
be materialized on the client as a stream of Unicode characters.

`SerialClob` methods make it possible to get a substring
from a `SerialClob` object or to locate the start of
a pattern of characters.

## Thread safety

A SerialClob is not safe for use by multiple concurrent threads. If a
SerialClob is to be used by more than one thread then access to the SerialClob
should be controlled by appropriate synchronization.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.sql.rowset.serial.SerialClob)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SerialClob(char[] ch)`

  Constructs a `SerialClob` object that is a serialized version of
  the given `char` array.

  `SerialClob(Clob clob)`

  Constructs a `SerialClob` object that is a serialized
  version of the given `Clob` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone of this `SerialClob`.

  `boolean`

  `equals(Object obj)`

  Compares this SerialClob to the specified object.

  `void`

  `free()`

  This method frees the `SerialClob` object and releases the
  resources that it holds.

  `InputStream`

  `getAsciiStream()`

  Retrieves the `CLOB` value designated by this `SerialClob`
  object as an ascii stream.

  `Reader`

  `getCharacterStream()`

  Returns this `SerialClob` object's data as a stream
  of Unicode characters.

  `Reader`

  `getCharacterStream(long pos,
  long length)`

  Returns a `Reader` object that contains a partial
  `SerialClob` value, starting
  with the character specified by pos, which is length characters in length.

  `String`

  `getSubString(long pos,
  int length)`

  Returns a copy of the substring contained in this
  `SerialClob` object, starting at the given position
  and continuing for the specified number or characters.

  `int`

  `hashCode()`

  Returns a hash code for this `SerialClob`.

  `long`

  `length()`

  Retrieves the number of characters in this `SerialClob`
  object's array of characters.

  `long`

  `position(String searchStr,
  long start)`

  Returns the position in this `SerialClob` object
  where the given `String` object begins, starting
  the search at the specified position.

  `long`

  `position(Clob searchStr,
  long start)`

  Returns the position in this `SerialClob` object
  where the given `Clob` signature begins, starting
  the search at the specified position.

  `OutputStream`

  `setAsciiStream(long pos)`

  Retrieves a stream to be used to write Ascii characters to the
  `CLOB` value that this `SerialClob` object represents,
  starting at position `pos`.

  `Writer`

  `setCharacterStream(long pos)`

  Retrieves a stream to be used to write a stream of Unicode characters
  to the `CLOB` value that this `SerialClob` object
  represents, at position `pos`.

  `int`

  `setString(long pos,
  String str)`

  Writes the given Java `String` to the `CLOB`
  value that this `SerialClob` object represents, at the position
  `pos`.

  `int`

  `setString(long pos,
  String str,
  int offset,
  int length)`

  Writes `len` characters of `str`, starting
  at character `offset`, to the `CLOB` value
  that this `Clob` represents.

  `void`

  `truncate(long length)`

  Truncates the `CLOB` value that this `SerialClob`
  object represents so that it has a length of `len`
  characters.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SerialClob

    public SerialClob(char[] ch)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Constructs a `SerialClob` object that is a serialized version of
    the given `char` array.

    The new `SerialClob` object is initialized with the data from the
    `char` array, thus allowing disconnected `RowSet`
    objects to establish a serialized `Clob` object without touching
    the data source.

    Parameters:
    :   `ch` - the char array representing the `Clob` object to be
        serialized

    Throws:
    :   `SerialException` - if an error occurs during serialization
    :   `SQLException` - if a SQL error occurs
  + ### SerialClob

    public SerialClob([Clob](../../../../../java.sql/java/sql/Clob.md "interface in java.sql") clob)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Constructs a `SerialClob` object that is a serialized
    version of the given `Clob` object.

    The new `SerialClob` object is initialized with the
    data from the `Clob` object; therefore, the
    `Clob` object should have previously brought the
    SQL `CLOB` value's data over to the client from
    the database. Otherwise, the new `SerialClob` object
    object will contain no data.

    Note: The `Clob` object supplied to this constructor must
    return non-null for both the `Clob.getCharacterStream()`
    and `Clob.getAsciiStream` methods. This `SerialClob`
    constructor cannot serialize a `Clob` object in this instance
    and will throw an `SQLException` object.

    Parameters:
    :   `clob` - the `Clob` object from which this
        `SerialClob` object is to be constructed; cannot be null

    Throws:
    :   `SerialException` - if an error occurs during serialization
    :   `SQLException` - if a SQL error occurs in capturing the CLOB;
        if the `Clob` object is a null; or if either of the
        `Clob.getCharacterStream()` and `Clob.getAsciiStream()`
        methods on the `Clob` returns a null

    See Also:
    :   - [`Clob`](../../../../../java.sql/java/sql/Clob.md "interface in java.sql")
* ## Method Details

  + ### length

    public long length()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Retrieves the number of characters in this `SerialClob`
    object's array of characters.

    Specified by:
    :   `length` in interface `Clob`

    Returns:
    :   a `long` indicating the length in characters of this
        `SerialClob` object's array of character

    Throws:
    :   `SerialException` - if an error occurs;
        if `free` had previously been called on this object
  + ### getCharacterStream

    public [Reader](../../../../../java.base/java/io/Reader.md "class in java.io") getCharacterStream()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns this `SerialClob` object's data as a stream
    of Unicode characters. Unlike the related method, `getAsciiStream`,
    a stream is produced regardless of whether the `SerialClob` object
    was created with a `Clob` object or a `char` array.

    Specified by:
    :   `getCharacterStream` in interface `Clob`

    Returns:
    :   a `java.io.Reader` object containing this
        `SerialClob` object's data

    Throws:
    :   `SerialException` - if an error occurs;
        if `free` had previously been called on this object

    See Also:
    :   - [`Clob.setCharacterStream(long)`](../../../../../java.sql/java/sql/Clob.md#setCharacterStream(long))
  + ### getAsciiStream

    public [InputStream](../../../../../java.base/java/io/InputStream.md "class in java.io") getAsciiStream()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves the `CLOB` value designated by this `SerialClob`
    object as an ascii stream. This method forwards the `getAsciiStream`
    call to the underlying `Clob` object in the event that this
    `SerialClob` object is instantiated with a `Clob`
    object. If this `SerialClob` object is instantiated with
    a `char` array, a `SerialException` object is thrown.

    Specified by:
    :   `getAsciiStream` in interface `Clob`

    Returns:
    :   a `java.io.InputStream` object containing
        this `SerialClob` object's data

    Throws:
    :   `SerialException` - if this `SerialClob` object was not
        instantiated with a `Clob` object;
        if `free` had previously been called on this object
    :   `SQLException` - if there is an error accessing the
        `CLOB` value represented by the `Clob` object
        that was used to create this `SerialClob` object

    See Also:
    :   - [`Clob.setAsciiStream(long)`](../../../../../java.sql/java/sql/Clob.md#setAsciiStream(long))
  + ### getSubString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getSubString(long pos,
    int length)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns a copy of the substring contained in this
    `SerialClob` object, starting at the given position
    and continuing for the specified number or characters.

    Specified by:
    :   `getSubString` in interface `Clob`

    Parameters:
    :   `pos` - the position of the first character in the substring
        to be copied; the first character of the
        `SerialClob` object is at position
        `1`; must not be less than `1`,
        and the sum of the starting position and the length
        of the substring must be less than the length of this
        `SerialClob` object
    :   `length` - the number of characters in the substring to be
        returned; must not be greater than the length of
        this `SerialClob` object, and the
        sum of the starting position and the length
        of the substring must be less than the length of this
        `SerialClob` object

    Returns:
    :   a `String` object containing a substring of
        this `SerialClob` object beginning at the
        given position and containing the specified number of
        consecutive characters

    Throws:
    :   `SerialException` - if either of the arguments is out of bounds;
        if `free` had previously been called on this object
  + ### position

    public long position([String](../../../../../java.base/java/lang/String.md "class in java.lang") searchStr,
    long start)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Returns the position in this `SerialClob` object
    where the given `String` object begins, starting
    the search at the specified position. This method returns
    `-1` if the pattern is not found.

    Specified by:
    :   `position` in interface `Clob`

    Parameters:
    :   `searchStr` - the `String` object for which to
        search
    :   `start` - the position in this `SerialClob` object
        at which to start the search; the first position is
        `1`; must not be less than `1` nor
        greater than the length of this `SerialClob` object

    Returns:
    :   the position at which the given `String` object
        begins, starting the search at the specified position;
        `-1` if the given `String` object is
        not found or the starting position is out of bounds; position
        numbering for the return value starts at `1`

    Throws:
    :   `SerialException` - if the `free` method had been
        previously called on this object
    :   `SQLException` - if there is an error accessing the Clob value
        from the database.
  + ### position

    public long position([Clob](../../../../../java.sql/java/sql/Clob.md "interface in java.sql") searchStr,
    long start)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Returns the position in this `SerialClob` object
    where the given `Clob` signature begins, starting
    the search at the specified position. This method returns
    `-1` if the pattern is not found.

    Specified by:
    :   `position` in interface `Clob`

    Parameters:
    :   `searchStr` - the `Clob` object for which to search
    :   `start` - the position in this `SerialClob` object
        at which to begin the search; the first position is
        `1`; must not be less than `1` nor
        greater than the length of this `SerialClob` object

    Returns:
    :   the position at which the given `Clob`
        object begins in this `SerialClob` object,
        at or after the specified starting position

    Throws:
    :   `SerialException` - if an error occurs locating the Clob signature;
        if the `free` method had been previously called on this object
    :   `SQLException` - if there is an error accessing the Clob value
        from the database
  + ### setString

    public int setString(long pos,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") str)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Writes the given Java `String` to the `CLOB`
    value that this `SerialClob` object represents, at the position
    `pos`.

    Specified by:
    :   `setString` in interface `Clob`

    Parameters:
    :   `pos` - the position at which to start writing to the `CLOB`
        value that this `SerialClob` object represents; the first
        position is `1`; must not be less than `1` nor
        greater than the length+1 of this `SerialClob` object
    :   `str` - the string to be written to the `CLOB`
        value that this `SerialClob` object represents

    Returns:
    :   the number of characters written

    Throws:
    :   `SerialException` - if there is an error accessing the
        `CLOB` value; if an invalid position is set;
        if the `free` method had been previously called on this object
  + ### setString

    public int setString(long pos,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") str,
    int offset,
    int length)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Writes `len` characters of `str`, starting
    at character `offset`, to the `CLOB` value
    that this `Clob` represents.

    Specified by:
    :   `setString` in interface `Clob`

    Parameters:
    :   `pos` - the position at which to start writing to the `CLOB`
        value that this `SerialClob` object represents; the first
        position is `1`; must not be less than `1` nor
        greater than the length+1 of this `SerialClob` object
    :   `str` - the string to be written to the `CLOB`
        value that this `Clob` object represents
    :   `offset` - the offset into `str` to start reading
        the characters to be written
    :   `length` - the number of characters to be written

    Returns:
    :   the number of characters written

    Throws:
    :   `SerialException` - if there is an error accessing the
        `CLOB` value; if an invalid position is set; if an
        invalid offset value is set; or the combined values of the
        `length` and `offset` is greater than the length of
        `str`;
        if the `free` method had been previously called on this object
  + ### setAsciiStream

    public [OutputStream](../../../../../java.base/java/io/OutputStream.md "class in java.io") setAsciiStream(long pos)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves a stream to be used to write Ascii characters to the
    `CLOB` value that this `SerialClob` object represents,
    starting at position `pos`. This method forwards the
    `setAsciiStream()` call to the underlying `Clob` object in
    the event that this `SerialClob` object is instantiated with a
    `Clob` object. If this `SerialClob` object is instantiated
    with a `char` array, a `SerialException` object is thrown.

    Specified by:
    :   `setAsciiStream` in interface `Clob`

    Parameters:
    :   `pos` - the position at which to start writing to the
        `CLOB` object

    Returns:
    :   the stream to which ASCII encoded characters can be written

    Throws:
    :   `SerialException` - if SerialClob is not instantiated with a
        Clob object;
        if the `free` method had been previously called on this object
    :   `SQLException` - if there is an error accessing the
        `CLOB` value

    See Also:
    :   - [`getAsciiStream()`](#getAsciiStream())
  + ### setCharacterStream

    public [Writer](../../../../../java.base/java/io/Writer.md "class in java.io") setCharacterStream(long pos)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Retrieves a stream to be used to write a stream of Unicode characters
    to the `CLOB` value that this `SerialClob` object
    represents, at position `pos`. This method forwards the
    `setCharacterStream()` call to the underlying `Clob`
    object in the event that this `SerialClob` object is instantiated with a
    `Clob` object. If this `SerialClob` object is instantiated with
    a `char` array, a `SerialException` is thrown.

    Specified by:
    :   `setCharacterStream` in interface `Clob`

    Parameters:
    :   `pos` - the position at which to start writing to the
        `CLOB` value

    Returns:
    :   a stream to which Unicode encoded characters can be written

    Throws:
    :   `SerialException` - if the SerialClob is not instantiated with
        a Clob object;
        if the `free` method had been previously called on this object
    :   `SQLException` - if there is an error accessing the
        `CLOB` value

    See Also:
    :   - [`getCharacterStream()`](#getCharacterStream())
  + ### truncate

    public void truncate(long length)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Truncates the `CLOB` value that this `SerialClob`
    object represents so that it has a length of `len`
    characters.

    Truncating a `SerialClob` object to length 0 has the effect of
    clearing its contents.

    Specified by:
    :   `truncate` in interface `Clob`

    Parameters:
    :   `length` - the length, in bytes, to which the `CLOB`
        value should be truncated

    Throws:
    :   `SerialException` - if there is an error accessing the
        `CLOB` value;
        if the `free` method had been previously called on this object
  + ### getCharacterStream

    public [Reader](../../../../../java.base/java/io/Reader.md "class in java.io") getCharacterStream(long pos,
    long length)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Returns a `Reader` object that contains a partial
    `SerialClob` value, starting
    with the character specified by pos, which is length characters in length.

    Specified by:
    :   `getCharacterStream` in interface `Clob`

    Parameters:
    :   `pos` - the offset to the first character of the partial value to
        be retrieved. The first character in the `SerialClob` is at position 1.
    :   `length` - the length in characters of the partial value to be retrieved.

    Returns:
    :   `Reader` through which the partial `SerialClob`
        value can be read.

    Throws:
    :   `SQLException` - if pos is less than 1 or if pos is greater than the
        number of characters in the `SerialClob` or if pos + length
        is greater than the number of characters in the `SerialClob`;
    :   `SerialException` - if the `free` method had been previously
        called on this object

    Since:
    :   1.6
  + ### free

    public void free()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    This method frees the `SerialClob` object and releases the
    resources that it holds.
    The object is invalid once the `free` method is called.

    If `free` is called multiple times, the subsequent
    calls to `free` are treated as a no-op.

    Specified by:
    :   `free` in interface `Clob`

    Throws:
    :   `SQLException` - if an error occurs releasing
        the Clob's resources

    Since:
    :   1.6
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this SerialClob to the specified object. The result is `true` if and only if the argument is not `null` and is a `SerialClob` object that represents the same sequence of characters as this
    object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - The object to compare this `SerialClob` against

    Returns:
    :   `true` if the given object represents a `SerialClob`
        equivalent to this SerialClob, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `SerialClob`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Returns a clone of this `SerialClob`. The copy will contain a
    reference to a clone of the internal character array, not a reference
    to the original internal character array of this `SerialClob` object.
    The underlying `Clob` object will be set to null.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this SerialClob

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")