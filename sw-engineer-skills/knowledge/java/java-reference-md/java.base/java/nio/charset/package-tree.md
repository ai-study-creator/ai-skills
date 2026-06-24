# Hierarchy For Package java.nio.charset

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../lang/Object.md "class in java.lang")
  + java.nio.charset.[Charset](Charset.md "class in java.nio.charset") (implements java.lang.[Comparable](../../lang/Comparable.md "interface in java.lang")<T>)
  + java.nio.charset.[CharsetDecoder](CharsetDecoder.md "class in java.nio.charset")
  + java.nio.charset.[CharsetEncoder](CharsetEncoder.md "class in java.nio.charset")
  + java.nio.charset.[CoderResult](CoderResult.md "class in java.nio.charset")
  + java.nio.charset.[CodingErrorAction](CodingErrorAction.md "class in java.nio.charset")
  + java.nio.charset.[StandardCharsets](StandardCharsets.md "class in java.nio.charset")
  + java.lang.[Throwable](../../lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Error](../../lang/Error.md "class in java.lang")
      * java.nio.charset.[CoderMalfunctionError](CoderMalfunctionError.md "class in java.nio.charset")
    - java.lang.[Exception](../../lang/Exception.md "class in java.lang")
      * java.io.[IOException](../../io/IOException.md "class in java.io")
        + java.nio.charset.[CharacterCodingException](CharacterCodingException.md "class in java.nio.charset")
          - java.nio.charset.[MalformedInputException](MalformedInputException.md "class in java.nio.charset")
          - java.nio.charset.[UnmappableCharacterException](UnmappableCharacterException.md "class in java.nio.charset")
      * java.lang.[RuntimeException](../../lang/RuntimeException.md "class in java.lang")
        + java.lang.[IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")
          - java.nio.charset.[IllegalCharsetNameException](IllegalCharsetNameException.md "class in java.nio.charset")
          - java.nio.charset.[UnsupportedCharsetException](UnsupportedCharsetException.md "class in java.nio.charset")