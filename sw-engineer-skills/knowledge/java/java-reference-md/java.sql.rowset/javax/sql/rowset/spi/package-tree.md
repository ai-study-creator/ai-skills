# Hierarchy For Package javax.sql.rowset.spi

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.sql.rowset.spi.[SyncFactory](SyncFactory.md "class in javax.sql.rowset.spi")
  + javax.sql.rowset.spi.[SyncProvider](SyncProvider.md "class in javax.sql.rowset.spi")
  + java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.sql.[SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql") (implements java.lang.[Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<T>)
        + javax.sql.rowset.spi.[SyncFactoryException](SyncFactoryException.md "class in javax.sql.rowset.spi")
        + javax.sql.rowset.spi.[SyncProviderException](SyncProviderException.md "class in javax.sql.rowset.spi")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")
  + java.sql.[ResultSet](../../../../../java.sql/java/sql/ResultSet.md "interface in java.sql") (also extends java.sql.[Wrapper](../../../../../java.sql/java/sql/Wrapper.md "interface in java.sql"))
    - javax.sql.[RowSet](../../../../../java.sql/javax/sql/RowSet.md "interface in javax.sql")
      * javax.sql.rowset.spi.[SyncResolver](SyncResolver.md "interface in javax.sql.rowset.spi")
* javax.sql.[RowSetReader](../../../../../java.sql/javax/sql/RowSetReader.md "interface in javax.sql")
  + javax.sql.rowset.spi.[XmlReader](XmlReader.md "interface in javax.sql.rowset.spi")
* javax.sql.[RowSetWriter](../../../../../java.sql/javax/sql/RowSetWriter.md "interface in javax.sql")
  + javax.sql.rowset.spi.[TransactionalWriter](TransactionalWriter.md "interface in javax.sql.rowset.spi")
  + javax.sql.rowset.spi.[XmlWriter](XmlWriter.md "interface in javax.sql.rowset.spi")
* java.sql.[Wrapper](../../../../../java.sql/java/sql/Wrapper.md "interface in java.sql")
  + java.sql.[ResultSet](../../../../../java.sql/java/sql/ResultSet.md "interface in java.sql") (also extends java.lang.[AutoCloseable](../../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang"))
    - javax.sql.[RowSet](../../../../../java.sql/javax/sql/RowSet.md "interface in javax.sql")
      * javax.sql.rowset.spi.[SyncResolver](SyncResolver.md "interface in javax.sql.rowset.spi")