Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface Struct

All Known Implementing Classes:
:   `SerialStruct`

---

public interface Struct

The standard mapping in the Java programming language for an SQL
structured type. A `Struct` object contains a
value for each attribute of the SQL structured type that
it represents.
By default, an instance of`Struct` is valid as long as the
application has a reference to it.

All methods on the `Struct` interface must be fully implemented if the
JDBC driver supports the data type.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object[]`

  `getAttributes()`

  Produces the ordered values of the attributes of the SQL
  structured type that this `Struct` object represents.

  `Object[]`

  `getAttributes(Map<String,Class<?>> map)`

  Produces the ordered values of the attributes of the SQL
  structured type that this `Struct` object represents.

  `String`

  `getSQLTypeName()`

  Retrieves the SQL type name of the SQL structured type
  that this `Struct` object represents.

* ## Method Details

  + ### getSQLTypeName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getSQLTypeName()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the SQL type name of the SQL structured type
    that this `Struct` object represents.

    Returns:
    :   the fully-qualified type name of the SQL structured
        type for which this `Struct` object
        is the generic representation

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### getAttributes

    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getAttributes()
    throws [SQLException](SQLException.md "class in java.sql")

    Produces the ordered values of the attributes of the SQL
    structured type that this `Struct` object represents.
    As individual attributes are processed, this method uses the type map
    associated with the
    connection for customizations of the type mappings.
    If there is no
    entry in the connection's type map that matches the structured
    type that an attribute represents,
    the driver uses the standard mapping.

    Conceptually, this method calls the method
    `getObject` on each attribute
    of the structured type and returns a Java array containing
    the result.

    Returns:
    :   an array containing the ordered attribute values

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2
  + ### getAttributes

    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getAttributes([Map](../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../java.base/java/lang/String.md "class in java.lang"),[Class](../../../java.base/java/lang/Class.md "class in java.lang")<?>> map)
    throws [SQLException](SQLException.md "class in java.sql")

    Produces the ordered values of the attributes of the SQL
    structured type that this `Struct` object represents.
    As individual attributes are processed, this method uses the given type map
    for customizations of the type mappings.
    If there is no
    entry in the given type map that matches the structured
    type that an attribute represents,
    the driver uses the standard mapping. This method never
    uses the type map associated with the connection.

    Conceptually, this method calls the method
    `getObject` on each attribute
    of the structured type and returns a Java array containing
    the result.

    Parameters:
    :   `map` - a mapping of SQL type names to Java classes

    Returns:
    :   an array containing the ordered attribute values

    Throws:
    :   `SQLException` - if a database access error occurs
    :   `SQLFeatureNotSupportedException` - if the JDBC driver does not support
        this method

    Since:
    :   1.2