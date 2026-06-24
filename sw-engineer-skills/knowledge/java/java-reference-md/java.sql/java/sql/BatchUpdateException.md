Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class BatchUpdateException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](SQLException.md "class in java.sql")

java.sql.BatchUpdateException

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class BatchUpdateException
extends [SQLException](SQLException.md "class in java.sql")

The subclass of [`SQLException`](SQLException.md "class in java.sql") thrown when an error
occurs during a batch update operation. In addition to the
information provided by [`SQLException`](SQLException.md "class in java.sql"), a
`BatchUpdateException` provides the update
counts for all commands that were executed successfully during the
batch update, that is, all commands that were executed before the error
occurred. The order of elements in an array of update counts
corresponds to the order in which commands were added to the batch.

After a command in a batch update fails to execute properly
and a `BatchUpdateException` is thrown, the driver
may or may not continue to process the remaining commands in
the batch. If the driver continues processing after a failure,
the array returned by the method
`BatchUpdateException.getUpdateCounts` will have
an element for every command in the batch rather than only
elements for the commands that executed successfully before
the error. In the case where the driver continues processing
commands, the array element for any command
that failed is `Statement.EXECUTE_FAILED`.

A JDBC driver implementation should use
the constructor `BatchUpdateException(String reason, String SQLState,
int vendorCode, long []updateCounts, Throwable cause)`  instead of
constructors that take `int[]` for the update counts to avoid the
possibility of overflow.

