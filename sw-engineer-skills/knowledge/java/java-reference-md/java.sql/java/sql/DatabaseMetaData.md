Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface DatabaseMetaData

All Superinterfaces:
:   `Wrapper`

---

public interface DatabaseMetaData
extends [Wrapper](Wrapper.md "interface in java.sql")

Comprehensive information about the database as a whole.

This interface is implemented by driver vendors to let users know the capabilities
of a Database Management System (DBMS) in combination with
the driver based on JDBC technology
("JDBC driver") that is used with it. Different relational DBMSs often support
different features, implement features in different ways, and use different
data types. In addition, a driver may implement a feature on top of what the
DBMS offers. Information returned by methods in this interface applies
to the capabilities of a particular driver and a particular DBMS working
together. Note that as used in this documentation, the term "database" is
used generically to refer to both the driver and DBMS.

A user for this interface is commonly a tool that needs to discover how to
deal with the underlying DBMS. This is especially true for applications
that are intended to be used with more than one DBMS. For example, a tool might use the method
`getTypeInfo` to find out what data types can be used in a
`CREATE TABLE` statement. Or a user might call the method
`supportsCorrelatedSubqueries` to see if it is possible to use
a correlated subquery or `supportsBatchUpdates` to see if it is
possible to use batch updates.

Some `DatabaseMetaData` methods return lists of information
in the form of `ResultSet` objects.
Regular `ResultSet` methods, such as
`getString` and `getInt`, can be used
to retrieve the data from these `ResultSet` objects. If
a given form of metadata is not available, an empty `ResultSet`
will be returned. Additional columns beyond the columns defined to be
returned by the `ResultSet` object for a given method
can be defined by the JDBC driver vendor and must be accessed
by their **column label**.

