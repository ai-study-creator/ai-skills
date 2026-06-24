Module [java.desktop](../../../module-summary.md)

Package [java.awt.im](package-summary.md)

# Class InputSubset

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Character.Subset](../../../../java.base/java/lang/Character.Subset.md "class in java.lang")

java.awt.im.InputSubset

---

public final class InputSubset
extends [Character.Subset](../../../../java.base/java/lang/Character.Subset.md "class in java.lang")

Defines additional Unicode subsets for use by input methods. Unlike the
UnicodeBlock subsets defined in the [`Character.UnicodeBlock`](../../../../java.base/java/lang/Character.UnicodeBlock.md "class in java.lang") class, these constants do not
directly correspond to Unicode code blocks.

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final InputSubset`

  `FULLWIDTH_DIGITS`

  Constant for the fullwidth digits included in the Unicode halfwidth and
  fullwidth forms character block.

  `static final InputSubset`

  `FULLWIDTH_LATIN`

  Constant for the fullwidth ASCII variants subset of the Unicode halfwidth and
  fullwidth forms character block.

  `static final InputSubset`

  `HALFWIDTH_KATAKANA`

  Constant for the halfwidth katakana subset of the Unicode halfwidth and
  fullwidth forms character block.

  `static final InputSubset`

  `HANJA`

  Constant for all Han characters used in writing Korean, including a
  subset of the CJK unified ideographs as well as Korean Han characters
  that may be defined as surrogate characters.

  `static final InputSubset`

  `KANJI`

  Constant for all Han characters used in writing Japanese, including a
  subset of the CJK unified ideographs as well as Japanese Han characters
  that may be defined as surrogate characters.

  `static final InputSubset`

  `LATIN`

  Constant for all Latin characters, including the characters
  in the BASIC\_LATIN, LATIN\_1\_SUPPLEMENT, LATIN\_EXTENDED\_A,
  LATIN\_EXTENDED\_B Unicode character blocks.

  `static final InputSubset`

  `LATIN_DIGITS`

  Constant for the digits included in the BASIC\_LATIN Unicode character
  block.

  `static final InputSubset`

  `SIMPLIFIED_HANZI`

  Constant for all Han characters used in writing Simplified Chinese,
  including a subset of the CJK unified ideographs as well as Simplified
  Chinese Han characters that may be defined as surrogate characters.

  `static final InputSubset`

  `TRADITIONAL_HANZI`

  Constant for all Han characters used in writing Traditional Chinese,
  including a subset of the CJK unified ideographs as well as Traditional
  Chinese Han characters that may be defined as surrogate characters.
* ## Method Summary

  ### Methods inherited from class java.lang.[Character.Subset](../../../../java.base/java/lang/Character.Subset.md "class in java.lang")

  `equals, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### LATIN

    public static final [InputSubset](InputSubset.md "class in java.awt.im") LATIN

    Constant for all Latin characters, including the characters
    in the BASIC\_LATIN, LATIN\_1\_SUPPLEMENT, LATIN\_EXTENDED\_A,
    LATIN\_EXTENDED\_B Unicode character blocks.
  + ### LATIN\_DIGITS

    public static final [InputSubset](InputSubset.md "class in java.awt.im") LATIN\_DIGITS

    Constant for the digits included in the BASIC\_LATIN Unicode character
    block.
  + ### TRADITIONAL\_HANZI

    public static final [InputSubset](InputSubset.md "class in java.awt.im") TRADITIONAL\_HANZI

    Constant for all Han characters used in writing Traditional Chinese,
    including a subset of the CJK unified ideographs as well as Traditional
    Chinese Han characters that may be defined as surrogate characters.
  + ### SIMPLIFIED\_HANZI

    public static final [InputSubset](InputSubset.md "class in java.awt.im") SIMPLIFIED\_HANZI

    Constant for all Han characters used in writing Simplified Chinese,
    including a subset of the CJK unified ideographs as well as Simplified
    Chinese Han characters that may be defined as surrogate characters.
  + ### KANJI

    public static final [InputSubset](InputSubset.md "class in java.awt.im") KANJI

    Constant for all Han characters used in writing Japanese, including a
    subset of the CJK unified ideographs as well as Japanese Han characters
    that may be defined as surrogate characters.
  + ### HANJA

    public static final [InputSubset](InputSubset.md "class in java.awt.im") HANJA

    Constant for all Han characters used in writing Korean, including a
    subset of the CJK unified ideographs as well as Korean Han characters
    that may be defined as surrogate characters.
  + ### HALFWIDTH\_KATAKANA

    public static final [InputSubset](InputSubset.md "class in java.awt.im") HALFWIDTH\_KATAKANA

    Constant for the halfwidth katakana subset of the Unicode halfwidth and
    fullwidth forms character block.
  + ### FULLWIDTH\_LATIN

    public static final [InputSubset](InputSubset.md "class in java.awt.im") FULLWIDTH\_LATIN

    Constant for the fullwidth ASCII variants subset of the Unicode halfwidth and
    fullwidth forms character block.

    Since:
    :   1.3
  + ### FULLWIDTH\_DIGITS

    public static final [InputSubset](InputSubset.md "class in java.awt.im") FULLWIDTH\_DIGITS

    Constant for the fullwidth digits included in the Unicode halfwidth and
    fullwidth forms character block.

    Since:
    :   1.3