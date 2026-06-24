Module [java.sql.rowset](../../../module-summary.md)

Package [javax.sql.rowset](package-summary.md)

# Interface RowSetFactory

---

public interface RowSetFactory

An interface that defines the implementation of a factory that is used
to obtain different types of `RowSet` implementations.

Since:
:   1.7

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `CachedRowSet`

  `createCachedRowSet()`

  Creates a new instance of a CachedRowSet.

  `FilteredRowSet`

  `createFilteredRowSet()`

  Creates a new instance of a FilteredRowSet.

  `JdbcRowSet`

  `createJdbcRowSet()`

  Creates a new instance of a JdbcRowSet.

  `JoinRowSet`

  `createJoinRowSet()`

  Creates a new instance of a JoinRowSet.

  `WebRowSet`

  `createWebRowSet()`

  Creates a new instance of a WebRowSet.

* ## Method Details

  + ### createCachedRowSet

    [CachedRowSet](CachedRowSet.md "interface in javax.sql.rowset") createCachedRowSet()
    throws [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new instance of a CachedRowSet.

    Returns:
    :   A new instance of a CachedRowSet.

    Throws:
    :   `SQLException` - if a CachedRowSet cannot
        be created.

    Since:
    :   1.7
  + ### createFilteredRowSet

    [FilteredRowSet](FilteredRowSet.md "interface in javax.sql.rowset") createFilteredRowSet()
    throws [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new instance of a FilteredRowSet.

    Returns:
    :   A new instance of a FilteredRowSet.

    Throws:
    :   `SQLException` - if a FilteredRowSet cannot
        be created.

    Since:
    :   1.7
  + ### createJdbcRowSet

    [JdbcRowSet](JdbcRowSet.md "interface in javax.sql.rowset") createJdbcRowSet()
    throws [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new instance of a JdbcRowSet.

    Returns:
    :   A new instance of a JdbcRowSet.

    Throws:
    :   `SQLException` - if a JdbcRowSet cannot
        be created.

    Since:
    :   1.7
  + ### createJoinRowSet

    [JoinRowSet](JoinRowSet.md "interface in javax.sql.rowset") createJoinRowSet()
    throws [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new instance of a JoinRowSet.

    Returns:
    :   A new instance of a JoinRowSet.

    Throws:
    :   `SQLException` - if a JoinRowSet cannot
        be created.

    Since:
    :   1.7
  + ### createWebRowSet

    [WebRowSet](WebRowSet.md "interface in javax.sql.rowset") createWebRowSet()
    throws [SQLException](../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Creates a new instance of a WebRowSet.

    Returns:
    :   A new instance of a WebRowSet.

    Throws:
    :   `SQLException` - if a WebRowSet cannot
        be created.

    Since:
    :   1.7