Some `DatabaseMetaData` methods take arguments that are
String patterns. These arguments all have names such as fooPattern.
Within a pattern String, "%" means match any substring of 0 or more
characters, and "\_" means match any one character. Only metadata
entries matching the search pattern are returned. If a search pattern
argument is set to `null`, that argument's criterion will
be dropped from the search.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `attributeNoNulls`

  Indicates that `NULL` values might not be allowed.

  `static final short`

  `attributeNullable`

  Indicates that `NULL` values are definitely allowed.

  `static final short`

  `attributeNullableUnknown`

  Indicates that whether `NULL` values are allowed is not
  known.

  `static final int`

  `bestRowNotPseudo`

  Indicates that the best row identifier is NOT a pseudo column.

  `static final int`

  `bestRowPseudo`

  Indicates that the best row identifier is a pseudo column.

  `static final int`

  `bestRowSession`

  Indicates that the scope of the best row identifier is
  the remainder of the current session.

  `static final int`

  `bestRowTemporary`

  Indicates that the scope of the best row identifier is
  very temporary, lasting only while the
  row is being used.

  `static final int`

  `bestRowTransaction`

  Indicates that the scope of the best row identifier is
  the remainder of the current transaction.

  `static final int`

  `bestRowUnknown`

  Indicates that the best row identifier may or may not be a pseudo column.

  `static final int`

  `columnNoNulls`

  Indicates that the column might not allow `NULL` values.

  `static final int`

  `columnNullable`

  Indicates that the column definitely allows `NULL` values.

  `static final int`

  `columnNullableUnknown`

  Indicates that the nullability of columns is unknown.

  `static final int`

  `functionColumnIn`

  Indicates that the parameter or column is an IN parameter.

  `static final int`

  `functionColumnInOut`

  Indicates that the parameter or column is an INOUT parameter.

  `static final int`

  `functionColumnOut`

  Indicates that the parameter or column is an OUT parameter.

  `static final int`

  `functionColumnResult`

  Indicates that the parameter or column is a column in a result set.

  `static final int`

  `functionColumnUnknown`

  Indicates that type of the parameter or column is unknown.

  `static final int`

  `functionNoNulls`

  Indicates that `NULL` values are not allowed.

  `static final int`

  `functionNoTable`

  Indicates that the function does not return a table.

  `static final int`

  `functionNullable`

  Indicates that `NULL` values are allowed.

  `static final int`

  `functionNullableUnknown`

  Indicates that whether `NULL` values are allowed
  is unknown.

  `static final int`

  `functionResultUnknown`

  Indicates that it is not known whether the function returns
  a result or a table.

  `static final int`

  `functionReturn`

  Indicates that the parameter or column is a return value.

  `static final int`

  `functionReturnsTable`

  Indicates that the function returns a table.

  `static final int`

  `importedKeyCascade`

  For the column `UPDATE_RULE`,
  indicates that
  when the primary key is updated, the foreign key (imported key)
  is changed to agree with it.

  `static final int`

  `importedKeyInitiallyDeferred`

  Indicates deferrability.

  `static final int`

  `importedKeyInitiallyImmediate`

  Indicates deferrability.

  `static final int`

  `importedKeyNoAction`

  For the columns `UPDATE_RULE`
  and `DELETE_RULE`, indicates that
  if the primary key has been imported, it cannot be updated or deleted.

  `static final int`

  `importedKeyNotDeferrable`

  Indicates deferrability.

  `static final int`

  `importedKeyRestrict`

  For the column `UPDATE_RULE`, indicates that
  a primary key may not be updated if it has been imported by
  another table as a foreign key.

  `static final int`

  `importedKeySetDefault`

  For the columns `UPDATE_RULE`
  and `DELETE_RULE`, indicates that
  if the primary key is updated or deleted, the foreign key (imported key)
  is set to the default value.

  `static final int`

  `importedKeySetNull`

  For the columns `UPDATE_RULE`
  and `DELETE_RULE`, indicates that
  when the primary key is updated or deleted, the foreign key (imported key)
  is changed to `NULL`.

  `static final int`

  `procedureColumnIn`

  Indicates that the column stores IN parameters.

  `static final int`

  `procedureColumnInOut`

  Indicates that the column stores INOUT parameters.

  `static final int`

  `procedureColumnOut`

  Indicates that the column stores OUT parameters.

  `static final int`

  `procedureColumnResult`

  Indicates that the column stores results.

  `static final int`

  `procedureColumnReturn`

  Indicates that the column stores return values.

  `static final int`

  `procedureColumnUnknown`

  Indicates that type of the column is unknown.

  `static final int`

  `procedureNoNulls`

  Indicates that `NULL` values are not allowed.

  `static final int`

  `procedureNoResult`

  Indicates that the procedure does not return a result.

  `static final int`

  `procedureNullable`

  Indicates that `NULL` values are allowed.

  `static final int`

  `procedureNullableUnknown`

  Indicates that whether `NULL` values are allowed
  is unknown.

  `static final int`

  `procedureResultUnknown`

  Indicates that it is not known whether the procedure returns
  a result.

  `static final int`

  `procedureReturnsResult`

  Indicates that the procedure returns a result.

  `static final int`

  `sqlStateSQL`

  A possible return value for the method
  `DatabaseMetaData.getSQLStateType` which is used to indicate
  whether the value returned by the method
  `SQLException.getSQLState` is an SQLSTATE value.

  `static final int`

  `sqlStateSQL99`

  A possible return value for the method
  `DatabaseMetaData.getSQLStateType` which is used to indicate
  whether the value returned by the method
  `SQLException.getSQLState` is an SQL99 SQLSTATE value.

  `static final int`

  `sqlStateXOpen`

  A possible return value for the method
  `DatabaseMetaData.getSQLStateType` which is used to indicate
  whether the value returned by the method
  `SQLException.getSQLState` is an
  X/Open (now know as Open Group) SQL CLI SQLSTATE value.

  `static final short`

  `tableIndexClustered`

  Indicates that this table index is a clustered index.

  `static final short`

  `tableIndexHashed`

  Indicates that this table index is a hashed index.

  `static final short`

  `tableIndexOther`

  Indicates that this table index is not a clustered
  index, a hashed index, or table statistics;
  it is something other than these.

  `static final short`

  `tableIndexStatistic`

  Indicates that this column contains table statistics that
  are returned in conjunction with a table's index descriptions.

  `static final int`

  `typeNoNulls`

  Indicates that a `NULL` value is NOT allowed for this
  data type.

  `static final int`

  `typeNullable`

  Indicates that a `NULL` value is allowed for this
  data type.

  `static final int`

  `typeNullableUnknown`

  Indicates that it is not known whether a `NULL` value
  is allowed for this data type.

  `static final int`

  `typePredBasic`

  Indicates that the data type can be only be used in `WHERE`
  search clauses
  that do not use `LIKE` predicates.

  `static final int`

  `typePredChar`

  Indicates that the data type
  can be only be used in `WHERE` search clauses
  that use `LIKE` predicates.

  `static final int`

  `typePredNone`

  Indicates that `WHERE` search clauses are not supported
  for this type.

  `static final int`

  `typeSearchable`

  Indicates that all `WHERE` search clauses can be
  based on this type.

  `static final int`

  `versionColumnNotPseudo`

  Indicates that this version column is NOT a pseudo column.

  `static final int`

  `versionColumnPseudo`

  Indicates that this version column is a pseudo column.

  `static final int`

  `versionColumnUnknown`

  Indicates that this version column may or may not be a pseudo column.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `allProceduresAreCallable()`

  Retrieves whether the current user can call all the procedures
  returned by the method `getProcedures`.

  `boolean`

  `allTablesAreSelectable()`

  Retrieves whether the current user can use all the tables returned
  by the method `getTables` in a `SELECT`
  statement.

  `boolean`

  `autoCommitFailureClosesAllResultSets()`

  Retrieves whether a `SQLException` while autoCommit is `true` indicates
  that all open ResultSets are closed, even ones that are holdable.

  `boolean`

  `dataDefinitionCausesTransactionCommit()`

  Retrieves whether a data definition statement within a transaction forces
  the transaction to commit.

  `boolean`

  `dataDefinitionIgnoredInTransactions()`

  Retrieves whether this database ignores a data definition statement
  within a transaction.

  `boolean`

  `deletesAreDetected(int type)`

  Retrieves whether or not a visible row delete can be detected by
  calling the method `ResultSet.rowDeleted`.

  `boolean`

  `doesMaxRowSizeIncludeBlobs()`

  Retrieves whether the return value for the method
  `getMaxRowSize` includes the SQL data types
  `LONGVARCHAR` and `LONGVARBINARY`.

  `boolean`

  `generatedKeyAlwaysReturned()`

  Retrieves whether a generated key will always be returned if the column
  name(s) or index(es) specified for the auto generated key column(s)
  are valid and the statement succeeds.

  `ResultSet`

  `getAttributes(String catalog,
  String schemaPattern,
  String typeNamePattern,
  String attributeNamePattern)`

  Retrieves a description of the given attribute of the given type
  for a user-defined type (UDT) that is available in the given schema
  and catalog.

  `ResultSet`

  `getBestRowIdentifier(String catalog,
  String schema,
  String table,
  int scope,
  boolean nullable)`

  Retrieves a description of a table's optimal set of columns that
  uniquely identifies a row.

  `ResultSet`

  `getCatalogs()`

  Retrieves the catalog names available in this database.

  `String`

  `getCatalogSeparator()`

  Retrieves the `String` that this database uses as the
  separator between a catalog and table name.

  `String`

  `getCatalogTerm()`

  Retrieves the database vendor's preferred term for "catalog".

  `ResultSet`

  `getClientInfoProperties()`

  Retrieves a list of the client info properties
  that the driver supports.

  `ResultSet`

  `getColumnPrivileges(String catalog,
  String schema,
  String table,
  String columnNamePattern)`

  Retrieves a description of the access rights for a table's columns.

  `ResultSet`

  `getColumns(String catalog,
  String schemaPattern,
  String tableNamePattern,
  String columnNamePattern)`

  Retrieves a description of table columns available in
  the specified catalog.

  `Connection`

  `getConnection()`

  Retrieves the connection that produced this metadata object.

  `ResultSet`

  `getCrossReference(String parentCatalog,
  String parentSchema,
  String parentTable,
  String foreignCatalog,
  String foreignSchema,
  String foreignTable)`

  Retrieves a description of the foreign key columns in the given foreign key
  table that reference the primary key or the columns representing a unique constraint of the parent table (could be the same or a different table).

  `int`

  `getDatabaseMajorVersion()`

  Retrieves the major version number of the underlying database.

  `int`

  `getDatabaseMinorVersion()`

  Retrieves the minor version number of the underlying database.

  `String`

  `getDatabaseProductName()`

  Retrieves the name of this database product.

  `String`

  `getDatabaseProductVersion()`

  Retrieves the version number of this database product.

  `int`

  `getDefaultTransactionIsolation()`

  Retrieves this database's default transaction isolation level.

  `int`

  `getDriverMajorVersion()`

  Retrieves this JDBC driver's major version number.

  `int`

  `getDriverMinorVersion()`

  Retrieves this JDBC driver's minor version number.

  `String`

  `getDriverName()`

  Retrieves the name of this JDBC driver.

  `String`

  `getDriverVersion()`

  Retrieves the version number of this JDBC driver as a `String`.

  `ResultSet`

  `getExportedKeys(String catalog,
  String schema,
  String table)`

  Retrieves a description of the foreign key columns that reference the
  given table's primary key columns (the foreign keys exported by a
  table).

  `String`

  `getExtraNameCharacters()`

  Retrieves all the "extra" characters that can be used in unquoted
  identifier names (those beyond a-z, A-Z, 0-9 and \_).

  `ResultSet`

  `getFunctionColumns(String catalog,
  String schemaPattern,
  String functionNamePattern,
  String columnNamePattern)`

  Retrieves a description of the given catalog's system or user
  function parameters and return type.

  `ResultSet`

  `getFunctions(String catalog,
  String schemaPattern,
  String functionNamePattern)`

  Retrieves a description of the system and user functions available
  in the given catalog.

  `String`

  `getIdentifierQuoteString()`

  Retrieves the string used to quote SQL identifiers.

  `ResultSet`

  `getImportedKeys(String catalog,
  String schema,
  String table)`

  Retrieves a description of the primary key columns that are
  referenced by the given table's foreign key columns (the primary keys
  imported by a table).

  `ResultSet`

  `getIndexInfo(String catalog,
  String schema,
  String table,
  boolean unique,
  boolean approximate)`

  Retrieves a description of the given table's indices and statistics.

  `int`

  `getJDBCMajorVersion()`

  Retrieves the major JDBC version number for this
  driver.

  `int`

  `getJDBCMinorVersion()`

  Retrieves the minor JDBC version number for this
  driver.

  `int`

  `getMaxBinaryLiteralLength()`

  Retrieves the maximum number of hex characters this database allows in an
  inline binary literal.

  `int`

  `getMaxCatalogNameLength()`

  Retrieves the maximum number of characters that this database allows in a
  catalog name.

  `int`

  `getMaxCharLiteralLength()`

  Retrieves the maximum number of characters this database allows
  for a character literal.

  `int`

  `getMaxColumnNameLength()`

  Retrieves the maximum number of characters this database allows
  for a column name.

  `int`

  `getMaxColumnsInGroupBy()`

  Retrieves the maximum number of columns this database allows in a
  `GROUP BY` clause.

  `int`

  `getMaxColumnsInIndex()`

  Retrieves the maximum number of columns this database allows in an index.

  `int`

  `getMaxColumnsInOrderBy()`

  Retrieves the maximum number of columns this database allows in an
  `ORDER BY` clause.

  `int`

  `getMaxColumnsInSelect()`

  Retrieves the maximum number of columns this database allows in a
  `SELECT` list.

  `int`

  `getMaxColumnsInTable()`

  Retrieves the maximum number of columns this database allows in a table.

  `int`

  `getMaxConnections()`

  Retrieves the maximum number of concurrent connections to this
  database that are possible.

  `int`

  `getMaxCursorNameLength()`

  Retrieves the maximum number of characters that this database allows in a
  cursor name.

  `int`

  `getMaxIndexLength()`

  Retrieves the maximum number of bytes this database allows for an
  index, including all of the parts of the index.

  `default long`

  `getMaxLogicalLobSize()`

  Retrieves the maximum number of bytes this database allows for
  the logical size for a `LOB`.

  `int`

  `getMaxProcedureNameLength()`

  Retrieves the maximum number of characters that this database allows in a
  procedure name.

  `int`

  `getMaxRowSize()`

  Retrieves the maximum number of bytes this database allows in
  a single row.

  `int`

  `getMaxSchemaNameLength()`

  Retrieves the maximum number of characters that this database allows in a
  schema name.

  `int`

  `getMaxStatementLength()`

  Retrieves the maximum number of characters this database allows in
  an SQL statement.

  `int`

  `getMaxStatements()`

  Retrieves the maximum number of active statements to this database
  that can be open at the same time.

  `int`

  `getMaxTableNameLength()`

  Retrieves the maximum number of characters this database allows in
  a table name.

  `int`

  `getMaxTablesInSelect()`

  Retrieves the maximum number of tables this database allows in a
  `SELECT` statement.

  `int`

  `getMaxUserNameLength()`

  Retrieves the maximum number of characters this database allows in
  a user name.

  `String`

  `getNumericFunctions()`

  Retrieves a comma-separated list of math functions available with
  this database.

  `ResultSet`

  `getPrimaryKeys(String catalog,
  String schema,
  String table)`

  Retrieves a description of the given table's primary key columns.

  `ResultSet`

  `getProcedureColumns(String catalog,
  String schemaPattern,
  String procedureNamePattern,
  String columnNamePattern)`

  Retrieves a description of the given catalog's stored procedure parameter
  and result columns.

  `ResultSet`

  `getProcedures(String catalog,
  String schemaPattern,
  String procedureNamePattern)`

  Retrieves a description of the stored procedures available in the given
  catalog.

  `String`

  `getProcedureTerm()`

  Retrieves the database vendor's preferred term for "procedure".

  `ResultSet`

  `getPseudoColumns(String catalog,
  String schemaPattern,
  String tableNamePattern,
  String columnNamePattern)`

  Retrieves a description of the pseudo or hidden columns available
  in a given table within the specified catalog and schema.

  `int`

  `getResultSetHoldability()`

  Retrieves this database's default holdability for `ResultSet`
  objects.

  `RowIdLifetime`

  `getRowIdLifetime()`

  Indicates whether this data source supports the SQL  `ROWID` type,
  and the lifetime for which a [`RowId`](RowId.md "interface in java.sql") object remains valid.

  `ResultSet`

  `getSchemas()`

  Retrieves the schema names available in this database.

  `ResultSet`

  `getSchemas(String catalog,
  String schemaPattern)`

  Retrieves the schema names available in this database.

  `String`

  `getSchemaTerm()`

  Retrieves the database vendor's preferred term for "schema".

  `String`

  `getSearchStringEscape()`

  Retrieves the string that can be used to escape wildcard characters.

  `String`

  `getSQLKeywords()`

  Retrieves a comma-separated list of all of this database's SQL keywords
  that are NOT also SQL:2003 keywords.

  `int`

  `getSQLStateType()`

  Indicates whether the SQLSTATE returned by `SQLException.getSQLState`
  is X/Open (now known as Open Group) SQL CLI or SQL:2003.

  `String`

  `getStringFunctions()`

  Retrieves a comma-separated list of string functions available with
  this database.

  `ResultSet`

  `getSuperTables(String catalog,
  String schemaPattern,
  String tableNamePattern)`

  Retrieves a description of the table hierarchies defined in a particular
  schema in this database.

  `ResultSet`

  `getSuperTypes(String catalog,
  String schemaPattern,
  String typeNamePattern)`

  Retrieves a description of the user-defined type (UDT) hierarchies defined in a
  particular schema in this database.

  `String`

  `getSystemFunctions()`

  Retrieves a comma-separated list of system functions available with
  this database.

  `ResultSet`

  `getTablePrivileges(String catalog,
  String schemaPattern,
  String tableNamePattern)`

  Retrieves a description of the access rights for each table available
  in a catalog.

  `ResultSet`

  `getTables(String catalog,
  String schemaPattern,
  String tableNamePattern,
  String[] types)`

  Retrieves a description of the tables available in the given catalog.

  `ResultSet`

  `getTableTypes()`

  Retrieves the table types available in this database.

  `String`

  `getTimeDateFunctions()`

  Retrieves a comma-separated list of the time and date functions available
  with this database.

  `ResultSet`

  `getTypeInfo()`

  Retrieves a description of all the data types supported by
  this database.

  `ResultSet`

  `getUDTs(String catalog,
  String schemaPattern,
  String typeNamePattern,
  int[] types)`

  Retrieves a description of the user-defined types (UDTs) defined
  in a particular schema.

  `String`

  `getURL()`

  Retrieves the URL for this DBMS.

  `String`

  `getUserName()`

  Retrieves the user name as known to this database.

  `ResultSet`

  `getVersionColumns(String catalog,
  String schema,
  String table)`

  Retrieves a description of a table's columns that are automatically
  updated when any value in a row is updated.

  `boolean`

  `insertsAreDetected(int type)`

  Retrieves whether or not a visible row insert can be detected
  by calling the method `ResultSet.rowInserted`.

  `boolean`

  `isCatalogAtStart()`

  Retrieves whether a catalog appears at the start of a fully qualified
  table name.

  `boolean`

  `isReadOnly()`

  Retrieves whether this database is in read-only mode.

  `boolean`

  `locatorsUpdateCopy()`

  Indicates whether updates made to a LOB are made on a copy or directly
  to the LOB.

  `boolean`

  `nullPlusNonNullIsNull()`

  Retrieves whether this database supports concatenations between
  `NULL` and non-`NULL` values being
  `NULL`.

  `boolean`

  `nullsAreSortedAtEnd()`

  Retrieves whether `NULL` values are sorted at the end regardless of
  sort order.

  `boolean`

  `nullsAreSortedAtStart()`

  Retrieves whether `NULL` values are sorted at the start regardless
  of sort order.

  `boolean`

  `nullsAreSortedHigh()`

  Retrieves whether `NULL` values are sorted high.

  `boolean`

  `nullsAreSortedLow()`

  Retrieves whether `NULL` values are sorted low.

  `boolean`

  `othersDeletesAreVisible(int type)`

  Retrieves whether deletes made by others are visible.

  `boolean`

  `othersInsertsAreVisible(int type)`

  Retrieves whether inserts made by others are visible.

  `boolean`

  `othersUpdatesAreVisible(int type)`

  Retrieves whether updates made by others are visible.

  `boolean`

  `ownDeletesAreVisible(int type)`

  Retrieves whether a result set's own deletes are visible.

  `boolean`

  `ownInsertsAreVisible(int type)`

  Retrieves whether a result set's own inserts are visible.

  `boolean`

  `ownUpdatesAreVisible(int type)`

  Retrieves whether for the given type of `ResultSet` object,
  the result set's own updates are visible.

  `boolean`

  `storesLowerCaseIdentifiers()`

  Retrieves whether this database treats mixed case unquoted SQL identifiers as
  case insensitive and stores them in lower case.

  `boolean`

  `storesLowerCaseQuotedIdentifiers()`

  Retrieves whether this database treats mixed case quoted SQL identifiers as
  case insensitive and stores them in lower case.

  `boolean`

  `storesMixedCaseIdentifiers()`

  Retrieves whether this database treats mixed case unquoted SQL identifiers as
  case insensitive and stores them in mixed case.

  `boolean`

  `storesMixedCaseQuotedIdentifiers()`

  Retrieves whether this database treats mixed case quoted SQL identifiers as
  case insensitive and stores them in mixed case.

  `boolean`

  `storesUpperCaseIdentifiers()`

  Retrieves whether this database treats mixed case unquoted SQL identifiers as
  case insensitive and stores them in upper case.

  `boolean`

  `storesUpperCaseQuotedIdentifiers()`

  Retrieves whether this database treats mixed case quoted SQL identifiers as
  case insensitive and stores them in upper case.

  `boolean`

  `supportsAlterTableWithAddColumn()`

  Retrieves whether this database supports `ALTER TABLE`
  with add column.

  `boolean`

  `supportsAlterTableWithDropColumn()`

  Retrieves whether this database supports `ALTER TABLE`
  with drop column.

  `boolean`

  `supportsANSI92EntryLevelSQL()`

  Retrieves whether this database supports the ANSI92 entry level SQL
  grammar.

  `boolean`

  `supportsANSI92FullSQL()`

  Retrieves whether this database supports the ANSI92 full SQL grammar supported.

  `boolean`

  `supportsANSI92IntermediateSQL()`

  Retrieves whether this database supports the ANSI92 intermediate SQL grammar supported.

  `boolean`

  `supportsBatchUpdates()`

  Retrieves whether this database supports batch updates.

  `boolean`

  `supportsCatalogsInDataManipulation()`

  Retrieves whether a catalog name can be used in a data manipulation statement.

  `boolean`

  `supportsCatalogsInIndexDefinitions()`

  Retrieves whether a catalog name can be used in an index definition statement.

  `boolean`

  `supportsCatalogsInPrivilegeDefinitions()`

  Retrieves whether a catalog name can be used in a privilege definition statement.

  `boolean`

  `supportsCatalogsInProcedureCalls()`

  Retrieves whether a catalog name can be used in a procedure call statement.

  `boolean`

  `supportsCatalogsInTableDefinitions()`

  Retrieves whether a catalog name can be used in a table definition statement.

  `boolean`

  `supportsColumnAliasing()`

  Retrieves whether this database supports column aliasing.

  `boolean`

  `supportsConvert()`

  Retrieves whether this database supports the JDBC scalar function
  `CONVERT` for the conversion of one JDBC type to another.

  `boolean`

  `supportsConvert(int fromType,
  int toType)`

  Retrieves whether this database supports the JDBC scalar function
  `CONVERT` for conversions between the JDBC types *fromType*
  and *toType*.

  `boolean`

  `supportsCoreSQLGrammar()`

  Retrieves whether this database supports the ODBC Core SQL grammar.

  `boolean`

  `supportsCorrelatedSubqueries()`

  Retrieves whether this database supports correlated subqueries.

  `boolean`

  `supportsDataDefinitionAndDataManipulationTransactions()`

  Retrieves whether this database supports both data definition and
  data manipulation statements within a transaction.

  `boolean`

  `supportsDataManipulationTransactionsOnly()`

  Retrieves whether this database supports only data manipulation
  statements within a transaction.

  `boolean`

  `supportsDifferentTableCorrelationNames()`

  Retrieves whether, when table correlation names are supported, they
  are restricted to being different from the names of the tables.

  `boolean`

  `supportsExpressionsInOrderBy()`

  Retrieves whether this database supports expressions in
  `ORDER BY` lists.

  `boolean`

  `supportsExtendedSQLGrammar()`

  Retrieves whether this database supports the ODBC Extended SQL grammar.

  `boolean`

  `supportsFullOuterJoins()`

  Retrieves whether this database supports full nested outer joins.

  `boolean`

  `supportsGetGeneratedKeys()`

  Retrieves whether auto-generated keys can be retrieved after
  a statement has been executed

  `boolean`

  `supportsGroupBy()`

  Retrieves whether this database supports some form of
  `GROUP BY` clause.

  `boolean`

  `supportsGroupByBeyondSelect()`

  Retrieves whether this database supports using columns not included in
  the `SELECT` statement in a `GROUP BY` clause
  provided that all of the columns in the `SELECT` statement
  are included in the `GROUP BY` clause.

  `boolean`

  `supportsGroupByUnrelated()`

  Retrieves whether this database supports using a column that is
  not in the `SELECT` statement in a
  `GROUP BY` clause.

  `boolean`

  `supportsIntegrityEnhancementFacility()`

  Retrieves whether this database supports the SQL Integrity
  Enhancement Facility.

  `boolean`

  `supportsLikeEscapeClause()`

  Retrieves whether this database supports specifying a
  `LIKE` escape clause.

  `boolean`

  `supportsLimitedOuterJoins()`

  Retrieves whether this database provides limited support for outer
  joins.

  `boolean`

  `supportsMinimumSQLGrammar()`

  Retrieves whether this database supports the ODBC Minimum SQL grammar.

  `boolean`

  `supportsMixedCaseIdentifiers()`

  Retrieves whether this database treats mixed case unquoted SQL identifiers as
  case sensitive and as a result stores them in mixed case.

  `boolean`

  `supportsMixedCaseQuotedIdentifiers()`

  Retrieves whether this database treats mixed case quoted SQL identifiers as
  case sensitive and as a result stores them in mixed case.

  `boolean`

  `supportsMultipleOpenResults()`

  Retrieves whether it is possible to have multiple `ResultSet` objects
  returned from a `CallableStatement` object
  simultaneously.

  `boolean`

  `supportsMultipleResultSets()`

  Retrieves whether this database supports getting multiple
  `ResultSet` objects from a single call to the
  method `execute`.

  `boolean`

  `supportsMultipleTransactions()`

  Retrieves whether this database allows having multiple
  transactions open at once (on different connections).

  `boolean`

  `supportsNamedParameters()`

  Retrieves whether this database supports named parameters to callable
  statements.

  `boolean`

  `supportsNonNullableColumns()`

  Retrieves whether columns in this database may be defined as non-nullable.

  `boolean`

  `supportsOpenCursorsAcrossCommit()`

  Retrieves whether this database supports keeping cursors open
  across commits.

  `boolean`

  `supportsOpenCursorsAcrossRollback()`

  Retrieves whether this database supports keeping cursors open
  across rollbacks.

  `boolean`

  `supportsOpenStatementsAcrossCommit()`

  Retrieves whether this database supports keeping statements open
  across commits.

  `boolean`

  `supportsOpenStatementsAcrossRollback()`

  Retrieves whether this database supports keeping statements open
  across rollbacks.

  `boolean`

  `supportsOrderByUnrelated()`

  Retrieves whether this database supports using a column that is
  not in the `SELECT` statement in an
  `ORDER BY` clause.

  `boolean`

  `supportsOuterJoins()`

  Retrieves whether this database supports some form of outer join.

  `boolean`

  `supportsPositionedDelete()`

  Retrieves whether this database supports positioned `DELETE`
  statements.

  `boolean`

  `supportsPositionedUpdate()`

  Retrieves whether this database supports positioned `UPDATE`
  statements.

  `default boolean`

  `supportsRefCursors()`

  Retrieves whether this database supports REF CURSOR.

  `boolean`

  `supportsResultSetConcurrency(int type,
  int concurrency)`

  Retrieves whether this database supports the given concurrency type
  in combination with the given result set type.

  `boolean`

  `supportsResultSetHoldability(int holdability)`

  Retrieves whether this database supports the given result set holdability.

  `boolean`

  `supportsResultSetType(int type)`

  Retrieves whether this database supports the given result set type.

  `boolean`

  `supportsSavepoints()`

  Retrieves whether this database supports savepoints.

  `boolean`

  `supportsSchemasInDataManipulation()`

  Retrieves whether a schema name can be used in a data manipulation statement.

  `boolean`

  `supportsSchemasInIndexDefinitions()`

  Retrieves whether a schema name can be used in an index definition statement.

  `boolean`

  `supportsSchemasInPrivilegeDefinitions()`

  Retrieves whether a schema name can be used in a privilege definition statement.

  `boolean`

  `supportsSchemasInProcedureCalls()`

  Retrieves whether a schema name can be used in a procedure call statement.

  `boolean`

  `supportsSchemasInTableDefinitions()`

  Retrieves whether a schema name can be used in a table definition statement.

  `boolean`

  `supportsSelectForUpdate()`

  Retrieves whether this database supports `SELECT FOR UPDATE`
  statements.

  `default boolean`

  `supportsSharding()`

  Retrieves whether this database supports sharding.

  `boolean`

  `supportsStatementPooling()`

  Retrieves whether this database supports statement pooling.

  `boolean`

  `supportsStoredFunctionsUsingCallSyntax()`

  Retrieves whether this database supports invoking user-defined or vendor functions
  using the stored procedure escape syntax.

  `boolean`

  `supportsStoredProcedures()`

  Retrieves whether this database supports stored procedure calls
  that use the stored procedure escape syntax.

  `boolean`

  `supportsSubqueriesInComparisons()`

  Retrieves whether this database supports subqueries in comparison
  expressions.

  `boolean`

  `supportsSubqueriesInExists()`

  Retrieves whether this database supports subqueries in
  `EXISTS` expressions.

  `boolean`

  `supportsSubqueriesInIns()`

  Retrieves whether this database supports subqueries in
  `IN` expressions.

  `boolean`

  `supportsSubqueriesInQuantifieds()`

  Retrieves whether this database supports subqueries in quantified
  expressions.

  `boolean`

  `supportsTableCorrelationNames()`

  Retrieves whether this database supports table correlation names.

  `boolean`

  `supportsTransactionIsolationLevel(int level)`

  Retrieves whether this database supports the given transaction isolation level.

  `boolean`

  `supportsTransactions()`

  Retrieves whether this database supports transactions.

  `boolean`

  `supportsUnion()`

  Retrieves whether this database supports SQL `UNION`.

  `boolean`

  `supportsUnionAll()`

  Retrieves whether this database supports SQL `UNION ALL`.

  `boolean`

  `updatesAreDetected(int type)`

  Retrieves whether or not a visible row update can be detected by
  calling the method `ResultSet.rowUpdated`.

  `boolean`

  `usesLocalFilePerTable()`

  Retrieves whether this database uses a file for each table.

  `boolean`

  `usesLocalFiles()`

  Retrieves whether this database stores tables in a local file.

  ### Methods inherited from interface java.sql.[Wrapper](Wrapper.md "interface in java.sql")

  `isWrapperFor, unwrap`

