Module [java.sql](../../module-summary.md)

Package [java.sql](package-summary.md)

# Class DriverPropertyInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.sql.DriverPropertyInfo

---

public class DriverPropertyInfo
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Driver properties for making a connection. The
`DriverPropertyInfo` class is of interest only to advanced programmers
who need to interact with a Driver via the method
`getDriverProperties` to discover
and supply properties for connections.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `String[]`

  `choices`

  An array of possible values if the value for the field
  `DriverPropertyInfo.value` may be selected
  from a particular set of values; otherwise null.

  `String`

  `description`

  A brief description of the property, which may be null.

  `String`

  `name`

  The name of the property.

  `boolean`

  `required`

  The `required` field is `true` if a value must be
  supplied for this property
  during `Driver.connect` and `false` otherwise.

  `String`

  `value`

  The `value` field specifies the current value of
  the property, based on a combination of the information
  supplied to the method `getPropertyInfo`, the
  Java environment, and the driver-supplied default values.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DriverPropertyInfo(String name,
  String value)`

  Constructs a `DriverPropertyInfo` object with a given
  name and value.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### name

    public [String](../../../java.base/java/lang/String.md "class in java.lang") name

    The name of the property.
  + ### description

    public [String](../../../java.base/java/lang/String.md "class in java.lang") description

    A brief description of the property, which may be null.
  + ### required

    public boolean required

    The `required` field is `true` if a value must be
    supplied for this property
    during `Driver.connect` and `false` otherwise.
  + ### value

    public [String](../../../java.base/java/lang/String.md "class in java.lang") value

    The `value` field specifies the current value of
    the property, based on a combination of the information
    supplied to the method `getPropertyInfo`, the
    Java environment, and the driver-supplied default values. This field
    may be null if no value is known.
  + ### choices

    public [String](../../../java.base/java/lang/String.md "class in java.lang")[] choices

    An array of possible values if the value for the field
    `DriverPropertyInfo.value` may be selected
    from a particular set of values; otherwise null.
* ## Constructor Details

  + ### DriverPropertyInfo

    public DriverPropertyInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") value)

    Constructs a `DriverPropertyInfo` object with a given
    name and value. The `description` and `choices`
    are initialized to `null` and `required` is initialized
    to `false`.

    Parameters:
    :   `name` - the name of the property
    :   `value` - the current value, which may be null