Module [java.sql.rowset](../../../module-summary.md)

Package [javax.sql.rowset](package-summary.md)

# Class RowSetWarning

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.sql.SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

javax.sql.rowset.RowSetWarning

All Implemented Interfaces:
:   `Serializable`, `Iterable<Throwable>`

---

public class RowSetWarning
extends [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

An extension of `SQLException` that provides information
about database warnings set on `RowSet` objects.
Warnings are silently chained to the object whose method call
caused it to be reported.
This class complements the `SQLWarning` class.

Rowset warnings may be retrieved from `JdbcRowSet`,
`CachedRowSet`,
`WebRowSet`, `FilteredRowSet`, or `JoinRowSet`
implementations. To retrieve the first warning reported on any
`RowSet`
implementation, use the method `getRowSetWarnings` defined
in the `JdbcRowSet` interface or the `CachedRowSet`
interface. To retrieve a warning chained to the first warning, use the
`RowSetWarning` method
`getNextWarning`. To retrieve subsequent warnings, call
`getNextWarning` on each `RowSetWarning` object that is
returned.

The inherited methods `getMessage`, `getSQLState`,
and `getErrorCode` retrieve information contained in a
`RowSetWarning` object.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.sql.rowset.RowSetWarning)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RowSetWarning()`

  Constructs a default `RowSetWarning` object.

  `RowSetWarning(String reason)`

  Constructs a `RowSetWarning` object
  with the given value for the reason; SQLState defaults to null,
  and vendorCode defaults to 0.

  `RowSetWarning(String reason,
  String SQLState)`

  Constructs a `RowSetWarning` object initialized with the
  given values for the reason and SQLState.

  `RowSetWarning(String reason,
  String SQLState,
  int vendorCode)`

  Constructs a fully specified `RowSetWarning` object initialized
  with the given values for the reason, SQLState and vendorCode.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `RowSetWarning`

  `getNextWarning()`

  Retrieves the warning chained to this `RowSetWarning`
  object.

  `void`

  `setNextWarning(RowSetWarning warning)`

  Sets *warning* as the next warning, that is, the warning chained
  to this `RowSetWarning` object.

  ### Methods inherited from class java.sql.[SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

  `getErrorCode, getNextException, getSQLState, iterator, setNextException`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Constructor Details

  + ### RowSetWarning

    public RowSetWarning([String](../../../../java.base/java/lang/String.md "class in java.lang") reason)

    Constructs a `RowSetWarning` object
    with the given value for the reason; SQLState defaults to null,
    and vendorCode defaults to 0.

    Parameters:
    :   `reason` - a `String` object giving a description
        of the warning; if the `String` is `null`,
        this constructor behaves like the default (zero parameter)
        `RowSetWarning` constructor
  + ### RowSetWarning

    public RowSetWarning()

    Constructs a default `RowSetWarning` object. The reason
    defaults to `null`, SQLState defaults to null and vendorCode
    defaults to 0.
  + ### RowSetWarning

    public RowSetWarning([String](../../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") SQLState)

    Constructs a `RowSetWarning` object initialized with the
    given values for the reason and SQLState. The vendor code defaults to 0.
    If the `reason` or `SQLState` parameters are `null`,
    this constructor behaves like the default (zero parameter)
    `RowSetWarning` constructor.

    Parameters:
    :   `reason` - a `String` giving a description of the
        warning;
    :   `SQLState` - an XOPEN code identifying the warning; if a non standard
        XOPEN *SQLState* is supplied, no exception is thrown.
  + ### RowSetWarning

    public RowSetWarning([String](../../../../java.base/java/lang/String.md "class in java.lang") reason,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") SQLState,
    int vendorCode)

    Constructs a fully specified `RowSetWarning` object initialized
    with the given values for the reason, SQLState and vendorCode.
    If the `reason`, or the `SQLState`
    parameters are `null`, this constructor behaves like the default
    (zero parameter) `RowSetWarning` constructor.

    Parameters:
    :   `reason` - a `String` giving a description of the
        warning;
    :   `SQLState` - an XOPEN code identifying the warning; if a non standard
        XOPEN *SQLState* is supplied, no exception is thrown.
    :   `vendorCode` - a database vendor-specific warning code
* ## Method Details

  + ### getNextWarning

    public [RowSetWarning](RowSetWarning.md "class in javax.sql.rowset") getNextWarning()

    Retrieves the warning chained to this `RowSetWarning`
    object.

    Returns:
    :   the `RowSetWarning` object chained to this one; if no
        `RowSetWarning` object is chained to this one,
        `null` is returned (default value)

    See Also:
    :   - [`setNextWarning(javax.sql.rowset.RowSetWarning)`](#setNextWarning(javax.sql.rowset.RowSetWarning))
  + ### setNextWarning

    public void setNextWarning([RowSetWarning](RowSetWarning.md "class in javax.sql.rowset") warning)

    Sets *warning* as the next warning, that is, the warning chained
    to this `RowSetWarning` object.

    Parameters:
    :   `warning` - the `RowSetWarning` object to be set as the
        next warning; if the `RowSetWarning` is null, this
        represents the finish point in the warning chain

    See Also:
    :   - [`getNextWarning()`](#getNextWarning())