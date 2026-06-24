Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Class ByteLookupTable

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.image.LookupTable](LookupTable.md "class in java.awt.image")

java.awt.image.ByteLookupTable

---

public class ByteLookupTable
extends [LookupTable](LookupTable.md "class in java.awt.image")

This class defines a lookup table object. The output of a
lookup operation using an object of this class is interpreted
as an unsigned byte quantity. The lookup table contains byte
data arrays for one or more bands (or components) of an image,
and it contains an offset which will be subtracted from the
input values before indexing the arrays. This allows an array
smaller than the native data size to be provided for a
constrained input. If there is only one array in the lookup
table, it will be applied to all bands.

See Also:
:   * [`ShortLookupTable`](ShortLookupTable.md "class in java.awt.image")
    * [`LookupOp`](LookupOp.md "class in java.awt.image")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ByteLookupTable(int offset,
  byte[] data)`

  Constructs a ByteLookupTable object from an array
  of bytes representing a lookup table to be applied to all
  bands.

  `ByteLookupTable(int offset,
  byte[][] data)`

  Constructs a ByteLookupTable object from an array of byte
  arrays representing a lookup table for each
  band.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final byte[][]`

  `getTable()`

  Returns the lookup table data by reference.

  `byte[]`

  `lookupPixel(byte[] src,
  byte[] dst)`

  Returns an array of samples of a pixel, translated with the lookup
  table.

  `int[]`

  `lookupPixel(int[] src,
  int[] dst)`

  Returns an array of samples of a pixel, translated with the lookup
  table.

  ### Methods inherited from class java.awt.image.[LookupTable](LookupTable.md "class in java.awt.image")

  `getNumComponents, getOffset`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ByteLookupTable

    public ByteLookupTable(int offset,
    byte[][] data)

    Constructs a ByteLookupTable object from an array of byte
    arrays representing a lookup table for each
    band. The offset will be subtracted from input
    values before indexing into the arrays. The number of
    bands is the length of the data argument. The
    data array for each band is stored as a reference.

    Parameters:
    :   `offset` - the value subtracted from the input values
        before indexing into the arrays
    :   `data` - an array of byte arrays representing a lookup
        table for each band

    Throws:
    :   `IllegalArgumentException` - if `offset` is
        is less than 0 or if the length of `data`
        is less than 1
  + ### ByteLookupTable

    public ByteLookupTable(int offset,
    byte[] data)

    Constructs a ByteLookupTable object from an array
    of bytes representing a lookup table to be applied to all
    bands. The offset will be subtracted from input
    values before indexing into the array.
    The data array is stored as a reference.

    Parameters:
    :   `offset` - the value subtracted from the input values
        before indexing into the array
    :   `data` - an array of bytes

    Throws:
    :   `IllegalArgumentException` - if `offset` is
        is less than 0 or if the length of `data`
        is less than 1
* ## Method Details

  + ### getTable

    public final byte[][] getTable()

    Returns the lookup table data by reference. If this ByteLookupTable
    was constructed using a single byte array, the length of the returned
    array is one.

    Returns:
    :   the data array of this `ByteLookupTable`.
  + ### lookupPixel

    public int[] lookupPixel(int[] src,
    int[] dst)

    Returns an array of samples of a pixel, translated with the lookup
    table. The source and destination array can be the same array.
    Array `dst` is returned.

    Specified by:
    :   `lookupPixel` in class `LookupTable`

    Parameters:
    :   `src` - the source array.
    :   `dst` - the destination array. This array must be at least as
        long as `src`. If `dst` is
        `null`, a new array will be allocated having the
        same length as `src`.

    Returns:
    :   the array `dst`, an `int` array of
        samples.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if `src` is
        longer than `dst` or if for any element
        `i` of `src`,
        `src[i]-offset` is either less than zero or
        greater than or equal to the length of the lookup table
        for any band.
  + ### lookupPixel

    public byte[] lookupPixel(byte[] src,
    byte[] dst)

    Returns an array of samples of a pixel, translated with the lookup
    table. The source and destination array can be the same array.
    Array `dst` is returned.

    Parameters:
    :   `src` - the source array.
    :   `dst` - the destination array. This array must be at least as
        long as `src`. If `dst` is
        `null`, a new array will be allocated having the
        same length as `src`.

    Returns:
    :   the array `dst`, an `int` array of
        samples.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if `src` is
        longer than `dst` or if for any element
        `i` of `src`,
        `(src[i]&0xff)-offset` is either less than
        zero or greater than or equal to the length of the
        lookup table for any band.