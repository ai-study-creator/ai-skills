Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.serial](package-summary.md)

# Class SerialRef

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.serial.SerialRef

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Ref`

---

public class SerialRef
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Ref](../../../../../java.sql/java/sql/Ref.md "interface in java.sql"), [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A serialized mapping of a `Ref` object, which is the mapping in the
Java programming language of an SQL `REF` value.

The `SerialRef` class provides a constructor for
creating a `SerialRef` instance from a `Ref`
object and provides methods for getting and setting the `Ref` object.

## Thread safety

A SerialRef is not safe for use by multiple concurrent threads. If a
SerialRef is to be used by more than one thread then access to the SerialRef
should be controlled by appropriate synchronization.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.sql.rowset.serial.SerialRef)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SerialRef(Ref ref)`

  Constructs a `SerialRef` object from the given `Ref`
  object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone of this `SerialRef`.

  `boolean`

  `equals(Object obj)`

  Compares this SerialRef to the specified object.

  `String`

  `getBaseTypeName()`

  Returns a string describing the base type name of the `Ref`.

  `Object`

  `getObject()`

  Returns an `Object` representing the SQL structured type
  to which this `SerialRef` object refers.

  `Object`

  `getObject(Map<String,Class<?>> map)`

  Returns an `Object` representing the SQL structured type
  to which this `SerialRef` object refers.

  `int`

  `hashCode()`

  Returns a hash code for this `SerialRef`.

  `void`

  `setObject(Object obj)`

  Sets the SQL structured type that this `SerialRef` object
  references to the given `Object` object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SerialRef

    public SerialRef([Ref](../../../../../java.sql/java/sql/Ref.md "interface in java.sql") ref)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial"),
    [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Constructs a `SerialRef` object from the given `Ref`
    object.

    Parameters:
    :   `ref` - a Ref object; cannot be `null`

    Throws:
    :   `SQLException` - if a database access occurs; if `ref`
        is `null`; or if the `Ref` object returns a
        `null` value base type name.
    :   `SerialException` - if an error occurs serializing the `Ref`
        object
* ## Method Details

  + ### getBaseTypeName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getBaseTypeName()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns a string describing the base type name of the `Ref`.

    Specified by:
    :   `getBaseTypeName` in interface `Ref`

    Returns:
    :   a string of the base type name of the Ref

    Throws:
    :   `SerialException` - in no Ref object has been set
  + ### getObject

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getObject([Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../../java.base/java/lang/String.md "class in java.lang"),[Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<?>> map)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns an `Object` representing the SQL structured type
    to which this `SerialRef` object refers. The attributes
    of the structured type are mapped according to the given type map.

    Specified by:
    :   `getObject` in interface `Ref`

    Parameters:
    :   `map` - a `java.util.Map` object containing zero or
        more entries, with each entry consisting of 1) a `String`
        giving the fully qualified name of a UDT and 2) the
        `Class` object for the `SQLData` implementation
        that defines how the UDT is to be mapped

    Returns:
    :   an object instance resolved from the Ref reference and mapped
        according to the supplied type map

    Throws:
    :   `SerialException` - if an error is encountered in the reference
        resolution

    See Also:
    :   - [`Ref.setObject(java.lang.Object)`](../../../../../java.sql/java/sql/Ref.md#setObject(java.lang.Object))
  + ### getObject

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getObject()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns an `Object` representing the SQL structured type
    to which this `SerialRef` object refers.

    Specified by:
    :   `getObject` in interface `Ref`

    Returns:
    :   an object instance resolved from the Ref reference

    Throws:
    :   `SerialException` - if an error is encountered in the reference
        resolution

    See Also:
    :   - [`Ref.setObject(java.lang.Object)`](../../../../../java.sql/java/sql/Ref.md#setObject(java.lang.Object))
  + ### setObject

    public void setObject([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Sets the SQL structured type that this `SerialRef` object
    references to the given `Object` object.

    Specified by:
    :   `setObject` in interface `Ref`

    Parameters:
    :   `obj` - an `Object` representing the SQL structured type
        to be referenced

    Throws:
    :   `SerialException` - if an error is encountered generating the
        the structured type referenced by this `SerialRef` object

    See Also:
    :   - [`Ref.getObject()`](../../../../../java.sql/java/sql/Ref.md#getObject())
        - [`Ref.getObject(Map)`](../../../../../java.sql/java/sql/Ref.md#getObject(java.util.Map))
        - [`PreparedStatement.setObject(int, Object)`](../../../../../java.sql/java/sql/PreparedStatement.md#setObject(int,java.lang.Object))
        - [`CallableStatement.setObject(String, Object)`](../../../../../java.sql/java/sql/CallableStatement.md#setObject(java.lang.String,java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this SerialRef to the specified object. The result is `true` if and only if the argument is not `null` and is a `SerialRef` object that represents the same object as this
    object.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - The object to compare this `SerialRef` against

    Returns:
    :   `true` if the given object represents a `SerialRef`
        equivalent to this SerialRef, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `SerialRef`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Returns a clone of this `SerialRef`.
    The underlying `Ref` object will be set to null.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this SerialRef

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")