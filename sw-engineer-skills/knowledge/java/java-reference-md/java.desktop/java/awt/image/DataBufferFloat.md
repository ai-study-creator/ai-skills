Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class DataBufferFloat

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.DataBuffer](DataBuffer.md "class in java.awt.image")

java.awt.image.DataBufferFloat

---

public final class DataBufferFloat
extends [DataBuffer](DataBuffer.md "class in java.awt.image")

This class extends `DataBuffer` and stores data internally
in `float` form.

Note that some implementations may function more efficiently
if they can maintain control over how the data for an image is
stored.
For example, optimizations such as caching an image in video
memory require that the implementation track all modifications
to that data.
Other implementations may operate better if they can store the
data in locations other than a Java array.
To maintain optimum compatibility with various optimizations
it is best to avoid constructors and methods which expose the
underlying storage as a Java array as noted below in the
documentation for those methods.

Since:
:   1.4

* ## Field Summary

  ### Fields inherited from class java.awt.image.[DataBuffer](DataBuffer.md "class in java.awt.image")

  `banks, dataType, offset, offsets, size, TYPE_BYTE, TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT, TYPE_SHORT, TYPE_UNDEFINED, TYPE_USHORT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DataBufferFloat(float[][] dataArray,
  int size)`

  Constructs a `float`-based `DataBuffer`
  with the specified data arrays.

  `DataBufferFloat(float[][] dataArray,
  int size,
  int[] offsets)`

  Constructs a `float`-based `DataBuffer`
  with the specified data arrays, size, and per-bank offsets.

  `DataBufferFloat(float[] dataArray,
  int size)`

  Constructs a `float`-based `DataBuffer`
  with the specified data array.

  `DataBufferFloat(float[] dataArray,
  int size,
  int offset)`

  Constructs a `float`-based `DataBuffer`
  with the specified data array.

  `DataBufferFloat(int size)`

  Constructs a `float`-based `DataBuffer`
  with a specified size.

  `DataBufferFloat(int size,
  int numBanks)`

  Constructs a `float`-based `DataBuffer`
  with a specified number of banks, all of which are of a
  specified size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `float[][]`

  `getBankData()`

  Returns the data array for all banks.

  `float[]`

  `getData()`

  Returns the default (first) `float` data array.

  `float[]`

  `getData(int bank)`

  Returns the data array for the specified bank.

  `int`

  `getElem(int i)`

  Returns the requested data array element from the first
  (default) bank as an `int`.

  `int`

  `getElem(int bank,
  int i)`

  Returns the requested data array element from the specified
  bank as an `int`.

  `double`

  `getElemDouble(int i)`

  Returns the requested data array element from the first
  (default) bank as a `double`.

  `double`

  `getElemDouble(int bank,
  int i)`

  Returns the requested data array element from the specified
  bank as a `double`.

  `float`

  `getElemFloat(int i)`

  Returns the requested data array element from the first
  (default) bank as a `float`.

  `float`

  `getElemFloat(int bank,
  int i)`

  Returns the requested data array element from the specified
  bank as a `float`.

  `void`

  `setElem(int i,
  int val)`

  Sets the requested data array element in the first (default)
  bank to the given `int`.

  `void`

  `setElem(int bank,
  int i,
  int val)`

  Sets the requested data array element in the specified bank to
  the given `int`.

  `void`

  `setElemDouble(int i,
  double val)`

  Sets the requested data array element in the first (default)
  bank to the given `double`.

  `void`

  `setElemDouble(int bank,
  int i,
  double val)`

  Sets the requested data array element in the specified bank to
  the given `double`.

  `void`

  `setElemFloat(int i,
  float val)`

  Sets the requested data array element in the first (default)
  bank to the given `float`.

  `void`

  `setElemFloat(int bank,
  int i,
  float val)`

  Sets the requested data array element in the specified bank to
  the given `float`.

  ### Methods inherited from class java.awt.image.[DataBuffer](DataBuffer.md "class in java.awt.image")

  `getDataType, getDataTypeSize, getNumBanks, getOffset, getOffsets, getSize`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DataBufferFloat

    public DataBufferFloat(int size)

    Constructs a `float`-based `DataBuffer`
    with a specified size.

    Parameters:
    :   `size` - The number of elements in the DataBuffer.
  + ### DataBufferFloat

    public DataBufferFloat(int size,
    int numBanks)

    Constructs a `float`-based `DataBuffer`
    with a specified number of banks, all of which are of a
    specified size.

    Parameters:
    :   `size` - The number of elements in each bank of the
        `DataBuffer`.
    :   `numBanks` - The number of banks in the
        `DataBuffer`.
  + ### DataBufferFloat

    public DataBufferFloat(float[] dataArray,
    int size)

    Constructs a `float`-based `DataBuffer`
    with the specified data array. Only the first
    `size` elements are available for use by this
    `DataBuffer`. The array must be large enough to
    hold `size` elements.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - An array of `float`s to be used as the
        first and only bank of this `DataBuffer`.
    :   `size` - The number of elements of the array to be used.
  + ### DataBufferFloat

    public DataBufferFloat(float[] dataArray,
    int size,
    int offset)

    Constructs a `float`-based `DataBuffer`
    with the specified data array. Only the elements between
    `offset` and `offset + size - 1` are
    available for use by this `DataBuffer`. The array
    must be large enough to hold `offset + size`
    elements.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - An array of `float`s to be used as the
        first and only bank of this `DataBuffer`.
    :   `size` - The number of elements of the array to be used.
    :   `offset` - The offset of the first element of the array
        that will be used.
  + ### DataBufferFloat

    public DataBufferFloat(float[][] dataArray,
    int size)

    Constructs a `float`-based `DataBuffer`
    with the specified data arrays. Only the first
    `size` elements of each array are available for use
    by this `DataBuffer`. The number of banks will be
    equal to `dataArray.length`.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - An array of arrays of `float`s to be
        used as the banks of this `DataBuffer`.
    :   `size` - The number of elements of each array to be used.
  + ### DataBufferFloat

    public DataBufferFloat(float[][] dataArray,
    int size,
    int[] offsets)

    Constructs a `float`-based `DataBuffer`
    with the specified data arrays, size, and per-bank offsets.
    The number of banks is equal to `dataArray.length`.
    Each array must be at least as large as `size` plus the
    corresponding offset. There must be an entry in the offsets
    array for each data array.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - An array of arrays of `float`s to be
        used as the banks of this `DataBuffer`.
    :   `size` - The number of elements of each array to be used.
    :   `offsets` - An array of integer offsets, one for each bank.
