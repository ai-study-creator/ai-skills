Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Interface ParameterMetaData

All Superinterfaces:
:   `Wrapper`

---

public interface ParameterMetaData
extends [Wrapper](Wrapper.md "interface in java.sql")

An object that can be used to get information about the types
and properties for each parameter marker in a
`PreparedStatement` object. For some queries and driver
implementations, the data that would be returned by a `ParameterMetaData`
object may not be available until the `PreparedStatement` has
been executed.

Some driver implementations may not be able to provide information about the
types and properties for each parameter marker in a `CallableStatement`
object.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `parameterModeIn`

  The constant indicating that the parameter's mode is IN.

  `static final int`

  `parameterModeInOut`

  The constant indicating that the parameter's mode is INOUT.

  `static final int`

  `parameterModeOut`

  The constant indicating that the parameter's mode is OUT.

  `static final int`

  `parameterModeUnknown`

  The constant indicating that the mode of the parameter is unknown.

  `static final int`

  `parameterNoNulls`

  The constant indicating that a
  parameter will not allow `NULL` values.

  `static final int`

  `parameterNullable`

  The constant indicating that a
  parameter will allow `NULL` values.

  `static final int`

  `parameterNullableUnknown`

  The constant indicating that the
  nullability of a parameter is unknown.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getParameterClassName(int param)`

  Retrieves the fully-qualified name of the Java class whose instances
  should be passed to the method `PreparedStatement.setObject`.

  `int`

  `getParameterCount()`

  Retrieves the number of parameters in the `PreparedStatement`
  object for which this `ParameterMetaData` object contains
  information.

  `int`

  `getParameterMode(int param)`

  Retrieves the designated parameter's mode.

  `int`

  `getParameterType(int param)`

  Retrieves the designated parameter's SQL type.

  `String`

  `getParameterTypeName(int param)`

  Retrieves the designated parameter's database-specific type name.

  `int`

  `getPrecision(int param)`

  Retrieves the designated parameter's specified column size.

  `int`

  `getScale(int param)`

  Retrieves the designated parameter's number of digits to right of the decimal point.

  `int`

  `isNullable(int param)`

  Retrieves whether null values are allowed in the designated parameter.

  `boolean`

  `isSigned(int param)`

  Retrieves whether values for the designated parameter can be signed numbers.

  ### Methods inherited from interface java.sql.[Wrapper](Wrapper.md "interface in java.sql")

  `isWrapperFor, unwrap`

* ## Field Details

  + ### parameterNoNulls

    static final int parameterNoNulls

    The constant indicating that a
    parameter will not allow `NULL` values.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ParameterMetaData.parameterNoNulls)
  + ### parameterNullable

    static final int parameterNullable

    The constant indicating that a
    parameter will allow `NULL` values.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ParameterMetaData.parameterNullable)
  + ### parameterNullableUnknown

    static final int parameterNullableUnknown

    The constant indicating that the
    nullability of a parameter is unknown.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ParameterMetaData.parameterNullableUnknown)
  + ### parameterModeUnknown

    static final int parameterModeUnknown

    The constant indicating that the mode of the parameter is unknown.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ParameterMetaData.parameterModeUnknown)
  + ### parameterModeIn

    static final int parameterModeIn

    The constant indicating that the parameter's mode is IN.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ParameterMetaData.parameterModeIn)
  + ### parameterModeInOut

    static final int parameterModeInOut

    The constant indicating that the parameter's mode is INOUT.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ParameterMetaData.parameterModeInOut)
  + ### parameterModeOut

    static final int parameterModeOut

    The constant indicating that the parameter's mode is OUT.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.sql.ParameterMetaData.parameterModeOut)
* ## Method Details

  + ### getParameterCount

    int getParameterCount()
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the number of parameters in the `PreparedStatement`
    object for which this `ParameterMetaData` object contains
    information.

    Returns:
    :   the number of parameters

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### isNullable

    int isNullable(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether null values are allowed in the designated parameter.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   the nullability status of the given parameter; one of
        `ParameterMetaData.parameterNoNulls`,
        `ParameterMetaData.parameterNullable`, or
        `ParameterMetaData.parameterNullableUnknown`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### isSigned

    boolean isSigned(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves whether values for the designated parameter can be signed numbers.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   `true` if so; `false` otherwise

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getPrecision

    int getPrecision(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the designated parameter's specified column size.

    The returned value represents the maximum column size for the given parameter.
    For numeric data, this is the maximum precision. For character data, this is the length in characters.
    For datetime datatypes, this is the length in characters of the String representation (assuming the
    maximum allowed precision of the fractional seconds component). For binary data, this is the length in bytes. For the ROWID datatype,
    this is the length in bytes. 0 is returned for data types where the
    column size is not applicable.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   precision

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getScale

    int getScale(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the designated parameter's number of digits to right of the decimal point.
    0 is returned for data types where the scale is not applicable.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   scale

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getParameterType

    int getParameterType(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the designated parameter's SQL type.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   SQL type from `java.sql.Types`

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4

    See Also:
    :   - [`Types`](Types.md "class in java.sql")
  + ### getParameterTypeName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getParameterTypeName(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the designated parameter's database-specific type name.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   type the name used by the database. If the parameter type is
        a user-defined type, then a fully-qualified type name is returned.

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getParameterClassName

    [String](../../../java.base/java/lang/String.md "class in java.lang") getParameterClassName(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the fully-qualified name of the Java class whose instances
    should be passed to the method `PreparedStatement.setObject`.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   the fully-qualified name of the class in the Java programming
        language that would be used by the method
        `PreparedStatement.setObject` to set the value
        in the specified parameter. This is the class name used
        for custom mapping.

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4
  + ### getParameterMode

    int getParameterMode(int param)
    throws [SQLException](SQLException.md "class in java.sql")

    Retrieves the designated parameter's mode.

    Parameters:
    :   `param` - the first parameter is 1, the second is 2, ...

    Returns:
    :   mode of the parameter; one of
        `ParameterMetaData.parameterModeIn`,
        `ParameterMetaData.parameterModeOut`, or
        `ParameterMetaData.parameterModeInOut`
        `ParameterMetaData.parameterModeUnknown`.

    Throws:
    :   `SQLException` - if a database access error occurs

    Since:
    :   1.4