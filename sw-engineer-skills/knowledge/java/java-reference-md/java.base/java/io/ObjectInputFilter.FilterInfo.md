Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface ObjectInputFilter.FilterInfo

Enclosing interface:
:   `ObjectInputFilter`

---

public static interface ObjectInputFilter.FilterInfo

FilterInfo provides access to information about the current object
being deserialized and the status of the [`ObjectInputStream`](ObjectInputStream.md "class in java.io").

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `arrayLength()`

  The number of array elements when deserializing an array of the class.

  `long`

  `depth()`

  The current depth.

  `long`

  `references()`

  The current number of object references.

  `Class<?>`

  `serialClass()`

  The class of an object being deserialized.

  `long`

  `streamBytes()`

  The current number of bytes consumed.

* ## Method Details

  + ### serialClass

    [Class](../lang/Class.md "class in java.lang")<?> serialClass()

    The class of an object being deserialized.
    For arrays, it is the array type.
    For example, the array class name of a 2 dimensional array of strings is
    "`[[Ljava.lang.String;`".
    To check the array's element type, iteratively use
    [`Class.getComponentType`](../lang/Class.md#getComponentType()) while the result
    is an array and then check the class.
    The `serialClass is null` in the case where a new object is not being
    created and to give the filter a chance to check the depth, number of
    references to existing objects, and the stream size.

    Returns:
    :   class of an object being deserialized; may be null
  + ### arrayLength

    long arrayLength()

    The number of array elements when deserializing an array of the class.

    Returns:
    :   the non-negative number of array elements when deserializing
        an array of the class, otherwise -1
  + ### depth

    long depth()

    The current depth.
    The depth starts at `1` and increases for each nested object and
    decrements when each nested object returns.

    Returns:
    :   the current depth
  + ### references

    long references()

    The current number of object references.

    Returns:
    :   the non-negative current number of object references
  + ### streamBytes

    long streamBytes()

    The current number of bytes consumed.

    Returns:
    :   the non-negative current number of bytes consumed