Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Enum Class PseudoColumnUsage

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql")>

java.sql.PseudoColumnUsage

All Implemented Interfaces:
:   `Serializable`, `Comparable<PseudoColumnUsage>`, `Constable`

---

public enum PseudoColumnUsage
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql")>

Enumeration for pseudo/hidden column usage.

Since:
:   1.7

See Also:
:   * [`DatabaseMetaData.getPseudoColumns(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](DatabaseMetaData.md#getPseudoColumns(java.lang.String,java.lang.String,java.lang.String,java.lang.String))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `NO_USAGE_RESTRICTIONS`

  There are no restrictions on the usage of the pseudo/hidden columns.

  `SELECT_LIST_ONLY`

  The pseudo/hidden column may only be used in a SELECT list.

  `USAGE_UNKNOWN`

  The usage of the pseudo/hidden column cannot be determined.

  `WHERE_CLAUSE_ONLY`

  The pseudo/hidden column may only be used in a WHERE clause.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static PseudoColumnUsage`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static PseudoColumnUsage[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### SELECT\_LIST\_ONLY

    public static final [PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql") SELECT\_LIST\_ONLY

    The pseudo/hidden column may only be used in a SELECT list.
  + ### WHERE\_CLAUSE\_ONLY

    public static final [PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql") WHERE\_CLAUSE\_ONLY

    The pseudo/hidden column may only be used in a WHERE clause.
  + ### NO\_USAGE\_RESTRICTIONS

    public static final [PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql") NO\_USAGE\_RESTRICTIONS

    There are no restrictions on the usage of the pseudo/hidden columns.
  + ### USAGE\_UNKNOWN

    public static final [PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql") USAGE\_UNKNOWN

    The usage of the pseudo/hidden column cannot be determined.
* ## Method Details

  + ### values

    public static [PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [PseudoColumnUsage](PseudoColumnUsage.md "enum class in java.sql") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null