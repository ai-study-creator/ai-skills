Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class StandardCharsets

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.charset.StandardCharsets

---

public final class StandardCharsets
extends [Object](../../lang/Object.md "class in java.lang")

Constant definitions for the standard [`charsets`](Charset.md "class in java.nio.charset"). These
charsets are guaranteed to be available on every implementation of the Java
platform.

Since:
:   1.7

See Also:
:   * [Standard Charsets](Charset.md#standard)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Charset`

  `ISO_8859_1`

  ISO Latin Alphabet No. 1, also known as ISO-LATIN-1.

  `static final Charset`

  `US_ASCII`

  Seven-bit ASCII, also known as ISO646-US, also known as the
  Basic Latin block of the Unicode character set.

  `static final Charset`

  `UTF_16`

  Sixteen-bit UCS Transformation Format, byte order identified by an
  optional byte-order mark.

  `static final Charset`

  `UTF_16BE`

  Sixteen-bit UCS Transformation Format, big-endian byte order.

  `static final Charset`

  `UTF_16LE`

  Sixteen-bit UCS Transformation Format, little-endian byte order.

  `static final Charset`

  `UTF_8`

  Eight-bit UCS Transformation Format.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### US\_ASCII

    public static final [Charset](Charset.md "class in java.nio.charset") US\_ASCII

    Seven-bit ASCII, also known as ISO646-US, also known as the
    Basic Latin block of the Unicode character set.
  + ### ISO\_8859\_1

    public static final [Charset](Charset.md "class in java.nio.charset") ISO\_8859\_1

    ISO Latin Alphabet No. 1, also known as ISO-LATIN-1.
  + ### UTF\_8

    public static final [Charset](Charset.md "class in java.nio.charset") UTF\_8

    Eight-bit UCS Transformation Format.
  + ### UTF\_16BE

    public static final [Charset](Charset.md "class in java.nio.charset") UTF\_16BE

    Sixteen-bit UCS Transformation Format, big-endian byte order.
  + ### UTF\_16LE

    public static final [Charset](Charset.md "class in java.nio.charset") UTF\_16LE

    Sixteen-bit UCS Transformation Format, little-endian byte order.
  + ### UTF\_16

    public static final [Charset](Charset.md "class in java.nio.charset") UTF\_16

    Sixteen-bit UCS Transformation Format, byte order identified by an
    optional byte-order mark.