* ## Field Details

  + ### procedureResultUnknown

    static final int procedureResultUnknown

    Indicates that it is not known whether the procedure returns
    a result.

    A possible value for column `PROCEDURE_TYPE` in the
    `ResultSet` object returned by the method
    `getProcedures`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureResultUnknown)
  + ### procedureNoResult

    static final int procedureNoResult

    Indicates that the procedure does not return a result.

    A possible value for column `PROCEDURE_TYPE` in the
    `ResultSet` object returned by the method
    `getProcedures`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureNoResult)
  + ### procedureReturnsResult

    static final int procedureReturnsResult

    Indicates that the procedure returns a result.

    A possible value for column `PROCEDURE_TYPE` in the
    `ResultSet` object returned by the method
    `getProcedures`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureReturnsResult)
  + ### procedureColumnUnknown

    static final int procedureColumnUnknown

    Indicates that type of the column is unknown.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureColumnUnknown)
  + ### procedureColumnIn

    static final int procedureColumnIn

    Indicates that the column stores IN parameters.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureColumnIn)
  + ### procedureColumnInOut

    static final int procedureColumnInOut

    Indicates that the column stores INOUT parameters.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureColumnInOut)
  + ### procedureColumnOut

    static final int procedureColumnOut

    Indicates that the column stores OUT parameters.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureColumnOut)
  + ### procedureColumnReturn

    static final int procedureColumnReturn

    Indicates that the column stores return values.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureColumnReturn)
  + ### procedureColumnResult

    static final int procedureColumnResult

    Indicates that the column stores results.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureColumnResult)
  + ### procedureNoNulls

    static final int procedureNoNulls

    Indicates that `NULL` values are not allowed.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` object
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureNoNulls)
  + ### procedureNullable

    static final int procedureNullable

    Indicates that `NULL` values are allowed.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` object
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureNullable)
  + ### procedureNullableUnknown

    static final int procedureNullableUnknown

    Indicates that whether `NULL` values are allowed
    is unknown.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` object
    returned by the method `getProcedureColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.procedureNullableUnknown)
  + ### columnNoNulls

    static final int columnNoNulls

    Indicates that the column might not allow `NULL` values.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` returned by the method
    `getColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.columnNoNulls)
  + ### columnNullable

    static final int columnNullable

    Indicates that the column definitely allows `NULL` values.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` returned by the method
    `getColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.columnNullable)
  + ### columnNullableUnknown

    static final int columnNullableUnknown

    Indicates that the nullability of columns is unknown.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` returned by the method
    `getColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.columnNullableUnknown)
  + ### bestRowTemporary

    static final int bestRowTemporary

    Indicates that the scope of the best row identifier is
    very temporary, lasting only while the
    row is being used.

    A possible value for the column
    `SCOPE`
    in the `ResultSet` object
    returned by the method `getBestRowIdentifier`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.bestRowTemporary)
  + ### bestRowTransaction

    static final int bestRowTransaction

    Indicates that the scope of the best row identifier is
    the remainder of the current transaction.

    A possible value for the column
    `SCOPE`
    in the `ResultSet` object
    returned by the method `getBestRowIdentifier`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.bestRowTransaction)
  + ### bestRowSession

    static final int bestRowSession

    Indicates that the scope of the best row identifier is
    the remainder of the current session.

    A possible value for the column
    `SCOPE`
    in the `ResultSet` object
    returned by the method `getBestRowIdentifier`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.bestRowSession)
  + ### bestRowUnknown

    static final int bestRowUnknown

    Indicates that the best row identifier may or may not be a pseudo column.

    A possible value for the column
    `PSEUDO_COLUMN`
    in the `ResultSet` object
    returned by the method `getBestRowIdentifier`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.bestRowUnknown)
  + ### bestRowNotPseudo

    static final int bestRowNotPseudo

    Indicates that the best row identifier is NOT a pseudo column.

    A possible value for the column
    `PSEUDO_COLUMN`
    in the `ResultSet` object
    returned by the method `getBestRowIdentifier`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.bestRowNotPseudo)
  + ### bestRowPseudo

    static final int bestRowPseudo

    Indicates that the best row identifier is a pseudo column.

    A possible value for the column
    `PSEUDO_COLUMN`
    in the `ResultSet` object
    returned by the method `getBestRowIdentifier`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.bestRowPseudo)
  + ### versionColumnUnknown

    static final int versionColumnUnknown

    Indicates that this version column may or may not be a pseudo column.

    A possible value for the column
    `PSEUDO_COLUMN`
    in the `ResultSet` object
    returned by the method `getVersionColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.versionColumnUnknown)
  + ### versionColumnNotPseudo

    static final int versionColumnNotPseudo

    Indicates that this version column is NOT a pseudo column.

    A possible value for the column
    `PSEUDO_COLUMN`
    in the `ResultSet` object
    returned by the method `getVersionColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.versionColumnNotPseudo)
  + ### versionColumnPseudo

    static final int versionColumnPseudo

    Indicates that this version column is a pseudo column.

    A possible value for the column
    `PSEUDO_COLUMN`
    in the `ResultSet` object
    returned by the method `getVersionColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.versionColumnPseudo)
  + ### importedKeyCascade

    static final int importedKeyCascade

    For the column `UPDATE_RULE`,
    indicates that
    when the primary key is updated, the foreign key (imported key)
    is changed to agree with it.
    For the column `DELETE_RULE`,
    it indicates that
    when the primary key is deleted, rows that imported that key
    are deleted.

    A possible value for the columns `UPDATE_RULE`
    and `DELETE_RULE` in the
    `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeyCascade)
  + ### importedKeyRestrict

    static final int importedKeyRestrict

    For the column `UPDATE_RULE`, indicates that
    a primary key may not be updated if it has been imported by
    another table as a foreign key.
    For the column `DELETE_RULE`, indicates that
    a primary key may not be deleted if it has been imported by
    another table as a foreign key.

    A possible value for the columns `UPDATE_RULE`
    and `DELETE_RULE` in the
    `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeyRestrict)
  + ### importedKeySetNull

    static final int importedKeySetNull

    For the columns `UPDATE_RULE`
    and `DELETE_RULE`, indicates that
    when the primary key is updated or deleted, the foreign key (imported key)
    is changed to `NULL`.

    A possible value for the columns `UPDATE_RULE`
    and `DELETE_RULE` in the
    `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeySetNull)
  + ### importedKeyNoAction

    static final int importedKeyNoAction

    For the columns `UPDATE_RULE`
    and `DELETE_RULE`, indicates that
    if the primary key has been imported, it cannot be updated or deleted.

    A possible value for the columns `UPDATE_RULE`
    and `DELETE_RULE` in the
    `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeyNoAction)
  + ### importedKeySetDefault

    static final int importedKeySetDefault

    For the columns `UPDATE_RULE`
    and `DELETE_RULE`, indicates that
    if the primary key is updated or deleted, the foreign key (imported key)
    is set to the default value.

    A possible value for the columns `UPDATE_RULE`
    and `DELETE_RULE` in the
    `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeySetDefault)
  + ### importedKeyInitiallyDeferred

    static final int importedKeyInitiallyDeferred

    Indicates deferrability. See SQL-92 for a definition.

    A possible value for the column `DEFERRABILITY`
    in the `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeyInitiallyDeferred)
  + ### importedKeyInitiallyImmediate

    static final int importedKeyInitiallyImmediate

    Indicates deferrability. See SQL-92 for a definition.

    A possible value for the column `DEFERRABILITY`
    in the `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeyInitiallyImmediate)
  + ### importedKeyNotDeferrable

    static final int importedKeyNotDeferrable

    Indicates deferrability. See SQL-92 for a definition.

    A possible value for the column `DEFERRABILITY`
    in the `ResultSet` objects returned by the methods
    `getImportedKeys`, `getExportedKeys`,
    and `getCrossReference`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.importedKeyNotDeferrable)
  + ### typeNoNulls

    static final int typeNoNulls

    Indicates that a `NULL` value is NOT allowed for this
    data type.

    A possible value for column `NULLABLE` in the
    `ResultSet` object returned by the method
    `getTypeInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.typeNoNulls)
  + ### typeNullable

    static final int typeNullable

    Indicates that a `NULL` value is allowed for this
    data type.

    A possible value for column `NULLABLE` in the
    `ResultSet` object returned by the method
    `getTypeInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.typeNullable)
  + ### typeNullableUnknown

    static final int typeNullableUnknown

    Indicates that it is not known whether a `NULL` value
    is allowed for this data type.

    A possible value for column `NULLABLE` in the
    `ResultSet` object returned by the method
    `getTypeInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.typeNullableUnknown)
  + ### typePredNone

    static final int typePredNone

    Indicates that `WHERE` search clauses are not supported
    for this type.

    A possible value for column `SEARCHABLE` in the
    `ResultSet` object returned by the method
    `getTypeInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.typePredNone)
  + ### typePredChar

    static final int typePredChar

    Indicates that the data type
    can be only be used in `WHERE` search clauses
    that use `LIKE` predicates.

    A possible value for column `SEARCHABLE` in the
    `ResultSet` object returned by the method
    `getTypeInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.typePredChar)
  + ### typePredBasic

    static final int typePredBasic

    Indicates that the data type can be only be used in `WHERE`
    search clauses
    that do not use `LIKE` predicates.

    A possible value for column `SEARCHABLE` in the
    `ResultSet` object returned by the method
    `getTypeInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.typePredBasic)
  + ### typeSearchable

    static final int typeSearchable

    Indicates that all `WHERE` search clauses can be
    based on this type.

    A possible value for column `SEARCHABLE` in the
    `ResultSet` object returned by the method
    `getTypeInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.typeSearchable)
  + ### tableIndexStatistic

    static final short tableIndexStatistic

    Indicates that this column contains table statistics that
    are returned in conjunction with a table's index descriptions.

    A possible value for column `TYPE` in the
    `ResultSet` object returned by the method
    `getIndexInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.tableIndexStatistic)
  + ### tableIndexClustered

    static final short tableIndexClustered

    Indicates that this table index is a clustered index.

    A possible value for column `TYPE` in the
    `ResultSet` object returned by the method
    `getIndexInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.tableIndexClustered)
  + ### tableIndexHashed

    static final short tableIndexHashed

    Indicates that this table index is a hashed index.

    A possible value for column `TYPE` in the
    `ResultSet` object returned by the method
    `getIndexInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.tableIndexHashed)
  + ### tableIndexOther

    static final short tableIndexOther

    Indicates that this table index is not a clustered
    index, a hashed index, or table statistics;
    it is something other than these.

    A possible value for column `TYPE` in the
    `ResultSet` object returned by the method
    `getIndexInfo`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.tableIndexOther)
  + ### attributeNoNulls

    static final short attributeNoNulls

    Indicates that `NULL` values might not be allowed.

    A possible value for the column
    `NULLABLE` in the `ResultSet` object
    returned by the method `getAttributes`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.attributeNoNulls)
  + ### attributeNullable

    static final short attributeNullable

    Indicates that `NULL` values are definitely allowed.

    A possible value for the column `NULLABLE`
    in the `ResultSet` object
    returned by the method `getAttributes`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.attributeNullable)
  + ### attributeNullableUnknown

    static final short attributeNullableUnknown

    Indicates that whether `NULL` values are allowed is not
    known.

    A possible value for the column `NULLABLE`
    in the `ResultSet` object
    returned by the method `getAttributes`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.attributeNullableUnknown)
  + ### sqlStateXOpen

    static final int sqlStateXOpen

    A possible return value for the method
    `DatabaseMetaData.getSQLStateType` which is used to indicate
    whether the value returned by the method
    `SQLException.getSQLState` is an
    X/Open (now know as Open Group) SQL CLI SQLSTATE value.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.sqlStateXOpen)
  + ### sqlStateSQL

    static final int sqlStateSQL

    A possible return value for the method
    `DatabaseMetaData.getSQLStateType` which is used to indicate
    whether the value returned by the method
    `SQLException.getSQLState` is an SQLSTATE value.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.sqlStateSQL)
  + ### sqlStateSQL99

    static final int sqlStateSQL99

    A possible return value for the method
    `DatabaseMetaData.getSQLStateType` which is used to indicate
    whether the value returned by the method
    `SQLException.getSQLState` is an SQL99 SQLSTATE value.

    **Note:**This constant remains only for compatibility reasons. Developers
    should use the constant `sqlStateSQL` instead.

    Since:
    :   1.4

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.sqlStateSQL99)
  + ### functionColumnUnknown

    static final int functionColumnUnknown

    Indicates that type of the parameter or column is unknown.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getFunctionColumns`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionColumnUnknown)
  + ### functionColumnIn

    static final int functionColumnIn

    Indicates that the parameter or column is an IN parameter.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionColumnIn)
  + ### functionColumnInOut

    static final int functionColumnInOut

    Indicates that the parameter or column is an INOUT parameter.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionColumnInOut)
  + ### functionColumnOut

    static final int functionColumnOut

    Indicates that the parameter or column is an OUT parameter.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionColumnOut)
  + ### functionReturn

    static final int functionReturn

    Indicates that the parameter or column is a return value.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionReturn)
  + ### functionColumnResult

    static final int functionColumnResult

    Indicates that the parameter or column is a column in a result set.

    A possible value for the column
    `COLUMN_TYPE`
    in the `ResultSet`
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionColumnResult)
  + ### functionNoNulls

    static final int functionNoNulls

    Indicates that `NULL` values are not allowed.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` object
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionNoNulls)
  + ### functionNullable

    static final int functionNullable

    Indicates that `NULL` values are allowed.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` object
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionNullable)
  + ### functionNullableUnknown

    static final int functionNullableUnknown

    Indicates that whether `NULL` values are allowed
    is unknown.

    A possible value for the column
    `NULLABLE`
    in the `ResultSet` object
    returned by the method `getFunctionColumns`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionNullableUnknown)
  + ### functionResultUnknown

    static final int functionResultUnknown

    Indicates that it is not known whether the function returns
    a result or a table.

    A possible value for column `FUNCTION_TYPE` in the
    `ResultSet` object returned by the method
    `getFunctions`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionResultUnknown)
  + ### functionNoTable

    static final int functionNoTable

    Indicates that the function does not return a table.

    A possible value for column `FUNCTION_TYPE` in the
    `ResultSet` object returned by the method
    `getFunctions`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionNoTable)
  + ### functionReturnsTable

    static final int functionReturnsTable

    Indicates that the function returns a table.

    A possible value for column `FUNCTION_TYPE` in the
    `ResultSet` object returned by the method
    `getFunctions`.

    Since:
    :   1.6

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.DatabaseMetaData.functionReturnsTable)
* ## Method Details

  + ### allProceduresAreCallable

    boolean allProceduresAreCallable()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether the current user can call all the procedures
    returned by the method `getProcedures`.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### allTablesAreSelectable

    boolean allTablesAreSelectable()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether the current user can use all the tables returned
    by the method `getTables` in a `SELECT`
    statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getURL

    [String](../../../java.base/java/lang/String.md "class in java.lang") getURL()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the URL for this DBMS.

    Returns:
    :   the URL for this DBMS or `null` if it cannot be
        generated

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getUserName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getUserName()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the user name as known to this database.

    Returns:
    :   the database user name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isReadOnly

    boolean isReadOnly()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database is in read-only mode.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### nullsAreSortedHigh

    boolean nullsAreSortedHigh()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether `NULL` values are sorted high.
    Sorted high means that `NULL` values
    sort higher than any other value in a domain. In an ascending order,
    if this method returns `true`, `NULL` values
    will appear at the end. By contrast, the method
    `nullsAreSortedAtEnd` indicates whether `NULL` values
    are sorted at the end regardless of sort order.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### nullsAreSortedLow

    boolean nullsAreSortedLow()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether `NULL` values are sorted low.
    Sorted low means that `NULL` values
    sort lower than any other value in a domain. In an ascending order,
    if this method returns `true`, `NULL` values
    will appear at the beginning. By contrast, the method
    `nullsAreSortedAtStart` indicates whether `NULL` values
    are sorted at the beginning regardless of sort order.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### nullsAreSortedAtStart

    boolean nullsAreSortedAtStart()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether `NULL` values are sorted at the start regardless
    of sort order.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### nullsAreSortedAtEnd

    boolean nullsAreSortedAtEnd()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether `NULL` values are sorted at the end regardless of
    sort order.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getDatabaseProductName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getDatabaseProductName()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the name of this database product.

    Returns:
    :   database product name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getDatabaseProductVersion

    [String](../../../java.base/java/lang/String.md "class in java.lang") getDatabaseProductVersion()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the version number of this database product.

    Returns:
    :   database version number

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getDriverName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getDriverName()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the name of this JDBC driver.

    Returns:
    :   JDBC driver name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getDriverVersion

    [String](../../../java.base/java/lang/String.md "class in java.lang") getDriverVersion()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the version number of this JDBC driver as a `String`.

    Returns:
    :   JDBC driver version

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getDriverMajorVersion

    int getDriverMajorVersion()

    Retrieves this JDBC driver's major version number.

    Returns:
    :   JDBC driver major version
  + ### getDriverMinorVersion

    int getDriverMinorVersion()

    Retrieves this JDBC driver's minor version number.

    Returns:
    :   JDBC driver minor version number
  + ### usesLocalFiles

    boolean usesLocalFiles()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database stores tables in a local file.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### usesLocalFilePerTable

    boolean usesLocalFilePerTable()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database uses a file for each table.

    Returns:
    :   `true` if this database uses a local file for each table;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsMixedCaseIdentifiers

    boolean supportsMixedCaseIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case unquoted SQL identifiers as
    case sensitive and as a result stores them in mixed case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### storesUpperCaseIdentifiers

    boolean storesUpperCaseIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case unquoted SQL identifiers as
    case insensitive and stores them in upper case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### storesLowerCaseIdentifiers

    boolean storesLowerCaseIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case unquoted SQL identifiers as
    case insensitive and stores them in lower case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### storesMixedCaseIdentifiers

    boolean storesMixedCaseIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case unquoted SQL identifiers as
    case insensitive and stores them in mixed case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsMixedCaseQuotedIdentifiers

    boolean supportsMixedCaseQuotedIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case quoted SQL identifiers as
    case sensitive and as a result stores them in mixed case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### storesUpperCaseQuotedIdentifiers

    boolean storesUpperCaseQuotedIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case quoted SQL identifiers as
    case insensitive and stores them in upper case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### storesLowerCaseQuotedIdentifiers

    boolean storesLowerCaseQuotedIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case quoted SQL identifiers as
    case insensitive and stores them in lower case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### storesMixedCaseQuotedIdentifiers

    boolean storesMixedCaseQuotedIdentifiers()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database treats mixed case quoted SQL identifiers as
    case insensitive and stores them in mixed case.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getIdentifierQuoteString

    [String](../../../java.base/java/lang/String.md "class in java.lang") getIdentifierQuoteString()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the string used to quote SQL identifiers.
    This method returns a space " " if identifier quoting is not supported.

    Returns:
    :   the quoting string or a space if quoting is not supported

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getSQLKeywords

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSQLKeywords()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a comma-separated list of all of this database's SQL keywords
    that are NOT also SQL:2003 keywords.

    Returns:
    :   the list of this database's keywords that are not also
        SQL:2003 keywords

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getNumericFunctions

    [String](../../../java.base/java/lang/String.md "class in java.lang") getNumericFunctions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a comma-separated list of math functions available with
    this database. These are the Open /Open CLI math function names used in
    the JDBC function escape clause.

    Returns:
    :   the list of math functions supported by this database

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getStringFunctions

    [String](../../../java.base/java/lang/String.md "class in java.lang") getStringFunctions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a comma-separated list of string functions available with
    this database. These are the Open Group CLI string function names used
    in the JDBC function escape clause.

    Returns:
    :   the list of string functions supported by this database

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getSystemFunctions

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSystemFunctions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a comma-separated list of system functions available with
    this database. These are the Open Group CLI system function names used
    in the JDBC function escape clause.

    Returns:
    :   a list of system functions supported by this database

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getTimeDateFunctions

    [String](../../../java.base/java/lang/String.md "class in java.lang") getTimeDateFunctions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a comma-separated list of the time and date functions available
    with this database.

    Returns:
    :   the list of time and date functions supported by this database

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getSearchStringEscape

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSearchStringEscape()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the string that can be used to escape wildcard characters.
    This is the string that can be used to escape '\_' or '%' in
    the catalog search parameters that are a pattern (and therefore use one
    of the wildcard characters).

    The '\_' character represents any single character;
    the '%' character represents any sequence of zero or
    more characters.

    Returns:
    :   the string used to escape wildcard characters

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getExtraNameCharacters

    [String](../../../java.base/java/lang/String.md "class in java.lang") getExtraNameCharacters()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves all the "extra" characters that can be used in unquoted
    identifier names (those beyond a-z, A-Z, 0-9 and \_).

    Returns:
    :   the string containing the extra characters

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsAlterTableWithAddColumn

    boolean supportsAlterTableWithAddColumn()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports `ALTER TABLE`
    with add column.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsAlterTableWithDropColumn

    boolean supportsAlterTableWithDropColumn()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports `ALTER TABLE`
    with drop column.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsColumnAliasing

    boolean supportsColumnAliasing()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports column aliasing.

    If so, the SQL AS clause can be used to provide names for
    computed columns or to provide alias names for columns as
    required.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### nullPlusNonNullIsNull

    boolean nullPlusNonNullIsNull()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports concatenations between
    `NULL` and non-`NULL` values being
    `NULL`.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsConvert

    boolean supportsConvert()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the JDBC scalar function
    `CONVERT` for the conversion of one JDBC type to another.
    The JDBC types are the generic SQL data types defined
    in `java.sql.Types`.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsConvert

    boolean supportsConvert(int fromType,
    int toType)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the JDBC scalar function
    `CONVERT` for conversions between the JDBC types *fromType*
    and *toType*. The JDBC types are the generic SQL data types defined
    in `java.sql.Types`.

    Parameters:
    :   `fromType` - the type to convert from; one of the type codes from
        the class `java.sql.Types`
    :   `toType` - the type to convert to; one of the type codes from
        the class `java.sql.Types`

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`Types`](Types.md "class in java.sql")
  + ### supportsTableCorrelationNames

    boolean supportsTableCorrelationNames()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports table correlation names.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsDifferentTableCorrelationNames

    boolean supportsDifferentTableCorrelationNames()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether, when table correlation names are supported, they
    are restricted to being different from the names of the tables.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsExpressionsInOrderBy

    boolean supportsExpressionsInOrderBy()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports expressions in
    `ORDER BY` lists.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsOrderByUnrelated

    boolean supportsOrderByUnrelated()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports using a column that is
    not in the `SELECT` statement in an
    `ORDER BY` clause.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsGroupBy

    boolean supportsGroupBy()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports some form of
    `GROUP BY` clause.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsGroupByUnrelated

    boolean supportsGroupByUnrelated()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports using a column that is
    not in the `SELECT` statement in a
    `GROUP BY` clause.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsGroupByBeyondSelect

    boolean supportsGroupByBeyondSelect()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports using columns not included in
    the `SELECT` statement in a `GROUP BY` clause
    provided that all of the columns in the `SELECT` statement
    are included in the `GROUP BY` clause.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsLikeEscapeClause

    boolean supportsLikeEscapeClause()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports specifying a
    `LIKE` escape clause.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsMultipleResultSets

    boolean supportsMultipleResultSets()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports getting multiple
    `ResultSet` objects from a single call to the
    method `execute`.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsMultipleTransactions

    boolean supportsMultipleTransactions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database allows having multiple
    transactions open at once (on different connections).

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsNonNullableColumns

    boolean supportsNonNullableColumns()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether columns in this database may be defined as non-nullable.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsMinimumSQLGrammar

    boolean supportsMinimumSQLGrammar()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the ODBC Minimum SQL grammar.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsCoreSQLGrammar

    boolean supportsCoreSQLGrammar()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the ODBC Core SQL grammar.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsExtendedSQLGrammar

    boolean supportsExtendedSQLGrammar()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the ODBC Extended SQL grammar.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsANSI92EntryLevelSQL

    boolean supportsANSI92EntryLevelSQL()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the ANSI92 entry level SQL
    grammar.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsANSI92IntermediateSQL

    boolean supportsANSI92IntermediateSQL()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the ANSI92 intermediate SQL grammar supported.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsANSI92FullSQL

    boolean supportsANSI92FullSQL()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the ANSI92 full SQL grammar supported.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsIntegrityEnhancementFacility

    boolean supportsIntegrityEnhancementFacility()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the SQL Integrity
    Enhancement Facility.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsOuterJoins

    boolean supportsOuterJoins()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports some form of outer join.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsFullOuterJoins

    boolean supportsFullOuterJoins()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports full nested outer joins.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsLimitedOuterJoins

    boolean supportsLimitedOuterJoins()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database provides limited support for outer
    joins. (This will be `true` if the method
    `supportsFullOuterJoins` returns `true`).

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getSchemaTerm

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSchemaTerm()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the database vendor's preferred term for "schema".

    Returns:
    :   the vendor term for "schema"

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getProcedureTerm

    [String](../../../java.base/java/lang/String.md "class in java.lang") getProcedureTerm()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the database vendor's preferred term for "procedure".

    Returns:
    :   the vendor term for "procedure"

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getCatalogTerm

    [String](../../../java.base/java/lang/String.md "class in java.lang") getCatalogTerm()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the database vendor's preferred term for "catalog".

    Returns:
    :   the vendor term for "catalog"

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### isCatalogAtStart

    boolean isCatalogAtStart()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a catalog appears at the start of a fully qualified
    table name. If not, the catalog appears at the end.

    Returns:
    :   `true` if the catalog name appears at the beginning
        of a fully qualified table name; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getCatalogSeparator

    [String](../../../java.base/java/lang/String.md "class in java.lang") getCatalogSeparator()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the `String` that this database uses as the
    separator between a catalog and table name.

    Returns:
    :   the separator string

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSchemasInDataManipulation

    boolean supportsSchemasInDataManipulation()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a schema name can be used in a data manipulation statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSchemasInProcedureCalls

    boolean supportsSchemasInProcedureCalls()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a schema name can be used in a procedure call statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSchemasInTableDefinitions

    boolean supportsSchemasInTableDefinitions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a schema name can be used in a table definition statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSchemasInIndexDefinitions

    boolean supportsSchemasInIndexDefinitions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a schema name can be used in an index definition statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSchemasInPrivilegeDefinitions

    boolean supportsSchemasInPrivilegeDefinitions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a schema name can be used in a privilege definition statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsCatalogsInDataManipulation

    boolean supportsCatalogsInDataManipulation()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a catalog name can be used in a data manipulation statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsCatalogsInProcedureCalls

    boolean supportsCatalogsInProcedureCalls()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a catalog name can be used in a procedure call statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsCatalogsInTableDefinitions

    boolean supportsCatalogsInTableDefinitions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a catalog name can be used in a table definition statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsCatalogsInIndexDefinitions

    boolean supportsCatalogsInIndexDefinitions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a catalog name can be used in an index definition statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsCatalogsInPrivilegeDefinitions

    boolean supportsCatalogsInPrivilegeDefinitions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a catalog name can be used in a privilege definition statement.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsPositionedDelete

    boolean supportsPositionedDelete()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports positioned `DELETE`
    statements.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsPositionedUpdate

    boolean supportsPositionedUpdate()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports positioned `UPDATE`
    statements.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSelectForUpdate

    boolean supportsSelectForUpdate()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports `SELECT FOR UPDATE`
    statements.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsStoredProcedures

    boolean supportsStoredProcedures()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports stored procedure calls
    that use the stored procedure escape syntax.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSubqueriesInComparisons

    boolean supportsSubqueriesInComparisons()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports subqueries in comparison
    expressions.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSubqueriesInExists

    boolean supportsSubqueriesInExists()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports subqueries in
    `EXISTS` expressions.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSubqueriesInIns

    boolean supportsSubqueriesInIns()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports subqueries in
    `IN` expressions.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsSubqueriesInQuantifieds

    boolean supportsSubqueriesInQuantifieds()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports subqueries in quantified
    expressions.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsCorrelatedSubqueries

    boolean supportsCorrelatedSubqueries()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports correlated subqueries.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsUnion

    boolean supportsUnion()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports SQL `UNION`.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsUnionAll

    boolean supportsUnionAll()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports SQL `UNION ALL`.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsOpenCursorsAcrossCommit

    boolean supportsOpenCursorsAcrossCommit()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports keeping cursors open
    across commits.

    Returns:
    :   `true` if cursors always remain open;
        `false` if they might not remain open

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsOpenCursorsAcrossRollback

    boolean supportsOpenCursorsAcrossRollback()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports keeping cursors open
    across rollbacks.

    Returns:
    :   `true` if cursors always remain open;
        `false` if they might not remain open

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsOpenStatementsAcrossCommit

    boolean supportsOpenStatementsAcrossCommit()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports keeping statements open
    across commits.

    Returns:
    :   `true` if statements always remain open;
        `false` if they might not remain open

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsOpenStatementsAcrossRollback

    boolean supportsOpenStatementsAcrossRollback()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports keeping statements open
    across rollbacks.

    Returns:
    :   `true` if statements always remain open;
        `false` if they might not remain open

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxBinaryLiteralLength

    int getMaxBinaryLiteralLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of hex characters this database allows in an
    inline binary literal.

    Returns:
    :   max the maximum length (in hex characters) for a binary literal;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxCharLiteralLength

    int getMaxCharLiteralLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters this database allows
    for a character literal.

    Returns:
    :   the maximum number of characters allowed for a character literal;
        a result of zero means that there is no limit or the limit is
        not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxColumnNameLength

    int getMaxColumnNameLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters this database allows
    for a column name.

    Returns:
    :   the maximum number of characters allowed for a column name;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxColumnsInGroupBy

    int getMaxColumnsInGroupBy()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of columns this database allows in a
    `GROUP BY` clause.

    Returns:
    :   the maximum number of columns allowed;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxColumnsInIndex

    int getMaxColumnsInIndex()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of columns this database allows in an index.

    Returns:
    :   the maximum number of columns allowed;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxColumnsInOrderBy

    int getMaxColumnsInOrderBy()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of columns this database allows in an
    `ORDER BY` clause.

    Returns:
    :   the maximum number of columns allowed;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxColumnsInSelect

    int getMaxColumnsInSelect()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of columns this database allows in a
    `SELECT` list.

    Returns:
    :   the maximum number of columns allowed;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxColumnsInTable

    int getMaxColumnsInTable()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of columns this database allows in a table.

    Returns:
    :   the maximum number of columns allowed;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxConnections

    int getMaxConnections()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of concurrent connections to this
    database that are possible.

    Returns:
    :   the maximum number of active connections possible at one time;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxCursorNameLength

    int getMaxCursorNameLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters that this database allows in a
    cursor name.

    Returns:
    :   the maximum number of characters allowed in a cursor name;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxIndexLength

    int getMaxIndexLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of bytes this database allows for an
    index, including all of the parts of the index.

    Returns:
    :   the maximum number of bytes allowed; this limit includes the
        composite of all the constituent parts of the index;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxSchemaNameLength

    int getMaxSchemaNameLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters that this database allows in a
    schema name.

    Returns:
    :   the maximum number of characters allowed in a schema name;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxProcedureNameLength

    int getMaxProcedureNameLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters that this database allows in a
    procedure name.

    Returns:
    :   the maximum number of characters allowed in a procedure name;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxCatalogNameLength

    int getMaxCatalogNameLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters that this database allows in a
    catalog name.

    Returns:
    :   the maximum number of characters allowed in a catalog name;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxRowSize

    int getMaxRowSize()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of bytes this database allows in
    a single row.

    Returns:
    :   the maximum number of bytes allowed for a row; a result of
        zero means that there is no limit or the limit is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### doesMaxRowSizeIncludeBlobs

    boolean doesMaxRowSizeIncludeBlobs()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether the return value for the method
    `getMaxRowSize` includes the SQL data types
    `LONGVARCHAR` and `LONGVARBINARY`.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxStatementLength

    int getMaxStatementLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters this database allows in
    an SQL statement.

    Returns:
    :   the maximum number of characters allowed for an SQL statement;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxStatements

    int getMaxStatements()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of active statements to this database
    that can be open at the same time.

    Returns:
    :   the maximum number of statements that can be open at one time;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxTableNameLength

    int getMaxTableNameLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters this database allows in
    a table name.

    Returns:
    :   the maximum number of characters allowed for a table name;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxTablesInSelect

    int getMaxTablesInSelect()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of tables this database allows in a
    `SELECT` statement.

    Returns:
    :   the maximum number of tables allowed in a `SELECT`
        statement; a result of zero means that there is no limit or
        the limit is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getMaxUserNameLength

    int getMaxUserNameLength()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of characters this database allows in
    a user name.

    Returns:
    :   the maximum number of characters allowed for a user name;
        a result of zero means that there is no limit or the limit
        is not known

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getDefaultTransactionIsolation

    int getDefaultTransactionIsolation()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves this database's default transaction isolation level. The
    possible values are defined in `java.sql.Connection`.

    Returns:
    :   the default isolation level

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`Connection`](Connection.md "interface in java.sql")
  + ### supportsTransactions

    boolean supportsTransactions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports transactions. If not, invoking the
    method `commit` is a noop, and the isolation level is
    `TRANSACTION_NONE`.

    Returns:
    :   `true` if transactions are supported;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsTransactionIsolationLevel

    boolean supportsTransactionIsolationLevel(int level)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the given transaction isolation level.

    Parameters:
    :   `level` - one of the transaction isolation levels defined in
        `java.sql.Connection`

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`Connection`](Connection.md "interface in java.sql")
  + ### supportsDataDefinitionAndDataManipulationTransactions

    boolean supportsDataDefinitionAndDataManipulationTransactions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports both data definition and
    data manipulation statements within a transaction.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsDataManipulationTransactionsOnly

    boolean supportsDataManipulationTransactionsOnly()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports only data manipulation
    statements within a transaction.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### dataDefinitionCausesTransactionCommit

    boolean dataDefinitionCausesTransactionCommit()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a data definition statement within a transaction forces
    the transaction to commit.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### dataDefinitionIgnoredInTransactions

    boolean dataDefinitionIgnoredInTransactions()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database ignores a data definition statement
    within a transaction.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getProcedures

    [ResultSet](ResultSet.md "interface in java.sql") getProcedures([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") procedureNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the stored procedures available in the given
    catalog.

    Only procedure descriptions matching the schema and
    procedure name criteria are returned. They are ordered by
    `PROCEDURE_CAT`, `PROCEDURE_SCHEM`,
    `PROCEDURE_NAME` and `SPECIFIC_ NAME`.

    Each procedure description has the following columns:
    1. **PROCEDURE\_CAT** String `=>` procedure catalog (may be `null`)+ **PROCEDURE\_SCHEM** String `=>` procedure schema (may be `null`)+ **PROCEDURE\_NAME** String `=>` procedure name+ reserved for future use+ reserved for future use+ reserved for future use+ **REMARKS** String `=>` explanatory comment on the procedure+ **PROCEDURE\_TYPE** short `=>` kind of procedure:
                     - procedureResultUnknown - Cannot determine if a return value
                       will be returned- procedureNoResult - Does not return a return value- procedureReturnsResult - Returns a return value+ **SPECIFIC\_NAME** String `=>` The name which uniquely identifies this
                       procedure within its schema.

    A user may not have permissions to execute any of the procedures that are
    returned by `getProcedures`

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `procedureNamePattern` - a procedure name pattern; must match the
        procedure name as it is stored in the database

    Returns:
    :   `ResultSet` - each row is a procedure description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getProcedureColumns

    [ResultSet](ResultSet.md "interface in java.sql") getProcedureColumns([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") procedureNamePattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") columnNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the given catalog's stored procedure parameter
    and result columns.

    Only descriptions matching the schema, procedure and
    parameter name criteria are returned. They are ordered by
    PROCEDURE\_CAT, PROCEDURE\_SCHEM, PROCEDURE\_NAME and SPECIFIC\_NAME. Within this, the return value,
    if any, is first. Next are the parameter descriptions in call
    order. The column descriptions follow in column number order.

    Each row in the `ResultSet` is a parameter description or
    column description with the following fields:
    1. **PROCEDURE\_CAT** String `=>` procedure catalog (may be `null`)+ **PROCEDURE\_SCHEM** String `=>` procedure schema (may be `null`)+ **PROCEDURE\_NAME** String `=>` procedure name+ **COLUMN\_NAME** String `=>` column/parameter name+ **COLUMN\_TYPE** Short `=>` kind of column/parameter:
               - procedureColumnUnknown - nobody knows- procedureColumnIn - IN parameter- procedureColumnInOut - INOUT parameter- procedureColumnOut - OUT parameter- procedureColumnReturn - procedure return value- procedureColumnResult - result column in `ResultSet`+ **DATA\_TYPE** int `=>` SQL type from java.sql.Types+ **TYPE\_NAME** String `=>` SQL type name, for a UDT type the
                   type name is fully qualified+ **PRECISION** int `=>` precision+ **LENGTH** int `=>` length in bytes of data+ **SCALE** short `=>` scale - null is returned for data types where
                         SCALE is not applicable.+ **RADIX** short `=>` radix+ **NULLABLE** short `=>` can it contain NULL.
                             - procedureNoNulls - does not allow NULL values- procedureNullable - allows NULL values- procedureNullableUnknown - nullability unknown+ **REMARKS** String `=>` comment describing parameter/column+ **COLUMN\_DEF** String `=>` default value for the column, which should be interpreted as a string when the value is enclosed in single quotes (may be `null`)
                                 - The string NULL (not enclosed in quotes) - if NULL was specified as the default value- TRUNCATE (not enclosed in quotes) - if the specified default value cannot be represented without truncation- NULL - if a default value was not specified+ **SQL\_DATA\_TYPE** int `=>` reserved for future use+ **SQL\_DATETIME\_SUB** int `=>` reserved for future use+ **CHAR\_OCTET\_LENGTH** int `=>` the maximum length of binary and character based columns. For any other datatype the returned value is a
                                       NULL+ **ORDINAL\_POSITION** int `=>` the ordinal position, starting from 1, for the input and output parameters for a procedure. A value of 0
                                         is returned if this row describes the procedure's return value. For result set columns, it is the
                                         ordinal position of the column in the result set starting from 1. If there are
                                         multiple result sets, the column ordinal positions are implementation
                                         defined.+ **IS\_NULLABLE** String `=>` ISO rules are used to determine the nullability for a column.
                                           - YES --- if the column can include NULLs- NO --- if the column cannot include NULLs- empty string --- if the nullability for the
                                                 column is unknown+ **SPECIFIC\_NAME** String `=>` the name which uniquely identifies this procedure within its schema.

    **Note:** Some databases may not return the column
    descriptions for a procedure.

    The PRECISION column represents the specified column size for the given column.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. Null is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `procedureNamePattern` - a procedure name pattern; must match the
        procedure name as it is stored in the database
    :   `columnNamePattern` - a column name pattern; must match the column name
        as it is stored in the database

    Returns:
    :   `ResultSet` - each row describes a stored procedure parameter or
        column

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getTables

    [ResultSet](ResultSet.md "interface in java.sql") getTables([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tableNamePattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] types)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the tables available in the given catalog.
    Only table descriptions matching the catalog, schema, table
    name and type criteria are returned. They are ordered by
    `TABLE_TYPE`, `TABLE_CAT`,
    `TABLE_SCHEM` and `TABLE_NAME`.

    Each table description has the following columns:
    1. **TABLE\_CAT** String `=>` table catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` table schema (may be `null`)+ **TABLE\_NAME** String `=>` table name+ **TABLE\_TYPE** String `=>` table type. Typical types are "TABLE",
             "VIEW", "SYSTEM TABLE", "GLOBAL TEMPORARY",
             "LOCAL TEMPORARY", "ALIAS", "SYNONYM".+ **REMARKS** String `=>` explanatory comment on the table (may be `null`)+ **TYPE\_CAT** String `=>` the types catalog (may be `null`)+ **TYPE\_SCHEM** String `=>` the types schema (may be `null`)+ **TYPE\_NAME** String `=>` type name (may be `null`)+ **SELF\_REFERENCING\_COL\_NAME** String `=>` name of the designated
                       "identifier" column of a typed table (may be `null`)+ **REF\_GENERATION** String `=>` specifies how values in
                         SELF\_REFERENCING\_COL\_NAME are created. Values are
                         "SYSTEM", "USER", "DERIVED". (may be `null`)

    **Note:** Some databases may not return information for
    all tables.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `tableNamePattern` - a table name pattern; must match the
        table name as it is stored in the database
    :   `types` - a list of table types, which must be from the list of table types
        returned from [`getTableTypes()`](#getTableTypes()), to include; `null` returns
        all types

    Returns:
    :   `ResultSet` - each row is a table description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getSchemas

    [ResultSet](ResultSet.md "interface in java.sql") getSchemas()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the schema names available in this database. The results
    are ordered by `TABLE_CATALOG` and
    `TABLE_SCHEM`.

    The schema columns are:
    1. **TABLE\_SCHEM** String `=>` schema name+ **TABLE\_CATALOG** String `=>` catalog name (may be `null`)

    Returns:
    :   a `ResultSet` object in which each row is a
        schema description

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getCatalogs

    [ResultSet](ResultSet.md "interface in java.sql") getCatalogs()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the catalog names available in this database. The results
    are ordered by catalog name.

    The catalog column is:
    1. **TABLE\_CAT** String `=>` catalog name

    Returns:
    :   a `ResultSet` object in which each row has a
        single `String` column that is a catalog name

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getTableTypes

    [ResultSet](ResultSet.md "interface in java.sql") getTableTypes()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the table types available in this database. The results
    are ordered by table type.

    The table type is:
    1. **TABLE\_TYPE** String `=>` table type. Typical types are "TABLE",
       "VIEW", "SYSTEM TABLE", "GLOBAL TEMPORARY",
       "LOCAL TEMPORARY", "ALIAS", "SYNONYM".

    Returns:
    :   a `ResultSet` object in which each row has a
        single `String` column that is a table type

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getColumns

    [ResultSet](ResultSet.md "interface in java.sql") getColumns([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tableNamePattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") columnNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of table columns available in
    the specified catalog.

    Only column descriptions matching the catalog, schema, table
    and column name criteria are returned. They are ordered by
    `TABLE_CAT`,`TABLE_SCHEM`,
    `TABLE_NAME`, and `ORDINAL_POSITION`.

    Each column description has the following columns:
    1. **TABLE\_CAT** String `=>` table catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` table schema (may be `null`)+ **TABLE\_NAME** String `=>` table name+ **COLUMN\_NAME** String `=>` column name+ **DATA\_TYPE** int `=>` SQL type from java.sql.Types+ **TYPE\_NAME** String `=>` Data source dependent type name,
                 for a UDT the type name is fully qualified+ **COLUMN\_SIZE** int `=>` column size.+ **BUFFER\_LENGTH** is not used.+ **DECIMAL\_DIGITS** int `=>` the number of fractional digits. Null is returned for data types where
                       DECIMAL\_DIGITS is not applicable.+ **NUM\_PREC\_RADIX** int `=>` Radix (typically either 10 or 2)+ **NULLABLE** int `=>` is NULL allowed.
                           - columnNoNulls - might not allow `NULL` values- columnNullable - definitely allows `NULL` values- columnNullableUnknown - nullability unknown+ **REMARKS** String `=>` comment describing column (may be `null`)+ **COLUMN\_DEF** String `=>` default value for the column, which should be interpreted as a string when the value is enclosed in single quotes (may be `null`)+ **SQL\_DATA\_TYPE** int `=>` unused+ **SQL\_DATETIME\_SUB** int `=>` unused+ **CHAR\_OCTET\_LENGTH** int `=>` for char types the
                                     maximum number of bytes in the column+ **ORDINAL\_POSITION** int `=>` index of column in table
                                       (starting at 1)+ **IS\_NULLABLE** String `=>` ISO rules are used to determine the nullability for a column.
                                         - YES --- if the column can include NULLs- NO --- if the column cannot include NULLs- empty string --- if the nullability for the
                                               column is unknown+ **SCOPE\_CATALOG** String `=>` catalog of table that is the scope
                                           of a reference attribute (`null` if DATA\_TYPE isn't REF)+ **SCOPE\_SCHEMA** String `=>` schema of table that is the scope
                                             of a reference attribute (`null` if the DATA\_TYPE isn't REF)+ **SCOPE\_TABLE** String `=>` table name that this the scope
                                               of a reference attribute (`null` if the DATA\_TYPE isn't REF)+ **SOURCE\_DATA\_TYPE** short `=>` source type of a distinct type or user-generated
                                                 Ref type, SQL type from java.sql.Types (`null` if DATA\_TYPE
                                                 isn't DISTINCT or user-generated REF)+ **IS\_AUTOINCREMENT** String `=>` Indicates whether this column is auto incremented
                                                   - YES --- if the column is auto incremented- NO --- if the column is not auto incremented- empty string --- if it cannot be determined whether the column is auto incremented+ **IS\_GENERATEDCOLUMN** String `=>` Indicates whether this is a generated column
                                                     - YES --- if this a generated column- NO --- if this not a generated column- empty string --- if it cannot be determined whether this is a generated column

    The COLUMN\_SIZE column specifies the column size for the given column.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. Null is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `tableNamePattern` - a table name pattern; must match the
        table name as it is stored in the database
    :   `columnNamePattern` - a column name pattern; must match the column
        name as it is stored in the database

    Returns:
    :   `ResultSet` - each row is a column description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getColumnPrivileges

    [ResultSet](ResultSet.md "interface in java.sql") getColumnPrivileges([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") table,
    [String](../../../java.base/java/lang/String.md "class in java.lang") columnNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the access rights for a table's columns.

    Only privileges matching the column name criteria are
    returned. They are ordered by COLUMN\_NAME and PRIVILEGE.

    Each privilege description has the following columns:
    1. **TABLE\_CAT** String `=>` table catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` table schema (may be `null`)+ **TABLE\_NAME** String `=>` table name+ **COLUMN\_NAME** String `=>` column name+ **GRANTOR** String `=>` grantor of access (may be `null`)+ **GRANTEE** String `=>` grantee of access+ **PRIVILEGE** String `=>` name of access (SELECT,
                   INSERT, UPDATE, REFERENCES, ...)+ **IS\_GRANTABLE** String `=>` "YES" if grantee is permitted
                     to grant to others; "NO" if not; `null` if unknown

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schema` - a schema name; must match the schema name as it is
        stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `table` - a table name; must match the table name as it is
        stored in the database
    :   `columnNamePattern` - a column name pattern; must match the column
        name as it is stored in the database

    Returns:
    :   `ResultSet` - each row is a column privilege description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getTablePrivileges

    [ResultSet](ResultSet.md "interface in java.sql") getTablePrivileges([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tableNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the access rights for each table available
    in a catalog. Note that a table privilege applies to one or
    more columns in the table. It would be wrong to assume that
    this privilege applies to all columns (this may be true for
    some systems but is not true for all.)

    Only privileges matching the schema and table name
    criteria are returned. They are ordered by
    `TABLE_CAT`,
    `TABLE_SCHEM`, `TABLE_NAME`,
    and `PRIVILEGE`.

    Each privilege description has the following columns:
    1. **TABLE\_CAT** String `=>` table catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` table schema (may be `null`)+ **TABLE\_NAME** String `=>` table name+ **GRANTOR** String `=>` grantor of access (may be `null`)+ **GRANTEE** String `=>` grantee of access+ **PRIVILEGE** String `=>` name of access (SELECT,
                 INSERT, UPDATE, REFERENCES, ...)+ **IS\_GRANTABLE** String `=>` "YES" if grantee is permitted
                   to grant to others; "NO" if not; `null` if unknown

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `tableNamePattern` - a table name pattern; must match the
        table name as it is stored in the database

    Returns:
    :   `ResultSet` - each row is a table privilege description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getBestRowIdentifier

    [ResultSet](ResultSet.md "interface in java.sql") getBestRowIdentifier([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") table,
    int scope,
    boolean nullable)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of a table's optimal set of columns that
    uniquely identifies a row. They are ordered by SCOPE.

    Each column description has the following columns:
    1. **SCOPE** short `=>` actual scope of result
       - bestRowTemporary - very temporary, while using row- bestRowTransaction - valid for remainder of current transaction- bestRowSession - valid for remainder of current session+ **COLUMN\_NAME** String `=>` column name+ **DATA\_TYPE** int `=>` SQL data type from java.sql.Types+ **TYPE\_NAME** String `=>` Data source dependent type name,
             for a UDT the type name is fully qualified+ **COLUMN\_SIZE** int `=>` precision+ **BUFFER\_LENGTH** int `=>` not used+ **DECIMAL\_DIGITS** short `=>` scale - Null is returned for data types where
                   DECIMAL\_DIGITS is not applicable.+ **PSEUDO\_COLUMN** short `=>` is this a pseudo column
                     like an Oracle ROWID
                     - bestRowUnknown - may or may not be pseudo column- bestRowNotPseudo - is NOT a pseudo column- bestRowPseudo - is a pseudo column

    The COLUMN\_SIZE column represents the specified column size for the given column.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. Null is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schema` - a schema name; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `table` - a table name; must match the table name as it is stored
        in the database
    :   `scope` - the scope of interest; use same values as SCOPE
    :   `nullable` - include columns that are nullable.

    Returns:
    :   `ResultSet` - each row is a column description

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getVersionColumns

    [ResultSet](ResultSet.md "interface in java.sql") getVersionColumns([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") table)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of a table's columns that are automatically
    updated when any value in a row is updated. They are
    unordered.

    Each column description has the following columns:
    1. **SCOPE** short `=>` is not used+ **COLUMN\_NAME** String `=>` column name+ **DATA\_TYPE** int `=>` SQL data type from `java.sql.Types`+ **TYPE\_NAME** String `=>` Data source-dependent type name+ **COLUMN\_SIZE** int `=>` precision+ **BUFFER\_LENGTH** int `=>` length of column value in bytes+ **DECIMAL\_DIGITS** short `=>` scale - Null is returned for data types where
                   DECIMAL\_DIGITS is not applicable.+ **PSEUDO\_COLUMN** short `=>` whether this is pseudo column
                     like an Oracle ROWID
                     - versionColumnUnknown - may or may not be pseudo column- versionColumnNotPseudo - is NOT a pseudo column- versionColumnPseudo - is a pseudo column

    The COLUMN\_SIZE column represents the specified column size for the given column.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. Null is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schema` - a schema name; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `table` - a table name; must match the table name as it is stored
        in the database

    Returns:
    :   a `ResultSet` object in which each row is a
        column description

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getPrimaryKeys

    [ResultSet](ResultSet.md "interface in java.sql") getPrimaryKeys([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") table)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the given table's primary key columns. They
    are ordered by COLUMN\_NAME.

    Each primary key column description has the following columns:
    1. **TABLE\_CAT** String `=>` table catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` table schema (may be `null`)+ **TABLE\_NAME** String `=>` table name+ **COLUMN\_NAME** String `=>` column name+ **KEY\_SEQ** short `=>` sequence number within primary key( a value
               of 1 represents the first column of the primary key, a value of 2 would
               represent the second column within the primary key).+ **PK\_NAME** String `=>` primary key name (may be `null`)

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schema` - a schema name; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `table` - a table name; must match the table name as it is stored
        in the database

    Returns:
    :   `ResultSet` - each row is a primary key column description

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getImportedKeys

    [ResultSet](ResultSet.md "interface in java.sql") getImportedKeys([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") table)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the primary key columns that are
    referenced by the given table's foreign key columns (the primary keys
    imported by a table). They are ordered by PKTABLE\_CAT,
    PKTABLE\_SCHEM, PKTABLE\_NAME, and KEY\_SEQ.

    Each primary key column description has the following columns:
    1. **PKTABLE\_CAT** String `=>` primary key table catalog
       being imported (may be `null`)+ **PKTABLE\_SCHEM** String `=>` primary key table schema
         being imported (may be `null`)+ **PKTABLE\_NAME** String `=>` primary key table name
           being imported+ **PKCOLUMN\_NAME** String `=>` primary key column name
             being imported+ **FKTABLE\_CAT** String `=>` foreign key table catalog (may be `null`)+ **FKTABLE\_SCHEM** String `=>` foreign key table schema (may be `null`)+ **FKTABLE\_NAME** String `=>` foreign key table name+ **FKCOLUMN\_NAME** String `=>` foreign key column name+ **KEY\_SEQ** short `=>` sequence number within a foreign key( a value
                       of 1 represents the first column of the foreign key, a value of 2 would
                       represent the second column within the foreign key).+ **UPDATE\_RULE** short `=>` What happens to a
                         foreign key when the primary key is updated:
                         - importedNoAction - do not allow update of primary
                           key if it has been imported- importedKeyCascade - change imported key to agree
                             with primary key update- importedKeySetNull - change imported key to `NULL`
                               if its primary key has been updated- importedKeySetDefault - change imported key to default values
                                 if its primary key has been updated- importedKeyRestrict - same as importedKeyNoAction
                                   (for ODBC 2.x compatibility)+ **DELETE\_RULE** short `=>` What happens to
                           the foreign key when primary is deleted.
                           - importedKeyNoAction - do not allow delete of primary
                             key if it has been imported- importedKeyCascade - delete rows that import a deleted key- importedKeySetNull - change imported key to NULL if
                                 its primary key has been deleted- importedKeyRestrict - same as importedKeyNoAction
                                   (for ODBC 2.x compatibility)- importedKeySetDefault - change imported key to default if
                                     its primary key has been deleted+ **FK\_NAME** String `=>` foreign key name (may be `null`)+ **PK\_NAME** String `=>` primary key name (may be `null`)+ **DEFERRABILITY** short `=>` can the evaluation of foreign key
                                 constraints be deferred until commit
                                 - importedKeyInitiallyDeferred - see SQL92 for definition- importedKeyInitiallyImmediate - see SQL92 for definition- importedKeyNotDeferrable - see SQL92 for definition

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schema` - a schema name; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `table` - a table name; must match the table name as it is stored
        in the database

    Returns:
    :   `ResultSet` - each row is a primary key column description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getExportedKeys(java.lang.String, java.lang.String, java.lang.String)`](#getExportedKeys(java.lang.String,java.lang.String,java.lang.String))
  + ### getExportedKeys

    [ResultSet](ResultSet.md "interface in java.sql") getExportedKeys([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") table)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the foreign key columns that reference the
    given table's primary key columns (the foreign keys exported by a
    table). They are ordered by FKTABLE\_CAT, FKTABLE\_SCHEM,
    FKTABLE\_NAME, and KEY\_SEQ.

    Each foreign key column description has the following columns:
    1. **PKTABLE\_CAT** String `=>` primary key table catalog (may be `null`)+ **PKTABLE\_SCHEM** String `=>` primary key table schema (may be `null`)+ **PKTABLE\_NAME** String `=>` primary key table name+ **PKCOLUMN\_NAME** String `=>` primary key column name+ **FKTABLE\_CAT** String `=>` foreign key table catalog (may be `null`)
               being exported (may be `null`)+ **FKTABLE\_SCHEM** String `=>` foreign key table schema (may be `null`)
                 being exported (may be `null`)+ **FKTABLE\_NAME** String `=>` foreign key table name
                   being exported+ **FKCOLUMN\_NAME** String `=>` foreign key column name
                     being exported+ **KEY\_SEQ** short `=>` sequence number within foreign key( a value
                       of 1 represents the first column of the foreign key, a value of 2 would
                       represent the second column within the foreign key).+ **UPDATE\_RULE** short `=>` What happens to
                         foreign key when primary is updated:
                         - importedNoAction - do not allow update of primary
                           key if it has been imported- importedKeyCascade - change imported key to agree
                             with primary key update- importedKeySetNull - change imported key to `NULL` if
                               its primary key has been updated- importedKeySetDefault - change imported key to default values
                                 if its primary key has been updated- importedKeyRestrict - same as importedKeyNoAction
                                   (for ODBC 2.x compatibility)+ **DELETE\_RULE** short `=>` What happens to
                           the foreign key when primary is deleted.
                           - importedKeyNoAction - do not allow delete of primary
                             key if it has been imported- importedKeyCascade - delete rows that import a deleted key- importedKeySetNull - change imported key to `NULL` if
                                 its primary key has been deleted- importedKeyRestrict - same as importedKeyNoAction
                                   (for ODBC 2.x compatibility)- importedKeySetDefault - change imported key to default if
                                     its primary key has been deleted+ **FK\_NAME** String `=>` foreign key name (may be `null`)+ **PK\_NAME** String `=>` primary key name (may be `null`)+ **DEFERRABILITY** short `=>` can the evaluation of foreign key
                                 constraints be deferred until commit
                                 - importedKeyInitiallyDeferred - see SQL92 for definition- importedKeyInitiallyImmediate - see SQL92 for definition- importedKeyNotDeferrable - see SQL92 for definition

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in this database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schema` - a schema name; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `table` - a table name; must match the table name as it is stored
        in this database

    Returns:
    :   a `ResultSet` object in which each row is a
        foreign key column description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getImportedKeys(java.lang.String, java.lang.String, java.lang.String)`](#getImportedKeys(java.lang.String,java.lang.String,java.lang.String))
  + ### getCrossReference

    [ResultSet](ResultSet.md "interface in java.sql") getCrossReference([String](../../../java.base/java/lang/String.md "class in java.lang") parentCatalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") parentSchema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") parentTable,
    [String](../../../java.base/java/lang/String.md "class in java.lang") foreignCatalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") foreignSchema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") foreignTable)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the foreign key columns in the given foreign key
    table that reference the primary key or the columns representing a unique constraint of the parent table (could be the same or a different table).
    The number of columns returned from the parent table must match the number of
    columns that make up the foreign key. They
    are ordered by FKTABLE\_CAT, FKTABLE\_SCHEM, FKTABLE\_NAME, and
    KEY\_SEQ.

    Each foreign key column description has the following columns:
    1. **PKTABLE\_CAT** String `=>` parent key table catalog (may be `null`)+ **PKTABLE\_SCHEM** String `=>` parent key table schema (may be `null`)+ **PKTABLE\_NAME** String `=>` parent key table name+ **PKCOLUMN\_NAME** String `=>` parent key column name+ **FKTABLE\_CAT** String `=>` foreign key table catalog (may be `null`)
               being exported (may be `null`)+ **FKTABLE\_SCHEM** String `=>` foreign key table schema (may be `null`)
                 being exported (may be `null`)+ **FKTABLE\_NAME** String `=>` foreign key table name
                   being exported+ **FKCOLUMN\_NAME** String `=>` foreign key column name
                     being exported+ **KEY\_SEQ** short `=>` sequence number within foreign key( a value
                       of 1 represents the first column of the foreign key, a value of 2 would
                       represent the second column within the foreign key).+ **UPDATE\_RULE** short `=>` What happens to
                         foreign key when parent key is updated:
                         - importedNoAction - do not allow update of parent
                           key if it has been imported- importedKeyCascade - change imported key to agree
                             with parent key update- importedKeySetNull - change imported key to `NULL` if
                               its parent key has been updated- importedKeySetDefault - change imported key to default values
                                 if its parent key has been updated- importedKeyRestrict - same as importedKeyNoAction
                                   (for ODBC 2.x compatibility)+ **DELETE\_RULE** short `=>` What happens to
                           the foreign key when parent key is deleted.
                           - importedKeyNoAction - do not allow delete of parent
                             key if it has been imported- importedKeyCascade - delete rows that import a deleted key- importedKeySetNull - change imported key to `NULL` if
                                 its primary key has been deleted- importedKeyRestrict - same as importedKeyNoAction
                                   (for ODBC 2.x compatibility)- importedKeySetDefault - change imported key to default if
                                     its parent key has been deleted+ **FK\_NAME** String `=>` foreign key name (may be `null`)+ **PK\_NAME** String `=>` parent key name (may be `null`)+ **DEFERRABILITY** short `=>` can the evaluation of foreign key
                                 constraints be deferred until commit
                                 - importedKeyInitiallyDeferred - see SQL92 for definition- importedKeyInitiallyImmediate - see SQL92 for definition- importedKeyNotDeferrable - see SQL92 for definition

    Parameters:
    :   `parentCatalog` - a catalog name; must match the catalog name
        as it is stored in the database; "" retrieves those without a
        catalog; `null` means drop catalog name from the selection criteria
    :   `parentSchema` - a schema name; must match the schema name as
        it is stored in the database; "" retrieves those without a schema;
        `null` means drop schema name from the selection criteria
    :   `parentTable` - the name of the table that exports the key; must match
        the table name as it is stored in the database
    :   `foreignCatalog` - a catalog name; must match the catalog name as
        it is stored in the database; "" retrieves those without a
        catalog; `null` means drop catalog name from the selection criteria
    :   `foreignSchema` - a schema name; must match the schema name as it
        is stored in the database; "" retrieves those without a schema;
        `null` means drop schema name from the selection criteria
    :   `foreignTable` - the name of the table that imports the key; must match
        the table name as it is stored in the database

    Returns:
    :   `ResultSet` - each row is a foreign key column description

    Throws:
    :   `SQLException` - if a database access error occurs

    See Also:
    :   - [`getImportedKeys(java.lang.String, java.lang.String, java.lang.String)`](#getImportedKeys(java.lang.String,java.lang.String,java.lang.String))
  + ### getTypeInfo

    [ResultSet](ResultSet.md "interface in java.sql") getTypeInfo()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of all the data types supported by
    this database. They are ordered by DATA\_TYPE and then by how
    closely the data type maps to the corresponding JDBC SQL type.

    If the database supports SQL distinct types, then getTypeInfo() will return
    a single row with a TYPE\_NAME of DISTINCT and a DATA\_TYPE of Types.DISTINCT.
    If the database supports SQL structured types, then getTypeInfo() will return
    a single row with a TYPE\_NAME of STRUCT and a DATA\_TYPE of Types.STRUCT.

    If SQL distinct or structured types are supported, then information on the
    individual types may be obtained from the getUDTs() method.

    Each type description has the following columns:
    1. **TYPE\_NAME** String `=>` Type name+ **DATA\_TYPE** int `=>` SQL data type from java.sql.Types+ **PRECISION** int `=>` maximum precision+ **LITERAL\_PREFIX** String `=>` prefix used to quote a literal
             (may be `null`)+ **LITERAL\_SUFFIX** String `=>` suffix used to quote a literal
               (may be `null`)+ **CREATE\_PARAMS** String `=>` parameters used in creating
                 the type (may be `null`)+ **NULLABLE** short `=>` can you use NULL for this type.
                   - typeNoNulls - does not allow NULL values- typeNullable - allows NULL values- typeNullableUnknown - nullability unknown+ **CASE\_SENSITIVE** boolean`=>` is it case sensitive.+ **SEARCHABLE** short `=>` can you use "WHERE" based on this type:
                       - typePredNone - No support- typePredChar - Only supported with WHERE .. LIKE- typePredBasic - Supported except for WHERE .. LIKE- typeSearchable - Supported for all WHERE ..+ **UNSIGNED\_ATTRIBUTE** boolean `=>` is it unsigned.+ **FIXED\_PREC\_SCALE** boolean `=>` can it be a money value.+ **AUTO\_INCREMENT** boolean `=>` can it be used for an
                             auto-increment value.+ **LOCAL\_TYPE\_NAME** String `=>` localized version of type name
                               (may be `null`)+ **MINIMUM\_SCALE** short `=>` minimum scale supported+ **MAXIMUM\_SCALE** short `=>` maximum scale supported+ **SQL\_DATA\_TYPE** int `=>` unused+ **SQL\_DATETIME\_SUB** int `=>` unused+ **NUM\_PREC\_RADIX** int `=>` usually 2 or 10

    The PRECISION column represents the maximum column size that the server supports for the given datatype.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. Null is returned for data types where the
    column size is not applicable.

    Returns:
    :   a `ResultSet` object in which each row is an SQL
        type description

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### getIndexInfo

    [ResultSet](ResultSet.md "interface in java.sql") getIndexInfo([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schema,
    [String](../../../java.base/java/lang/String.md "class in java.lang") table,
    boolean unique,
    boolean approximate)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the given table's indices and statistics. They are
    ordered by NON\_UNIQUE, TYPE, INDEX\_NAME, and ORDINAL\_POSITION.

    Each index column description has the following columns:
    1. **TABLE\_CAT** String `=>` table catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` table schema (may be `null`)+ **TABLE\_NAME** String `=>` table name+ **NON\_UNIQUE** boolean `=>` Can index values be non-unique.
             false when TYPE is tableIndexStatistic+ **INDEX\_QUALIFIER** String `=>` index catalog (may be `null`);
               `null` when TYPE is tableIndexStatistic+ **INDEX\_NAME** String `=>` index name; `null` when TYPE is
                 tableIndexStatistic+ **TYPE** short `=>` index type:
                   - tableIndexStatistic - this identifies table statistics that are
                     returned in conjunction with a table's index descriptions- tableIndexClustered - this is a clustered index- tableIndexHashed - this is a hashed index- tableIndexOther - this is some other style of index+ **ORDINAL\_POSITION** short `=>` column sequence number
                     within index; zero when TYPE is tableIndexStatistic+ **COLUMN\_NAME** String `=>` column name; `null` when TYPE is
                       tableIndexStatistic+ **ASC\_OR\_DESC** String `=>` column sort sequence, "A" `=>` ascending,
                         "D" `=>` descending, may be `null` if sort sequence is not supported;
                         `null` when TYPE is tableIndexStatistic+ **CARDINALITY** long `=>` When TYPE is tableIndexStatistic, then
                           this is the number of rows in the table; otherwise, it is the
                           number of unique values in the index.+ **PAGES** long `=>` When TYPE is tableIndexStatistic then
                             this is the number of pages used for the table, otherwise it
                             is the number of pages used for the current index.+ **FILTER\_CONDITION** String `=>` Filter condition, if any.
                               (may be `null`)

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in this database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schema` - a schema name; must match the schema name
        as it is stored in this database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `table` - a table name; must match the table name as it is stored
        in this database
    :   `unique` - when true, return only indices for unique values;
        when false, return indices regardless of whether unique or not
    :   `approximate` - when true, result is allowed to reflect approximate
        or out of data values; when false, results are requested to be
        accurate

    Returns:
    :   `ResultSet` - each row is an index column description

    Throws:
    :   `SQLException` - if a database access error occurs
  + ### supportsResultSetType

    boolean supportsResultSetType(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the given result set type.

    Parameters:
    :   `type` - defined in `java.sql.ResultSet`

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2

    See Also:
    :   - [`Connection`](Connection.md "interface in java.sql")
  + ### supportsResultSetConcurrency

    boolean supportsResultSetConcurrency(int type,
    int concurrency)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the given concurrency type
    in combination with the given result set type.

    Parameters:
    :   `type` - defined in `java.sql.ResultSet`
    :   `concurrency` - type defined in `java.sql.ResultSet`

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2

    See Also:
    :   - [`Connection`](Connection.md "interface in java.sql")
  + ### ownUpdatesAreVisible

    boolean ownUpdatesAreVisible(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether for the given type of `ResultSet` object,
    the result set's own updates are visible.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if updates are visible for the given result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### ownDeletesAreVisible

    boolean ownDeletesAreVisible(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a result set's own deletes are visible.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if deletes are visible for the given result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### ownInsertsAreVisible

    boolean ownInsertsAreVisible(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a result set's own inserts are visible.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if inserts are visible for the given result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### othersUpdatesAreVisible

    boolean othersUpdatesAreVisible(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether updates made by others are visible.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if updates made by others
        are visible for the given result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### othersDeletesAreVisible

    boolean othersDeletesAreVisible(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether deletes made by others are visible.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if deletes made by others
        are visible for the given result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### othersInsertsAreVisible

    boolean othersInsertsAreVisible(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether inserts made by others are visible.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if inserts made by others
        are visible for the given result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### updatesAreDetected

    boolean updatesAreDetected(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether or not a visible row update can be detected by
    calling the method `ResultSet.rowUpdated`.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if changes are detected by the result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### deletesAreDetected

    boolean deletesAreDetected(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether or not a visible row delete can be detected by
    calling the method `ResultSet.rowDeleted`. If the method
    `deletesAreDetected` returns `false`, it means that
    deleted rows are removed from the result set.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if deletes are detected by the given result set type;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### insertsAreDetected

    boolean insertsAreDetected(int type)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether or not a visible row insert can be detected
    by calling the method `ResultSet.rowInserted`.

    Parameters:
    :   `type` - the `ResultSet` type; one of
        `ResultSet.TYPE_FORWARD_ONLY`,
        `ResultSet.TYPE_SCROLL_INSENSITIVE`, or
        `ResultSet.TYPE_SCROLL_SENSITIVE`

    Returns:
    :   `true` if changes are detected by the specified result
        set type; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### supportsBatchUpdates

    boolean supportsBatchUpdates()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports batch updates.

    Returns:
    :   `true` if this database supports batch updates;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### getUDTs

    [ResultSet](ResultSet.md "interface in java.sql") getUDTs([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") typeNamePattern,
    int[] types)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the user-defined types (UDTs) defined
    in a particular schema. Schema-specific UDTs may have type
    `JAVA_OBJECT`, `STRUCT`,
    or `DISTINCT`.

    Only types matching the catalog, schema, type name and type
    criteria are returned. They are ordered by `DATA_TYPE`,
    `TYPE_CAT`, `TYPE_SCHEM` and
    `TYPE_NAME`. The type name parameter may be a fully-qualified
    name. In this case, the catalog and schemaPattern parameters are
    ignored.

    Each type description has the following columns:
    1. **TYPE\_CAT** String `=>` the type's catalog (may be `null`)+ **TYPE\_SCHEM** String `=>` type's schema (may be `null`)+ **TYPE\_NAME** String `=>` type name+ **CLASS\_NAME** String `=>` Java class name+ **DATA\_TYPE** int `=>` type value defined in java.sql.Types.
               One of JAVA\_OBJECT, STRUCT, or DISTINCT+ **REMARKS** String `=>` explanatory comment on the type+ **BASE\_TYPE** short `=>` type code of the source type of a
                   DISTINCT type or the type that implements the user-generated
                   reference type of the SELF\_REFERENCING\_COLUMN of a structured
                   type as defined in java.sql.Types (`null` if DATA\_TYPE is not
                   DISTINCT or not STRUCT with REFERENCE\_GENERATION = USER\_DEFINED)

    **Note:** If the driver does not support UDTs, an empty
    result set is returned.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema pattern name; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `typeNamePattern` - a type name pattern; must match the type name
        as it is stored in the database; may be a fully qualified name
    :   `types` - a list of user-defined types (JAVA\_OBJECT,
        STRUCT, or DISTINCT) to include; `null` returns all types

    Returns:
    :   `ResultSet` object in which each row describes a UDT

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getConnection

    [Connection](Connection.md "interface in java.sql") getConnection()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the connection that produced this metadata object.

    Returns:
    :   the connection that produced this metadata object

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.2
  + ### supportsSavepoints

    boolean supportsSavepoints()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports savepoints.

    Returns:
    :   `true` if savepoints are supported;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### supportsNamedParameters

    boolean supportsNamedParameters()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports named parameters to callable
    statements.

    Returns:
    :   `true` if named parameters are supported;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### supportsMultipleOpenResults

    boolean supportsMultipleOpenResults()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether it is possible to have multiple `ResultSet` objects
    returned from a `CallableStatement` object
    simultaneously.

    Returns:
    :   `true` if a `CallableStatement` object
        can return multiple `ResultSet` objects
        simultaneously; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### supportsGetGeneratedKeys

    boolean supportsGetGeneratedKeys()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether auto-generated keys can be retrieved after
    a statement has been executed

    Returns:
    :   `true` if auto-generated keys can be retrieved
        after a statement has executed; `false` otherwise

        If `true` is returned, the JDBC driver must support the
        returning of auto-generated keys for at least SQL INSERT statements

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getSuperTypes

    [ResultSet](ResultSet.md "interface in java.sql") getSuperTypes([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") typeNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the user-defined type (UDT) hierarchies defined in a
    particular schema in this database. Only the immediate super type/
    sub type relationship is modeled.

    Only supertype information for UDTs matching the catalog,
    schema, and type name is returned. The type name parameter
    may be a fully-qualified name. When the UDT name supplied is a
    fully-qualified name, the catalog and schemaPattern parameters are
    ignored.

    If a UDT does not have a direct super type, it is not listed here.
    A row of the `ResultSet` object returned by this method
    describes the designated UDT and a direct supertype. A row has the following
    columns:
    1. **TYPE\_CAT** String `=>` the UDT's catalog (may be `null`)+ **TYPE\_SCHEM** String `=>` UDT's schema (may be `null`)+ **TYPE\_NAME** String `=>` type name of the UDT+ **SUPERTYPE\_CAT** String `=>` the direct super type's catalog
             (may be `null`)+ **SUPERTYPE\_SCHEM** String `=>` the direct super type's schema
               (may be `null`)+ **SUPERTYPE\_NAME** String `=>` the direct super type's name

    **Note:** If the driver does not support type hierarchies, an
    empty result set is returned.

    Parameters:
    :   `catalog` - a catalog name; "" retrieves those without a catalog;
        `null` means drop catalog name from the selection criteria
    :   `schemaPattern` - a schema name pattern; "" retrieves those
        without a schema
    :   `typeNamePattern` - a UDT name pattern; may be a fully-qualified
        name

    Returns:
    :   a `ResultSet` object in which a row gives information
        about the designated UDT

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getSuperTables

    [ResultSet](ResultSet.md "interface in java.sql") getSuperTables([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tableNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the table hierarchies defined in a particular
    schema in this database.

    Only supertable information for tables matching the catalog, schema
    and table name are returned. The table name parameter may be a fully-
    qualified name, in which case, the catalog and schemaPattern parameters
    are ignored. If a table does not have a super table, it is not listed here.
    Supertables have to be defined in the same catalog and schema as the
    sub tables. Therefore, the type description does not need to include
    this information for the supertable.

    Each type description has the following columns:
    1. **TABLE\_CAT** String `=>` the type's catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` type's schema (may be `null`)+ **TABLE\_NAME** String `=>` type name+ **SUPERTABLE\_NAME** String `=>` the direct super type's name

    **Note:** If the driver does not support type hierarchies, an
    empty result set is returned.

    Parameters:
    :   `catalog` - a catalog name; "" retrieves those without a catalog;
        `null` means drop catalog name from the selection criteria
    :   `schemaPattern` - a schema name pattern; "" retrieves those
        without a schema
    :   `tableNamePattern` - a table name pattern; may be a fully-qualified
        name

    Returns:
    :   a `ResultSet` object in which each row is a type description

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getAttributes

    [ResultSet](ResultSet.md "interface in java.sql") getAttributes([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") typeNamePattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") attributeNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the given attribute of the given type
    for a user-defined type (UDT) that is available in the given schema
    and catalog.

    Descriptions are returned only for attributes of UDTs matching the
    catalog, schema, type, and attribute name criteria. They are ordered by
    `TYPE_CAT`, `TYPE_SCHEM`,
    `TYPE_NAME` and `ORDINAL_POSITION`. This description
    does not contain inherited attributes.

    The `ResultSet` object that is returned has the following
    columns:
    1. **TYPE\_CAT** String `=>` type catalog (may be `null`)+ **TYPE\_SCHEM** String `=>` type schema (may be `null`)+ **TYPE\_NAME** String `=>` type name+ **ATTR\_NAME** String `=>` attribute name+ **DATA\_TYPE** int `=>` attribute type SQL type from java.sql.Types+ **ATTR\_TYPE\_NAME** String `=>` Data source dependent type name.
                 For a UDT, the type name is fully qualified. For a REF, the type name is
                 fully qualified and represents the target type of the reference type.+ **ATTR\_SIZE** int `=>` column size. For char or date
                   types this is the maximum number of characters; for numeric or
                   decimal types this is precision.+ **DECIMAL\_DIGITS** int `=>` the number of fractional digits. Null is returned for data types where
                     DECIMAL\_DIGITS is not applicable.+ **NUM\_PREC\_RADIX** int `=>` Radix (typically either 10 or 2)+ **NULLABLE** int `=>` whether NULL is allowed
                         - attributeNoNulls - might not allow NULL values- attributeNullable - definitely allows NULL values- attributeNullableUnknown - nullability unknown+ **REMARKS** String `=>` comment describing column (may be `null`)+ **ATTR\_DEF** String `=>` default value (may be `null`)+ **SQL\_DATA\_TYPE** int `=>` unused+ **SQL\_DATETIME\_SUB** int `=>` unused+ **CHAR\_OCTET\_LENGTH** int `=>` for char types the
                                   maximum number of bytes in the column+ **ORDINAL\_POSITION** int `=>` index of the attribute in the UDT
                                     (starting at 1)+ **IS\_NULLABLE** String `=>` ISO rules are used to determine
                                       the nullability for a attribute.
                                       - YES --- if the attribute can include NULLs- NO --- if the attribute cannot include NULLs- empty string --- if the nullability for the
                                             attribute is unknown+ **SCOPE\_CATALOG** String `=>` catalog of table that is the
                                         scope of a reference attribute (`null` if DATA\_TYPE isn't REF)+ **SCOPE\_SCHEMA** String `=>` schema of table that is the
                                           scope of a reference attribute (`null` if DATA\_TYPE isn't REF)+ **SCOPE\_TABLE** String `=>` table name that is the scope of a
                                             reference attribute (`null` if the DATA\_TYPE isn't REF)+ **SOURCE\_DATA\_TYPE** short `=>` source type of a distinct type or user-generated
                                               Ref type, SQL type from java.sql.Types (`null` if DATA\_TYPE
                                               isn't DISTINCT or user-generated REF)

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `typeNamePattern` - a type name pattern; must match the
        type name as it is stored in the database
    :   `attributeNamePattern` - an attribute name pattern; must match the attribute
        name as it is declared in the database

    Returns:
    :   a `ResultSet` object in which each row is an
        attribute description

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### supportsResultSetHoldability

    boolean supportsResultSetHoldability(int holdability)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports the given result set holdability.

    Parameters:
    :   `holdability` - one of the following constants:
        `ResultSet.HOLD_CURSORS_OVER_COMMIT` or
        `ResultSet.CLOSE_CURSORS_AT_COMMIT`

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4

    See Also:
    :   - [`Connection`](Connection.md "interface in java.sql")
  + ### getResultSetHoldability

    int getResultSetHoldability()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves this database's default holdability for `ResultSet`
    objects.

    Returns:
    :   the default holdability; either
        `ResultSet.HOLD_CURSORS_OVER_COMMIT` or
        `ResultSet.CLOSE_CURSORS_AT_COMMIT`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getDatabaseMajorVersion

    int getDatabaseMajorVersion()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the major version number of the underlying database.

    Returns:
    :   the underlying database's major version

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getDatabaseMinorVersion

    int getDatabaseMinorVersion()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the minor version number of the underlying database.

    Returns:
    :   underlying database's minor version

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getJDBCMajorVersion

    int getJDBCMajorVersion()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the major JDBC version number for this
    driver.

    Returns:
    :   JDBC version major number

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getJDBCMinorVersion

    int getJDBCMinorVersion()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the minor JDBC version number for this
    driver.

    Returns:
    :   JDBC version minor number

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getSQLStateType

    int getSQLStateType()
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether the SQLSTATE returned by `SQLException.getSQLState`
    is X/Open (now known as Open Group) SQL CLI or SQL:2003.

    Returns:
    :   the type of SQLSTATE; one of:
        sqlStateXOpen or
        sqlStateSQL

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### locatorsUpdateCopy

    boolean locatorsUpdateCopy()
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether updates made to a LOB are made on a copy or directly
    to the LOB.

    Returns:
    :   `true` if updates are made to a copy of the LOB;
        `false` if updates are made directly to the LOB

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### supportsStatementPooling

    boolean supportsStatementPooling()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports statement pooling.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getRowIdLifetime

    [RowIdLifetime](RowIdLifetime.md "enum class in java.sql") getRowIdLifetime()
    throws [SQLException](SQLException.md "class in java.sql")

    Indicates whether this data source supports the SQL  `ROWID` type,
    and the lifetime for which a [`RowId`](RowId.md "interface in java.sql") object remains valid.

    Returns:
    :   the status indicating the lifetime of a  `RowId`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### getSchemas

    [ResultSet](ResultSet.md "interface in java.sql") getSchemas([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the schema names available in this database. The results
    are ordered by `TABLE_CATALOG` and
    `TABLE_SCHEM`.

    The schema columns are:
    1. **TABLE\_SCHEM** String `=>` schema name+ **TABLE\_CATALOG** String `=>` catalog name (may be `null`)

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it is stored
        in the database;"" retrieves those without a catalog; null means catalog
        name should not be used to narrow down the search.
    :   `schemaPattern` - a schema name; must match the schema name as it is
        stored in the database; null means
        schema name should not be used to narrow down the search.

    Returns:
    :   a `ResultSet` object in which each row is a
        schema description

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### supportsStoredFunctionsUsingCallSyntax

    boolean supportsStoredFunctionsUsingCallSyntax()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports invoking user-defined or vendor functions
    using the stored procedure escape syntax.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### autoCommitFailureClosesAllResultSets

    boolean autoCommitFailureClosesAllResultSets()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a `SQLException` while autoCommit is `true` indicates
    that all open ResultSets are closed, even ones that are holdable. When a `SQLException` occurs while
    autocommit is `true`, it is vendor specific whether the JDBC driver responds with a commit operation, a
    rollback operation, or by doing neither a commit nor a rollback. A potential result of this difference
    is in whether or not holdable ResultSets are closed.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### getClientInfoProperties

    [ResultSet](ResultSet.md "interface in java.sql") getClientInfoProperties()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a list of the client info properties
    that the driver supports. The result set contains the following columns
    1. **NAME** String`=>` The name of the client info property  
       + **MAX\_LEN** int`=>` The maximum length of the value for the property  
         + **DEFAULT\_VALUE** String`=>` The default value of the property  
           + **DESCRIPTION** String`=>` A description of the property. This will typically
             contain information as to where this property is
             stored in the database.

    The `ResultSet` is sorted by the NAME column

    Returns:
    :   A `ResultSet` object; each row is a supported client info
        property

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6
  + ### getFunctions

    [ResultSet](ResultSet.md "interface in java.sql") getFunctions([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") functionNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the system and user functions available
    in the given catalog.

    Only system and user function descriptions matching the schema and
    function name criteria are returned. They are ordered by
    `FUNCTION_CAT`, `FUNCTION_SCHEM`,
    `FUNCTION_NAME` and
    `SPECIFIC_ NAME`.

    Each function description has the following columns:
    1. **FUNCTION\_CAT** String `=>` function catalog (may be `null`)+ **FUNCTION\_SCHEM** String `=>` function schema (may be `null`)+ **FUNCTION\_NAME** String `=>` function name. This is the name
           used to invoke the function+ **REMARKS** String `=>` explanatory comment on the function+ **FUNCTION\_TYPE** short `=>` kind of function:
               - functionResultUnknown - Cannot determine if a return value
                 or table will be returned- functionNoTable- Does not return a table- functionReturnsTable - Returns a table+ **SPECIFIC\_NAME** String `=>` the name which uniquely identifies
                 this function within its schema. This is a user specified, or DBMS
                 generated, name that may be different then the `FUNCTION_NAME`
                 for example with overload functions

    A user may not have permission to execute any of the functions that are
    returned by `getFunctions`

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `functionNamePattern` - a function name pattern; must match the
        function name as it is stored in the database

    Returns:
    :   `ResultSet` - each row is a function description

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getFunctionColumns

    [ResultSet](ResultSet.md "interface in java.sql") getFunctionColumns([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") functionNamePattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") columnNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the given catalog's system or user
    function parameters and return type.

    Only descriptions matching the schema, function and
    parameter name criteria are returned. They are ordered by
    `FUNCTION_CAT`, `FUNCTION_SCHEM`,
    `FUNCTION_NAME` and
    `SPECIFIC_ NAME`. Within this, the return value,
    if any, is first. Next are the parameter descriptions in call
    order. The column descriptions follow in column number order.

    Each row in the `ResultSet`
    is a parameter description, column description or
    return type description with the following fields:
    1. **FUNCTION\_CAT** String `=>` function catalog (may be `null`)+ **FUNCTION\_SCHEM** String `=>` function schema (may be `null`)+ **FUNCTION\_NAME** String `=>` function name. This is the name
           used to invoke the function+ **COLUMN\_NAME** String `=>` column/parameter name+ **COLUMN\_TYPE** Short `=>` kind of column/parameter:
               - functionColumnUnknown - nobody knows- functionColumnIn - IN parameter- functionColumnInOut - INOUT parameter- functionColumnOut - OUT parameter- functionColumnReturn - function return value- functionColumnResult - Indicates that the parameter or column
                           is a column in the `ResultSet`+ **DATA\_TYPE** int `=>` SQL type from java.sql.Types+ **TYPE\_NAME** String `=>` SQL type name, for a UDT type the
                   type name is fully qualified+ **PRECISION** int `=>` precision+ **LENGTH** int `=>` length in bytes of data+ **SCALE** short `=>` scale - null is returned for data types where
                         SCALE is not applicable.+ **RADIX** short `=>` radix+ **NULLABLE** short `=>` can it contain NULL.
                             - functionNoNulls - does not allow NULL values- functionNullable - allows NULL values- functionNullableUnknown - nullability unknown+ **REMARKS** String `=>` comment describing column/parameter+ **CHAR\_OCTET\_LENGTH** int `=>` the maximum length of binary
                                 and character based parameters or columns. For any other datatype the returned value
                                 is a NULL+ **ORDINAL\_POSITION** int `=>` the ordinal position, starting
                                   from 1, for the input and output parameters. A value of 0
                                   is returned if this row describes the function's return value.
                                   For result set columns, it is the
                                   ordinal position of the column in the result set starting from 1.+ **IS\_NULLABLE** String `=>` ISO rules are used to determine
                                     the nullability for a parameter or column.
                                     - YES --- if the parameter or column can include NULLs- NO --- if the parameter or column cannot include NULLs- empty string --- if the nullability for the
                                           parameter or column is unknown+ **SPECIFIC\_NAME** String `=>` the name which uniquely identifies
                                       this function within its schema. This is a user specified, or DBMS
                                       generated, name that may be different then the `FUNCTION_NAME`
                                       for example with overload functions

    The PRECISION column represents the specified column size for the given
    parameter or column.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. Null is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `functionNamePattern` - a procedure name pattern; must match the
        function name as it is stored in the database
    :   `columnNamePattern` - a parameter name pattern; must match the
        parameter or column name as it is stored in the database

    Returns:
    :   `ResultSet` - each row describes a
        user function parameter, column or return type

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.6

    See Also:
    :   - [`getSearchStringEscape()`](#getSearchStringEscape())
  + ### getPseudoColumns

    [ResultSet](ResultSet.md "interface in java.sql") getPseudoColumns([String](../../../java.base/java/lang/String.md "class in java.lang") catalog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") schemaPattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") tableNamePattern,
    [String](../../../java.base/java/lang/String.md "class in java.lang") columnNamePattern)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves a description of the pseudo or hidden columns available
    in a given table within the specified catalog and schema.
    Pseudo or hidden columns may not always be stored within
    a table and are not visible in a ResultSet unless they are
    specified in the query's outermost SELECT list. Pseudo or hidden
    columns may not necessarily be able to be modified. If there are
    no pseudo or hidden columns, an empty ResultSet is returned.

    Only column descriptions matching the catalog, schema, table
    and column name criteria are returned. They are ordered by
    `TABLE_CAT`,`TABLE_SCHEM`, `TABLE_NAME`
    and `COLUMN_NAME`.

    Each column description has the following columns:
    1. **TABLE\_CAT** String `=>` table catalog (may be `null`)+ **TABLE\_SCHEM** String `=>` table schema (may be `null`)+ **TABLE\_NAME** String `=>` table name+ **COLUMN\_NAME** String `=>` column name+ **DATA\_TYPE** int `=>` SQL type from java.sql.Types+ **COLUMN\_SIZE** int `=>` column size.+ **DECIMAL\_DIGITS** int `=>` the number of fractional digits. Null is returned for data types where
                   DECIMAL\_DIGITS is not applicable.+ **NUM\_PREC\_RADIX** int `=>` Radix (typically either 10 or 2)+ **COLUMN\_USAGE** String `=>` The allowed usage for the column. The
                       value returned will correspond to the enum name returned by `PseudoColumnUsage.name()`+ **REMARKS** String `=>` comment describing column (may be `null`)+ **CHAR\_OCTET\_LENGTH** int `=>` for char types the
                           maximum number of bytes in the column+ **IS\_NULLABLE** String `=>` ISO rules are used to determine the nullability for a column.
                             - YES --- if the column can include NULLs- NO --- if the column cannot include NULLs- empty string --- if the nullability for the column is unknown

    The COLUMN\_SIZE column specifies the column size for the given column.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. Null is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `catalog` - a catalog name; must match the catalog name as it
        is stored in the database; "" retrieves those without a catalog;
        `null` means that the catalog name should not be used to narrow
        the search
    :   `schemaPattern` - a schema name pattern; must match the schema name
        as it is stored in the database; "" retrieves those without a schema;
        `null` means that the schema name should not be used to narrow
        the search
    :   `tableNamePattern` - a table name pattern; must match the
        table name as it is stored in the database
    :   `columnNamePattern` - a column name pattern; must match the column
        name as it is stored in the database

    Returns:
    :   `ResultSet` - each row is a column description

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.7

    See Also:
    :   - [`PseudoColumnUsage`](PseudoColumnUsage.md "enum class in java.sql")
  + ### generatedKeyAlwaysReturned

    boolean generatedKeyAlwaysReturned()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether a generated key will always be returned if the column
    name(s) or index(es) specified for the auto generated key column(s)
    are valid and the statement succeeds. The key that is returned may or
    may not be based on the column(s) for the auto generated key.
    Consult your JDBC driver documentation for additional details.

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.7
  + ### getMaxLogicalLobSize

    default long getMaxLogicalLobSize()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the maximum number of bytes this database allows for
    the logical size for a `LOB`.

    The default implementation will return `0`

    Returns:
    :   the maximum number of bytes allowed; a result of zero
        means that there is no limit or the limit is not known

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.8
  + ### supportsRefCursors

    default boolean supportsRefCursors()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports REF CURSOR.

    The default implementation will return `false`

    Returns:
    :   `true` if this database supports REF CURSOR;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.8
  + ### supportsSharding

    default boolean supportsSharding()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether this database supports sharding.

    Returns:
    :   `true` if this database supports sharding;
        `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   9