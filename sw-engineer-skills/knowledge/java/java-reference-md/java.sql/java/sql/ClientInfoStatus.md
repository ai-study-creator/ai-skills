Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Enum Class ClientInfoStatus

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")>

java.sql.ClientInfoStatus

All Implemented Interfaces:
:   `Serializable`, `Comparable<ClientInfoStatus>`, `Constable`

---

public enum ClientInfoStatus
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")>

Enumeration for status of the reason that a property could not be set
via a call to `Connection.setClientInfo`

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `REASON_UNKNOWN`

  The client info property could not be set for some unknown reason

  `REASON_UNKNOWN_PROPERTY`

  The client info property name specified was not a recognized property
  name.

  `REASON_VALUE_INVALID`

  The value specified for the client info property was not valid.

  `REASON_VALUE_TRUNCATED`

  The value specified for the client info property was too large.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ClientInfoStatus`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static ClientInfoStatus[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### REASON\_UNKNOWN

    public static final [ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql") REASON\_UNKNOWN

    The client info property could not be set for some unknown reason

    Since:
    :   1.6
  + ### REASON\_UNKNOWN\_PROPERTY

    public static final [ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql") REASON\_UNKNOWN\_PROPERTY

    The client info property name specified was not a recognized property
    name.

    Since:
    :   1.6
  + ### REASON\_VALUE\_INVALID

    public static final [ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql") REASON\_VALUE\_INVALID

    The value specified for the client info property was not valid.

    Since:
    :   1.6
  + ### REASON\_VALUE\_TRUNCATED

    public static final [ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql") REASON\_VALUE\_TRUNCATED

    The value specified for the client info property was too large.

    Since:
    :   1.6
* ## Method Details

  + ### values

    public static [ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [ClientInfoStatus](ClientInfoStatus.md "enum class in java.sql") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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