* ## Method Details

  + ### getData

    public float[] getData()

    Returns the default (first) `float` data array.

    Note that calling this method may cause this `DataBuffer`
    object to be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Returns:
    :   the first float data array.
  + ### getData

    public float[] getData(int bank)

    Returns the data array for the specified bank.

    Note that calling this method may cause this `DataBuffer`
    object to be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `bank` - the data array

    Returns:
    :   the data array specified by `bank`.
  + ### getBankData

    public float[][] getBankData()

    Returns the data array for all banks.

    Note that calling this method may cause this `DataBuffer`
    object to be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Returns:
    :   all data arrays for this data buffer.
  + ### getElem

    public int getElem(int i)

    Returns the requested data array element from the first
    (default) bank as an `int`.

    Overrides:
    :   `getElem` in class `DataBuffer`

    Parameters:
    :   `i` - The desired data array element.

    Returns:
    :   The data entry as an `int`.

    See Also:
    :   - [`setElem(int, int)`](#setElem(int,int))
        - [`setElem(int, int, int)`](#setElem(int,int,int))
  + ### getElem

    public int getElem(int bank,
    int i)

    Returns the requested data array element from the specified
    bank as an `int`.

    Specified by:
    :   `getElem` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank number.
    :   `i` - The desired data array element.

    Returns:
    :   The data entry as an `int`.

    See Also:
    :   - [`setElem(int, int)`](#setElem(int,int))
        - [`setElem(int, int, int)`](#setElem(int,int,int))
  + ### setElem

    public void setElem(int i,
    int val)

    Sets the requested data array element in the first (default)
    bank to the given `int`.

    Overrides:
    :   `setElem` in class `DataBuffer`

    Parameters:
    :   `i` - The desired data array element.
    :   `val` - The value to be set.

    See Also:
    :   - [`getElem(int)`](#getElem(int))
        - [`getElem(int, int)`](#getElem(int,int))
  + ### setElem

    public void setElem(int bank,
    int i,
    int val)

    Sets the requested data array element in the specified bank to
    the given `int`.

    Specified by:
    :   `setElem` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank number.
    :   `i` - The desired data array element.
    :   `val` - The value to be set.

    See Also:
    :   - [`getElem(int)`](#getElem(int))
        - [`getElem(int, int)`](#getElem(int,int))
  + ### getElemFloat

    public float getElemFloat(int i)

    Returns the requested data array element from the first
    (default) bank as a `float`.

    Overrides:
    :   `getElemFloat` in class `DataBuffer`

    Parameters:
    :   `i` - The desired data array element.

    Returns:
    :   The data entry as a `float`.

    See Also:
    :   - [`setElemFloat(int, float)`](#setElemFloat(int,float))
        - [`setElemFloat(int, int, float)`](#setElemFloat(int,int,float))
  + ### getElemFloat

    public float getElemFloat(int bank,
    int i)

    Returns the requested data array element from the specified
    bank as a `float`.

    Overrides:
    :   `getElemFloat` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank number.
    :   `i` - The desired data array element.

    Returns:
    :   The data entry as a `float`.

    See Also:
    :   - [`setElemFloat(int, float)`](#setElemFloat(int,float))
        - [`setElemFloat(int, int, float)`](#setElemFloat(int,int,float))
  + ### setElemFloat

    public void setElemFloat(int i,
    float val)

    Sets the requested data array element in the first (default)
    bank to the given `float`.

    Overrides:
    :   `setElemFloat` in class `DataBuffer`

    Parameters:
    :   `i` - The desired data array element.
    :   `val` - The value to be set.

    See Also:
    :   - [`getElemFloat(int)`](#getElemFloat(int))
        - [`getElemFloat(int, int)`](#getElemFloat(int,int))
  + ### setElemFloat

    public void setElemFloat(int bank,
    int i,
    float val)

    Sets the requested data array element in the specified bank to
    the given `float`.

    Overrides:
    :   `setElemFloat` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank number.
    :   `i` - The desired data array element.
    :   `val` - The value to be set.

    See Also:
    :   - [`getElemFloat(int)`](#getElemFloat(int))
        - [`getElemFloat(int, int)`](#getElemFloat(int,int))
  + ### getElemDouble

    public double getElemDouble(int i)

    Returns the requested data array element from the first
    (default) bank as a `double`.

    Overrides:
    :   `getElemDouble` in class `DataBuffer`

    Parameters:
    :   `i` - The desired data array element.

    Returns:
    :   The data entry as a `double`.

    See Also:
    :   - [`setElemDouble(int, double)`](#setElemDouble(int,double))
        - [`setElemDouble(int, int, double)`](#setElemDouble(int,int,double))
  + ### getElemDouble

    public double getElemDouble(int bank,
    int i)

    Returns the requested data array element from the specified
    bank as a `double`.

    Overrides:
    :   `getElemDouble` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank number.
    :   `i` - The desired data array element.

    Returns:
    :   The data entry as a `double`.

    See Also:
    :   - [`setElemDouble(int, double)`](#setElemDouble(int,double))
        - [`setElemDouble(int, int, double)`](#setElemDouble(int,int,double))
  + ### setElemDouble

    public void setElemDouble(int i,
    double val)

    Sets the requested data array element in the first (default)
    bank to the given `double`.

    Overrides:
    :   `setElemDouble` in class `DataBuffer`

    Parameters:
    :   `i` - The desired data array element.
    :   `val` - The value to be set.

    See Also:
    :   - [`getElemDouble(int)`](#getElemDouble(int))
        - [`getElemDouble(int, int)`](#getElemDouble(int,int))
  + ### setElemDouble

    public void setElemDouble(int bank,
    int i,
    double val)

    Sets the requested data array element in the specified bank to
    the given `double`.

    Overrides:
    :   `setElemDouble` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank number.
    :   `i` - The desired data array element.
    :   `val` - The value to be set.

    See Also:
    :   - [`getElemDouble(int)`](#getElemDouble(int))
        - [`getElemDouble(int, int)`](#getElemDouble(int,int))