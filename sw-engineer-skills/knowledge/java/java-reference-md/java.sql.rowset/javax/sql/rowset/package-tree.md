# Hierarchy For Package javax.sql.rowset

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.sql.rowset.[BaseRowSet](BaseRowSet.md "class in javax.sql.rowset") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.sql.rowset.[RowSetMetaDataImpl](RowSetMetaDataImpl.md "class in javax.sql.rowset") (implements javax.sql.[RowSetMetaData](../../../../java.sql/javax/sql/RowSetMetaData.md "interface in javax.sql"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.sql.rowset.[RowSetProvider](RowSetProvider.md "class in javax.sql.rowset")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.sql.[SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql") (implements java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")<T>)
        + javax.sql.rowset.[RowSetWarning](RowSetWarning.md "class in javax.sql.rowset")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")
  + java.sql.[ResultSet](../../../../java.sql/java/sql/ResultSet.md "interface in java.sql") (also extends java.sql.[Wrapper](../../../../java.sql/java/sql/Wrapper.md "interface in java.sql"))
    - javax.sql.[RowSet](../../../../java.sql/javax/sql/RowSet.md "interface in javax.sql")
      * javax.sql.rowset.[CachedRowSet](CachedRowSet.md "interface in javax.sql.rowset") (also extends javax.sql.rowset.[Joinable](Joinable.md "interface in javax.sql.rowset"))
        + javax.sql.rowset.[WebRowSet](WebRowSet.md "interface in javax.sql.rowset")
          - javax.sql.rowset.[FilteredRowSet](FilteredRowSet.md "interface in javax.sql.rowset")
          - javax.sql.rowset.[JoinRowSet](JoinRowSet.md "interface in javax.sql.rowset")
      * javax.sql.rowset.[JdbcRowSet](JdbcRowSet.md "interface in javax.sql.rowset") (also extends javax.sql.rowset.[Joinable](Joinable.md "interface in javax.sql.rowset"))
* javax.sql.rowset.[Joinable](Joinable.md "interface in javax.sql.rowset")
  + javax.sql.rowset.[CachedRowSet](CachedRowSet.md "interface in javax.sql.rowset") (also extends javax.sql.[RowSet](../../../../java.sql/javax/sql/RowSet.md "interface in javax.sql"))
    - javax.sql.rowset.[WebRowSet](WebRowSet.md "interface in javax.sql.rowset")
      * javax.sql.rowset.[FilteredRowSet](FilteredRowSet.md "interface in javax.sql.rowset")
      * javax.sql.rowset.[JoinRowSet](JoinRowSet.md "interface in javax.sql.rowset")
  + javax.sql.rowset.[JdbcRowSet](JdbcRowSet.md "interface in javax.sql.rowset") (also extends javax.sql.[RowSet](../../../../java.sql/javax/sql/RowSet.md "interface in javax.sql"))
* javax.sql.rowset.[Predicate](Predicate.md "interface in javax.sql.rowset")
* javax.sql.rowset.[RowSetFactory](RowSetFactory.md "interface in javax.sql.rowset")
* java.sql.[Wrapper](../../../../java.sql/java/sql/Wrapper.md "interface in java.sql")
  + java.sql.[ResultSet](../../../../java.sql/java/sql/ResultSet.md "interface in java.sql") (also extends java.lang.[AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang"))
    - javax.sql.[RowSet](../../../../java.sql/javax/sql/RowSet.md "interface in javax.sql")
      * javax.sql.rowset.[CachedRowSet](CachedRowSet.md "interface in javax.sql.rowset") (also extends javax.sql.rowset.[Joinable](Joinable.md "interface in javax.sql.rowset"))
        + javax.sql.rowset.[WebRowSet](WebRowSet.md "interface in javax.sql.rowset")
          - javax.sql.rowset.[FilteredRowSet](FilteredRowSet.md "interface in javax.sql.rowset")
          - javax.sql.rowset.[JoinRowSet](JoinRowSet.md "interface in javax.sql.rowset")
      * javax.sql.rowset.[JdbcRowSet](JdbcRowSet.md "interface in javax.sql.rowset") (also extends javax.sql.rowset.[Joinable](Joinable.md "interface in javax.sql.rowset"))