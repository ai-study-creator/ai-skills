Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.spi](package-summary.md)

# Class SyncProvider

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.spi.SyncProvider

---

public abstract class SyncProvider
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

The synchronization mechanism that provides reader/writer capabilities for
disconnected `RowSet` objects.
A `SyncProvider` implementation is a class that extends the
`SyncProvider` abstract class.

A `SyncProvider` implementation is
identified by a unique ID, which is its fully qualified class name.
This name must be registered with the
`SyncFactory` SPI, thus making the implementation available to
all `RowSet` implementations.
The factory mechanism in the reference implementation uses this name to instantiate
the implementation, which can then provide a `RowSet` object with its
reader (a `javax.sql.RowSetReader` object) and its writer (a
`javax.sql.RowSetWriter` object).

The Jdbc `RowSet` Implementations specification provides two
reference implementations of the `SyncProvider` abstract class:
`RIOptimisticProvider` and `RIXMLProvider`.
The `RIOptimisticProvider` can set any `RowSet`
implementation with a `RowSetReader` object and a
`RowSetWriter` object. However, only the `RIXMLProvider`
implementation can set an `XmlReader` object and an
`XmlWriter` object. A `WebRowSet` object uses the
`XmlReader` object to read data in XML format to populate itself with that
data. It uses the `XmlWriter` object to write itself to a stream or
`java.io.Writer` object in XML format.

## 1.0 Naming Convention for Implementations

As a guide to naming `SyncProvider`
implementations, the following should be noted:

* The name for a `SyncProvider` implementation
  is its fully qualified class name.* It is recommended that vendors supply a
    `SyncProvider` implementation in a package named `providers`.

For instance, if a vendor named Fred, Inc. offered a
`SyncProvider` implementation, you could have the following:

```
     Vendor name:  Fred, Inc.
     Domain name of vendor:  com.fred
     Package name:  com.fred.providers
     SyncProvider implementation class name:  HighAvailabilityProvider

     Fully qualified class name of SyncProvider implementation:
                        com.fred.providers.HighAvailabilityProvider
```

The following line of code uses the fully qualified name to register
this implementation with the `SyncFactory` static instance.

```
     SyncFactory.registerProvider(
                          "com.fred.providers.HighAvailabilityProvider");
```

The default `SyncProvider` object provided with the reference
implementation uses the following name:

```
     com.sun.rowset.providers.RIOptimisticProvider
```

Vendors should refer to the reference implementation synchronization
providers for additional guidance on how to implement a new
`SyncProvider` implementation.

## 2.0 How a `RowSet` Object Gets Its Provider

A disconnected `Rowset` object may get access to a
`SyncProvider` object in one of the following two ways:

* Using a constructor  

  ```
         CachedRowSet crs = new CachedRowSet(
                    "com.fred.providers.HighAvailabilitySyncProvider");
  ```

  * Using the `setSyncProvider` method

    ```
           CachedRowSet crs = new CachedRowSet();
           crs.setSyncProvider("com.fred.providers.HighAvailabilitySyncProvider");
    ```

By default, the reference implementations of the `RowSet` synchronization
providers are always available to the Java platform.
If no other pluggable synchronization providers have been correctly
registered, the `SyncFactory` will automatically generate
an instance of the default `SyncProvider` reference implementation.
Thus, in the preceding code fragment, if no implementation named
`com.fred.providers.HighAvailabilitySyncProvider` has been
registered with the `SyncFactory` instance, *crs* will be
assigned the default provider in the reference implementation, which is
`com.sun.rowset.providers.RIOptimisticProvider`.

## 3.0 Violations and Synchronization Issues

If an update between a disconnected `RowSet` object
and a data source violates
the original query or the underlying data source constraints, this will
result in undefined behavior for all disconnected `RowSet` implementations
and their designated `SyncProvider` implementations.
Not defining the behavior when such violations occur offers greater flexibility
for a `SyncProvider`
implementation to determine its own best course of action.

A `SyncProvider` implementation
may choose to implement a specific handler to
handle a subset of query violations.
However if an original query violation or a more general data source constraint
violation is not handled by the `SyncProvider` implementation,
all `SyncProvider`
objects must throw a `SyncProviderException`.

## 4.0 Updatable SQL VIEWs

It is possible for any disconnected or connected `RowSet` object to be populated
from an SQL query that is formulated originally from an SQL `VIEW`.
While in many cases it is possible for an update to be performed to an
underlying view, such an update requires additional metadata, which may vary.
The `SyncProvider` class provides two constants to indicate whether
an implementation supports updating an SQL `VIEW`.

