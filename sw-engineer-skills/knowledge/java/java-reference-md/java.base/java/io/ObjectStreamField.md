Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class ObjectStreamField

[java.lang.Object](../lang/Object.md "class in java.lang")

java.io.ObjectStreamField

All Implemented Interfaces:
:   `Comparable<Object>`

---

public class ObjectStreamField
extends [Object](../lang/Object.md "class in java.lang")
implements [Comparable](../lang/Comparable.md "interface in java.lang")<[Object](../lang/Object.md "class in java.lang")>

A description of a Serializable field from a Serializable class. An array
of ObjectStreamFields is used to declare the Serializable fields of a class.

Since:
:   1.2

See Also:
:   * [`ObjectStreamClass`](ObjectStreamClass.md "class in java.io")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ObjectStreamField(String name,
  Class<?> type)`

  Create a Serializable field with the specified type.

  `ObjectStreamField(String name,
  Class<?> type,
  boolean unshared)`

  Creates an ObjectStreamField representing a serializable field with the
  given name and type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `compareTo(Object obj)`

  Compare this field with another `ObjectStreamField`.

  `String`

  `getName()`

  Get the name of this field.

  `int`

  `getOffset()`

  Offset of field within instance data.

  `Class<?>`

  `getType()`

  Get the type of the field.

  `char`

  `getTypeCode()`

  Returns character encoding of field type.

  `String`

  `getTypeString()`

  Return the JVM type signature.

  `boolean`

  `isPrimitive()`

  Return true if this field has a primitive type.

  `boolean`

  `isUnshared()`

  Returns boolean value indicating whether or not the serializable field
  represented by this ObjectStreamField instance is unshared.

  `protected void`

  `setOffset(int offset)`

  Offset within instance data.

  `String`

  `toString()`

  Return a string that describes this field.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ObjectStreamField

    public ObjectStreamField([String](../lang/String.md "class in java.lang") name,
    [Class](../lang/Class.md "class in java.lang")<?> type)

    Create a Serializable field with the specified type. This field should
    be documented with a `serialField` tag.

    Parameters:
    :   `name` - the name of the serializable field
    :   `type` - the `Class` object of the serializable field
  + ### ObjectStreamField

    public ObjectStreamField([String](../lang/String.md "class in java.lang") name,
    [Class](../lang/Class.md "class in java.lang")<?> type,
    boolean unshared)

    Creates an ObjectStreamField representing a serializable field with the
    given name and type. If unshared is false, values of the represented
    field are serialized and deserialized in the default manner--if the
    field is non-primitive, object values are serialized and deserialized as
    if they had been written and read by calls to writeObject and
    readObject. If unshared is true, values of the represented field are
    serialized and deserialized as if they had been written and read by
    calls to writeUnshared and readUnshared.

    Parameters:
    :   `name` - field name
    :   `type` - field type
    :   `unshared` - if false, write/read field values in the same manner
        as writeObject/readObject; if true, write/read in the same
        manner as writeUnshared/readUnshared

    Since:
    :   1.4
* ## Method Details

  + ### getName

    public [String](../lang/String.md "class in java.lang") getName()

    Get the name of this field.

    Returns:
    :   a `String` representing the name of the serializable
        field
  + ### getType

    public [Class](../lang/Class.md "class in java.lang")<?> getType()

    Get the type of the field. If the type is non-primitive and this
    `ObjectStreamField` was obtained from a deserialized [`ObjectStreamClass`](ObjectStreamClass.md "class in java.io") instance, then `Object.class` is returned.
    Otherwise, the `Class` object for the type of the field is
    returned.

    Returns:
    :   a `Class` object representing the type of the
        serializable field
  + ### getTypeCode

    public char getTypeCode()

    Returns character encoding of field type. The encoding is as follows:
    > ```
    >  B            byte
    >  C            char
    >  D            double
    >  F            float
    >  I            int
    >  J            long
    >  L            class or interface
    >  S            short
    >  Z            boolean
    >  [            array
    > ```

    Returns:
    :   the typecode of the serializable field
  + ### getTypeString

    public [String](../lang/String.md "class in java.lang") getTypeString()

    Return the JVM type signature.

    Returns:
    :   null if this field has a primitive type.
  + ### getOffset

    public int getOffset()

    Offset of field within instance data.

    Returns:
    :   the offset of this field

    See Also:
    :   - [`setOffset(int)`](#setOffset(int))
  + ### setOffset

    protected void setOffset(int offset)

    Offset within instance data.

    Parameters:
    :   `offset` - the offset of the field

    See Also:
    :   - [`getOffset()`](#getOffset())
  + ### isPrimitive

    public boolean isPrimitive()

    Return true if this field has a primitive type.

    Returns:
    :   true if and only if this field corresponds to a primitive type
  + ### isUnshared

    public boolean isUnshared()

    Returns boolean value indicating whether or not the serializable field
    represented by this ObjectStreamField instance is unshared.

    Returns:
    :   `true` if this field is unshared

    Since:
    :   1.4
  + ### compareTo

    public int compareTo([Object](../lang/Object.md "class in java.lang") obj)

    Compare this field with another `ObjectStreamField`. Return
    -1 if this is smaller, 0 if equal, 1 if greater. Types that are
    primitives are "smaller" than object types. If equal, the field names
    are compared.

    Specified by:
    :   `compareTo` in interface `Comparable<Object>`

    Parameters:
    :   `obj` - the object to be compared.

    Returns:
    :   a negative integer, zero, or a positive integer as this object
        is less than, equal to, or greater than the specified object.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Return a string that describes this field.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.