Module [java.base](../../../module-summary.md)

# Package java.nio.charset

---

package java.nio.charset

Defines charsets, decoders, and encoders, for translating between
bytes and Unicode characters.

Summary of charsets, decoders, and encoders in this package

| Class name | Description |
| --- | --- |
| [`Charset`](Charset.md "class in java.nio.charset") | A named mapping between characters and bytes |
| [`CharsetDecoder`](CharsetDecoder.md "class in java.nio.charset") | Decodes bytes into characters |
| [`CharsetEncoder`](CharsetEncoder.md "class in java.nio.charset") | Encodes characters into bytes |
| [`CoderResult`](CoderResult.md "class in java.nio.charset") | Describes coder results |
| [`CodingErrorAction`](CodingErrorAction.md "class in java.nio.charset") | Describes actions to take when coding errors are detected |

A *charset* is named mapping between sequences of
sixteen-bit Unicode characters and sequences of bytes, in the sense
defined in [*RFC 2278*](http://www.ietf.org/rfc/rfc2278.txt).
A *decoder* is an engine which transforms bytes in a specific
charset into characters, and an *encoder* is an engine which
transforms characters into bytes. Encoders and decoders operate on
byte and character buffers. They are collectively referred to as
*coders*.

The [`Charset`](Charset.md "class in java.nio.charset") class defines methods for
creating coders for a given charset and for retrieving the various
names associated with a charset. It also defines static methods
for testing whether a particular charset is supported, for locating
charset instances by name, and for constructing a map that contains
every charset for which support is available in the current Java
virtual machine.

Most users will not use these classes directly; instead they
will use the existing charset-related constructors and methods in
the [`String`](../../lang/String.md "class in java.lang") class, together with the existing
[`InputStreamReader`](../../io/InputStreamReader.md "class in java.io") and [`OutputStreamWriter`](../../io/OutputStreamWriter.md "class in java.io") classes, all of whose implementations
have been reworked to make use of the charset facilities defined in
this package. A small number of changes have been made to the
[`InputStreamReader`](../../io/InputStreamReader.md "class in java.io") and [`OutputStreamWriter`](../../io/OutputStreamWriter.md "class in java.io") classes in order to allow explicit
charset objects to be specified in the construction of instances of
those classes.

Support for new charsets can be made available via the
interface defined in the [`CharsetProvider`](spi/CharsetProvider.md "class in java.nio.charset.spi") class in the [`java.nio.charset.spi`](spi/package-summary.md) package.

Unless otherwise noted, passing a `null` argument to a
constructor or method in any class or interface in this package
will cause a [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.4

External Specifications
:   * [RFC 2278: IANA Charset Registration Procedures](https://www.rfc-editor.org/info/rfc2278)

* Related Packages

  Package

  Description

  [java.nio](../package-summary.md)

  Defines buffers, which are containers for data, and provides an
  overview of the other NIO packages.

  [java.nio.charset.spi](spi/package-summary.md)

  Service-provider classes for the [`java.nio.charset`](package-summary.md) package.

  [java.nio.channels](../channels/package-summary.md)

  Defines channels, which represent connections to entities that are capable of
  performing I/O operations, such as files and sockets; defines selectors, for
  multiplexed, non-blocking I/O operations.

  [java.nio.file](../file/package-summary.md)

  Defines interfaces and classes for the Java virtual machine to access files,
  file attributes, and file systems.
* All Classes and InterfacesClassesException Classes

  Class

  Description

  [CharacterCodingException](CharacterCodingException.md "class in java.nio.charset")

  Checked exception thrown when a character encoding
  or decoding error occurs.

  [Charset](Charset.md "class in java.nio.charset")

  A named mapping between sequences of sixteen-bit Unicode [code units](../../lang/Character.md#unicode) and sequences of
  bytes.

  [CharsetDecoder](CharsetDecoder.md "class in java.nio.charset")

  An engine that can transform a sequence of bytes in a specific charset into a sequence of
  sixteen-bit Unicode characters.

  [CharsetEncoder](CharsetEncoder.md "class in java.nio.charset")

  An engine that can transform a sequence of sixteen-bit Unicode characters into a sequence of
  bytes in a specific charset.

  [CoderMalfunctionError](CoderMalfunctionError.md "class in java.nio.charset")

  Error thrown when the [`decodeLoop`](CharsetDecoder.md#decodeLoop(java.nio.ByteBuffer,java.nio.CharBuffer)) method of
  a [`CharsetDecoder`](CharsetDecoder.md "class in java.nio.charset"), or the [`encodeLoop`](CharsetEncoder.md#encodeLoop(java.nio.CharBuffer,java.nio.ByteBuffer)) method of a [`CharsetEncoder`](CharsetEncoder.md "class in java.nio.charset"), throws an unexpected
  exception.

  [CoderResult](CoderResult.md "class in java.nio.charset")

  A description of the result state of a coder.

  [CodingErrorAction](CodingErrorAction.md "class in java.nio.charset")

  A typesafe enumeration for coding-error actions.

  [IllegalCharsetNameException](IllegalCharsetNameException.md "class in java.nio.charset")

  Unchecked exception thrown when a string that is not a
  [legal charset name](Charset.md#names) is used as such.

  [MalformedInputException](MalformedInputException.md "class in java.nio.charset")

  Checked exception thrown when an input byte sequence is not legal for given
  charset, or an input character sequence is not a legal sixteen-bit Unicode
  sequence.

  [StandardCharsets](StandardCharsets.md "class in java.nio.charset")

  Constant definitions for the standard [`charsets`](Charset.md "class in java.nio.charset").

  [UnmappableCharacterException](UnmappableCharacterException.md "class in java.nio.charset")

  Checked exception thrown when an input character (or byte) sequence
  is valid but cannot be mapped to an output byte (or character)
  sequence.

  [UnsupportedCharsetException](UnsupportedCharsetException.md "class in java.nio.charset")

  Unchecked exception thrown when no support is available
  for a requested charset.