* `NONUPDATABLE_VIEW_SYNC` - Indicates that a `SyncProvider`
  implementation does not support synchronization with an SQL `VIEW` as the
  underlying source of data for the `RowSet` object.* `UPDATABLE_VIEW_SYNC` - Indicates that a
    `SyncProvider` implementation
    supports synchronization with an SQL `VIEW` as the underlying source
    of data.

The default is for a `RowSet` object not to be updatable if it was
populated with data from an SQL `VIEW`.

## 5.0 `SyncProvider` Constants

The `SyncProvider` class provides three sets of constants that
are used as return values or parameters for `SyncProvider` methods.
`SyncProvider` objects may be implemented to perform synchronization
between a `RowSet` object and its underlying data source with varying
degrees of care. The first group of constants indicate how synchronization
is handled. For example, `GRADE_NONE` indicates that a
`SyncProvider` object will not take any care to see what data is
valid and will simply write the `RowSet` data to the data source.
`GRADE_MODIFIED_AT_COMMIT` indicates that the provider will check
only modified data for validity. Other grades check all data for validity
or set locks when data is modified or loaded.

1. Constants to indicate the synchronization grade of a
   `SyncProvider` object
   * SyncProvider.GRADE\_NONE* SyncProvider.GRADE\_MODIFIED\_AT\_COMMIT* SyncProvider.GRADE\_CHECK\_ALL\_AT\_COMMIT* SyncProvider.GRADE\_LOCK\_WHEN\_MODIFIED* SyncProvider.GRADE\_LOCK\_WHEN\_LOADED- Constants to indicate what locks are set on the data source
     * SyncProvider.DATASOURCE\_NO\_LOCK* SyncProvider.DATASOURCE\_ROW\_LOCK* SyncProvider.DATASOURCE\_TABLE\_LOCK* SyncProvider.DATASOURCE\_DB\_LOCK- Constants to indicate whether a `SyncProvider` object can
       perform updates to an SQL `VIEW`   
       These constants are explained in the preceding section (4.0).
       * SyncProvider.UPDATABLE\_VIEW\_SYNC* SyncProvider.NONUPDATABLE\_VIEW\_SYNC

Since:
:   1.5

