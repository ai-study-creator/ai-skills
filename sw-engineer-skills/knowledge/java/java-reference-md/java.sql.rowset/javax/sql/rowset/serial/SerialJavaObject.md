Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.serial](package-summary.md)

# Class SerialJavaObject

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.serial.SerialJavaObject

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class SerialJavaObject
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A serializable mapping in the Java programming language of an SQL
`JAVA_OBJECT` value. Assuming the Java object
implements the `Serializable` interface, this class simply wraps the
serialization process.

If however, the serialization is not possible because
the Java object is not immediately serializable, this class will
attempt to serialize all non-static members to permit the object
state to be serialized.
Static or transient fields cannot be serialized; an attempt to serialize
them will result in a `SerialException` object being thrown.

## Thread safety

A SerialJavaObject is not safe for use by multiple concurrent threads. If a
SerialJavaObject is to be used by more than one thread then access to the
SerialJavaObject should be controlled by appropriate synchronization.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.sql.rowset.serial.SerialJavaObject)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SerialJavaObject(Object obj)`

  Constructor for `SerialJavaObject` helper class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone of this `SerialJavaObject`.

  `boolean`

  `equals(Object o)`

  Compares this SerialJavaObject to the specified object.

  `Field[]`

  `getFields()`

  Returns an array of `Field` objects that contains each
  field of the object that this helper class is serializing.

  `Object`

  `getObject()`

  Returns an `Object` that is a copy of this `SerialJavaObject`
  object.

  `int`

  `hashCode()`

  Returns a hash code for this SerialJavaObject.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SerialJavaObject

    public SerialJavaObject([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Constructor for `SerialJavaObject` helper class.

    Parameters:
    :   `obj` - the Java `Object` to be serialized

    Throws:
    :   `SerialException` - if the object is found not to be serializable
* ## Method Details

  + ### getObject

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getObject()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns an `Object` that is a copy of this `SerialJavaObject`
    object.

    Returns:
    :   a copy of this `SerialJavaObject` object as an
        `Object` in the Java programming language

    Throws:
    :   `SerialException` - if the instance is corrupt
  + ### getFields

    public [Field](../../../../../java.base/java/lang/reflect/Field.md "class in java.lang.reflect")[] getFields()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns an array of `Field` objects that contains each
    field of the object that this helper class is serializing.

    Returns:
    :   an array of `Field` objects

    Throws:
    :   `SerialException` - if an error is encountered accessing
        the serialized object
    :   `SecurityException` - If a security manager, *s*, is present
        and the caller's class loader is not the same as or an
        ancestor of the class loader for the class of the
        [object](#getObject()) being serialized
        and invocation of [`s.checkPackageAccess()`](../../../../../java.base/java/lang/SecurityManager.md#checkPackageAccess(java.lang.String)) denies access to the package
        of that class.

    See Also:
    :   - [`Class.getFields()`](../../../../../java.base/java/lang/Class.md#getFields())
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Compares this SerialJavaObject to the specified object.
    The result is `true` if and only if the argument
    is not `null` and is a `SerialJavaObject`
    object that is identical to this object

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - The object to compare this `SerialJavaObject` against

    Returns:
    :   `true` if the given object represents a `SerialJavaObject`
        equivalent to this SerialJavaObject, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code for this SerialJavaObject. The hash code for a
    `SerialJavaObject` object is taken as the hash code of
    the `Object` it stores

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Returns a clone of this `SerialJavaObject`.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this SerialJavaObject

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")