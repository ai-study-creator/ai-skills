Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class Inflater

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.zip.Inflater

---

public class Inflater
extends [Object](../../lang/Object.md "class in java.lang")

This class provides support for general purpose decompression using the
popular ZLIB compression library. The ZLIB compression library was
initially developed as part of the PNG graphics standard and is not
protected by patents. It is fully described in the specifications at
the [java.util.zip
package description](package-summary.md#package-description).

This class inflates sequences of ZLIB compressed bytes. The input byte
sequence is provided in either byte array or byte buffer, via one of the
`setInput()` methods. The output byte sequence is written to the
output byte array or byte buffer passed to the `inflate()` methods.

The following code fragment demonstrates a trivial compression
and decompression of a string using `Deflater` and
`Inflater`.
> ```
>  try {
>      // Encode a String into bytes
>      String inputString = "blahblahblah€€";
>      byte[] input = inputString.getBytes("UTF-8");
>
>      // Compress the bytes
>      byte[] output = new byte[100];
>      Deflater compresser = new Deflater();
>      compresser.setInput(input);
>      compresser.finish();
>      int compressedDataLength = compresser.deflate(output);
>
>      // Decompress the bytes
>      Inflater decompresser = new Inflater();
>      decompresser.setInput(output, 0, compressedDataLength);
>      byte[] result = new byte[100];
>      int resultLength = decompresser.inflate(result);
>      decompresser.end();
>
>      // Decode the bytes into a String
>      String outputString = new String(result, 0, resultLength, "UTF-8");
>  } catch (java.io.UnsupportedEncodingException ex) {
>      // handle
>  } catch (java.util.zip.DataFormatException ex) {
>      // handle
>  }
> ```

Since:
:   1.1

See Also:
:   * [`Deflater`](Deflater.md "class in java.util.zip")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Inflater()`

  Creates a new decompressor.

  `Inflater(boolean nowrap)`

  Creates a new decompressor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `end()`

  Closes the decompressor and discards any unprocessed input.

  `boolean`

  `finished()`

  Returns true if the end of the compressed data stream has been
  reached.

  `int`

  `getAdler()`

  Returns the ADLER-32 value of the uncompressed data.

  `long`

  `getBytesRead()`

  Returns the total number of compressed bytes input so far.

  `long`

  `getBytesWritten()`

  Returns the total number of uncompressed bytes output so far.

  `int`

  `getRemaining()`

  Returns the total number of bytes remaining in the input buffer.

  `int`

  `getTotalIn()`

  Returns the total number of compressed bytes input so far.

  `int`

  `getTotalOut()`

  Returns the total number of uncompressed bytes output so far.

  `int`

  `inflate(byte[] output)`

  Uncompresses bytes into specified buffer.

  `int`

  `inflate(byte[] output,
  int off,
  int len)`

  Uncompresses bytes into specified buffer.

  `int`

  `inflate(ByteBuffer output)`

  Uncompresses bytes into specified buffer.

  `boolean`

  `needsDictionary()`

  Returns true if a preset dictionary is needed for decompression.

  `boolean`

  `needsInput()`

  Returns true if no data remains in the input buffer.

  `void`

  `reset()`

  Resets inflater so that a new set of input data can be processed.

  `void`

  `setDictionary(byte[] dictionary)`

  Sets the preset dictionary to the given array of bytes.

  `void`

  `setDictionary(byte[] dictionary,
  int off,
  int len)`

  Sets the preset dictionary to the given array of bytes.

  `void`

  `setDictionary(ByteBuffer dictionary)`

  Sets the preset dictionary to the bytes in the given buffer.

  `void`

  `setInput(byte[] input)`

  Sets input data for decompression.

  `void`

  `setInput(byte[] input,
  int off,
  int len)`

  Sets input data for decompression.

  `void`

  `setInput(ByteBuffer input)`

  Sets input data for decompression.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Inflater

    public Inflater(boolean nowrap)

    Creates a new decompressor. If the parameter 'nowrap' is true then
    the ZLIB header and checksum fields will not be used. This provides
    compatibility with the compression format used by both GZIP and PKZIP.

    Note: When using the 'nowrap' option it is also necessary to provide
    an extra "dummy" byte as input. This is required by the ZLIB native
    library in order to support certain optimizations.

    Parameters:
    :   `nowrap` - if true then support GZIP compatible compression
  + ### Inflater

    public Inflater()

    Creates a new decompressor.
* ## Method Details

  + ### setInput

    public void setInput(byte[] input,
    int off,
    int len)

    Sets input data for decompression.

    One of the `setInput()` methods should be called whenever
    `needsInput()` returns true indicating that more input data
    is required.

    Parameters:
    :   `input` - the input data bytes
    :   `off` - the start offset of the input data
    :   `len` - the length of the input data

    See Also:
    :   - [`needsInput()`](#needsInput())
  + ### setInput

    public void setInput(byte[] input)

    Sets input data for decompression.

    One of the `setInput()` methods should be called whenever
    `needsInput()` returns true indicating that more input data
    is required.

    Parameters:
    :   `input` - the input data bytes

    See Also:
    :   - [`needsInput()`](#needsInput())
  + ### setInput

    public void setInput([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") input)

    Sets input data for decompression.

    One of the `setInput()` methods should be called whenever
    `needsInput()` returns true indicating that more input data
    is required.

    The given buffer's position will be advanced as inflate
    operations are performed, up to the buffer's limit.
    The input buffer may be modified (refilled) between inflate
    operations; doing so is equivalent to creating a new buffer
    and setting it with this method.

    Modifying the input buffer's contents, position, or limit
    concurrently with an inflate operation will result in
    undefined behavior, which may include incorrect operation
    results or operation failure.

    Parameters:
    :   `input` - the input data bytes

    Since:
    :   11

    See Also:
    :   - [`needsInput()`](#needsInput())
  + ### setDictionary

    public void setDictionary(byte[] dictionary,
    int off,
    int len)

    Sets the preset dictionary to the given array of bytes. Should be
    called when inflate() returns 0 and needsDictionary() returns true
    indicating that a preset dictionary is required. The method getAdler()
    can be used to get the Adler-32 value of the dictionary needed.

    Parameters:
    :   `dictionary` - the dictionary data bytes
    :   `off` - the start offset of the data
    :   `len` - the length of the data

    See Also:
    :   - [`needsDictionary()`](#needsDictionary())
        - [`getAdler()`](#getAdler())
  + ### setDictionary

    public void setDictionary(byte[] dictionary)

    Sets the preset dictionary to the given array of bytes. Should be
    called when inflate() returns 0 and needsDictionary() returns true
    indicating that a preset dictionary is required. The method getAdler()
    can be used to get the Adler-32 value of the dictionary needed.

    Parameters:
    :   `dictionary` - the dictionary data bytes

    See Also:
    :   - [`needsDictionary()`](#needsDictionary())
        - [`getAdler()`](#getAdler())
  + ### setDictionary

    public void setDictionary([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") dictionary)

    Sets the preset dictionary to the bytes in the given buffer. Should be
    called when inflate() returns 0 and needsDictionary() returns true
    indicating that a preset dictionary is required. The method getAdler()
    can be used to get the Adler-32 value of the dictionary needed.

    The bytes in given byte buffer will be fully consumed by this method. On
    return, its position will equal its limit.

    Parameters:
    :   `dictionary` - the dictionary data bytes

    Since:
    :   11

    See Also:
    :   - [`needsDictionary()`](#needsDictionary())
        - [`getAdler()`](#getAdler())
  + ### getRemaining

    public int getRemaining()

    Returns the total number of bytes remaining in the input buffer.
    This can be used to find out what bytes still remain in the input
    buffer after decompression has finished.

    Returns:
    :   the total number of bytes remaining in the input buffer
  + ### needsInput

    public boolean needsInput()

    Returns true if no data remains in the input buffer. This can
    be used to determine if one of the `setInput()` methods should be
    called in order to provide more input.

    Returns:
    :   true if no data remains in the input buffer
  + ### needsDictionary

    public boolean needsDictionary()

    Returns true if a preset dictionary is needed for decompression.

    Returns:
    :   true if a preset dictionary is needed for decompression

    See Also:
    :   - [`setDictionary(byte[], int, int)`](#setDictionary(byte%5B%5D,int,int))
  + ### finished

    public boolean finished()

    Returns true if the end of the compressed data stream has been
    reached.

    Returns:
    :   true if the end of the compressed data stream has been
        reached
  + ### inflate

    public int inflate(byte[] output,
    int off,
    int len)
    throws [DataFormatException](DataFormatException.md "class in java.util.zip")

    Uncompresses bytes into specified buffer. Returns actual number
    of bytes uncompressed. A return value of 0 indicates that
    needsInput() or needsDictionary() should be called in order to
    determine if more input data or a preset dictionary is required.
    In the latter case, getAdler() can be used to get the Adler-32
    value of the dictionary required.

    If the [`setInput(ByteBuffer)`](#setInput(java.nio.ByteBuffer)) method was called to provide a buffer
    for input, the input buffer's position will be advanced by the number of bytes
    consumed by this operation, even in the event that a [`DataFormatException`](DataFormatException.md "class in java.util.zip")
    is thrown.

    The [remaining byte count](#getRemaining()) will be reduced by
    the number of consumed input bytes. If the [`setInput(ByteBuffer)`](#setInput(java.nio.ByteBuffer))
    method was called to provide a buffer for input, the input buffer's position
    will be advanced the number of consumed bytes.

    These byte totals, as well as
    the [total bytes read](#getBytesRead())
    and the [total bytes written](#getBytesWritten())
    values, will be updated even in the event that a [`DataFormatException`](DataFormatException.md "class in java.util.zip")
    is thrown to reflect the amount of data consumed and produced before the
    exception occurred.

    Parameters:
    :   `output` - the buffer for the uncompressed data
    :   `off` - the start offset of the data
    :   `len` - the maximum number of uncompressed bytes

    Returns:
    :   the actual number of uncompressed bytes

    Throws:
    :   `DataFormatException` - if the compressed data format is invalid

    See Also:
    :   - [`needsInput()`](#needsInput())
        - [`needsDictionary()`](#needsDictionary())
  + ### inflate

    public int inflate(byte[] output)
    throws [DataFormatException](DataFormatException.md "class in java.util.zip")

    Uncompresses bytes into specified buffer. Returns actual number
    of bytes uncompressed. A return value of 0 indicates that
    needsInput() or needsDictionary() should be called in order to
    determine if more input data or a preset dictionary is required.
    In the latter case, getAdler() can be used to get the Adler-32
    value of the dictionary required.

    The [remaining byte count](#getRemaining()) will be reduced by
    the number of consumed input bytes. If the [`setInput(ByteBuffer)`](#setInput(java.nio.ByteBuffer))
    method was called to provide a buffer for input, the input buffer's position
    will be advanced the number of consumed bytes.

    These byte totals, as well as
    the [total bytes read](#getBytesRead())
    and the [total bytes written](#getBytesWritten())
    values, will be updated even in the event that a [`DataFormatException`](DataFormatException.md "class in java.util.zip")
    is thrown to reflect the amount of data consumed and produced before the
    exception occurred.

    Parameters:
    :   `output` - the buffer for the uncompressed data

    Returns:
    :   the actual number of uncompressed bytes

    Throws:
    :   `DataFormatException` - if the compressed data format is invalid

    See Also:
    :   - [`needsInput()`](#needsInput())
        - [`needsDictionary()`](#needsDictionary())
  + ### inflate

    public int inflate([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") output)
    throws [DataFormatException](DataFormatException.md "class in java.util.zip")

    Uncompresses bytes into specified buffer. Returns actual number
    of bytes uncompressed. A return value of 0 indicates that
    needsInput() or needsDictionary() should be called in order to
    determine if more input data or a preset dictionary is required.
    In the latter case, getAdler() can be used to get the Adler-32
    value of the dictionary required.

    On success, the position of the given `output` byte buffer will be
    advanced by as many bytes as were produced by the operation, which is equal
    to the number returned by this method. Note that the position of the
    `output` buffer will be advanced even in the event that a
    [`DataFormatException`](DataFormatException.md "class in java.util.zip") is thrown.

    The [remaining byte count](#getRemaining()) will be reduced by
    the number of consumed input bytes. If the [`setInput(ByteBuffer)`](#setInput(java.nio.ByteBuffer))
    method was called to provide a buffer for input, the input buffer's position
    will be advanced the number of consumed bytes.

    These byte totals, as well as
    the [total bytes read](#getBytesRead())
    and the [total bytes written](#getBytesWritten())
    values, will be updated even in the event that a [`DataFormatException`](DataFormatException.md "class in java.util.zip")
    is thrown to reflect the amount of data consumed and produced before the
    exception occurred.

    Parameters:
    :   `output` - the buffer for the uncompressed data

    Returns:
    :   the actual number of uncompressed bytes

    Throws:
    :   `DataFormatException` - if the compressed data format is invalid
    :   `ReadOnlyBufferException` - if the given output buffer is read-only

    Since:
    :   11

    See Also:
    :   - [`needsInput()`](#needsInput())
        - [`needsDictionary()`](#needsDictionary())
  + ### getAdler

    public int getAdler()

    Returns the ADLER-32 value of the uncompressed data.

    Returns:
    :   the ADLER-32 value of the uncompressed data
  + ### getTotalIn

    public int getTotalIn()

    Returns the total number of compressed bytes input so far.

    Since the number of bytes may be greater than
    Integer.MAX\_VALUE, the [`getBytesRead()`](#getBytesRead()) method is now
    the preferred means of obtaining this information.

    Returns:
    :   the total number of compressed bytes input so far
  + ### getBytesRead

    public long getBytesRead()

    Returns the total number of compressed bytes input so far.

    Returns:
    :   the total (non-negative) number of compressed bytes input so far

    Since:
    :   1.5
  + ### getTotalOut

    public int getTotalOut()

    Returns the total number of uncompressed bytes output so far.

    Since the number of bytes may be greater than
    Integer.MAX\_VALUE, the [`getBytesWritten()`](#getBytesWritten()) method is now
    the preferred means of obtaining this information.

    Returns:
    :   the total number of uncompressed bytes output so far
  + ### getBytesWritten

    public long getBytesWritten()

    Returns the total number of uncompressed bytes output so far.

    Returns:
    :   the total (non-negative) number of uncompressed bytes output so far

    Since:
    :   1.5
  + ### reset

    public void reset()

    Resets inflater so that a new set of input data can be processed.
  + ### end

    public void end()

    Closes the decompressor and discards any unprocessed input.
    This method should be called when the decompressor is no longer
    being used. Once this method is called, the behavior of the
    Inflater object is undefined.