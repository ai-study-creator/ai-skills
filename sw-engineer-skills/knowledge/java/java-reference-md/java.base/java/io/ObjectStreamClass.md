Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class ObjectStreamClass

[java.lang.Object](../lang/Object.md "class in java.lang")

java.io.ObjectStreamClass

All Implemented Interfaces:
:   `Serializable`

---

public final class ObjectStreamClass
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](Serializable.md "interface in java.io")

Serialization's descriptor for classes. It contains the name and
serialVersionUID of the class. The ObjectStreamClass for a specific class
loaded in this Java VM can be found/created using the lookup method.

The algorithm to compute the SerialVersionUID is described in
[Java Object Serialization Specification, Section 4.6, "Stream Unique Identifiers"](../../../../specs/serialization/class.md#stream-unique-identifiers).

Since:
:   1.1

See Also:
:   * [`ObjectStreamField`](ObjectStreamField.md "class in java.io")
    * [Java Object Serialization Specification, Section 4, "Class Descriptors"](../../../../specs/serialization/class.md)
    * [Serialized Form](../../../serialized-form.md#java.io.ObjectStreamClass)

External Specifications
:   * [Java Object Serialization Specification](../../../../specs/serialization/index.md)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ObjectStreamField[]`

  `NO_FIELDS`

  serialPersistentFields value indicating no serializable fields
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `forClass()`

  Return the class in the local VM that this version is mapped to.

  `ObjectStreamField`

  `getField(String name)`

  Get the field of this class by name.

  `ObjectStreamField[]`

  `getFields()`

  Return an array of the fields of this serializable class.

  `String`

  `getName()`

  Returns the name of the class described by this descriptor.

  `long`

  `getSerialVersionUID()`

  Return the serialVersionUID for this class.

  `static ObjectStreamClass`

  `lookup(Class<?> cl)`

  Find the descriptor for a class that can be serialized.

  `static ObjectStreamClass`

  `lookupAny(Class<?> cl)`

  Returns the descriptor for any class, regardless of whether it
  implements [`Serializable`](Serializable.md "interface in java.io").

  `String`

  `toString()`

  Return a string describing this ObjectStreamClass.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### NO\_FIELDS

    public static final [ObjectStreamField](ObjectStreamField.md "class in java.io")[] NO\_FIELDS

    serialPersistentFields value indicating no serializable fields
* ## Method Details

  + ### lookup

    public static [ObjectStreamClass](ObjectStreamClass.md "class in java.io") lookup([Class](../lang/Class.md "class in java.lang")<?> cl)

    Find the descriptor for a class that can be serialized. Creates an
    ObjectStreamClass instance if one does not exist yet for class. Null is
    returned if the specified class does not implement java.io.Serializable
    or java.io.Externalizable.

    Parameters:
    :   `cl` - class for which to get the descriptor

    Returns:
    :   the class descriptor for the specified class
  + ### lookupAny

    public static [ObjectStreamClass](ObjectStreamClass.md "class in java.io") lookupAny([Class](../lang/Class.md "class in java.lang")<?> cl)

    Returns the descriptor for any class, regardless of whether it
    implements [`Serializable`](Serializable.md "interface in java.io").

    Parameters:
    :   `cl` - class for which to get the descriptor

    Returns:
    :   the class descriptor for the specified class

    Since:
    :   1.6
  + ### getName

    public [String](../lang/String.md "class in java.lang") getName()

    Returns the name of the class described by this descriptor.
    This method returns the name of the class in the format that
    is used by the [`Class.getName()`](../lang/Class.md#getName()) method.

    Returns:
    :   a string representing the name of the class
  + ### getSerialVersionUID

    public long getSerialVersionUID()

    Return the serialVersionUID for this class. The serialVersionUID
    defines a set of classes all with the same name that have evolved from a
    common root class and agree to be serialized and deserialized using a
    common format. NonSerializable classes have a serialVersionUID of 0L.

    Returns:
    :   the SUID of the class described by this descriptor
  + ### forClass

    public [Class](../lang/Class.md "class in java.lang")<?> forClass()

    Return the class in the local VM that this version is mapped to. Null
    is returned if there is no corresponding local class.

    Returns:
    :   the `Class` instance that this descriptor represents
  + ### getFields

    public [ObjectStreamField](ObjectStreamField.md "class in java.io")[] getFields()

    Return an array of the fields of this serializable class.

    Returns:
    :   an array containing an element for each persistent field of
        this class. Returns an array of length zero if there are no
        fields.

    Since:
    :   1.2
  + ### getField

    public [ObjectStreamField](ObjectStreamField.md "class in java.io") getField([String](../lang/String.md "class in java.lang") name)

    Get the field of this class by name.

    Parameters:
    :   `name` - the name of the data field to look for

    Returns:
    :   The ObjectStreamField object of the named field or null if
        there is no such named field.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Return a string describing this ObjectStreamClass.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.