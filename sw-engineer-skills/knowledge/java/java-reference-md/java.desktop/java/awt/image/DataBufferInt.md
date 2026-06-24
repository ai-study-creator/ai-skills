Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class DataBufferInt

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.DataBuffer](DataBuffer.md "class in java.awt.image")

java.awt.image.DataBufferInt

---

public final class DataBufferInt
extends [DataBuffer](DataBuffer.md "class in java.awt.image")

This class extends `DataBuffer` and stores data internally
as integers.

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

* ## Field Summary

  ### Fields inherited from class java.awt.image.[DataBuffer](DataBuffer.md "class in java.awt.image")

  `banks, dataType, offset, offsets, size, TYPE_BYTE, TYPE_DOUBLE, TYPE_FLOAT, TYPE_INT, TYPE_SHORT, TYPE_UNDEFINED, TYPE_USHORT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DataBufferInt(int size)`

  Constructs an integer-based `DataBuffer` with a single bank
  and the specified size.

  `DataBufferInt(int[][] dataArray,
  int size)`

  Constructs an integer-based `DataBuffer` with the specified arrays.

  `DataBufferInt(int[][] dataArray,
  int size,
  int[] offsets)`

  Constructs an integer-based `DataBuffer` with the specified arrays, size,
  and offsets.

  `DataBufferInt(int[] dataArray,
  int size)`

  Constructs an integer-based `DataBuffer` with a single bank using the
  specified array.

  `DataBufferInt(int[] dataArray,
  int size,
  int offset)`

  Constructs an integer-based `DataBuffer` with a single bank using the
  specified array, size, and offset.

  `DataBufferInt(int size,
  int numBanks)`

  Constructs an integer-based `DataBuffer` with the specified number of
  banks, all of which are the specified size.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int[][]`

  `getBankData()`

  Returns the data arrays for all banks.

  `int[]`

  `getData()`

  Returns the default (first) int data array in `DataBuffer`.

  `int[]`

  `getData(int bank)`

  Returns the data array for the specified bank.

  `int`

  `getElem(int i)`

  Returns the requested data array element from the first (default) bank.

  `int`

  `getElem(int bank,
  int i)`

  Returns the requested data array element from the specified bank.

  `void`

  `setElem(int i,
  int val)`

  Sets the requested data array element in the first (default) bank
  to the specified value.

  `void`

  `setElem(int bank,
  int i,
  int val)`

  Sets the requested data array element in the specified bank
  to the integer value `i`.

  ### Methods inherited from class java.awt.image.[DataBuffer](DataBuffer.md "class in java.awt.image")

  `getDataType, getDataTypeSize, getElemDouble, getElemDouble, getElemFloat, getElemFloat, getNumBanks, getOffset, getOffsets, getSize, setElemDouble, setElemDouble, setElemFloat, setElemFloat`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DataBufferInt

    public DataBufferInt(int size)

    Constructs an integer-based `DataBuffer` with a single bank
    and the specified size.

    Parameters:
    :   `size` - The size of the `DataBuffer`.
  + ### DataBufferInt

    public DataBufferInt(int size,
    int numBanks)

    Constructs an integer-based `DataBuffer` with the specified number of
    banks, all of which are the specified size.

    Parameters:
    :   `size` - The size of the banks in the `DataBuffer`.
    :   `numBanks` - The number of banks in the `DataBuffer`.
  + ### DataBufferInt

    public DataBufferInt(int[] dataArray,
    int size)

    Constructs an integer-based `DataBuffer` with a single bank using the
    specified array.
    Only the first `size` elements should be used by accessors of
    this `DataBuffer`. `dataArray` must be large enough to
    hold `size` elements.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - The integer array for the `DataBuffer`.
    :   `size` - The size of the `DataBuffer` bank.
  + ### DataBufferInt

    public DataBufferInt(int[] dataArray,
    int size,
    int offset)

    Constructs an integer-based `DataBuffer` with a single bank using the
    specified array, size, and offset. `dataArray` must have at least
    `offset` + `size` elements. Only elements `offset`
    through `offset` + `size` - 1
    should be used by accessors of this `DataBuffer`.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - The integer array for the `DataBuffer`.
    :   `size` - The size of the `DataBuffer` bank.
    :   `offset` - The offset into the `dataArray`.
  + ### DataBufferInt

    public DataBufferInt(int[][] dataArray,
    int size)

    Constructs an integer-based `DataBuffer` with the specified arrays.
    The number of banks will be equal to `dataArray.length`.
    Only the first `size` elements of each array should be used by
    accessors of this `DataBuffer`.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - The integer arrays for the `DataBuffer`.
    :   `size` - The size of the banks in the `DataBuffer`.
  + ### DataBufferInt

    public DataBufferInt(int[][] dataArray,
    int size,
    int[] offsets)

    Constructs an integer-based `DataBuffer` with the specified arrays, size,
    and offsets.
    The number of banks is equal to `dataArray.length`. Each array must
    be at least as large as `size` + the corresponding offset. There must
    be an entry in the offset array for each `dataArray` entry. For each
    bank, only elements `offset` through
    `offset` + `size` - 1 should be
    used by accessors of this `DataBuffer`.

    Note that `DataBuffer` objects created by this constructor
    may be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `dataArray` - The integer arrays for the `DataBuffer`.
    :   `size` - The size of the banks in the `DataBuffer`.
    :   `offsets` - The offsets into each array.
* ## Method Details

  + ### getData

    public int[] getData()

    Returns the default (first) int data array in `DataBuffer`.

    Note that calling this method may cause this `DataBuffer`
    object to be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Returns:
    :   The first integer data array.
  + ### getData

    public int[] getData(int bank)

    Returns the data array for the specified bank.

    Note that calling this method may cause this `DataBuffer`
    object to be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Parameters:
    :   `bank` - The bank whose data array you want to get.

    Returns:
    :   The data array for the specified bank.
  + ### getBankData

    public int[][] getBankData()

    Returns the data arrays for all banks.

    Note that calling this method may cause this `DataBuffer`
    object to be incompatible with [performance
    optimizations](#optimizations) used by some implementations (such as caching
    an associated image in video memory).

    Returns:
    :   All of the data arrays.
  + ### getElem

    public int getElem(int i)

    Returns the requested data array element from the first (default) bank.

    Overrides:
    :   `getElem` in class `DataBuffer`

    Parameters:
    :   `i` - The data array element you want to get.

    Returns:
    :   The requested data array element as an integer.

    See Also:
    :   - [`setElem(int, int)`](#setElem(int,int))
        - [`setElem(int, int, int)`](#setElem(int,int,int))
  + ### getElem

    public int getElem(int bank,
    int i)

    Returns the requested data array element from the specified bank.

    Specified by:
    :   `getElem` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank from which you want to get a data array element.
    :   `i` - The data array element you want to get.

    Returns:
    :   The requested data array element as an integer.

    See Also:
    :   - [`setElem(int, int)`](#setElem(int,int))
        - [`setElem(int, int, int)`](#setElem(int,int,int))
  + ### setElem

    public void setElem(int i,
    int val)

    Sets the requested data array element in the first (default) bank
    to the specified value.

    Overrides:
    :   `setElem` in class `DataBuffer`

    Parameters:
    :   `i` - The data array element you want to set.
    :   `val` - The integer value to which you want to set the data array element.

    See Also:
    :   - [`getElem(int)`](#getElem(int))
        - [`getElem(int, int)`](#getElem(int,int))
  + ### setElem

    public void setElem(int bank,
    int i,
    int val)

    Sets the requested data array element in the specified bank
    to the integer value `i`.

    Specified by:
    :   `setElem` in class `DataBuffer`

    Parameters:
    :   `bank` - The bank in which you want to set the data array element.
    :   `i` - The data array element you want to set.
    :   `val` - The integer value to which you want to set the specified data array element.

    See Also:
    :   - [`getElem(int)`](#getElem(int))
        - [`getElem(int, int)`](#getElem(int,int))