Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.spi](package-summary.md)

# Interface TransactionalWriter

All Superinterfaces:
:   `RowSetWriter`

---

public interface TransactionalWriter
extends [RowSetWriter](../../../../../java.sql/javax/sql/RowSetWriter.md "interface in javax.sql")

A specialized interface that facilitates an extension of the standard
`SyncProvider` abstract class so that it has finer grained
transaction control.

If one or more disconnected `RowSet` objects are participating
in a global transaction, they may wish to coordinate their synchronization
commits to preserve data integrity and reduce the number of
synchronization exceptions. If this is the case, an application should set
the `CachedRowSet` constant `COMMIT_ON_ACCEPT_CHANGES`
to `false` and use the `commit` and `rollback`
methods defined in this interface to manage transaction boundaries.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `commit()`

  Makes permanent all changes that have been performed by the
  `acceptChanges` method since the last call to either the
  `commit` or `rollback` methods.

  `void`

  `rollback()`

  Undoes all changes made in the current transaction.

  `void`

  `rollback(Savepoint s)`

  Undoes all changes made in the current transaction made prior to the given
  `Savepoint` object.

  ### Methods inherited from interface javax.sql.[RowSetWriter](../../../../../java.sql/javax/sql/RowSetWriter.md "interface in javax.sql")

  `writeData`

* ## Method Details

  + ### commit

    void commit()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Makes permanent all changes that have been performed by the
    `acceptChanges` method since the last call to either the
    `commit` or `rollback` methods.
    This method should be used only when auto-commit mode has been disabled.

    Throws:
    :   `SQLException` - if a database access error occurs or the
        `Connection` object within this `CachedRowSet`
        object is in auto-commit mode
  + ### rollback

    void rollback()
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Undoes all changes made in the current transaction. This method should be
    used only when auto-commit mode has been disabled.

    Throws:
    :   `SQLException` - if a database access error occurs or the `Connection`
        object within this `CachedRowSet` object is in auto-commit mode
  + ### rollback

    void rollback([Savepoint](../../../../../java.sql/java/sql/Savepoint.md "interface in java.sql") s)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Undoes all changes made in the current transaction made prior to the given
    `Savepoint` object. This method should be used only when auto-commit
    mode has been disabled.

    Parameters:
    :   `s` - a `Savepoint` object marking a savepoint in the current
        transaction. All changes made before *s* was set will be undone.
        All changes made after *s* was set will be made permanent.

    Throws:
    :   `SQLException` - if a database access error occurs or the `Connection`
        object within this `CachedRowSet` object is in auto-commit mode