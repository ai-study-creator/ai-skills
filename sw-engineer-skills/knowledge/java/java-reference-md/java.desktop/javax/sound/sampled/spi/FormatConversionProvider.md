Module [java.desktop](../../../../module-summary.md)

Package [javax.sound.sampled.spi](package-summary.md)

# Class FormatConversionProvider

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.spi.FormatConversionProvider

---

public abstract class FormatConversionProvider
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A format conversion provider provides format conversion services from one or
more input formats to one or more output formats. Converters include codecs,
which encode and/or decode audio data, as well as transcoders, etc. Format
converters provide methods for determining what conversions are supported and
for obtaining an audio stream from which converted data can be read.

The source format represents the format of the incoming audio data, which
will be converted.

The target format represents the format of the processed, converted audio
data. This is the format of the data that can be read from the stream
returned by one of the `getAudioInputStream` methods.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FormatConversionProvider()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract AudioInputStream`

  `getAudioInputStream(AudioFormat.Encoding targetEncoding,
  AudioInputStream sourceStream)`

  Obtains an audio input stream with the specified encoding from the given
  audio input stream.

  `abstract AudioInputStream`

  `getAudioInputStream(AudioFormat targetFormat,
  AudioInputStream sourceStream)`

  Obtains an audio input stream with the specified format from the given
  audio input stream.

  `abstract AudioFormat.Encoding[]`

  `getSourceEncodings()`

  Obtains the set of source format encodings from which format conversion
  services are provided by this provider.

  `abstract AudioFormat.Encoding[]`

  `getTargetEncodings()`

  Obtains the set of target format encodings to which format conversion
  services are provided by this provider.

  `abstract AudioFormat.Encoding[]`

  `getTargetEncodings(AudioFormat sourceFormat)`

  Obtains the set of target format encodings supported by the format
  converter given a particular source format.

  `abstract AudioFormat[]`

  `getTargetFormats(AudioFormat.Encoding targetEncoding,
  AudioFormat sourceFormat)`

  Obtains the set of target formats with the encoding specified supported
  by the format converter.

  `boolean`

  `isConversionSupported(AudioFormat.Encoding targetEncoding,
  AudioFormat sourceFormat)`

  Indicates whether the format converter supports conversion to a
  particular encoding from a particular format.

  `boolean`

  `isConversionSupported(AudioFormat targetFormat,
  AudioFormat sourceFormat)`

  Indicates whether the format converter supports conversion to one
  particular format from another.

  `boolean`

  `isSourceEncodingSupported(AudioFormat.Encoding sourceEncoding)`

  Indicates whether the format converter supports conversion from the
  specified source format encoding.

  `boolean`

  `isTargetEncodingSupported(AudioFormat.Encoding targetEncoding)`

  Indicates whether the format converter supports conversion to the
  specified target format encoding.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FormatConversionProvider

    protected FormatConversionProvider()

    Constructor for subclasses to call.
* ## Method Details

  + ### getSourceEncodings

    public abstract [AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled")[] getSourceEncodings()

    Obtains the set of source format encodings from which format conversion
    services are provided by this provider.

    Returns:
    :   array of source format encodings. If for some reason provider
        does not provide any conversion services, an array of length 0 is
        returned.
  + ### getTargetEncodings

    public abstract [AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled")[] getTargetEncodings()

    Obtains the set of target format encodings to which format conversion
    services are provided by this provider.

    Returns:
    :   array of target format encodings. If for some reason provider
        does not provide any conversion services, an array of length 0 is
        returned.
  + ### isSourceEncodingSupported

    public boolean isSourceEncodingSupported([AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled") sourceEncoding)

    Indicates whether the format converter supports conversion from the
    specified source format encoding.

    Parameters:
    :   `sourceEncoding` - the source format encoding for which support is
        queried

    Returns:
    :   `true` if the encoding is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `sourceEncoding` is `null`
  + ### isTargetEncodingSupported

    public boolean isTargetEncodingSupported([AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled") targetEncoding)

    Indicates whether the format converter supports conversion to the
    specified target format encoding.

    Parameters:
    :   `targetEncoding` - the target format encoding for which support is
        queried

    Returns:
    :   `true` if the encoding is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `targetEncoding` is `null`
  + ### getTargetEncodings

    public abstract [AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled")[] getTargetEncodings([AudioFormat](../AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Obtains the set of target format encodings supported by the format
    converter given a particular source format. If no target format encodings
    are supported for this source format, an array of length 0 is returned.

    Parameters:
    :   `sourceFormat` - format of the incoming data

    Returns:
    :   array of supported target format encodings

    Throws:
    :   `NullPointerException` - if `sourceFormat` is `null`
  + ### isConversionSupported

    public boolean isConversionSupported([AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled") targetEncoding,
    [AudioFormat](../AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Indicates whether the format converter supports conversion to a
    particular encoding from a particular format.

    Parameters:
    :   `targetEncoding` - desired encoding of the outgoing data
    :   `sourceFormat` - format of the incoming data

    Returns:
    :   `true` if the conversion is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `targetEncoding` or
        `sourceFormat` are `null`
  + ### getTargetFormats

    public abstract [AudioFormat](../AudioFormat.md "class in javax.sound.sampled")[] getTargetFormats([AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled") targetEncoding,
    [AudioFormat](../AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Obtains the set of target formats with the encoding specified supported
    by the format converter. If no target formats with the specified encoding
    are supported for this source format, an array of length 0 is returned.

    Parameters:
    :   `targetEncoding` - desired encoding of the stream after processing
    :   `sourceFormat` - format of the incoming data

    Returns:
    :   array of supported target formats

    Throws:
    :   `NullPointerException` - if `targetEncoding` or
        `sourceFormat` are `null`
  + ### isConversionSupported

    public boolean isConversionSupported([AudioFormat](../AudioFormat.md "class in javax.sound.sampled") targetFormat,
    [AudioFormat](../AudioFormat.md "class in javax.sound.sampled") sourceFormat)

    Indicates whether the format converter supports conversion to one
    particular format from another.

    Parameters:
    :   `targetFormat` - desired format of outgoing data
    :   `sourceFormat` - format of the incoming data

    Returns:
    :   `true` if the conversion is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `targetFormat` or
        `sourceFormat` are `null`
  + ### getAudioInputStream

    public abstract [AudioInputStream](../AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([AudioFormat.Encoding](../AudioFormat.Encoding.md "class in javax.sound.sampled") targetEncoding,
    [AudioInputStream](../AudioInputStream.md "class in javax.sound.sampled") sourceStream)

    Obtains an audio input stream with the specified encoding from the given
    audio input stream.

    Parameters:
    :   `targetEncoding` - desired encoding of the stream after processing
    :   `sourceStream` - stream from which data to be processed should be
        read

    Returns:
    :   stream from which processed data with the specified target
        encoding may be read

    Throws:
    :   `IllegalArgumentException` - if the format combination supplied is
        not supported
    :   `NullPointerException` - if `targetEncoding` or
        `sourceStream` are `null`
  + ### getAudioInputStream

    public abstract [AudioInputStream](../AudioInputStream.md "class in javax.sound.sampled") getAudioInputStream([AudioFormat](../AudioFormat.md "class in javax.sound.sampled") targetFormat,
    [AudioInputStream](../AudioInputStream.md "class in javax.sound.sampled") sourceStream)

    Obtains an audio input stream with the specified format from the given
    audio input stream.

    Parameters:
    :   `targetFormat` - desired data format of the stream after processing
    :   `sourceStream` - stream from which data to be processed should be
        read

    Returns:
    :   stream from which processed data with the specified format may be
        read

    Throws:
    :   `IllegalArgumentException` - if the format combination supplied is
        not supported
    :   `NullPointerException` - if `targetFormat` or
        `sourceStream` are `null`