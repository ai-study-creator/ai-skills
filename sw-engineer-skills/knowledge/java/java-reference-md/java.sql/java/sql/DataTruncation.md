Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class DataTruncation

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](SQLException.md "class in java.sql")

[java.sql.SQLWarning](SQLWarning.md "class in java.sql")

java.sql.DataTruncation

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class DataTruncation
extends [SQLWarning](SQLWarning.md "class in java.sql")

An exception thrown as a `DataTruncation` exception
(on writes) or reported as a
`DataTruncation` warning (on reads)
when a data values is unexpectedly truncated for reasons other than its having
exceeded `MaxFieldSize`.

The SQLstate for a `DataTruncation` during read is `01004`.

The SQLstate for a `DataTruncation` during write is `22001`.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.sql.DataTruncation)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DataTruncation(int index,
  boolean parameter,
  boolean read,
  int dataSize,
  int transferSize)`

  Creates a `DataTruncation` object
  with the SQLState initialized
  to 01004 when `read` is set to `true` and 22001
  when `read` is set to `false`,
  the reason set to "Data truncation", the
  vendor code set to 0, and
  the other fields set to the given values.

  `DataTruncation(int index,
  boolean parameter,
  boolean read,
  int dataSize,
  int transferSize,
  Throwable cause)`

  Creates a `DataTruncation` object
  with the SQLState initialized
  to 01004 when `read` is set to `true` and 22001
  when `read` is set to `false`,
  the reason set to "Data truncation", the
  vendor code set to 0, and
  the other fields set to the given values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getDataSize()`

  Gets the number of bytes of data that should have been transferred.

  `int`

  `getIndex()`

  Retrieves the index of the column or parameter that was truncated.

  `boolean`

  `getParameter()`

  Indicates whether the value truncated was a parameter value or
  a column value.

  `boolean`

  `getRead()`

  Indicates whether or not the value was truncated on a read.

  `int`

  `getTransferSize()`

  Gets the number of bytes of data actually transferred.

  ### Methods inherited from class java.sql.[SQLWarning](SQLWarning.md "class in java.sql")

  `getNextWarning, setNextWarning`

  ### Methods inherited from class java.sql.[SQLException](SQLException.md "class in java.sql")

  `getErrorCode, getNextException, getSQLState, iterator, setNextException`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### DataTruncation

    public DataTruncation(int index,
    boolean parameter,
    boolean read,
    int dataSize,
    int transferSize)

    Creates a `DataTruncation` object
    with the SQLState initialized
    to 01004 when `read` is set to `true` and 22001
    when `read` is set to `false`,
    the reason set to "Data truncation", the
    vendor code set to 0, and
    the other fields set to the given values.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `index` - The index of the parameter or column value
    :   `parameter` - true if a parameter value was truncated
    :   `read` - true if a read was truncated
    :   `dataSize` - the original size of the data
    :   `transferSize` - the size after truncation
  + ### DataTruncation

    public DataTruncation(int index,
    boolean parameter,
    boolean read,
    int dataSize,
    int transferSize,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Creates a `DataTruncation` object
    with the SQLState initialized
    to 01004 when `read` is set to `true` and 22001
    when `read` is set to `false`,
    the reason set to "Data truncation", the
    vendor code set to 0, and
    the other fields set to the given values.

    Parameters:
    :   `index` - The index of the parameter or column value
    :   `parameter` - true if a parameter value was truncated
    :   `read` - true if a read was truncated
    :   `dataSize` - the original size of the data
    :   `transferSize` - the size after truncation
    :   `cause` - the underlying reason for this `DataTruncation`
        (which is saved for later retrieval by the `getCause()` method);
        may be null indicating the cause is non-existent or unknown.

    Since:
    :   1.6
* ## Method Details

  + ### getIndex

    public int getIndex()

    Retrieves the index of the column or parameter that was truncated.

    This may be -1 if the column or parameter index is unknown, in
    which case the `parameter` and `read` fields should be ignored.

    Returns:
    :   the index of the truncated parameter or column value
  + ### getParameter

    public boolean getParameter()

    Indicates whether the value truncated was a parameter value or
    a column value.

    Returns:
    :   `true` if the value truncated was a parameter;
        `false` if it was a column value
  + ### getRead

    public boolean getRead()

    Indicates whether or not the value was truncated on a read.

    Returns:
    :   `true` if the value was truncated when read from
        the database; `false` if the data was truncated on a write
  + ### getDataSize

    public int getDataSize()

    Gets the number of bytes of data that should have been transferred.
    This number may be approximate if data conversions were being
    performed. The value may be `-1` if the size is unknown.

    Returns:
    :   the number of bytes of data that should have been transferred
  + ### getTransferSize

    public int getTransferSize()

    Gets the number of bytes of data actually transferred.
    The value may be `-1` if the size is unknown.

    Returns:
    :   the number of bytes of data actually transferred