If `Statement.executeLargeBatch` method is invoked it is recommended that
`getLargeUpdateCounts` be called instead of `getUpdateCounts`
in order to avoid a possible overflow of the integer update count.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.sql.BatchUpdateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BatchUpdateException()`

  Constructs a `BatchUpdateException` object.

  `BatchUpdateException(int[] updateCounts)`

  Constructs a `BatchUpdateException` object initialized with a given
  `updateCounts`.

  `BatchUpdateException(int[] updateCounts,
  Throwable cause)`

  Constructs a `BatchUpdateException` object initialized with a
  given `cause` and `updateCounts`.

  `BatchUpdateException(String reason,
  int[] updateCounts)`

  Constructs a `BatchUpdateException` object initialized with a given
  `reason` and `updateCounts`.

  `BatchUpdateException(String reason,
  int[] updateCounts,
  Throwable cause)`

  Constructs a `BatchUpdateException` object initialized with
  a given `reason`, `cause`
  and `updateCounts`.

  `BatchUpdateException(String reason,
  String SQLState,
  int[] updateCounts)`

  Constructs a `BatchUpdateException` object initialized with a given
  `reason`, `SQLState` and
  `updateCounts`.

  `BatchUpdateException(String reason,
  String SQLState,
  int[] updateCounts,
  Throwable cause)`

  Constructs a `BatchUpdateException` object initialized with
  a given `reason`, `SQLState`,`cause`, and
  `updateCounts`.

  `BatchUpdateException(String reason,
  String SQLState,
  int vendorCode,
  int[] updateCounts)`

  Constructs a `BatchUpdateException` object initialized with a given
  `reason`, `SQLState`, `vendorCode` and
  `updateCounts`.

  `BatchUpdateException(String reason,
  String SQLState,
  int vendorCode,
  int[] updateCounts,
  Throwable cause)`

  Constructs a `BatchUpdateException` object initialized with
  a given `reason`, `SQLState`, `vendorCode`
  `cause` and `updateCounts`.

  `BatchUpdateException(String reason,
  String SQLState,
  int vendorCode,
  long[] updateCounts,
  Throwable cause)`

  Constructs a `BatchUpdateException` object initialized with
  a given `reason`, `SQLState`, `vendorCode`
  `cause` and `updateCounts`.

  `BatchUpdateException(Throwable cause)`

  Constructs a `BatchUpdateException` object initialized with
  a given `cause`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `long[]`

  `getLargeUpdateCounts()`

  Retrieves the update count for each update statement in the batch
  update that executed successfully before this exception occurred.

  `int[]`

  `getUpdateCounts()`

  Retrieves the update count for each update statement in the batch
  update that executed successfully before this exception occurred.

  ### Methods inherited from class java.sql.[SQLException](SQLException.md "class in java.sql")

  `getErrorCode, getNextException, getSQLState, iterator, setNextException`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### BatchUpdateException

    public BatchUpdateException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode,
    int[] updateCounts)

    Constructs a `BatchUpdateException` object initialized with a given
    `reason`, `SQLState`, `vendorCode` and
    `updateCounts`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    **Note:** There is no validation of `updateCounts` for
    overflow and because of this it is recommended that you use the constructor
    `BatchUpdateException(String reason, String SQLState,
    int vendorCode, long []updateCounts, Throwable cause)` .

    Parameters:
    :   `reason` - a description of the error
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - an exception code used by a particular
        database vendor
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure

    Since:
    :   1.2

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int[] updateCounts)

    Constructs a `BatchUpdateException` object initialized with a given
    `reason`, `SQLState` and
    `updateCounts`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. The vendor code
    is initialized to 0.

    **Note:** There is no validation of `updateCounts` for
    overflow and because of this it is recommended that you use the constructor
    `BatchUpdateException(String reason, String SQLState,
    int vendorCode, long []updateCounts, Throwable cause)` .

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure

    Since:
    :   1.2

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    int[] updateCounts)

    Constructs a `BatchUpdateException` object initialized with a given
    `reason` and `updateCounts`.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. The
    `SQLState` is initialized to `null`
    and the vendor code is initialized to 0.

    **Note:** There is no validation of `updateCounts` for
    overflow and because of this it is recommended that you use the constructor
    `BatchUpdateException(String reason, String SQLState,
    int vendorCode, long []updateCounts, Throwable cause)` .

    Parameters:
    :   `reason` - a description of the exception
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure

    Since:
    :   1.2

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException(int[] updateCounts)

    Constructs a `BatchUpdateException` object initialized with a given
    `updateCounts`.
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. The `reason`
    and `SQLState` are initialized to null and the vendor code
    is initialized to 0.

    **Note:** There is no validation of `updateCounts` for
    overflow and because of this it is recommended that you use the constructor
    `BatchUpdateException(String reason, String SQLState,
    int vendorCode, long []updateCounts, Throwable cause)` .

    Parameters:
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure

    Since:
    :   1.2

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException()

    Constructs a `BatchUpdateException` object.
    The `reason`, `SQLState` and `updateCounts`
    are initialized to `null` and the vendor code is initialized to 0.
    The `cause` is not initialized, and may subsequently be
    initialized by a call to the
    [`Throwable.initCause(java.lang.Throwable)`](../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method.

    Since:
    :   1.2

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException([Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `BatchUpdateException` object initialized with
    a given `cause`.
    The `SQLState` and `updateCounts`
    are initialized
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

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException(int[] updateCounts,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `BatchUpdateException` object initialized with a
    given `cause` and `updateCounts`.
    The `SQLState` is initialized
    to `null` and the vendor code is initialized to 0.
    The `reason` is initialized to `null` if
    `cause==null` or to `cause.toString()` if
    `cause!=null`.

    **Note:** There is no validation of `updateCounts` for
    overflow and because of this it is recommended that you use the constructor
    `BatchUpdateException(String reason, String SQLState,
    int vendorCode, long []updateCounts, Throwable cause)` .

    Parameters:
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure
    :   `cause` - the underlying reason for this `SQLException`
        (which is saved for later retrieval by the `getCause()` method); may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    int[] updateCounts,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `BatchUpdateException` object initialized with
    a given `reason`, `cause`
    and `updateCounts`. The `SQLState` is initialized
    to `null` and the vendor code is initialized to 0.

    **Note:** There is no validation of `updateCounts` for
    overflow and because of this it is recommended that you use the constructor
    `BatchUpdateException(String reason, String SQLState,
    int vendorCode, long []updateCounts, Throwable cause)` .

    Parameters:
    :   `reason` - a description of the exception
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method);
        may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int[] updateCounts,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `BatchUpdateException` object initialized with
    a given `reason`, `SQLState`,`cause`, and
    `updateCounts`. The vendor code is initialized to 0.

    Parameters:
    :   `reason` - a description of the exception
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure

        **Note:** There is no validation of `updateCounts` for
        overflow and because of this it is recommended that you use the constructor
        `BatchUpdateException(String reason, String SQLState,
        int vendorCode, long []updateCounts, Throwable cause)` .
    :   `cause` - the underlying reason for this `SQLException`
        (which is saved for later retrieval by the `getCause()` method);
        may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode,
    int[] updateCounts,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `BatchUpdateException` object initialized with
    a given `reason`, `SQLState`, `vendorCode`
    `cause` and `updateCounts`.

    Parameters:
    :   `reason` - a description of the error
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - an exception code used by a particular
        database vendor
    :   `updateCounts` - an array of `int`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure

        **Note:** There is no validation of `updateCounts` for
        overflow and because of this it is recommended that you use the constructor
        `BatchUpdateException(String reason, String SQLState,
        int vendorCode, long []updateCounts, Throwable cause)` .
    :   `cause` - the underlying reason for this `SQLException` (which is saved for later retrieval by the `getCause()` method);
        may be null indicating
        the cause is non-existent or unknown.

    Since:
    :   1.6

    See Also:
    :   - [`BatchUpdateException(java.lang.String, java.lang.String, int, long[], java.lang.Throwable)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,long%5B%5D,java.lang.Throwable))
  + ### BatchUpdateException

    public BatchUpdateException([String](../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode,
    long[] updateCounts,
    [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a `BatchUpdateException` object initialized with
    a given `reason`, `SQLState`, `vendorCode`
    `cause` and `updateCounts`.

    This constructor should be used when the returned update count may exceed
    [`Integer.MAX_VALUE`](../../../java.base/java/lang/Integer.md#MAX_VALUE).

    Parameters:
    :   `reason` - a description of the error
    :   `SQLState` - an XOPEN or SQL:2003 code identifying the exception
    :   `vendorCode` - an exception code used by a particular
        database vendor
    :   `updateCounts` - an array of `long`, with each element
        indicating the update count, `Statement.SUCCESS_NO_INFO` or
        `Statement.EXECUTE_FAILED` for each SQL command in
        the batch for JDBC drivers that continue processing
        after a command failure; an update count or
        `Statement.SUCCESS_NO_INFO` for each SQL command in the batch
        prior to the failure for JDBC drivers that stop processing after a command
        failure
    :   `cause` - the underlying reason for this `SQLException`
        (which is saved for later retrieval by the `getCause()` method);
        may be null indicating the cause is non-existent or unknown.

    Since:
    :   1.8
* ## Method Details

  + ### getUpdateCounts

    public int[] getUpdateCounts()

    Retrieves the update count for each update statement in the batch
    update that executed successfully before this exception occurred.
    A driver that implements batch updates may or may not continue to
    process the remaining commands in a batch when one of the commands
    fails to execute properly. If the driver continues processing commands,
    the array returned by this method will have as many elements as
    there are commands in the batch; otherwise, it will contain an
    update count for each command that executed successfully before
    the `BatchUpdateException` was thrown.

    The possible return values for this method were modified for
    the Java 2 SDK, Standard Edition, version 1.3. This was done to
    accommodate the new option of continuing to process commands
    in a batch update after a `BatchUpdateException` object
    has been thrown.

    Returns:
    :   an array of `int` containing the update counts
        for the updates that were executed successfully before this error
        occurred. Or, if the driver continues to process commands after an
        error, one of the following for every command in the batch:
        1. an update count+ `Statement.SUCCESS_NO_INFO` to indicate that the command
             executed successfully but the number of rows affected is unknown+ `Statement.EXECUTE_FAILED` to indicate that the command
               failed to execute successfully

    Since:
    :   1.3

    See Also:
    :   - [`getLargeUpdateCounts()`](#getLargeUpdateCounts())
  + ### getLargeUpdateCounts

    public long[] getLargeUpdateCounts()

    Retrieves the update count for each update statement in the batch
    update that executed successfully before this exception occurred.
    A driver that implements batch updates may or may not continue to
    process the remaining commands in a batch when one of the commands
    fails to execute properly. If the driver continues processing commands,
    the array returned by this method will have as many elements as
    there are commands in the batch; otherwise, it will contain an
    update count for each command that executed successfully before
    the `BatchUpdateException` was thrown.

    This method should be used when `Statement.executeLargeBatch` is
    invoked and the returned update count may exceed [`Integer.MAX_VALUE`](../../../java.base/java/lang/Integer.md#MAX_VALUE).

    Returns:
    :   an array of `long` containing the update counts
        for the updates that were executed successfully before this error
        occurred. Or, if the driver continues to process commands after an
        error, one of the following for every command in the batch:
        1. an update count+ `Statement.SUCCESS_NO_INFO` to indicate that the command
             executed successfully but the number of rows affected is unknown+ `Statement.EXECUTE_FAILED` to indicate that the command
               failed to execute successfully

    Since:
    :   1.8