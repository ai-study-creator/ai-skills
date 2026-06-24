# Hierarchy For Package javax.sql

Package Hierarchies:

* [All Packages](../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.sql.[ConnectionEvent](ConnectionEvent.md "class in javax.sql")
    - javax.sql.[RowSetEvent](RowSetEvent.md "class in javax.sql")
    - javax.sql.[StatementEvent](StatementEvent.md "class in javax.sql")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")
  + java.sql.[ResultSet](../../java/sql/ResultSet.md "interface in java.sql") (also extends java.sql.[Wrapper](../../java/sql/Wrapper.md "interface in java.sql"))
    - javax.sql.[RowSet](RowSet.md "interface in javax.sql")
* javax.sql.[CommonDataSource](CommonDataSource.md "interface in javax.sql")
  + javax.sql.[ConnectionPoolDataSource](ConnectionPoolDataSource.md "interface in javax.sql")
  + javax.sql.[DataSource](DataSource.md "interface in javax.sql") (also extends java.sql.[Wrapper](../../java/sql/Wrapper.md "interface in java.sql"))
  + javax.sql.[XADataSource](XADataSource.md "interface in javax.sql")
* java.util.[EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")
  + javax.sql.[ConnectionEventListener](ConnectionEventListener.md "interface in javax.sql")
  + javax.sql.[RowSetListener](RowSetListener.md "interface in javax.sql")
  + javax.sql.[StatementEventListener](StatementEventListener.md "interface in javax.sql")
* javax.sql.[PooledConnection](PooledConnection.md "interface in javax.sql")
  + javax.sql.[XAConnection](XAConnection.md "interface in javax.sql")
* javax.sql.[PooledConnectionBuilder](PooledConnectionBuilder.md "interface in javax.sql")
* javax.sql.[RowSetInternal](RowSetInternal.md "interface in javax.sql")
* javax.sql.[RowSetReader](RowSetReader.md "interface in javax.sql")
* javax.sql.[RowSetWriter](RowSetWriter.md "interface in javax.sql")
* java.sql.[Wrapper](../../java/sql/Wrapper.md "interface in java.sql")
  + javax.sql.[DataSource](DataSource.md "interface in javax.sql") (also extends javax.sql.[CommonDataSource](CommonDataSource.md "interface in javax.sql"))
  + java.sql.[ResultSet](../../java/sql/ResultSet.md "interface in java.sql") (also extends java.lang.[AutoCloseable](../../../java.base/java/lang/AutoCloseable.md "interface in java.lang"))
    - javax.sql.[RowSet](RowSet.md "interface in javax.sql")
  + java.sql.[ResultSetMetaData](../../java/sql/ResultSetMetaData.md "interface in java.sql")
    - javax.sql.[RowSetMetaData](RowSetMetaData.md "interface in javax.sql")
* javax.sql.[XAConnectionBuilder](XAConnectionBuilder.md "interface in javax.sql")