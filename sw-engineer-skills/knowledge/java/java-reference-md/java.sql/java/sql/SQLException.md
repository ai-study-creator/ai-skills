Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class SQLException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

java.sql.SQLException

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

Direct Known Subclasses:
:   `BatchUpdateException`, `RowSetWarning`, `SerialException`, `SQLClientInfoException`, `SQLNonTransientException`, `SQLRecoverableException`, `SQLTransientException`, `SQLWarning`, `SyncFactoryException`, `SyncProviderException`

---

public class SQLException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")
implements [Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")<[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")>

An exception that provides information on a database access
error or other errors.

Each `SQLException` provides several kinds of information:

* a string describing the error. This is used as the Java Exception
  message, available via the method `getMessage`.* a "SQLstate" string, which follows either the XOPEN SQLstate conventions
    or the SQL:2003 conventions.
    The values of the SQLState string are described in the appropriate spec.
    The `DatabaseMetaData` method `getSQLStateType`
    can be used to discover whether the driver returns the XOPEN type or
    the SQL:2003 type.* an integer error code that is specific to each vendor. Normally this will
      be the actual error code returned by the underlying database.* a chain to a next Exception. This can be used to provide additional
        error information.* the causal relationship, if any for this `SQLException`.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.sql.SQLException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SQLException()`

  Constructs a `SQLException` object.

  `SQLException(String reason)`

  Constructs a `SQLException` object with a given
  `reason`.

  `SQLException(String reason,
  String SQLState)`

  Constructs a `SQLException` object with a given
  `reason` and `SQLState`.

  `SQLException(String reason,
  String SQLState,
  int vendorCode)`

  Constructs a `SQLException` object with a given
  `reason`, `SQLState` and
  `vendorCode`.

  `SQLException(String reason,
  String sqlState,
  int vendorCode,
  Throwable cause)`

  Constructs a `SQLException` object with a given
  `reason`, `SQLState`, `vendorCode`
  and `cause`.

  `SQLException(String reason,
  String sqlState,
  Throwable cause)`

  Constructs a `SQLException` object with a given
  `reason`, `SQLState` and `cause`.

  `SQLException(String reason,
  Throwable cause)`

  Constructs a `SQLException` object with a given
  `reason` and `cause`.

  `SQLException(Throwable cause)`

  Constructs a `SQLException` object with a given
  `cause`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getErrorCode()`

  Retrieves the vendor-specific exception code
  for this `SQLException` object.

  `SQLException`

  `getNextException()`

  Retrieves the exception chained to this
  `SQLException` object by setNextException(SQLException ex).

  `String`

  `getSQLState()`

  Retrieves the SQLState for this `SQLException` object.

  `Iterator<Throwable>`

  `iterator()`

  Returns an iterator over the chained SQLExceptions.

  `void`

  `setNextException(SQLException ex)`

  Adds an `SQLException` object to the end of the chain.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### SQLException

    public SQLException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode)

    Constructs a `SQLException` object with a given
    `reason`, `SQLState` and
    `vendorCode`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - a database vendor-specific exception code
  + ### SQLException

    public SQLException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState)

    Constructs a `SQLException` object with a given
    `reason` and `SQLState`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. The vendor code
    is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
  + ### SQLException

    public SQLException([String](../../../java.base/java/lang/String.md "class in java.lang") reason)

    Constructs a `SQLException` object with a given
    `reason`. The `SQLState` is initialized to
    `null` and the vendor code is initialized to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Parameters:
    :   `reason` - a description of the exception
  + ### SQLException

    public SQLException()

    Constructs a `SQLException` object.
    The `reason`, `SQLState` are initialized
    to `null` and the vendor code is initialized to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.
  + ### SQLException

    public SQLException([Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLException` object with a given
    `cause`.
    The `SQLState` is initialized
    to `null` and the vendor code is initialized to 0.
    The `reason` is initialized to `null` if
    `cause==null` or to `cause.toString()` if
    `cause!=null`.

    Parameters:
    :   `cause` - the underlying reason for this `SQLException`
        (which is saved for later retrieval by the `getCause()` method);
        may be null indicating the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLException

    public SQLException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLException` object with a given
    `reason` and `cause`.
    The `SQLState` is initialized to `null`
    and the vendor code is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception.
    :   `cause` - the underlying reason for this `SQLException`
        (which is saved for later retrieval by the `getCause()` method);
        may be null indicating the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLException

    public SQLException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") sqlState,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLException` object with a given
    `reason`, `SQLState` and `cause`.
    The vendor code is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception.
    :   `sqlState` - an XOPEN or SQL:2003 code identifying the exception
    :   `cause` - the underlying reason for this `SQLException`
        (which is saved for later retrieval by the
        `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6
  + ### SQLException

    public SQLException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") sqlState,
    int vendorCode,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `SQLException` object with a given
    `reason`, `SQLState`, `vendorCode`
    and `cause`.

    Parameters:
    :   `reason` - a description of the exception
    :   `sqlState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - a database vendor-specific exception code
    :   `cause` - the underlying reason for this `SQLException`
        (which is saved for later retrieval by the `getCause()` method);
        may be null indicating the cause is non-existent or unknown.

    Since:
    :   1.6
* ## Method Details

  + ### getSQLState

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getSQLState()

    Retrieves the SQLState for this `SQLException` object.

    Returns:
    :   the SQLState value
  + ### getErrorCode

    public int getErrorCode()

    Retrieves the vendor-specific exception code
    for this `SQLException` object.

    Returns:
    :   the vendor's error code
  + ### getNextException

    public [SQLException](SQLException.md "class in java.sql") getNextException()

    Retrieves the exception chained to this
    `SQLException` object by setNextException(SQLException ex).

    Returns:
    :   the next `SQLException` object in the chain;
        `null` if there are none

    See Also:
    :   - [`setNextException(java.sql.SQLException)`](#setNextException(java.sql.SQLException))
  + ### setNextException

    public void setNextException([SQLException](SQLException.md "class in java.sql") ex)

    Adds an `SQLException` object to the end of the chain.

    Parameters:
    :   `ex` - the new exception that will be added to the end of
        the `SQLException` chain

    See Also:
    :   - [`getNextException()`](#getNextException())
  + ### iterator

    public [Iterator](../../../java.base/java/util/Iterator.md "interface in java.util")<[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")> iterator()

    Returns an iterator over the chained SQLExceptions. The iterator will
    be used to iterate over each SQLException and its underlying cause
    (if any).

    Specified by:
    :   `iterator` in interface `Iterable<Throwable>`

    Returns:
    :   an iterator over the chained SQLExceptions and causes in the proper
        order

    Since:
    :   1.6