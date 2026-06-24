Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Enum Class System.Logger.Level

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Enum](Enum.md "class in java.lang")<[System.Logger.Level](System.Logger.Level.md "enum class in java.lang")>

java.lang.System.Logger.Level

All Implemented Interfaces:
:   `Serializable`, `Comparable<System.Logger.Level>`, `Constable`

Enclosing interface:
:   `System.Logger`

---

public static enum System.Logger.Level
extends [Enum](Enum.md "class in java.lang")<[System.Logger.Level](System.Logger.Level.md "enum class in java.lang")>

System [loggers](System.Logger.md "interface in java.lang") levels.
A level has a [name](#getName()) and [severity](#getSeverity()).
Level values are [`ALL`](#ALL), [`TRACE`](#TRACE), [`DEBUG`](#DEBUG),
[`INFO`](#INFO), [`WARNING`](#WARNING), [`ERROR`](#ERROR), [`OFF`](#OFF),
by order of increasing severity.
  
[`ALL`](#ALL) and [`OFF`](#OFF)
are simple markers with severities mapped respectively to
[`Integer.MIN_VALUE`](Integer.md#MIN_VALUE) and
[`Integer.MAX_VALUE`](Integer.md#MAX_VALUE).

**Severity values and Mapping to `java.util.logging.Level`.**

[System logger levels](System.Logger.Level.md "enum class in java.lang") are mapped to
[java.util.logging levels](../../../java.logging/java/util/logging/Level.md "class in java.util.logging")
of corresponding severity.
  
The mapping is as follows:
  
  

System.Logger Severity Level Mapping

| System.Logger Levels | java.util.logging Levels |
| --- | --- |
| [`ALL`](#ALL) | [`ALL`](../../../java.logging/java/util/logging/Level.md#ALL) || [`TRACE`](#TRACE) | [`FINER`](../../../java.logging/java/util/logging/Level.md#FINER) || [`DEBUG`](#DEBUG) | [`FINE`](../../../java.logging/java/util/logging/Level.md#FINE) || [`INFO`](#INFO) | [`INFO`](../../../java.logging/java/util/logging/Level.md#INFO) || [`WARNING`](#WARNING) | [`WARNING`](../../../java.logging/java/util/logging/Level.md#WARNING) || [`ERROR`](#ERROR) | [`SEVERE`](../../../java.logging/java/util/logging/Level.md#SEVERE) || [`OFF`](#OFF) | [`OFF`](../../../java.logging/java/util/logging/Level.md#OFF) |

Since:
:   9

See Also:
:   * [`System.LoggerFinder`](System.LoggerFinder.md "class in java.lang")
    * [`System.Logger`](System.Logger.md "interface in java.lang")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ALL`

  A marker to indicate that all levels are enabled.

  `DEBUG`

  `DEBUG` level: usually used to log debug information traces.

  `ERROR`

  `ERROR` level: usually used to log error messages.

  `INFO`

  `INFO` level: usually used to log information messages.

  `OFF`

  A marker to indicate that all levels are disabled.

  `TRACE`

  `TRACE` level: usually used to log diagnostic information.

  `WARNING`

  `WARNING` level: usually used to log warning messages.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getName()`

  Returns the name of this level.

  `final int`

  `getSeverity()`

  Returns the severity of this level.

  `static System.Logger.Level`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static System.Logger.Level[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### ALL

    public static final [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") ALL

    A marker to indicate that all levels are enabled.
    This level [severity](#getSeverity()) is
    [`Integer.MIN_VALUE`](Integer.md#MIN_VALUE).
  + ### TRACE

    public static final [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") TRACE

    `TRACE` level: usually used to log diagnostic information.
    This level [severity](#getSeverity()) is
    `400`.
  + ### DEBUG

    public static final [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") DEBUG

    `DEBUG` level: usually used to log debug information traces.
    This level [severity](#getSeverity()) is
    `500`.
  + ### INFO

    public static final [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") INFO

    `INFO` level: usually used to log information messages.
    This level [severity](#getSeverity()) is
    `800`.
  + ### WARNING

    public static final [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") WARNING

    `WARNING` level: usually used to log warning messages.
    This level [severity](#getSeverity()) is
    `900`.
  + ### ERROR

    public static final [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") ERROR

    `ERROR` level: usually used to log error messages.
    This level [severity](#getSeverity()) is
    `1000`.
  + ### OFF

    public static final [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") OFF

    A marker to indicate that all levels are disabled.
    This level [severity](#getSeverity()) is
    [`Integer.MAX_VALUE`](Integer.md#MAX_VALUE).
* ## Method Details

  + ### values

    public static [System.Logger.Level](System.Logger.Level.md "enum class in java.lang")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [System.Logger.Level](System.Logger.Level.md "enum class in java.lang") valueOf([String](String.md "class in java.lang") name)

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
  + ### getName

    public final [String](String.md "class in java.lang") getName()

    Returns the name of this level.

    Returns:
    :   this level [Enum.name()](Enum.md#name()).
  + ### getSeverity

    public final int getSeverity()

    Returns the severity of this level.
    A higher severity means a more severe condition.

    Returns:
    :   this level severity.