See Also:
:   * [`SyncFactory`](SyncFactory.md "class in javax.sql.rowset.spi")
    * [`SyncFactoryException`](SyncFactoryException.md "class in javax.sql.rowset.spi")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DATASOURCE_DB_LOCK`

  Indicates that a lock is placed on the entire data source that is the source of
  data for the `RowSet` object
  that is using this `SyncProvider` object.

  `static final int`

  `DATASOURCE_NO_LOCK`

  Indicates that no locks remain on the originating data source.

  `static final int`

  `DATASOURCE_ROW_LOCK`

  Indicates that a lock is placed on the rows that are touched by the original
  SQL statement used to populate the `RowSet` object
  that is using this `SyncProvider` object.

  `static final int`

  `DATASOURCE_TABLE_LOCK`

  Indicates that a lock is placed on all tables that are touched by the original
  SQL statement used to populate the `RowSet` object
  that is using this `SyncProvider` object.

  `static final int`

  `GRADE_CHECK_ALL_AT_COMMIT`

  Indicates a high level optimistic synchronization grade with
  respect to the originating data source.

  `static final int`

  `GRADE_CHECK_MODIFIED_AT_COMMIT`

  Indicates a low level optimistic synchronization grade with
  respect to the originating data source.

  `static final int`

  `GRADE_LOCK_WHEN_LOADED`

  Indicates the most pessimistic synchronization grade with
  respect to the originating
  data source.

  `static final int`

  `GRADE_LOCK_WHEN_MODIFIED`

  Indicates a pessimistic synchronization grade with
  respect to the originating data source.

  `static final int`

  `GRADE_NONE`

  Indicates that no synchronization with the originating data source is
  provided.

  `static final int`

  `NONUPDATABLE_VIEW_SYNC`

  Indicates that a `SyncProvider` implementation
  does **not** support synchronization between a `RowSet`
  object and the SQL `VIEW` used to populate it.

  `static final int`

  `UPDATABLE_VIEW_SYNC`

  Indicates that a `SyncProvider` implementation
  supports synchronization between a `RowSet` object and
  the SQL `VIEW` used to populate it.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SyncProvider()`

  Creates a default `SyncProvider` object.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract int`

  `getDataSourceLock()`

  Returns the current data source lock severity level active in this
  `SyncProvider` implementation.

  `abstract int`

  `getProviderGrade()`

  Returns a constant indicating the
  grade of synchronization a `RowSet` object can expect from
  this `SyncProvider` object.

  `abstract String`

  `getProviderID()`

  Returns the unique identifier for this `SyncProvider` object.

  `abstract RowSetReader`

  `getRowSetReader()`

  Returns a `javax.sql.RowSetReader` object, which can be used to
  populate a `RowSet` object with data.

  `abstract RowSetWriter`

  `getRowSetWriter()`

  Returns a `javax.sql.RowSetWriter` object, which can be
  used to write a `RowSet` object's data back to the
  underlying data source.

  `abstract String`

  `getVendor()`

  Returns the vendor name of this `SyncProvider` instance

  `abstract String`

  `getVersion()`

  Returns the release version of this `SyncProvider` instance.

  `abstract void`

  `setDataSourceLock(int datasource_lock)`

  Sets a lock on the underlying data source at the level indicated by
  *datasource\_lock*.

  `abstract int`

  `supportsUpdatableView()`

  Returns whether this `SyncProvider` implementation
  can perform synchronization between a `RowSet` object
  and the SQL `VIEW` in the data source from which
  the `RowSet` object got its data.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### GRADE\_NONE

    public static final int GRADE\_NONE

    Indicates that no synchronization with the originating data source is
    provided. A `SyncProvider`
    implementation returning this grade will simply attempt to write
    updates in the `RowSet` object to the underlying data
    source without checking the validity of any data.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.GRADE_NONE)
  + ### GRADE\_CHECK\_MODIFIED\_AT\_COMMIT

    public static final int GRADE\_CHECK\_MODIFIED\_AT\_COMMIT

    Indicates a low level optimistic synchronization grade with
    respect to the originating data source.
    A `SyncProvider` implementation
    returning this grade will check only rows that have changed.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.GRADE_CHECK_MODIFIED_AT_COMMIT)
  + ### GRADE\_CHECK\_ALL\_AT\_COMMIT

    public static final int GRADE\_CHECK\_ALL\_AT\_COMMIT

    Indicates a high level optimistic synchronization grade with
    respect to the originating data source.
    A `SyncProvider` implementation
    returning this grade will check all rows, including rows that have not
    changed.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.GRADE_CHECK_ALL_AT_COMMIT)
  + ### GRADE\_LOCK\_WHEN\_MODIFIED

    public static final int GRADE\_LOCK\_WHEN\_MODIFIED

    Indicates a pessimistic synchronization grade with
    respect to the originating data source.
    A `SyncProvider`
    implementation returning this grade will lock the row in the originating
    data source.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.GRADE_LOCK_WHEN_MODIFIED)
  + ### GRADE\_LOCK\_WHEN\_LOADED

    public static final int GRADE\_LOCK\_WHEN\_LOADED

    Indicates the most pessimistic synchronization grade with
    respect to the originating
    data source. A `SyncProvider`
    implementation returning this grade will lock the entire view and/or
    table affected by the original statement used to populate a
    `RowSet` object.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.GRADE_LOCK_WHEN_LOADED)
  + ### DATASOURCE\_NO\_LOCK

    public static final int DATASOURCE\_NO\_LOCK

    Indicates that no locks remain on the originating data source. This is the default
    lock setting for all `SyncProvider` implementations unless
    otherwise directed by a `RowSet` object.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.DATASOURCE_NO_LOCK)
  + ### DATASOURCE\_ROW\_LOCK

    public static final int DATASOURCE\_ROW\_LOCK

    Indicates that a lock is placed on the rows that are touched by the original
    SQL statement used to populate the `RowSet` object
    that is using this `SyncProvider` object.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.DATASOURCE_ROW_LOCK)
  + ### DATASOURCE\_TABLE\_LOCK

    public static final int DATASOURCE\_TABLE\_LOCK

    Indicates that a lock is placed on all tables that are touched by the original
    SQL statement used to populate the `RowSet` object
    that is using this `SyncProvider` object.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.DATASOURCE_TABLE_LOCK)
  + ### DATASOURCE\_DB\_LOCK

    public static final int DATASOURCE\_DB\_LOCK

    Indicates that a lock is placed on the entire data source that is the source of
    data for the `RowSet` object
    that is using this `SyncProvider` object.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.DATASOURCE_DB_LOCK)
  + ### UPDATABLE\_VIEW\_SYNC

    public static final int UPDATABLE\_VIEW\_SYNC

    Indicates that a `SyncProvider` implementation
    supports synchronization between a `RowSet` object and
    the SQL `VIEW` used to populate it.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.UPDATABLE_VIEW_SYNC)
  + ### NONUPDATABLE\_VIEW\_SYNC

    public static final int NONUPDATABLE\_VIEW\_SYNC

    Indicates that a `SyncProvider` implementation
    does **not** support synchronization between a `RowSet`
    object and the SQL `VIEW` used to populate it.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.sql.rowset.spi.SyncProvider.NONUPDATABLE_VIEW_SYNC)
* ## Constructor Details

  + ### SyncProvider

    public SyncProvider()

    Creates a default `SyncProvider` object.
* ## Method Details

  + ### getProviderID

    public abstract [String](../../../../../java.base/java/lang/String.md "class in java.lang") getProviderID()

    Returns the unique identifier for this `SyncProvider` object.

    Returns:
    :   a `String` object with the fully qualified class name of
        this `SyncProvider` object
  + ### getRowSetReader

    public abstract [RowSetReader](../../../../../java.sql/javax/sql/RowSetReader.md "interface in javax.sql") getRowSetReader()

    Returns a `javax.sql.RowSetReader` object, which can be used to
    populate a `RowSet` object with data.

    Returns:
    :   a `javax.sql.RowSetReader` object
  + ### getRowSetWriter

    public abstract [RowSetWriter](../../../../../java.sql/javax/sql/RowSetWriter.md "interface in javax.sql") getRowSetWriter()

    Returns a `javax.sql.RowSetWriter` object, which can be
    used to write a `RowSet` object's data back to the
    underlying data source.

    Returns:
    :   a `javax.sql.RowSetWriter` object
  + ### getProviderGrade

    public abstract int getProviderGrade()

    Returns a constant indicating the
    grade of synchronization a `RowSet` object can expect from
    this `SyncProvider` object.

    Returns:
    :   an int that is one of the following constants:
        SyncProvider.GRADE\_NONE,
        SyncProvider.GRADE\_CHECK\_MODIFIED\_AT\_COMMIT,
        SyncProvider.GRADE\_CHECK\_ALL\_AT\_COMMIT,
        SyncProvider.GRADE\_LOCK\_WHEN\_MODIFIED,
        SyncProvider.GRADE\_LOCK\_WHEN\_LOADED
  + ### setDataSourceLock

    public abstract void setDataSourceLock(int datasource\_lock)
    throws [SyncProviderException](SyncProviderException.md "class in javax.sql.rowset.spi")

    Sets a lock on the underlying data source at the level indicated by
    *datasource\_lock*. This should cause the
    `SyncProvider` to adjust its behavior by increasing or
    decreasing the level of optimism it provides for a successful
    synchronization.

    Parameters:
    :   `datasource_lock` - one of the following constants indicating the severity
        level of data source lock required:

        ```
                   SyncProvider.DATASOURCE_NO_LOCK,
                   SyncProvider.DATASOURCE_ROW_LOCK,
                   SyncProvider.DATASOURCE_TABLE_LOCK,
                   SyncProvider.DATASOURCE_DB_LOCK,
        ```

    Throws:
    :   `SyncProviderException` - if an unsupported data source locking level
        is set.

    See Also:
    :   - [`getDataSourceLock()`](#getDataSourceLock())
  + ### getDataSourceLock

    public abstract int getDataSourceLock()
    throws [SyncProviderException](SyncProviderException.md "class in javax.sql.rowset.spi")

    Returns the current data source lock severity level active in this
    `SyncProvider` implementation.

    Returns:
    :   a constant indicating the current level of data source lock
        active in this `SyncProvider` object;
        one of the following:

        ```
                   SyncProvider.DATASOURCE_NO_LOCK,
                   SyncProvider.DATASOURCE_ROW_LOCK,
                   SyncProvider.DATASOURCE_TABLE_LOCK,
                   SyncProvider.DATASOURCE_DB_LOCK
        ```

    Throws:
    :   `SyncProviderException` - if an error occurs determining the data
        source locking level.

    See Also:
    :   - [`setDataSourceLock(int)`](#setDataSourceLock(int))
  + ### supportsUpdatableView

    public abstract int supportsUpdatableView()

    Returns whether this `SyncProvider` implementation
    can perform synchronization between a `RowSet` object
    and the SQL `VIEW` in the data source from which
    the `RowSet` object got its data.

    Returns:
    :   an `int` saying whether this `SyncProvider`
        object supports updating an SQL `VIEW`; one of the
        following:
        SyncProvider.UPDATABLE\_VIEW\_SYNC,
        SyncProvider.NONUPDATABLE\_VIEW\_SYNC
  + ### getVersion

    public abstract [String](../../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Returns the release version of this `SyncProvider` instance.

    Returns:
    :   a `String` detailing the release version of the
        `SyncProvider` implementation
  + ### getVendor

    public abstract [String](../../../../../java.base/java/lang/String.md "class in java.lang") getVendor()

    Returns the vendor name of this `SyncProvider` instance

    Returns:
    :   a `String` detailing the vendor name of this
        `SyncProvider` implementation