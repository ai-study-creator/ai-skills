Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class Array

[java.lang.Object](../Object.md "class in java.lang")

java.lang.reflect.Array

---

public final class Array
extends [Object](../Object.md "class in java.lang")

The `Array` class provides static methods to dynamically create and
access Java arrays.

`Array` permits widening conversions to occur during a get or set
operation, but throws an `IllegalArgumentException` if a narrowing
conversion would occur.

Since:
:   1.1

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Object`

  `get(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object.

  `static boolean`

  `getBoolean(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as a `boolean`.

  `static byte`

  `getByte(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as a `byte`.

  `static char`

  `getChar(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as a `char`.

  `static double`

  `getDouble(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as a `double`.

  `static float`

  `getFloat(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as a `float`.

  `static int`

  `getInt(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as an `int`.

  `static int`

  `getLength(Object array)`

  Returns the length of the specified array object, as an `int`.

  `static long`

  `getLong(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as a `long`.

  `static short`

  `getShort(Object array,
  int index)`

  Returns the value of the indexed component in the specified
  array object, as a `short`.

  `static Object`

  `newInstance(Class<?> componentType,
  int length)`

  Creates a new array with the specified component type and
  length.

  `static Object`

  `newInstance(Class<?> componentType,
  int... dimensions)`

  Creates a new array
  with the specified component type and dimensions.

  `static void`

  `set(Object array,
  int index,
  Object value)`

  Sets the value of the indexed component of the specified array
  object to the specified new value.

  `static void`

  `setBoolean(Object array,
  int index,
  boolean z)`

  Sets the value of the indexed component of the specified array
  object to the specified `boolean` value.

  `static void`

  `setByte(Object array,
  int index,
  byte b)`

  Sets the value of the indexed component of the specified array
  object to the specified `byte` value.

  `static void`

  `setChar(Object array,
  int index,
  char c)`

  Sets the value of the indexed component of the specified array
  object to the specified `char` value.

  `static void`

  `setDouble(Object array,
  int index,
  double d)`

  Sets the value of the indexed component of the specified array
  object to the specified `double` value.

  `static void`

  `setFloat(Object array,
  int index,
  float f)`

  Sets the value of the indexed component of the specified array
  object to the specified `float` value.

  `static void`

  `setInt(Object array,
  int index,
  int i)`

  Sets the value of the indexed component of the specified array
  object to the specified `int` value.

  `static void`

  `setLong(Object array,
  int index,
  long l)`

  Sets the value of the indexed component of the specified array
  object to the specified `long` value.

  `static void`

  `setShort(Object array,
  int index,
  short s)`

  Sets the value of the indexed component of the specified array
  object to the specified `short` value.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### newInstance

    public static [Object](../Object.md "class in java.lang") newInstance([Class](../Class.md "class in java.lang")<?> componentType,
    int length)
    throws [NegativeArraySizeException](../NegativeArraySizeException.md "class in java.lang")

    Creates a new array with the specified component type and
    length.
    Invoking this method is equivalent to creating an array
    as follows:
    > ```
    >  int[] x = {length};
    >  Array.newInstance(componentType, x);
    > ```

    The number of dimensions of the new array must not
    exceed 255.

    Parameters:
    :   `componentType` - the `Class` object representing the
        component type of the new array
    :   `length` - the length of the new array

    Returns:
    :   the new array

    Throws:
    :   `NullPointerException` - if the specified
        `componentType` parameter is null
    :   `IllegalArgumentException` - if componentType is [`Void.TYPE`](../Void.md#TYPE) or if the number of dimensions of the requested array
        instance exceed 255.
    :   `NegativeArraySizeException` - if the specified `length`
        is negative
  + ### newInstance

    public static [Object](../Object.md "class in java.lang") newInstance([Class](../Class.md "class in java.lang")<?> componentType,
    int... dimensions)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [NegativeArraySizeException](../NegativeArraySizeException.md "class in java.lang")

    Creates a new array
    with the specified component type and dimensions.
    If `componentType`
    represents a non-array class or interface, the new array
    has `dimensions.length` dimensions and
    `componentType` as its component type. If
    `componentType` represents an array class, the
    number of dimensions of the new array is equal to the sum
    of `dimensions.length` and the number of
    dimensions of `componentType`. In this case, the
    component type of the new array is the component type of
    `componentType`.

    The number of dimensions of the new array must not
    exceed 255.

    Parameters:
    :   `componentType` - the `Class` object representing the component
        type of the new array
    :   `dimensions` - an array of `int` representing the dimensions of
        the new array

    Returns:
    :   the new array

    Throws:
    :   `NullPointerException` - if the specified
        `componentType` argument is null
    :   `IllegalArgumentException` - if the specified `dimensions`
        argument is a zero-dimensional array, if componentType is [`Void.TYPE`](../Void.md#TYPE), or if the number of dimensions of the requested array
        instance exceed 255.
    :   `NegativeArraySizeException` - if any of the components in
        the specified `dimensions` argument is negative.
  + ### getLength

    public static int getLength([Object](../Object.md "class in java.lang") array)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang")

    Returns the length of the specified array object, as an `int`.

    Parameters:
    :   `array` - the array

    Returns:
    :   the length of the array

    Throws:
    :   `IllegalArgumentException` - if the object argument is not
        an array
  + ### get

    public static [Object](../Object.md "class in java.lang") get([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object. The value is automatically wrapped in an object
    if it has a primitive type.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the (possibly wrapped) value of the indexed component in
        the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array
  + ### getBoolean

    public static boolean getBoolean([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as a `boolean`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### getByte

    public static byte getByte([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as a `byte`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### getChar

    public static char getChar([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as a `char`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### getShort

    public static short getShort([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as a `short`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### getInt

    public static int getInt([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as an `int`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### getLong

    public static long getLong([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as a `long`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### getFloat

    public static float getFloat([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as a `float`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### getDouble

    public static double getDouble([Object](../Object.md "class in java.lang") array,
    int index)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Returns the value of the indexed component in the specified
    array object, as a `double`.

    Parameters:
    :   `array` - the array
    :   `index` - the index

    Returns:
    :   the value of the indexed component in the specified array

    Throws:
    :   `NullPointerException` - If the specified object is null
    :   `IllegalArgumentException` - If the specified object is not
        an array, or if the indexed element cannot be converted to the
        return type by an identity or widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to the
        length of the specified array

    See Also:
    :   - [`get(java.lang.Object, int)`](#get(java.lang.Object,int))
  + ### set

    public static void set([Object](../Object.md "class in java.lang") array,
    int index,
    [Object](../Object.md "class in java.lang") value)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified new value. The new value is first
    automatically unwrapped if the array has a primitive component
    type.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `value` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the array component type is primitive and
        an unwrapping conversion fails
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array
  + ### setBoolean

    public static void setBoolean([Object](../Object.md "class in java.lang") array,
    int index,
    boolean z)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `boolean` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `z` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))
  + ### setByte

    public static void setByte([Object](../Object.md "class in java.lang") array,
    int index,
    byte b)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `byte` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `b` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))
  + ### setChar

    public static void setChar([Object](../Object.md "class in java.lang") array,
    int index,
    char c)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `char` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `c` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))
  + ### setShort

    public static void setShort([Object](../Object.md "class in java.lang") array,
    int index,
    short s)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `short` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `s` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))
  + ### setInt

    public static void setInt([Object](../Object.md "class in java.lang") array,
    int index,
    int i)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `int` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `i` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))
  + ### setLong

    public static void setLong([Object](../Object.md "class in java.lang") array,
    int index,
    long l)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `long` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `l` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))
  + ### setFloat

    public static void setFloat([Object](../Object.md "class in java.lang") array,
    int index,
    float f)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `float` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `f` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))
  + ### setDouble

    public static void setDouble([Object](../Object.md "class in java.lang") array,
    int index,
    double d)
    throws [IllegalArgumentException](../IllegalArgumentException.md "class in java.lang"),
    [ArrayIndexOutOfBoundsException](../ArrayIndexOutOfBoundsException.md "class in java.lang")

    Sets the value of the indexed component of the specified array
    object to the specified `double` value.

    Parameters:
    :   `array` - the array
    :   `index` - the index into the array
    :   `d` - the new value of the indexed component

    Throws:
    :   `NullPointerException` - If the specified object argument
        is null
    :   `IllegalArgumentException` - If the specified object argument
        is not an array, or if the specified value cannot be converted
        to the underlying array's component type by an identity or a
        primitive widening conversion
    :   `ArrayIndexOutOfBoundsException` - If the specified `index`
        argument is negative, or if it is greater than or equal to
        the length of the specified array

    See Also:
    :   - [`set(java.lang.Object, int, java.lang.Object)`](#set(java.lang.Object,int,java.lang.Object))