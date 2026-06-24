Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class ObjectOutputStream.PutField

[java.lang.Object](../lang/Object.md "class in java.lang")

java.io.ObjectOutputStream.PutField

Enclosing class:
:   `ObjectOutputStream`

---

public abstract static class ObjectOutputStream.PutField
extends [Object](../lang/Object.md "class in java.lang")

Provide programmatic access to the persistent fields to be written
to ObjectOutput.

Since:
:   1.2

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PutField()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `put(String name,
  boolean val)`

  Put the value of the named boolean field into the persistent field.

  `abstract void`

  `put(String name,
  byte val)`

  Put the value of the named byte field into the persistent field.

  `abstract void`

  `put(String name,
  char val)`

  Put the value of the named char field into the persistent field.

  `abstract void`

  `put(String name,
  double val)`

  Put the value of the named double field into the persistent field.

  `abstract void`

  `put(String name,
  float val)`

  Put the value of the named float field into the persistent field.

  `abstract void`

  `put(String name,
  int val)`

  Put the value of the named int field into the persistent field.

  `abstract void`

  `put(String name,
  long val)`

  Put the value of the named long field into the persistent field.

  `abstract void`

  `put(String name,
  short val)`

  Put the value of the named short field into the persistent field.

  `abstract void`

  `put(String name,
  Object val)`

  Put the value of the named Object field into the persistent field.

  `abstract void`

  `write(ObjectOutput out)`

  Deprecated.

  This method does not write the values contained by this
  `PutField` object in a proper format, and may
  result in corruption of the serialization stream.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PutField

    public PutField()

    Constructor for subclasses to call.
* ## Method Details

  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    boolean val)

    Put the value of the named boolean field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `boolean`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    byte val)

    Put the value of the named byte field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `byte`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    char val)

    Put the value of the named char field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `char`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    short val)

    Put the value of the named short field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `short`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    int val)

    Put the value of the named int field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `int`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    long val)

    Put the value of the named long field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `long`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    float val)

    Put the value of the named float field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `float`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    double val)

    Put the value of the named double field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not
        `double`
  + ### put

    public abstract void put([String](../lang/String.md "class in java.lang") name,
    [Object](../lang/Object.md "class in java.lang") val)

    Put the value of the named Object field into the persistent field.

    Parameters:
    :   `name` - the name of the serializable field
    :   `val` - the value to assign to the field
        (which may be `null`)

    Throws:
    :   `IllegalArgumentException` - if `name` does not
        match the name of a serializable field for the class whose fields
        are being written, or if the type of the named field is not a
        reference type
  + ### write

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public abstract void write([ObjectOutput](ObjectOutput.md "interface in java.io") out)
    throws [IOException](IOException.md "class in java.io")

    Deprecated.

    This method does not write the values contained by this
    `PutField` object in a proper format, and may
    result in corruption of the serialization stream. The
    correct way to write `PutField` data is by
    calling the [`ObjectOutputStream.writeFields()`](ObjectOutputStream.md#writeFields())
    method.

    Write the data and fields to the specified ObjectOutput stream,
    which must be the same stream that produced this
    `PutField` object.

    Parameters:
    :   `out` - the stream to write the data and fields to

    Throws:
    :   `IOException` - if I/O errors occur while writing to the
        underlying stream
    :   `IllegalArgumentException` - if the specified stream is not
        the same stream that produced this `PutField`
        object