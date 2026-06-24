Module [java.desktop](../../../../module-summary.md)

Package [javax.imageio.plugins.jpeg](package-summary.md)

# Class JPEGHuffmanTable

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.plugins.jpeg.JPEGHuffmanTable

---

public class JPEGHuffmanTable
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A class encapsulating a single JPEG Huffman table.
Fields are provided for the "standard" tables taken
from Annex K of the JPEG specification.
These are the tables used as defaults.

For more information about the operation of the standard JPEG plug-in,
see the [JPEG
metadata format specification and usage notes](../../metadata/doc-files/jpeg_metadata.md)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final JPEGHuffmanTable`

  `StdACChrominance`

  The standard AC chrominance Huffman table.

  `static final JPEGHuffmanTable`

  `StdACLuminance`

  The standard AC luminance Huffman table.

  `static final JPEGHuffmanTable`

  `StdDCChrominance`

  The standard DC chrominance Huffman table.

  `static final JPEGHuffmanTable`

  `StdDCLuminance`

  The standard DC luminance Huffman table.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JPEGHuffmanTable(short[] lengths,
  short[] values)`

  Creates a Huffman table and initializes it.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `short[]`

  `getLengths()`

  Returns an array of `short`s containing the number of values
  for each length in the Huffman table.

  `short[]`

  `getValues()`

  Returns an array of `short`s containing the values arranged
  by increasing length of their corresponding codes.

  `String`

  `toString()`

  Returns a `String` representing this Huffman table.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### StdDCLuminance

    public static final [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg") StdDCLuminance

    The standard DC luminance Huffman table.
  + ### StdDCChrominance

    public static final [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg") StdDCChrominance

    The standard DC chrominance Huffman table.
  + ### StdACLuminance

    public static final [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg") StdACLuminance

    The standard AC luminance Huffman table.
  + ### StdACChrominance

    public static final [JPEGHuffmanTable](JPEGHuffmanTable.md "class in javax.imageio.plugins.jpeg") StdACChrominance

    The standard AC chrominance Huffman table.
* ## Constructor Details

  + ### JPEGHuffmanTable

    public JPEGHuffmanTable(short[] lengths,
    short[] values)

    Creates a Huffman table and initializes it. The input arrays are copied.
    The arrays must describe a possible Huffman table.
    For example, 3 codes cannot be expressed with a single bit.

    Parameters:
    :   `lengths` - an array of `short`s where `lengths[k]`
        is equal to the number of values with corresponding codes of
        length `k + 1` bits.
    :   `values` - an array of shorts containing the values in
        order of increasing code length.

    Throws:
    :   `IllegalArgumentException` - if `lengths` or
        `values` are null, the length of `lengths` is
        greater than 16, the length of `values` is greater than 256,
        if any value in `lengths` or `values` is less
        than zero, or if the arrays do not describe a valid Huffman table.
* ## Method Details

  + ### getLengths

    public short[] getLengths()

    Returns an array of `short`s containing the number of values
    for each length in the Huffman table. The returned array is a copy.

    Returns:
    :   a `short` array where `array[k-1]`
        is equal to the number of values in the table of length `k`.

    See Also:
    :   - [`getValues()`](#getValues())
  + ### getValues

    public short[] getValues()

    Returns an array of `short`s containing the values arranged
    by increasing length of their corresponding codes.
    The interpretation of the array is dependent on the values returned
    from `getLengths`. The returned array is a copy.

    Returns:
    :   a `short` array of values.

    See Also:
    :   - [`getLengths()`](#getLengths())
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a `String` representing this Huffman table.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representing this Huffman table.