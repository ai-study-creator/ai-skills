Module [java.sql](../../module-summary.md)

Package [javax.sql](package-summary.md)

# Interface XAConnection

All Superinterfaces:
:   `PooledConnection`

---

public interface XAConnection
extends [PooledConnection](PooledConnection.md "interface in javax.sql")

An object that provides support for distributed transactions. An
`XAConnection` object may be enlisted in a distributed transaction
by means of an `XAResource` object. A transaction manager, usually
part of a middle tier server, manages an `XAConnection` object
through the `XAResource` object.

An application programmer does not use this interface directly; rather, it is
used by a transaction manager working in the middle tier server.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `XAResource`

  `getXAResource()`

  Retrieves an `XAResource` object that the transaction manager
  will use to manage this `XAConnection` object's participation
  in a distributed transaction.

  ### Methods inherited from interface javax.sql.[PooledConnection](PooledConnection.md "interface in javax.sql")

  `addConnectionEventListener, addStatementEventListener, close, getConnection, removeConnectionEventListener, removeStatementEventListener`

* ## Method Details

  + ### getXAResource

    [XAResource](../../../java.transaction.xa/javax/transaction/xa/XAResource.md "interface in javax.transaction.xa") getXAResource()
    throws [SQLException](../../java/sql/SQLException.md "class in java.sql")

    Retrieves an `XAResource` object that the transaction manager
    will use to manage this `XAConnection` object's participation
    in a distributed transaction.

    Returns:
    :   the `XAResource` object

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not
        support this method

    Since:
    :   1.4