Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class ObjectInputStream.GetField

[java.lang.Object](../lang/Object.md "class in java.lang")

java.io.ObjectInputStream.GetField

Enclosing class:
:   `ObjectInputStream`

---

public abstract static class ObjectInputStream.GetField
extends [Object](../lang/Object.md "class in java.lang")

Provide access to the persistent fields read from the input stream.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GetField()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `defaulted(String name)`

  Return true if the named field is defaulted and has no value in this
  stream.

  `abstract boolean`

  `get(String name,
  boolean val)`

  Get the value of the named boolean field from the persistent field.

  `abstract byte`

  `get(String name,
  byte val)`

  Get the value of the named byte field from the persistent field.

  `abstract char`

  `get(String name,
  char val)`

  Get the value of the named char field from the persistent field.

  `abstract double`

  `get(String name,
  double val)`

  Get the value of the named double field from the persistent field.

  `abstract float`

  `get(String name,
  float val)`

  Get the value of the named float field from the persistent field.

  `abstract int`

  `get(String name,
  int val)`

  Get the value of the named int field from the persistent field.

  `abstract long`

  `get(String name,
  long val)`

  Get the value of the named long field from the persistent field.

  `abstract short`

  `get(String name,
  short val)`

  Get the value of the named short field from the persistent field.

  `abstract Object`

  `get(String name,
  Object val)`

  Get the value of the named Object field from the persistent field.

  `abstract ObjectStreamClass`

  `getObjectStreamClass()`

  Get the ObjectStreamClass that describes the fields in the stream.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GetField

    public GetField()

    Constructor for subclasses to call.
* ## Method Details

  + ### getObjectStreamClass

    public abstract [ObjectStreamClass](ObjectStreamClass.md "class in java.io") getObjectStreamClass()

    Get the ObjectStreamClass that describes the fields in the stream.

    Returns:
    :   the descriptor class that describes the serializable fields
  + ### defaulted

    public abstract boolean defaulted([String](../lang/String.md "class in java.lang") name)
    throws [IOException](IOException.md "class in java.io")

    Return true if the named field is defaulted and has no value in this
    stream.

    Parameters:
    :   `name` - the name of the field

    Returns:
    :   true, if and only if the named field is defaulted

    Throws:
    :   `IOException` - if there are I/O errors while reading from
        the underlying `InputStream`
    :   `IllegalArgumentException` - if `name` does not
        correspond to a serializable field
  + ### get

    public abstract boolean get([String](../lang/String.md "class in java.lang") name,
    boolean val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named boolean field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `boolean` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract byte get([String](../lang/String.md "class in java.lang") name,
    byte val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named byte field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `byte` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract char get([String](../lang/String.md "class in java.lang") name,
    char val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named char field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `char` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract short get([String](../lang/String.md "class in java.lang") name,
    short val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named short field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `short` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract int get([String](../lang/String.md "class in java.lang") name,
    int val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named int field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `int` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract long get([String](../lang/String.md "class in java.lang") name,
    long val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named long field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `long` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract float get([String](../lang/String.md "class in java.lang") name,
    float val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named float field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `float` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract double get([String](../lang/String.md "class in java.lang") name,
    double val)
    throws [IOException](IOException.md "class in java.io")

    Get the value of the named double field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `double` field

    Throws:
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect
  + ### get

    public abstract [Object](../lang/Object.md "class in java.lang") get([String](../lang/String.md "class in java.lang") name,
    [Object](../lang/Object.md "class in java.lang") val)
    throws [IOException](IOException.md "class in java.io"),
    [ClassNotFoundException](../lang/ClassNotFoundException.md "class in java.lang")

    Get the value of the named Object field from the persistent field.

    Parameters:
    :   `name` - the name of the field
    :   `val` - the default value to use if `name` does not
        have a value

    Returns:
    :   the value of the named `Object` field

    Throws:
    :   `ClassNotFoundException` - Class of a serialized object cannot be found.
    :   `IOException` - if there are I/O errors while reading from the
        underlying `InputStream`
    :   `IllegalArgumentException` - if type of `name` is
        not serializable or if the field type is incorrect