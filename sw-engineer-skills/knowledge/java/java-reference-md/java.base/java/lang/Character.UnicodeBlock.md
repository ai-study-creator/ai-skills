Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Character.UnicodeBlock

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Character.Subset](Character.Subset.md "class in java.lang")

java.lang.Character.UnicodeBlock

Enclosing class:
:   `Character`

---

public static final class Character.UnicodeBlock
extends [Character.Subset](Character.Subset.md "class in java.lang")

A family of character subsets representing the character blocks in the
Unicode specification. Character blocks generally define characters
used for a specific script or purpose. A character is contained by
at most one Unicode block.

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Character.UnicodeBlock`

  `ADLAM`

  Constant for the "Adlam" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `AEGEAN_NUMBERS`

  Constant for the "Aegean Numbers" Unicode character block.

  `static final Character.UnicodeBlock`

  `AHOM`

  Constant for the "Ahom" Unicode character block.

  `static final Character.UnicodeBlock`

  `ALCHEMICAL_SYMBOLS`

  Constant for the "Alchemical Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `ALPHABETIC_PRESENTATION_FORMS`

  Constant for the "Alphabetic Presentation Forms" Unicode character block.

  `static final Character.UnicodeBlock`

  `ANATOLIAN_HIEROGLYPHS`

  Constant for the "Anatolian Hieroglyphs" Unicode character block.

  `static final Character.UnicodeBlock`

  `ANCIENT_GREEK_MUSICAL_NOTATION`

  Constant for the "Ancient Greek Musical Notation" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `ANCIENT_GREEK_NUMBERS`

  Constant for the "Ancient Greek Numbers" Unicode character block.

  `static final Character.UnicodeBlock`

  `ANCIENT_SYMBOLS`

  Constant for the "Ancient Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `ARABIC`

  Constant for the "Arabic" Unicode character block.

  `static final Character.UnicodeBlock`

  `ARABIC_EXTENDED_A`

  Constant for the "Arabic Extended-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `ARABIC_EXTENDED_B`

  Constant for the "Arabic Extended-B" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `ARABIC_EXTENDED_C`

  Constant for the "Arabic Extended-C" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS`

  Constant for the "Arabic Mathematical Alphabetic Symbols" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `ARABIC_PRESENTATION_FORMS_A`

  Constant for the "Arabic Presentation Forms-A" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `ARABIC_PRESENTATION_FORMS_B`

  Constant for the "Arabic Presentation Forms-B" Unicode character block.

  `static final Character.UnicodeBlock`

  `ARABIC_SUPPLEMENT`

  Constant for the "Arabic Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `ARMENIAN`

  Constant for the "Armenian" Unicode character block.

  `static final Character.UnicodeBlock`

  `ARROWS`

  Constant for the "Arrows" Unicode character block.

  `static final Character.UnicodeBlock`

  `AVESTAN`

  Constant for the "Avestan" Unicode character block.

  `static final Character.UnicodeBlock`

  `BALINESE`

  Constant for the "Balinese" Unicode character block.

  `static final Character.UnicodeBlock`

  `BAMUM`

  Constant for the "Bamum" Unicode character block.

  `static final Character.UnicodeBlock`

  `BAMUM_SUPPLEMENT`

  Constant for the "Bamum Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `BASIC_LATIN`

  Constant for the "Basic Latin" Unicode character block.

  `static final Character.UnicodeBlock`

  `BASSA_VAH`

  Constant for the "Bassa Vah" Unicode character block.

  `static final Character.UnicodeBlock`

  `BATAK`

  Constant for the "Batak" Unicode character block.

  `static final Character.UnicodeBlock`

  `BENGALI`

  Constant for the "Bengali" Unicode character block.

  `static final Character.UnicodeBlock`

  `BHAIKSUKI`

  Constant for the "Bhaiksuki" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `BLOCK_ELEMENTS`

  Constant for the "Block Elements" Unicode character block.

  `static final Character.UnicodeBlock`

  `BOPOMOFO`

  Constant for the "Bopomofo" Unicode character block.

  `static final Character.UnicodeBlock`

  `BOPOMOFO_EXTENDED`

  Constant for the "Bopomofo Extended" Unicode character block.

  `static final Character.UnicodeBlock`

  `BOX_DRAWING`

  Constant for the "Box Drawing" Unicode character block.

  `static final Character.UnicodeBlock`

  `BRAHMI`

  Constant for the "Brahmi" Unicode character block.

  `static final Character.UnicodeBlock`

  `BRAILLE_PATTERNS`

  Constant for the "Braille Patterns" Unicode character block.

  `static final Character.UnicodeBlock`

  `BUGINESE`

  Constant for the "Buginese" Unicode character block.

  `static final Character.UnicodeBlock`

  `BUHID`

  Constant for the "Buhid" Unicode character block.

  `static final Character.UnicodeBlock`

  `BYZANTINE_MUSICAL_SYMBOLS`

  Constant for the "Byzantine Musical Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `CARIAN`

  Constant for the "Carian" Unicode character block.

  `static final Character.UnicodeBlock`

  `CAUCASIAN_ALBANIAN`

  Constant for the "Caucasian Albanian" Unicode character block.

  `static final Character.UnicodeBlock`

  `CHAKMA`

  Constant for the "Chakma" Unicode character block.

  `static final Character.UnicodeBlock`

  `CHAM`

  Constant for the "Cham" Unicode character block.

  `static final Character.UnicodeBlock`

  `CHEROKEE`

  Constant for the "Cherokee" Unicode character block.

  `static final Character.UnicodeBlock`

  `CHEROKEE_SUPPLEMENT`

  Constant for the "Cherokee Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `CHESS_SYMBOLS`

  Constant for the "Chess Symbols" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CHORASMIAN`

  Constant for the "Chorasmian" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CJK_COMPATIBILITY`

  Constant for the "CJK Compatibility" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_COMPATIBILITY_FORMS`

  Constant for the "CJK Compatibility Forms" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_COMPATIBILITY_IDEOGRAPHS`

  Constant for the "CJK Compatibility Ideographs" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT`

  Constant for the "CJK Compatibility Ideographs Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_RADICALS_SUPPLEMENT`

  Constant for the "CJK Radicals Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_STROKES`

  Constant for the "CJK Strokes" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_SYMBOLS_AND_PUNCTUATION`

  Constant for the "CJK Symbols and Punctuation" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS`

  Constant for the "CJK Unified Ideographs" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A`

  Constant for the "CJK Unified Ideographs Extension A" Unicode character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B`

  Constant for the "CJK Unified Ideographs Extension B" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C`

  Constant for the "CJK Unified Ideographs Extension C" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D`

  Constant for the "CJK Unified Ideographs Extension D" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_E`

  Constant for the "CJK Unified Ideographs Extension E" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_F`

  Constant for the "CJK Unified Ideographs Extension F" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_G`

  Constant for the "CJK Unified Ideographs Extension G" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CJK_UNIFIED_IDEOGRAPHS_EXTENSION_H`

  Constant for the "CJK Unified Ideographs Extension H" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `COMBINING_DIACRITICAL_MARKS`

  Constant for the "Combining Diacritical Marks" Unicode character block.

  `static final Character.UnicodeBlock`

  `COMBINING_DIACRITICAL_MARKS_EXTENDED`

  Constant for the "Combining Diacritical Marks Extended" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `COMBINING_DIACRITICAL_MARKS_SUPPLEMENT`

  Constant for the "Combining Diacritical Marks Supplement" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `COMBINING_HALF_MARKS`

  Constant for the "Combining Half Marks" Unicode character block.

  `static final Character.UnicodeBlock`

  `COMBINING_MARKS_FOR_SYMBOLS`

  Constant for the "Combining Diacritical Marks for Symbols" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `COMMON_INDIC_NUMBER_FORMS`

  Constant for the "Common Indic Number Forms" Unicode character block.

  `static final Character.UnicodeBlock`

  `CONTROL_PICTURES`

  Constant for the "Control Pictures" Unicode character block.

  `static final Character.UnicodeBlock`

  `COPTIC`

  Constant for the "Coptic" Unicode character block.

  `static final Character.UnicodeBlock`

  `COPTIC_EPACT_NUMBERS`

  Constant for the "Coptic Epact Numbers" Unicode character block.

  `static final Character.UnicodeBlock`

  `COUNTING_ROD_NUMERALS`

  Constant for the "Counting Rod Numerals" Unicode character block.

  `static final Character.UnicodeBlock`

  `CUNEIFORM`

  Constant for the "Cuneiform" Unicode character block.

  `static final Character.UnicodeBlock`

  `CUNEIFORM_NUMBERS_AND_PUNCTUATION`

  Constant for the "Cuneiform Numbers and Punctuation" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CURRENCY_SYMBOLS`

  Constant for the "Currency Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `CYPRIOT_SYLLABARY`

  Constant for the "Cypriot Syllabary" Unicode character block.

  `static final Character.UnicodeBlock`

  `CYPRO_MINOAN`

  Constant for the "Cypro-Minoan" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CYRILLIC`

  Constant for the "Cyrillic" Unicode character block.

  `static final Character.UnicodeBlock`

  `CYRILLIC_EXTENDED_A`

  Constant for the "Cyrillic Extended-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `CYRILLIC_EXTENDED_B`

  Constant for the "Cyrillic Extended-B" Unicode character block.

  `static final Character.UnicodeBlock`

  `CYRILLIC_EXTENDED_C`

  Constant for the "Cyrillic Extended-C" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CYRILLIC_EXTENDED_D`

  Constant for the "Cyrillic Extended-D" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `CYRILLIC_SUPPLEMENTARY`

  Constant for the "Cyrillic Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `DESERET`

  Constant for the "Deseret" Unicode character block.

  `static final Character.UnicodeBlock`

  `DEVANAGARI`

  Constant for the "Devanagari" Unicode character block.

  `static final Character.UnicodeBlock`

  `DEVANAGARI_EXTENDED`

  Constant for the "Devanagari Extended" Unicode character block.

  `static final Character.UnicodeBlock`

  `DEVANAGARI_EXTENDED_A`

  Constant for the "Devanagari Extended-A" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `DINGBATS`

  Constant for the "Dingbats" Unicode character block.

  `static final Character.UnicodeBlock`

  `DIVES_AKURU`

  Constant for the "Dives Akuru" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `DOGRA`

  Constant for the "Dogra" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `DOMINO_TILES`

  Constant for the "Domino Tiles" Unicode character block.

  `static final Character.UnicodeBlock`

  `DUPLOYAN`

  Constant for the "Duployan" Unicode character block.

  `static final Character.UnicodeBlock`

  `EARLY_DYNASTIC_CUNEIFORM`

  Constant for the "Early Dynastic Cuneiform" Unicode character block.

  `static final Character.UnicodeBlock`

  `EGYPTIAN_HIEROGLYPH_FORMAT_CONTROLS`

  Constant for the "Egyptian Hieroglyph Format Controls" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `EGYPTIAN_HIEROGLYPHS`

  Constant for the "Egyptian Hieroglyphs" Unicode character block.

  `static final Character.UnicodeBlock`

  `ELBASAN`

  Constant for the "Elbasan" Unicode character block.

  `static final Character.UnicodeBlock`

  `ELYMAIC`

  Constant for the "Elymaic" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `EMOTICONS`

  Constant for the "Emoticons" Unicode character block.

  `static final Character.UnicodeBlock`

  `ENCLOSED_ALPHANUMERIC_SUPPLEMENT`

  Constant for the "Enclosed Alphanumeric Supplement" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `ENCLOSED_ALPHANUMERICS`

  Constant for the "Enclosed Alphanumerics" Unicode character block.

  `static final Character.UnicodeBlock`

  `ENCLOSED_CJK_LETTERS_AND_MONTHS`

  Constant for the "Enclosed CJK Letters and Months" Unicode character block.

  `static final Character.UnicodeBlock`

  `ENCLOSED_IDEOGRAPHIC_SUPPLEMENT`

  Constant for the "Enclosed Ideographic Supplement" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `ETHIOPIC`

  Constant for the "Ethiopic" Unicode character block.

  `static final Character.UnicodeBlock`

  `ETHIOPIC_EXTENDED`

  Constant for the "Ethiopic Extended" Unicode character block.

  `static final Character.UnicodeBlock`

  `ETHIOPIC_EXTENDED_A`

  Constant for the "Ethiopic Extended-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `ETHIOPIC_EXTENDED_B`

  Constant for the "Ethiopic Extended-B" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `ETHIOPIC_SUPPLEMENT`

  Constant for the "Ethiopic Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `GENERAL_PUNCTUATION`

  Constant for the "General Punctuation" Unicode character block.

  `static final Character.UnicodeBlock`

  `GEOMETRIC_SHAPES`

  Constant for the "Geometric Shapes" Unicode character block.

  `static final Character.UnicodeBlock`

  `GEOMETRIC_SHAPES_EXTENDED`

  Constant for the "Geometric Shapes Extended" Unicode character block.

  `static final Character.UnicodeBlock`

  `GEORGIAN`

  Constant for the "Georgian" Unicode character block.

  `static final Character.UnicodeBlock`

  `GEORGIAN_EXTENDED`

  Constant for the "Georgian Extended" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `GEORGIAN_SUPPLEMENT`

  Constant for the "Georgian Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `GLAGOLITIC`

  Constant for the "Glagolitic" Unicode character block.

  `static final Character.UnicodeBlock`

  `GLAGOLITIC_SUPPLEMENT`

  Constant for the "Glagolitic Supplement" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `GOTHIC`

  Constant for the "Gothic" Unicode character block.

  `static final Character.UnicodeBlock`

  `GRANTHA`

  Constant for the "Grantha" Unicode character block.

  `static final Character.UnicodeBlock`

  `GREEK`

  Constant for the "Greek and Coptic" Unicode character block.

  `static final Character.UnicodeBlock`

  `GREEK_EXTENDED`

  Constant for the "Greek Extended" Unicode character block.

  `static final Character.UnicodeBlock`

  `GUJARATI`

  Constant for the "Gujarati" Unicode character block.

  `static final Character.UnicodeBlock`

  `GUNJALA_GONDI`

  Constant for the "Gunjala Gondi" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `GURMUKHI`

  Constant for the "Gurmukhi" Unicode character block.

  `static final Character.UnicodeBlock`

  `HALFWIDTH_AND_FULLWIDTH_FORMS`

  Constant for the "Halfwidth and Fullwidth Forms" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `HANGUL_COMPATIBILITY_JAMO`

  Constant for the "Hangul Compatibility Jamo" Unicode character block.

  `static final Character.UnicodeBlock`

  `HANGUL_JAMO`

  Constant for the "Hangul Jamo" Unicode character block.

  `static final Character.UnicodeBlock`

  `HANGUL_JAMO_EXTENDED_A`

  Constant for the "Hangul Jamo Extended-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `HANGUL_JAMO_EXTENDED_B`

  Constant for the "Hangul Jamo Extended-B" Unicode character block.

  `static final Character.UnicodeBlock`

  `HANGUL_SYLLABLES`

  Constant for the "Hangul Syllables" Unicode character block.

  `static final Character.UnicodeBlock`

  `HANIFI_ROHINGYA`

  Constant for the "Hanifi Rohingya" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `HANUNOO`

  Constant for the "Hanunoo" Unicode character block.

  `static final Character.UnicodeBlock`

  `HATRAN`

  Constant for the "Hatran" Unicode character block.

  `static final Character.UnicodeBlock`

  `HEBREW`

  Constant for the "Hebrew" Unicode character block.

  `static final Character.UnicodeBlock`

  `HIGH_PRIVATE_USE_SURROGATES`

  Constant for the "High Private Use Surrogates" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `HIGH_SURROGATES`

  Constant for the "High Surrogates" Unicode character block.

  `static final Character.UnicodeBlock`

  `HIRAGANA`

  Constant for the "Hiragana" Unicode character block.

  `static final Character.UnicodeBlock`

  `IDEOGRAPHIC_DESCRIPTION_CHARACTERS`

  Constant for the "Ideographic Description Characters" Unicode character block.

  `static final Character.UnicodeBlock`

  `IDEOGRAPHIC_SYMBOLS_AND_PUNCTUATION`

  Constant for the "Ideographic Symbols and Punctuation" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `IMPERIAL_ARAMAIC`

  Constant for the "Imperial Aramaic" Unicode character block.

  `static final Character.UnicodeBlock`

  `INDIC_SIYAQ_NUMBERS`

  Constant for the "Indic Siyaq Numbers" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `INSCRIPTIONAL_PAHLAVI`

  Constant for the "Inscriptional Pahlavi" Unicode character block.

  `static final Character.UnicodeBlock`

  `INSCRIPTIONAL_PARTHIAN`

  Constant for the "Inscriptional Parthian" Unicode character block.

  `static final Character.UnicodeBlock`

  `IPA_EXTENSIONS`

  Constant for the "IPA Extensions" Unicode character block.

  `static final Character.UnicodeBlock`

  `JAVANESE`

  Constant for the "Javanese" Unicode character block.

  `static final Character.UnicodeBlock`

  `KAITHI`

  Constant for the "Kaithi" Unicode character block.

  `static final Character.UnicodeBlock`

  `KAKTOVIK_NUMERALS`

  Constant for the "Kaktovik Numerals" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `KANA_EXTENDED_A`

  Constant for the "Kana Extended-A" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `KANA_EXTENDED_B`

  Constant for the "Kana Extended-B" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `KANA_SUPPLEMENT`

  Constant for the "Kana Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `KANBUN`

  Constant for the "Kanbun" Unicode character block.

  `static final Character.UnicodeBlock`

  `KANGXI_RADICALS`

  Constant for the "Kangxi Radicals" Unicode character block.

  `static final Character.UnicodeBlock`

  `KANNADA`

  Constant for the "Kannada" Unicode character block.

  `static final Character.UnicodeBlock`

  `KATAKANA`

  Constant for the "Katakana" Unicode character block.

  `static final Character.UnicodeBlock`

  `KATAKANA_PHONETIC_EXTENSIONS`

  Constant for the "Katakana Phonetic Extensions" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `KAWI`

  Constant for the "Kawi" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `KAYAH_LI`

  Constant for the "Kayah Li" Unicode character block.

  `static final Character.UnicodeBlock`

  `KHAROSHTHI`

  Constant for the "Kharoshthi" Unicode character block.

  `static final Character.UnicodeBlock`

  `KHITAN_SMALL_SCRIPT`

  Constant for the "Khitan Small Script" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `KHMER`

  Constant for the "Khmer" Unicode character block.

  `static final Character.UnicodeBlock`

  `KHMER_SYMBOLS`

  Constant for the "Khmer Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `KHOJKI`

  Constant for the "Khojki" Unicode character block.

  `static final Character.UnicodeBlock`

  `KHUDAWADI`

  Constant for the "Khudawadi" Unicode character block.

  `static final Character.UnicodeBlock`

  `LAO`

  Constant for the "Lao" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_1_SUPPLEMENT`

  Constant for the "Latin-1 Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_A`

  Constant for the "Latin Extended-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_ADDITIONAL`

  Constant for the "Latin Extended Additional" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_B`

  Constant for the "Latin Extended-B" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_C`

  Constant for the "Latin Extended-C" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_D`

  Constant for the "Latin Extended-D" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_E`

  Constant for the "Latin Extended-E" Unicode character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_F`

  Constant for the "Latin Extended-F" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `LATIN_EXTENDED_G`

  Constant for the "Latin Extended-G" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `LEPCHA`

  Constant for the "Lepcha" Unicode character block.

  `static final Character.UnicodeBlock`

  `LETTERLIKE_SYMBOLS`

  Constant for the "Letterlike Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `LIMBU`

  Constant for the "Limbu" Unicode character block.

  `static final Character.UnicodeBlock`

  `LINEAR_A`

  Constant for the "Linear A" Unicode character block.

  `static final Character.UnicodeBlock`

  `LINEAR_B_IDEOGRAMS`

  Constant for the "Linear B Ideograms" Unicode character block.

  `static final Character.UnicodeBlock`

  `LINEAR_B_SYLLABARY`

  Constant for the "Linear B Syllabary" Unicode character block.

  `static final Character.UnicodeBlock`

  `LISU`

  Constant for the "Lisu" Unicode character block.

  `static final Character.UnicodeBlock`

  `LISU_SUPPLEMENT`

  Constant for the "Lisu Supplement" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `LOW_SURROGATES`

  Constant for the "Low Surrogates" Unicode character block.

  `static final Character.UnicodeBlock`

  `LYCIAN`

  Constant for the "Lycian" Unicode character block.

  `static final Character.UnicodeBlock`

  `LYDIAN`

  Constant for the "Lydian" Unicode character block.

  `static final Character.UnicodeBlock`

  `MAHAJANI`

  Constant for the "Mahajani" Unicode character block.

  `static final Character.UnicodeBlock`

  `MAHJONG_TILES`

  Constant for the "Mahjong Tiles" Unicode character block.

  `static final Character.UnicodeBlock`

  `MAKASAR`

  Constant for the "Makasar" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MALAYALAM`

  Constant for the "Malayalam" Unicode character block.

  `static final Character.UnicodeBlock`

  `MANDAIC`

  Constant for the "Mandaic" Unicode character block.

  `static final Character.UnicodeBlock`

  `MANICHAEAN`

  Constant for the "Manichaean" Unicode character block.

  `static final Character.UnicodeBlock`

  `MARCHEN`

  Constant for the "Marchen" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MASARAM_GONDI`

  Constant for the "Masaram Gondi" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MATHEMATICAL_ALPHANUMERIC_SYMBOLS`

  Constant for the "Mathematical Alphanumeric Symbols" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MATHEMATICAL_OPERATORS`

  Constant for the "Mathematical Operators" Unicode character block.

  `static final Character.UnicodeBlock`

  `MAYAN_NUMERALS`

  Constant for the "Mayan Numerals" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MEDEFAIDRIN`

  Constant for the "Medefaidrin" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MEETEI_MAYEK`

  Constant for the "Meetei Mayek" Unicode character block.

  `static final Character.UnicodeBlock`

  `MEETEI_MAYEK_EXTENSIONS`

  Constant for the "Meetei Mayek Extensions" Unicode character block.

  `static final Character.UnicodeBlock`

  `MENDE_KIKAKUI`

  Constant for the "Mende Kikakui" Unicode character block.

  `static final Character.UnicodeBlock`

  `MEROITIC_CURSIVE`

  Constant for the "Meroitic Cursive" Unicode character block.

  `static final Character.UnicodeBlock`

  `MEROITIC_HIEROGLYPHS`

  Constant for the "Meroitic Hieroglyphs" Unicode character block.

  `static final Character.UnicodeBlock`

  `MIAO`

  Constant for the "Miao" Unicode character block.

  `static final Character.UnicodeBlock`

  `MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A`

  Constant for the "Miscellaneous Mathematical Symbols-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B`

  Constant for the "Miscellaneous Mathematical Symbols-B" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MISCELLANEOUS_SYMBOLS`

  Constant for the "Miscellaneous Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `MISCELLANEOUS_SYMBOLS_AND_ARROWS`

  Constant for the "Miscellaneous Symbols and Arrows" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS`

  Constant for the "Miscellaneous Symbols And Pictographs" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MISCELLANEOUS_TECHNICAL`

  Constant for the "Miscellaneous Technical" Unicode character block.

  `static final Character.UnicodeBlock`

  `MODI`

  Constant for the "Modi" Unicode character block.

  `static final Character.UnicodeBlock`

  `MODIFIER_TONE_LETTERS`

  Constant for the "Modifier Tone Letters" Unicode character block.

  `static final Character.UnicodeBlock`

  `MONGOLIAN`

  Constant for the "Mongolian" Unicode character block.

  `static final Character.UnicodeBlock`

  `MONGOLIAN_SUPPLEMENT`

  Constant for the "Mongolian Supplement" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `MRO`

  Constant for the "Mro" Unicode character block.

  `static final Character.UnicodeBlock`

  `MULTANI`

  Constant for the "Multani" Unicode character block.

  `static final Character.UnicodeBlock`

  `MUSICAL_SYMBOLS`

  Constant for the "Musical Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `MYANMAR`

  Constant for the "Myanmar" Unicode character block.

  `static final Character.UnicodeBlock`

  `MYANMAR_EXTENDED_A`

  Constant for the "Myanmar Extended-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `MYANMAR_EXTENDED_B`

  Constant for the "Myanmar Extended-B" Unicode character block.

  `static final Character.UnicodeBlock`

  `NABATAEAN`

  Constant for the "Nabataean" Unicode character block.

  `static final Character.UnicodeBlock`

  `NAG_MUNDARI`

  Constant for the "Nag Mundari" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `NANDINAGARI`

  Constant for the "Nandinagari" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `NEW_TAI_LUE`

  Constant for the "New Tai Lue" Unicode character block.

  `static final Character.UnicodeBlock`

  `NEWA`

  Constant for the "Newa" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `NKO`

  Constant for the "NKo" Unicode character block.

  `static final Character.UnicodeBlock`

  `NUMBER_FORMS`

  Constant for the "Number Forms" Unicode character block.

  `static final Character.UnicodeBlock`

  `NUSHU`

  Constant for the "Nushu" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `NYIAKENG_PUACHUE_HMONG`

  Constant for the "Nyiakeng Puachue Hmong" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `OGHAM`

  Constant for the "Ogham" Unicode character block.

  `static final Character.UnicodeBlock`

  `OL_CHIKI`

  Constant for the "Ol Chiki" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_HUNGARIAN`

  Constant for the "Old Hungarian" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_ITALIC`

  Constant for the "Old Italic" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_NORTH_ARABIAN`

  Constant for the "Old North Arabian" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_PERMIC`

  Constant for the "Old Permic" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_PERSIAN`

  Constant for the "Old Persian" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_SOGDIAN`

  Constant for the "Old Sogdian" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `OLD_SOUTH_ARABIAN`

  Constant for the "Old South Arabian" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_TURKIC`

  Constant for the "Old Turkic" Unicode character block.

  `static final Character.UnicodeBlock`

  `OLD_UYGHUR`

  Constant for the "Old Uyghur" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `OPTICAL_CHARACTER_RECOGNITION`

  Constant for the "Optical Character Recognition" Unicode character block.

  `static final Character.UnicodeBlock`

  `ORIYA`

  Constant for the "Oriya" Unicode character block.

  `static final Character.UnicodeBlock`

  `ORNAMENTAL_DINGBATS`

  Constant for the "Ornamental Dingbats" Unicode character block.

  `static final Character.UnicodeBlock`

  `OSAGE`

  Constant for the "Osage" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `OSMANYA`

  Constant for the "Osmanya" Unicode character block.

  `static final Character.UnicodeBlock`

  `OTTOMAN_SIYAQ_NUMBERS`

  Constant for the "Ottoman Siyaq Numbers" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `PAHAWH_HMONG`

  Constant for the "Pahawh Hmong" Unicode character block.

  `static final Character.UnicodeBlock`

  `PALMYRENE`

  Constant for the "Palmyrene" Unicode character block.

  `static final Character.UnicodeBlock`

  `PAU_CIN_HAU`

  Constant for the "Pau Cin Hau" Unicode character block.

  `static final Character.UnicodeBlock`

  `PHAGS_PA`

  Constant for the "Phags-pa" Unicode character block.

  `static final Character.UnicodeBlock`

  `PHAISTOS_DISC`

  Constant for the "Phaistos Disc" Unicode character block.

  `static final Character.UnicodeBlock`

  `PHOENICIAN`

  Constant for the "Phoenician" Unicode character block.

  `static final Character.UnicodeBlock`

  `PHONETIC_EXTENSIONS`

  Constant for the "Phonetic Extensions" Unicode character block.

  `static final Character.UnicodeBlock`

  `PHONETIC_EXTENSIONS_SUPPLEMENT`

  Constant for the "Phonetic Extensions Supplement" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `PLAYING_CARDS`

  Constant for the "Playing Cards" Unicode character block.

  `static final Character.UnicodeBlock`

  `PRIVATE_USE_AREA`

  Constant for the "Private Use Area" Unicode character block.

  `static final Character.UnicodeBlock`

  `PSALTER_PAHLAVI`

  Constant for the "Psalter Pahlavi" Unicode character block.

  `static final Character.UnicodeBlock`

  `REJANG`

  Constant for the "Rejang" Unicode character block.

  `static final Character.UnicodeBlock`

  `RUMI_NUMERAL_SYMBOLS`

  Constant for the "Rumi Numeral Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `RUNIC`

  Constant for the "Runic" Unicode character block.

  `static final Character.UnicodeBlock`

  `SAMARITAN`

  Constant for the "Samaritan" Unicode character block.

  `static final Character.UnicodeBlock`

  `SAURASHTRA`

  Constant for the "Saurashtra" Unicode character block.

  `static final Character.UnicodeBlock`

  `SHARADA`

  Constant for the "Sharada" Unicode character block.

  `static final Character.UnicodeBlock`

  `SHAVIAN`

  Constant for the "Shavian" Unicode character block.

  `static final Character.UnicodeBlock`

  `SHORTHAND_FORMAT_CONTROLS`

  Constant for the "Shorthand Format Controls" Unicode character block.

  `static final Character.UnicodeBlock`

  `SIDDHAM`

  Constant for the "Siddham" Unicode character block.

  `static final Character.UnicodeBlock`

  `SINHALA`

  Constant for the "Sinhala" Unicode character block.

  `static final Character.UnicodeBlock`

  `SINHALA_ARCHAIC_NUMBERS`

  Constant for the "Sinhala Archaic Numbers" Unicode character block.

  `static final Character.UnicodeBlock`

  `SMALL_FORM_VARIANTS`

  Constant for the "Small Form Variants" Unicode character block.

  `static final Character.UnicodeBlock`

  `SMALL_KANA_EXTENSION`

  Constant for the "Small Kana Extension" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `SOGDIAN`

  Constant for the "Sogdian" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `SORA_SOMPENG`

  Constant for the "Sora Sompeng" Unicode character block.

  `static final Character.UnicodeBlock`

  `SOYOMBO`

  Constant for the "Soyombo" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `SPACING_MODIFIER_LETTERS`

  Constant for the "Spacing Modifier Letters" Unicode character block.

  `static final Character.UnicodeBlock`

  `SPECIALS`

  Constant for the "Specials" Unicode character block.

  `static final Character.UnicodeBlock`

  `SUNDANESE`

  Constant for the "Sundanese" Unicode character block.

  `static final Character.UnicodeBlock`

  `SUNDANESE_SUPPLEMENT`

  Constant for the "Sundanese Supplement" Unicode character block.

  `static final Character.UnicodeBlock`

  `SUPERSCRIPTS_AND_SUBSCRIPTS`

  Constant for the "Superscripts and Subscripts" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTAL_ARROWS_A`

  Constant for the "Supplemental Arrows-A" Unicode character block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTAL_ARROWS_B`

  Constant for the "Supplemental Arrows-B" Unicode character block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTAL_ARROWS_C`

  Constant for the "Supplemental Arrows-C" Unicode character block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTAL_MATHEMATICAL_OPERATORS`

  Constant for the "Supplemental Mathematical Operators" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTAL_PUNCTUATION`

  Constant for the "Supplemental Punctuation" Unicode character block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTAL_SYMBOLS_AND_PICTOGRAPHS`

  Constant for the "Supplemental Symbols and Pictographs" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTARY_PRIVATE_USE_AREA_A`

  Constant for the "Supplementary Private Use Area-A" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `SUPPLEMENTARY_PRIVATE_USE_AREA_B`

  Constant for the "Supplementary Private Use Area-B" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `SURROGATES_AREA`

  Deprecated.

  Instead of `SURROGATES_AREA`, use [`HIGH_SURROGATES`](#HIGH_SURROGATES),
  [`HIGH_PRIVATE_USE_SURROGATES`](#HIGH_PRIVATE_USE_SURROGATES), and [`LOW_SURROGATES`](#LOW_SURROGATES).

  `static final Character.UnicodeBlock`

  `SUTTON_SIGNWRITING`

  Constant for the "Sutton SignWriting" Unicode character block.

  `static final Character.UnicodeBlock`

  `SYLOTI_NAGRI`

  Constant for the "Syloti Nagri" Unicode character block.

  `static final Character.UnicodeBlock`

  `SYMBOLS_AND_PICTOGRAPHS_EXTENDED_A`

  Constant for the "Symbols and Pictographs Extended-A" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `SYMBOLS_FOR_LEGACY_COMPUTING`

  Constant for the "Symbols for Legacy Computing" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `SYRIAC`

  Constant for the "Syriac" Unicode character block.

  `static final Character.UnicodeBlock`

  `SYRIAC_SUPPLEMENT`

  Constant for the "Syriac Supplement" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `TAGALOG`

  Constant for the "Tagalog" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAGBANWA`

  Constant for the "Tagbanwa" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAGS`

  Constant for the "Tags" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAI_LE`

  Constant for the "Tai Le" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAI_THAM`

  Constant for the "Tai Tham" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAI_VIET`

  Constant for the "Tai Viet" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAI_XUAN_JING_SYMBOLS`

  Constant for the "Tai Xuan Jing Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAKRI`

  Constant for the "Takri" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAMIL`

  Constant for the "Tamil" Unicode character block.

  `static final Character.UnicodeBlock`

  `TAMIL_SUPPLEMENT`

  Constant for the "Tamil Supplement" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `TANGSA`

  Constant for the "Tangsa" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `TANGUT`

  Constant for the "Tangut" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `TANGUT_COMPONENTS`

  Constant for the "Tangut Components" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `TANGUT_SUPPLEMENT`

  Constant for the "Tangut Supplement" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `TELUGU`

  Constant for the "Telugu" Unicode character block.

  `static final Character.UnicodeBlock`

  `THAANA`

  Constant for the "Thaana" Unicode character block.

  `static final Character.UnicodeBlock`

  `THAI`

  Constant for the "Thai" Unicode character block.

  `static final Character.UnicodeBlock`

  `TIBETAN`

  Constant for the "Tibetan" Unicode character block.

  `static final Character.UnicodeBlock`

  `TIFINAGH`

  Constant for the "Tifinagh" Unicode character block.

  `static final Character.UnicodeBlock`

  `TIRHUTA`

  Constant for the "Tirhuta" Unicode character block.

  `static final Character.UnicodeBlock`

  `TOTO`

  Constant for the "Toto" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `TRANSPORT_AND_MAP_SYMBOLS`

  Constant for the "Transport And Map Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `UGARITIC`

  Constant for the "Ugaritic" Unicode character block.

  `static final Character.UnicodeBlock`

  `UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS`

  Constant for the "Unified Canadian Aboriginal Syllabics" Unicode character block.

  `static final Character.UnicodeBlock`

  `UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED`

  Constant for the "Unified Canadian Aboriginal Syllabics Extended"
  Unicode character block.

  `static final Character.UnicodeBlock`

  `UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED_A`

  Constant for the "Unified Canadian Aboriginal Syllabics Extended-A" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `VAI`

  Constant for the "Vai" Unicode character block.

  `static final Character.UnicodeBlock`

  `VARIATION_SELECTORS`

  Constant for the "Variation Selectors" Unicode character block.

  `static final Character.UnicodeBlock`

  `VARIATION_SELECTORS_SUPPLEMENT`

  Constant for the "Variation Selectors Supplement" Unicode character
  block.

  `static final Character.UnicodeBlock`

  `VEDIC_EXTENSIONS`

  Constant for the "Vedic Extensions" Unicode character block.

  `static final Character.UnicodeBlock`

  `VERTICAL_FORMS`

  Constant for the "Vertical Forms" Unicode character block.

  `static final Character.UnicodeBlock`

  `VITHKUQI`

  Constant for the "Vithkuqi" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `WANCHO`

  Constant for the "Wancho" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `WARANG_CITI`

  Constant for the "Warang Citi" Unicode character block.

  `static final Character.UnicodeBlock`

  `YEZIDI`

  Constant for the "Yezidi" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `YI_RADICALS`

  Constant for the "Yi Radicals" Unicode character block.

  `static final Character.UnicodeBlock`

  `YI_SYLLABLES`

  Constant for the "Yi Syllables" Unicode character block.

  `static final Character.UnicodeBlock`

  `YIJING_HEXAGRAM_SYMBOLS`

  Constant for the "Yijing Hexagram Symbols" Unicode character block.

  `static final Character.UnicodeBlock`

  `ZANABAZAR_SQUARE`

  Constant for the "Zanabazar Square" Unicode
  character block.

  `static final Character.UnicodeBlock`

  `ZNAMENNY_MUSICAL_NOTATION`

  Constant for the "Znamenny Musical Notation" Unicode
  character block.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static final Character.UnicodeBlock`

  `forName(String blockName)`

  Returns the UnicodeBlock with the given name.

  `static Character.UnicodeBlock`

  `of(char c)`

  Returns the object representing the Unicode block containing the
  given character, or `null` if the character is not a
  member of a defined block.

  `static Character.UnicodeBlock`

  `of(int codePoint)`

  Returns the object representing the Unicode block
  containing the given character (Unicode code point), or
  `null` if the character is not a member of a
  defined block.

  ### Methods inherited from class java.lang.[Character.Subset](Character.Subset.md "class in java.lang")

  `equals, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### BASIC\_LATIN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BASIC\_LATIN

    Constant for the "Basic Latin" Unicode character block.

    Since:
    :   1.2
  + ### LATIN\_1\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_1\_SUPPLEMENT

    Constant for the "Latin-1 Supplement" Unicode character block.

    Since:
    :   1.2
  + ### LATIN\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_A

    Constant for the "Latin Extended-A" Unicode character block.

    Since:
    :   1.2
  + ### LATIN\_EXTENDED\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_B

    Constant for the "Latin Extended-B" Unicode character block.

    Since:
    :   1.2
  + ### IPA\_EXTENSIONS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") IPA\_EXTENSIONS

    Constant for the "IPA Extensions" Unicode character block.

    Since:
    :   1.2
  + ### SPACING\_MODIFIER\_LETTERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SPACING\_MODIFIER\_LETTERS

    Constant for the "Spacing Modifier Letters" Unicode character block.

    Since:
    :   1.2
  + ### COMBINING\_DIACRITICAL\_MARKS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COMBINING\_DIACRITICAL\_MARKS

    Constant for the "Combining Diacritical Marks" Unicode character block.

    Since:
    :   1.2
  + ### GREEK

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GREEK

    Constant for the "Greek and Coptic" Unicode character block.

    This block was previously known as the "Greek" block.

    Since:
    :   1.2
  + ### CYRILLIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYRILLIC

    Constant for the "Cyrillic" Unicode character block.

    Since:
    :   1.2
  + ### ARMENIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARMENIAN

    Constant for the "Armenian" Unicode character block.

    Since:
    :   1.2
  + ### HEBREW

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HEBREW

    Constant for the "Hebrew" Unicode character block.

    Since:
    :   1.2
  + ### ARABIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC

    Constant for the "Arabic" Unicode character block.

    Since:
    :   1.2
  + ### DEVANAGARI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DEVANAGARI

    Constant for the "Devanagari" Unicode character block.

    Since:
    :   1.2
  + ### BENGALI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BENGALI

    Constant for the "Bengali" Unicode character block.

    Since:
    :   1.2
  + ### GURMUKHI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GURMUKHI

    Constant for the "Gurmukhi" Unicode character block.

    Since:
    :   1.2
  + ### GUJARATI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GUJARATI

    Constant for the "Gujarati" Unicode character block.

    Since:
    :   1.2
  + ### ORIYA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ORIYA

    Constant for the "Oriya" Unicode character block.

    Since:
    :   1.2
  + ### TAMIL

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAMIL

    Constant for the "Tamil" Unicode character block.

    Since:
    :   1.2
  + ### TELUGU

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TELUGU

    Constant for the "Telugu" Unicode character block.

    Since:
    :   1.2
  + ### KANNADA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KANNADA

    Constant for the "Kannada" Unicode character block.

    Since:
    :   1.2
  + ### MALAYALAM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MALAYALAM

    Constant for the "Malayalam" Unicode character block.

    Since:
    :   1.2
  + ### THAI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") THAI

    Constant for the "Thai" Unicode character block.

    Since:
    :   1.2
  + ### LAO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LAO

    Constant for the "Lao" Unicode character block.

    Since:
    :   1.2
  + ### TIBETAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TIBETAN

    Constant for the "Tibetan" Unicode character block.

    Since:
    :   1.2
  + ### GEORGIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GEORGIAN

    Constant for the "Georgian" Unicode character block.

    Since:
    :   1.2
  + ### HANGUL\_JAMO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HANGUL\_JAMO

    Constant for the "Hangul Jamo" Unicode character block.

    Since:
    :   1.2
  + ### LATIN\_EXTENDED\_ADDITIONAL

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_ADDITIONAL

    Constant for the "Latin Extended Additional" Unicode character block.

    Since:
    :   1.2
  + ### GREEK\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GREEK\_EXTENDED

    Constant for the "Greek Extended" Unicode character block.

    Since:
    :   1.2
  + ### GENERAL\_PUNCTUATION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GENERAL\_PUNCTUATION

    Constant for the "General Punctuation" Unicode character block.

    Since:
    :   1.2
  + ### SUPERSCRIPTS\_AND\_SUBSCRIPTS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPERSCRIPTS\_AND\_SUBSCRIPTS

    Constant for the "Superscripts and Subscripts" Unicode character
    block.

    Since:
    :   1.2
  + ### CURRENCY\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CURRENCY\_SYMBOLS

    Constant for the "Currency Symbols" Unicode character block.

    Since:
    :   1.2
  + ### COMBINING\_MARKS\_FOR\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COMBINING\_MARKS\_FOR\_SYMBOLS

    Constant for the "Combining Diacritical Marks for Symbols" Unicode
    character block.

    This block was previously known as "Combining Marks for Symbols".

    Since:
    :   1.2
  + ### LETTERLIKE\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LETTERLIKE\_SYMBOLS

    Constant for the "Letterlike Symbols" Unicode character block.

    Since:
    :   1.2
  + ### NUMBER\_FORMS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NUMBER\_FORMS

    Constant for the "Number Forms" Unicode character block.

    Since:
    :   1.2
  + ### ARROWS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARROWS

    Constant for the "Arrows" Unicode character block.

    Since:
    :   1.2
  + ### MATHEMATICAL\_OPERATORS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MATHEMATICAL\_OPERATORS

    Constant for the "Mathematical Operators" Unicode character block.

    Since:
    :   1.2
  + ### MISCELLANEOUS\_TECHNICAL

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MISCELLANEOUS\_TECHNICAL

    Constant for the "Miscellaneous Technical" Unicode character block.

    Since:
    :   1.2
  + ### CONTROL\_PICTURES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CONTROL\_PICTURES

    Constant for the "Control Pictures" Unicode character block.

    Since:
    :   1.2
  + ### OPTICAL\_CHARACTER\_RECOGNITION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OPTICAL\_CHARACTER\_RECOGNITION

    Constant for the "Optical Character Recognition" Unicode character block.

    Since:
    :   1.2
  + ### ENCLOSED\_ALPHANUMERICS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ENCLOSED\_ALPHANUMERICS

    Constant for the "Enclosed Alphanumerics" Unicode character block.

    Since:
    :   1.2
  + ### BOX\_DRAWING

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BOX\_DRAWING

    Constant for the "Box Drawing" Unicode character block.

    Since:
    :   1.2
  + ### BLOCK\_ELEMENTS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BLOCK\_ELEMENTS

    Constant for the "Block Elements" Unicode character block.

    Since:
    :   1.2
  + ### GEOMETRIC\_SHAPES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GEOMETRIC\_SHAPES

    Constant for the "Geometric Shapes" Unicode character block.

    Since:
    :   1.2
  + ### MISCELLANEOUS\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MISCELLANEOUS\_SYMBOLS

    Constant for the "Miscellaneous Symbols" Unicode character block.

    Since:
    :   1.2
  + ### DINGBATS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DINGBATS

    Constant for the "Dingbats" Unicode character block.

    Since:
    :   1.2
  + ### CJK\_SYMBOLS\_AND\_PUNCTUATION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_SYMBOLS\_AND\_PUNCTUATION

    Constant for the "CJK Symbols and Punctuation" Unicode character block.

    Since:
    :   1.2
  + ### HIRAGANA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HIRAGANA

    Constant for the "Hiragana" Unicode character block.

    Since:
    :   1.2
  + ### KATAKANA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KATAKANA

    Constant for the "Katakana" Unicode character block.

    Since:
    :   1.2
  + ### BOPOMOFO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BOPOMOFO

    Constant for the "Bopomofo" Unicode character block.

    Since:
    :   1.2
  + ### HANGUL\_COMPATIBILITY\_JAMO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HANGUL\_COMPATIBILITY\_JAMO

    Constant for the "Hangul Compatibility Jamo" Unicode character block.

    Since:
    :   1.2
  + ### KANBUN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KANBUN

    Constant for the "Kanbun" Unicode character block.

    Since:
    :   1.2
  + ### ENCLOSED\_CJK\_LETTERS\_AND\_MONTHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ENCLOSED\_CJK\_LETTERS\_AND\_MONTHS

    Constant for the "Enclosed CJK Letters and Months" Unicode character block.

    Since:
    :   1.2
  + ### CJK\_COMPATIBILITY

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_COMPATIBILITY

    Constant for the "CJK Compatibility" Unicode character block.

    Since:
    :   1.2
  + ### CJK\_UNIFIED\_IDEOGRAPHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS

    Constant for the "CJK Unified Ideographs" Unicode character block.

    Since:
    :   1.2
  + ### HANGUL\_SYLLABLES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HANGUL\_SYLLABLES

    Constant for the "Hangul Syllables" Unicode character block.

    Since:
    :   1.2
  + ### PRIVATE\_USE\_AREA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PRIVATE\_USE\_AREA

    Constant for the "Private Use Area" Unicode character block.

    Since:
    :   1.2
  + ### CJK\_COMPATIBILITY\_IDEOGRAPHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_COMPATIBILITY\_IDEOGRAPHS

    Constant for the "CJK Compatibility Ideographs" Unicode character
    block.

    Since:
    :   1.2
  + ### ALPHABETIC\_PRESENTATION\_FORMS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ALPHABETIC\_PRESENTATION\_FORMS

    Constant for the "Alphabetic Presentation Forms" Unicode character block.

    Since:
    :   1.2
  + ### ARABIC\_PRESENTATION\_FORMS\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC\_PRESENTATION\_FORMS\_A

    Constant for the "Arabic Presentation Forms-A" Unicode character
    block.

    Since:
    :   1.2
  + ### COMBINING\_HALF\_MARKS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COMBINING\_HALF\_MARKS

    Constant for the "Combining Half Marks" Unicode character block.

    Since:
    :   1.2
  + ### CJK\_COMPATIBILITY\_FORMS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_COMPATIBILITY\_FORMS

    Constant for the "CJK Compatibility Forms" Unicode character block.

    Since:
    :   1.2
  + ### SMALL\_FORM\_VARIANTS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SMALL\_FORM\_VARIANTS

    Constant for the "Small Form Variants" Unicode character block.

    Since:
    :   1.2
  + ### ARABIC\_PRESENTATION\_FORMS\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC\_PRESENTATION\_FORMS\_B

    Constant for the "Arabic Presentation Forms-B" Unicode character block.

    Since:
    :   1.2
  + ### HALFWIDTH\_AND\_FULLWIDTH\_FORMS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HALFWIDTH\_AND\_FULLWIDTH\_FORMS

    Constant for the "Halfwidth and Fullwidth Forms" Unicode character
    block.

    Since:
    :   1.2
  + ### SPECIALS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SPECIALS

    Constant for the "Specials" Unicode character block.

    Since:
    :   1.2
  + ### SURROGATES\_AREA

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="1.5")
    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SURROGATES\_AREA

    Deprecated.

    Instead of `SURROGATES_AREA`, use [`HIGH_SURROGATES`](#HIGH_SURROGATES),
    [`HIGH_PRIVATE_USE_SURROGATES`](#HIGH_PRIVATE_USE_SURROGATES), and [`LOW_SURROGATES`](#LOW_SURROGATES).
    These constants match the block definitions of the Unicode Standard.
    The [`of(char)`](#of(char)) and [`of(int)`](#of(int)) methods return the
    standard constants.
  + ### SYRIAC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SYRIAC

    Constant for the "Syriac" Unicode character block.

    Since:
    :   1.4
  + ### THAANA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") THAANA

    Constant for the "Thaana" Unicode character block.

    Since:
    :   1.4
  + ### SINHALA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SINHALA

    Constant for the "Sinhala" Unicode character block.

    Since:
    :   1.4
  + ### MYANMAR

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MYANMAR

    Constant for the "Myanmar" Unicode character block.

    Since:
    :   1.4
  + ### ETHIOPIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ETHIOPIC

    Constant for the "Ethiopic" Unicode character block.

    Since:
    :   1.4
  + ### CHEROKEE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CHEROKEE

    Constant for the "Cherokee" Unicode character block.

    Since:
    :   1.4
  + ### UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS

    Constant for the "Unified Canadian Aboriginal Syllabics" Unicode character block.

    Since:
    :   1.4
  + ### OGHAM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OGHAM

    Constant for the "Ogham" Unicode character block.

    Since:
    :   1.4
  + ### RUNIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") RUNIC

    Constant for the "Runic" Unicode character block.

    Since:
    :   1.4
  + ### KHMER

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KHMER

    Constant for the "Khmer" Unicode character block.

    Since:
    :   1.4
  + ### MONGOLIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MONGOLIAN

    Constant for the "Mongolian" Unicode character block.

    Since:
    :   1.4
  + ### BRAILLE\_PATTERNS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BRAILLE\_PATTERNS

    Constant for the "Braille Patterns" Unicode character block.

    Since:
    :   1.4
  + ### CJK\_RADICALS\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_RADICALS\_SUPPLEMENT

    Constant for the "CJK Radicals Supplement" Unicode character block.

    Since:
    :   1.4
  + ### KANGXI\_RADICALS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KANGXI\_RADICALS

    Constant for the "Kangxi Radicals" Unicode character block.

    Since:
    :   1.4
  + ### IDEOGRAPHIC\_DESCRIPTION\_CHARACTERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") IDEOGRAPHIC\_DESCRIPTION\_CHARACTERS

    Constant for the "Ideographic Description Characters" Unicode character block.

    Since:
    :   1.4
  + ### BOPOMOFO\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BOPOMOFO\_EXTENDED

    Constant for the "Bopomofo Extended" Unicode character block.

    Since:
    :   1.4
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_A

    Constant for the "CJK Unified Ideographs Extension A" Unicode character block.

    Since:
    :   1.4
  + ### YI\_SYLLABLES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") YI\_SYLLABLES

    Constant for the "Yi Syllables" Unicode character block.

    Since:
    :   1.4
  + ### YI\_RADICALS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") YI\_RADICALS

    Constant for the "Yi Radicals" Unicode character block.

    Since:
    :   1.4
  + ### CYRILLIC\_SUPPLEMENTARY

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYRILLIC\_SUPPLEMENTARY

    Constant for the "Cyrillic Supplement" Unicode character block.
    This block was previously known as the "Cyrillic Supplementary" block.

    Since:
    :   1.5
  + ### TAGALOG

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAGALOG

    Constant for the "Tagalog" Unicode character block.

    Since:
    :   1.5
  + ### HANUNOO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HANUNOO

    Constant for the "Hanunoo" Unicode character block.

    Since:
    :   1.5
  + ### BUHID

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BUHID

    Constant for the "Buhid" Unicode character block.

    Since:
    :   1.5
  + ### TAGBANWA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAGBANWA

    Constant for the "Tagbanwa" Unicode character block.

    Since:
    :   1.5
  + ### LIMBU

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LIMBU

    Constant for the "Limbu" Unicode character block.

    Since:
    :   1.5
  + ### TAI\_LE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAI\_LE

    Constant for the "Tai Le" Unicode character block.

    Since:
    :   1.5
  + ### KHMER\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KHMER\_SYMBOLS

    Constant for the "Khmer Symbols" Unicode character block.

    Since:
    :   1.5
  + ### PHONETIC\_EXTENSIONS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PHONETIC\_EXTENSIONS

    Constant for the "Phonetic Extensions" Unicode character block.

    Since:
    :   1.5
  + ### MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_A

    Constant for the "Miscellaneous Mathematical Symbols-A" Unicode character block.

    Since:
    :   1.5
  + ### SUPPLEMENTAL\_ARROWS\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTAL\_ARROWS\_A

    Constant for the "Supplemental Arrows-A" Unicode character block.

    Since:
    :   1.5
  + ### SUPPLEMENTAL\_ARROWS\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTAL\_ARROWS\_B

    Constant for the "Supplemental Arrows-B" Unicode character block.

    Since:
    :   1.5
  + ### MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MISCELLANEOUS\_MATHEMATICAL\_SYMBOLS\_B

    Constant for the "Miscellaneous Mathematical Symbols-B" Unicode
    character block.

    Since:
    :   1.5
  + ### SUPPLEMENTAL\_MATHEMATICAL\_OPERATORS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTAL\_MATHEMATICAL\_OPERATORS

    Constant for the "Supplemental Mathematical Operators" Unicode
    character block.

    Since:
    :   1.5
  + ### MISCELLANEOUS\_SYMBOLS\_AND\_ARROWS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MISCELLANEOUS\_SYMBOLS\_AND\_ARROWS

    Constant for the "Miscellaneous Symbols and Arrows" Unicode character
    block.

    Since:
    :   1.5
  + ### KATAKANA\_PHONETIC\_EXTENSIONS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KATAKANA\_PHONETIC\_EXTENSIONS

    Constant for the "Katakana Phonetic Extensions" Unicode character
    block.

    Since:
    :   1.5
  + ### YIJING\_HEXAGRAM\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") YIJING\_HEXAGRAM\_SYMBOLS

    Constant for the "Yijing Hexagram Symbols" Unicode character block.

    Since:
    :   1.5
  + ### VARIATION\_SELECTORS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") VARIATION\_SELECTORS

    Constant for the "Variation Selectors" Unicode character block.

    Since:
    :   1.5
  + ### LINEAR\_B\_SYLLABARY

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LINEAR\_B\_SYLLABARY

    Constant for the "Linear B Syllabary" Unicode character block.

    Since:
    :   1.5
  + ### LINEAR\_B\_IDEOGRAMS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LINEAR\_B\_IDEOGRAMS

    Constant for the "Linear B Ideograms" Unicode character block.

    Since:
    :   1.5
  + ### AEGEAN\_NUMBERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") AEGEAN\_NUMBERS

    Constant for the "Aegean Numbers" Unicode character block.

    Since:
    :   1.5
  + ### OLD\_ITALIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_ITALIC

    Constant for the "Old Italic" Unicode character block.

    Since:
    :   1.5
  + ### GOTHIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GOTHIC

    Constant for the "Gothic" Unicode character block.

    Since:
    :   1.5
  + ### UGARITIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") UGARITIC

    Constant for the "Ugaritic" Unicode character block.

    Since:
    :   1.5
  + ### DESERET

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DESERET

    Constant for the "Deseret" Unicode character block.

    Since:
    :   1.5
  + ### SHAVIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SHAVIAN

    Constant for the "Shavian" Unicode character block.

    Since:
    :   1.5
  + ### OSMANYA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OSMANYA

    Constant for the "Osmanya" Unicode character block.

    Since:
    :   1.5
  + ### CYPRIOT\_SYLLABARY

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYPRIOT\_SYLLABARY

    Constant for the "Cypriot Syllabary" Unicode character block.

    Since:
    :   1.5
  + ### BYZANTINE\_MUSICAL\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BYZANTINE\_MUSICAL\_SYMBOLS

    Constant for the "Byzantine Musical Symbols" Unicode character block.

    Since:
    :   1.5
  + ### MUSICAL\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MUSICAL\_SYMBOLS

    Constant for the "Musical Symbols" Unicode character block.

    Since:
    :   1.5
  + ### TAI\_XUAN\_JING\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAI\_XUAN\_JING\_SYMBOLS

    Constant for the "Tai Xuan Jing Symbols" Unicode character block.

    Since:
    :   1.5
  + ### MATHEMATICAL\_ALPHANUMERIC\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MATHEMATICAL\_ALPHANUMERIC\_SYMBOLS

    Constant for the "Mathematical Alphanumeric Symbols" Unicode
    character block.

    Since:
    :   1.5
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_B

    Constant for the "CJK Unified Ideographs Extension B" Unicode
    character block.

    Since:
    :   1.5
  + ### CJK\_COMPATIBILITY\_IDEOGRAPHS\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_COMPATIBILITY\_IDEOGRAPHS\_SUPPLEMENT

    Constant for the "CJK Compatibility Ideographs Supplement" Unicode character block.

    Since:
    :   1.5
  + ### TAGS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAGS

    Constant for the "Tags" Unicode character block.

    Since:
    :   1.5
  + ### VARIATION\_SELECTORS\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") VARIATION\_SELECTORS\_SUPPLEMENT

    Constant for the "Variation Selectors Supplement" Unicode character
    block.

    Since:
    :   1.5
  + ### SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_A

    Constant for the "Supplementary Private Use Area-A" Unicode character
    block.

    Since:
    :   1.5
  + ### SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTARY\_PRIVATE\_USE\_AREA\_B

    Constant for the "Supplementary Private Use Area-B" Unicode character
    block.

    Since:
    :   1.5
  + ### HIGH\_SURROGATES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HIGH\_SURROGATES

    Constant for the "High Surrogates" Unicode character block.
    This block represents codepoint values in the high surrogate
    range: U+D800 through U+DB7F

    Since:
    :   1.5
  + ### HIGH\_PRIVATE\_USE\_SURROGATES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HIGH\_PRIVATE\_USE\_SURROGATES

    Constant for the "High Private Use Surrogates" Unicode character
    block.
    This block represents codepoint values in the private use high
    surrogate range: U+DB80 through U+DBFF

    Since:
    :   1.5
  + ### LOW\_SURROGATES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LOW\_SURROGATES

    Constant for the "Low Surrogates" Unicode character block.
    This block represents codepoint values in the low surrogate
    range: U+DC00 through U+DFFF

    Since:
    :   1.5
  + ### ARABIC\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC\_SUPPLEMENT

    Constant for the "Arabic Supplement" Unicode character block.

    Since:
    :   1.7
  + ### NKO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NKO

    Constant for the "NKo" Unicode character block.

    Since:
    :   1.7
  + ### SAMARITAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SAMARITAN

    Constant for the "Samaritan" Unicode character block.

    Since:
    :   1.7
  + ### MANDAIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MANDAIC

    Constant for the "Mandaic" Unicode character block.

    Since:
    :   1.7
  + ### ETHIOPIC\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ETHIOPIC\_SUPPLEMENT

    Constant for the "Ethiopic Supplement" Unicode character block.

    Since:
    :   1.7
  + ### UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS\_EXTENDED

    Constant for the "Unified Canadian Aboriginal Syllabics Extended"
    Unicode character block.

    Since:
    :   1.7
  + ### NEW\_TAI\_LUE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NEW\_TAI\_LUE

    Constant for the "New Tai Lue" Unicode character block.

    Since:
    :   1.7
  + ### BUGINESE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BUGINESE

    Constant for the "Buginese" Unicode character block.

    Since:
    :   1.7
  + ### TAI\_THAM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAI\_THAM

    Constant for the "Tai Tham" Unicode character block.

    Since:
    :   1.7
  + ### BALINESE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BALINESE

    Constant for the "Balinese" Unicode character block.

    Since:
    :   1.7
  + ### SUNDANESE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUNDANESE

    Constant for the "Sundanese" Unicode character block.

    Since:
    :   1.7
  + ### BATAK

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BATAK

    Constant for the "Batak" Unicode character block.

    Since:
    :   1.7
  + ### LEPCHA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LEPCHA

    Constant for the "Lepcha" Unicode character block.

    Since:
    :   1.7
  + ### OL\_CHIKI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OL\_CHIKI

    Constant for the "Ol Chiki" Unicode character block.

    Since:
    :   1.7
  + ### VEDIC\_EXTENSIONS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") VEDIC\_EXTENSIONS

    Constant for the "Vedic Extensions" Unicode character block.

    Since:
    :   1.7
  + ### PHONETIC\_EXTENSIONS\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PHONETIC\_EXTENSIONS\_SUPPLEMENT

    Constant for the "Phonetic Extensions Supplement" Unicode character
    block.

    Since:
    :   1.7
  + ### COMBINING\_DIACRITICAL\_MARKS\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COMBINING\_DIACRITICAL\_MARKS\_SUPPLEMENT

    Constant for the "Combining Diacritical Marks Supplement" Unicode
    character block.

    Since:
    :   1.7
  + ### GLAGOLITIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GLAGOLITIC

    Constant for the "Glagolitic" Unicode character block.

    Since:
    :   1.7
  + ### LATIN\_EXTENDED\_C

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_C

    Constant for the "Latin Extended-C" Unicode character block.

    Since:
    :   1.7
  + ### COPTIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COPTIC

    Constant for the "Coptic" Unicode character block.

    Since:
    :   1.7
  + ### GEORGIAN\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GEORGIAN\_SUPPLEMENT

    Constant for the "Georgian Supplement" Unicode character block.

    Since:
    :   1.7
  + ### TIFINAGH

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TIFINAGH

    Constant for the "Tifinagh" Unicode character block.

    Since:
    :   1.7
  + ### ETHIOPIC\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ETHIOPIC\_EXTENDED

    Constant for the "Ethiopic Extended" Unicode character block.

    Since:
    :   1.7
  + ### CYRILLIC\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYRILLIC\_EXTENDED\_A

    Constant for the "Cyrillic Extended-A" Unicode character block.

    Since:
    :   1.7
  + ### SUPPLEMENTAL\_PUNCTUATION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTAL\_PUNCTUATION

    Constant for the "Supplemental Punctuation" Unicode character block.

    Since:
    :   1.7
  + ### CJK\_STROKES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_STROKES

    Constant for the "CJK Strokes" Unicode character block.

    Since:
    :   1.7
  + ### LISU

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LISU

    Constant for the "Lisu" Unicode character block.

    Since:
    :   1.7
  + ### VAI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") VAI

    Constant for the "Vai" Unicode character block.

    Since:
    :   1.7
  + ### CYRILLIC\_EXTENDED\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYRILLIC\_EXTENDED\_B

    Constant for the "Cyrillic Extended-B" Unicode character block.

    Since:
    :   1.7
  + ### BAMUM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BAMUM

    Constant for the "Bamum" Unicode character block.

    Since:
    :   1.7
  + ### MODIFIER\_TONE\_LETTERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MODIFIER\_TONE\_LETTERS

    Constant for the "Modifier Tone Letters" Unicode character block.

    Since:
    :   1.7
  + ### LATIN\_EXTENDED\_D

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_D

    Constant for the "Latin Extended-D" Unicode character block.

    Since:
    :   1.7
  + ### SYLOTI\_NAGRI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SYLOTI\_NAGRI

    Constant for the "Syloti Nagri" Unicode character block.

    Since:
    :   1.7
  + ### COMMON\_INDIC\_NUMBER\_FORMS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COMMON\_INDIC\_NUMBER\_FORMS

    Constant for the "Common Indic Number Forms" Unicode character block.

    Since:
    :   1.7
  + ### PHAGS\_PA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PHAGS\_PA

    Constant for the "Phags-pa" Unicode character block.

    Since:
    :   1.7
  + ### SAURASHTRA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SAURASHTRA

    Constant for the "Saurashtra" Unicode character block.

    Since:
    :   1.7
  + ### DEVANAGARI\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DEVANAGARI\_EXTENDED

    Constant for the "Devanagari Extended" Unicode character block.

    Since:
    :   1.7
  + ### KAYAH\_LI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KAYAH\_LI

    Constant for the "Kayah Li" Unicode character block.

    Since:
    :   1.7
  + ### REJANG

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") REJANG

    Constant for the "Rejang" Unicode character block.

    Since:
    :   1.7
  + ### HANGUL\_JAMO\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HANGUL\_JAMO\_EXTENDED\_A

    Constant for the "Hangul Jamo Extended-A" Unicode character block.

    Since:
    :   1.7
  + ### JAVANESE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") JAVANESE

    Constant for the "Javanese" Unicode character block.

    Since:
    :   1.7
  + ### CHAM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CHAM

    Constant for the "Cham" Unicode character block.

    Since:
    :   1.7
  + ### MYANMAR\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MYANMAR\_EXTENDED\_A

    Constant for the "Myanmar Extended-A" Unicode character block.

    Since:
    :   1.7
  + ### TAI\_VIET

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAI\_VIET

    Constant for the "Tai Viet" Unicode character block.

    Since:
    :   1.7
  + ### ETHIOPIC\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ETHIOPIC\_EXTENDED\_A

    Constant for the "Ethiopic Extended-A" Unicode character block.

    Since:
    :   1.7
  + ### MEETEI\_MAYEK

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MEETEI\_MAYEK

    Constant for the "Meetei Mayek" Unicode character block.

    Since:
    :   1.7
  + ### HANGUL\_JAMO\_EXTENDED\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HANGUL\_JAMO\_EXTENDED\_B

    Constant for the "Hangul Jamo Extended-B" Unicode character block.

    Since:
    :   1.7
  + ### VERTICAL\_FORMS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") VERTICAL\_FORMS

    Constant for the "Vertical Forms" Unicode character block.

    Since:
    :   1.7
  + ### ANCIENT\_GREEK\_NUMBERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ANCIENT\_GREEK\_NUMBERS

    Constant for the "Ancient Greek Numbers" Unicode character block.

    Since:
    :   1.7
  + ### ANCIENT\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ANCIENT\_SYMBOLS

    Constant for the "Ancient Symbols" Unicode character block.

    Since:
    :   1.7
  + ### PHAISTOS\_DISC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PHAISTOS\_DISC

    Constant for the "Phaistos Disc" Unicode character block.

    Since:
    :   1.7
  + ### LYCIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LYCIAN

    Constant for the "Lycian" Unicode character block.

    Since:
    :   1.7
  + ### CARIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CARIAN

    Constant for the "Carian" Unicode character block.

    Since:
    :   1.7
  + ### OLD\_PERSIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_PERSIAN

    Constant for the "Old Persian" Unicode character block.

    Since:
    :   1.7
  + ### IMPERIAL\_ARAMAIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") IMPERIAL\_ARAMAIC

    Constant for the "Imperial Aramaic" Unicode character block.

    Since:
    :   1.7
  + ### PHOENICIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PHOENICIAN

    Constant for the "Phoenician" Unicode character block.

    Since:
    :   1.7
  + ### LYDIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LYDIAN

    Constant for the "Lydian" Unicode character block.

    Since:
    :   1.7
  + ### KHAROSHTHI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KHAROSHTHI

    Constant for the "Kharoshthi" Unicode character block.

    Since:
    :   1.7
  + ### OLD\_SOUTH\_ARABIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_SOUTH\_ARABIAN

    Constant for the "Old South Arabian" Unicode character block.

    Since:
    :   1.7
  + ### AVESTAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") AVESTAN

    Constant for the "Avestan" Unicode character block.

    Since:
    :   1.7
  + ### INSCRIPTIONAL\_PARTHIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") INSCRIPTIONAL\_PARTHIAN

    Constant for the "Inscriptional Parthian" Unicode character block.

    Since:
    :   1.7
  + ### INSCRIPTIONAL\_PAHLAVI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") INSCRIPTIONAL\_PAHLAVI

    Constant for the "Inscriptional Pahlavi" Unicode character block.

    Since:
    :   1.7
  + ### OLD\_TURKIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_TURKIC

    Constant for the "Old Turkic" Unicode character block.

    Since:
    :   1.7
  + ### RUMI\_NUMERAL\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") RUMI\_NUMERAL\_SYMBOLS

    Constant for the "Rumi Numeral Symbols" Unicode character block.

    Since:
    :   1.7
  + ### BRAHMI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BRAHMI

    Constant for the "Brahmi" Unicode character block.

    Since:
    :   1.7
  + ### KAITHI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KAITHI

    Constant for the "Kaithi" Unicode character block.

    Since:
    :   1.7
  + ### CUNEIFORM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CUNEIFORM

    Constant for the "Cuneiform" Unicode character block.

    Since:
    :   1.7
  + ### CUNEIFORM\_NUMBERS\_AND\_PUNCTUATION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CUNEIFORM\_NUMBERS\_AND\_PUNCTUATION

    Constant for the "Cuneiform Numbers and Punctuation" Unicode
    character block.

    Since:
    :   1.7
  + ### EGYPTIAN\_HIEROGLYPHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") EGYPTIAN\_HIEROGLYPHS

    Constant for the "Egyptian Hieroglyphs" Unicode character block.

    Since:
    :   1.7
  + ### BAMUM\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BAMUM\_SUPPLEMENT

    Constant for the "Bamum Supplement" Unicode character block.

    Since:
    :   1.7
  + ### KANA\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KANA\_SUPPLEMENT

    Constant for the "Kana Supplement" Unicode character block.

    Since:
    :   1.7
  + ### ANCIENT\_GREEK\_MUSICAL\_NOTATION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ANCIENT\_GREEK\_MUSICAL\_NOTATION

    Constant for the "Ancient Greek Musical Notation" Unicode character
    block.

    Since:
    :   1.7
  + ### COUNTING\_ROD\_NUMERALS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COUNTING\_ROD\_NUMERALS

    Constant for the "Counting Rod Numerals" Unicode character block.

    Since:
    :   1.7
  + ### MAHJONG\_TILES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MAHJONG\_TILES

    Constant for the "Mahjong Tiles" Unicode character block.

    Since:
    :   1.7
  + ### DOMINO\_TILES

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DOMINO\_TILES

    Constant for the "Domino Tiles" Unicode character block.

    Since:
    :   1.7
  + ### PLAYING\_CARDS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PLAYING\_CARDS

    Constant for the "Playing Cards" Unicode character block.

    Since:
    :   1.7
  + ### ENCLOSED\_ALPHANUMERIC\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ENCLOSED\_ALPHANUMERIC\_SUPPLEMENT

    Constant for the "Enclosed Alphanumeric Supplement" Unicode character
    block.

    Since:
    :   1.7
  + ### ENCLOSED\_IDEOGRAPHIC\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ENCLOSED\_IDEOGRAPHIC\_SUPPLEMENT

    Constant for the "Enclosed Ideographic Supplement" Unicode character
    block.

    Since:
    :   1.7
  + ### MISCELLANEOUS\_SYMBOLS\_AND\_PICTOGRAPHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MISCELLANEOUS\_SYMBOLS\_AND\_PICTOGRAPHS

    Constant for the "Miscellaneous Symbols And Pictographs" Unicode
    character block.

    Since:
    :   1.7
  + ### EMOTICONS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") EMOTICONS

    Constant for the "Emoticons" Unicode character block.

    Since:
    :   1.7
  + ### TRANSPORT\_AND\_MAP\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TRANSPORT\_AND\_MAP\_SYMBOLS

    Constant for the "Transport And Map Symbols" Unicode character block.

    Since:
    :   1.7
  + ### ALCHEMICAL\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ALCHEMICAL\_SYMBOLS

    Constant for the "Alchemical Symbols" Unicode character block.

    Since:
    :   1.7
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_C

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_C

    Constant for the "CJK Unified Ideographs Extension C" Unicode
    character block.

    Since:
    :   1.7
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_D

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_D

    Constant for the "CJK Unified Ideographs Extension D" Unicode
    character block.

    Since:
    :   1.7
  + ### ARABIC\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC\_EXTENDED\_A

    Constant for the "Arabic Extended-A" Unicode character block.

    Since:
    :   1.8
  + ### SUNDANESE\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUNDANESE\_SUPPLEMENT

    Constant for the "Sundanese Supplement" Unicode character block.

    Since:
    :   1.8
  + ### MEETEI\_MAYEK\_EXTENSIONS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MEETEI\_MAYEK\_EXTENSIONS

    Constant for the "Meetei Mayek Extensions" Unicode character block.

    Since:
    :   1.8
  + ### MEROITIC\_HIEROGLYPHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MEROITIC\_HIEROGLYPHS

    Constant for the "Meroitic Hieroglyphs" Unicode character block.

    Since:
    :   1.8
  + ### MEROITIC\_CURSIVE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MEROITIC\_CURSIVE

    Constant for the "Meroitic Cursive" Unicode character block.

    Since:
    :   1.8
  + ### SORA\_SOMPENG

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SORA\_SOMPENG

    Constant for the "Sora Sompeng" Unicode character block.

    Since:
    :   1.8
  + ### CHAKMA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CHAKMA

    Constant for the "Chakma" Unicode character block.

    Since:
    :   1.8
  + ### SHARADA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SHARADA

    Constant for the "Sharada" Unicode character block.

    Since:
    :   1.8
  + ### TAKRI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAKRI

    Constant for the "Takri" Unicode character block.

    Since:
    :   1.8
  + ### MIAO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MIAO

    Constant for the "Miao" Unicode character block.

    Since:
    :   1.8
  + ### ARABIC\_MATHEMATICAL\_ALPHABETIC\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC\_MATHEMATICAL\_ALPHABETIC\_SYMBOLS

    Constant for the "Arabic Mathematical Alphabetic Symbols" Unicode
    character block.

    Since:
    :   1.8
  + ### COMBINING\_DIACRITICAL\_MARKS\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COMBINING\_DIACRITICAL\_MARKS\_EXTENDED

    Constant for the "Combining Diacritical Marks Extended" Unicode
    character block.

    Since:
    :   9
  + ### MYANMAR\_EXTENDED\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MYANMAR\_EXTENDED\_B

    Constant for the "Myanmar Extended-B" Unicode character block.

    Since:
    :   9
  + ### LATIN\_EXTENDED\_E

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_E

    Constant for the "Latin Extended-E" Unicode character block.

    Since:
    :   9
  + ### COPTIC\_EPACT\_NUMBERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") COPTIC\_EPACT\_NUMBERS

    Constant for the "Coptic Epact Numbers" Unicode character block.

    Since:
    :   9
  + ### OLD\_PERMIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_PERMIC

    Constant for the "Old Permic" Unicode character block.

    Since:
    :   9
  + ### ELBASAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ELBASAN

    Constant for the "Elbasan" Unicode character block.

    Since:
    :   9
  + ### CAUCASIAN\_ALBANIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CAUCASIAN\_ALBANIAN

    Constant for the "Caucasian Albanian" Unicode character block.

    Since:
    :   9
  + ### LINEAR\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LINEAR\_A

    Constant for the "Linear A" Unicode character block.

    Since:
    :   9
  + ### PALMYRENE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PALMYRENE

    Constant for the "Palmyrene" Unicode character block.

    Since:
    :   9
  + ### NABATAEAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NABATAEAN

    Constant for the "Nabataean" Unicode character block.

    Since:
    :   9
  + ### OLD\_NORTH\_ARABIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_NORTH\_ARABIAN

    Constant for the "Old North Arabian" Unicode character block.

    Since:
    :   9
  + ### MANICHAEAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MANICHAEAN

    Constant for the "Manichaean" Unicode character block.

    Since:
    :   9
  + ### PSALTER\_PAHLAVI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PSALTER\_PAHLAVI

    Constant for the "Psalter Pahlavi" Unicode character block.

    Since:
    :   9
  + ### MAHAJANI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MAHAJANI

    Constant for the "Mahajani" Unicode character block.

    Since:
    :   9
  + ### SINHALA\_ARCHAIC\_NUMBERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SINHALA\_ARCHAIC\_NUMBERS

    Constant for the "Sinhala Archaic Numbers" Unicode character block.

    Since:
    :   9
  + ### KHOJKI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KHOJKI

    Constant for the "Khojki" Unicode character block.

    Since:
    :   9
  + ### KHUDAWADI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KHUDAWADI

    Constant for the "Khudawadi" Unicode character block.

    Since:
    :   9
  + ### GRANTHA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GRANTHA

    Constant for the "Grantha" Unicode character block.

    Since:
    :   9
  + ### TIRHUTA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TIRHUTA

    Constant for the "Tirhuta" Unicode character block.

    Since:
    :   9
  + ### SIDDHAM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SIDDHAM

    Constant for the "Siddham" Unicode character block.

    Since:
    :   9
  + ### MODI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MODI

    Constant for the "Modi" Unicode character block.

    Since:
    :   9
  + ### WARANG\_CITI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") WARANG\_CITI

    Constant for the "Warang Citi" Unicode character block.

    Since:
    :   9
  + ### PAU\_CIN\_HAU

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PAU\_CIN\_HAU

    Constant for the "Pau Cin Hau" Unicode character block.

    Since:
    :   9
  + ### MRO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MRO

    Constant for the "Mro" Unicode character block.

    Since:
    :   9
  + ### BASSA\_VAH

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BASSA\_VAH

    Constant for the "Bassa Vah" Unicode character block.

    Since:
    :   9
  + ### PAHAWH\_HMONG

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") PAHAWH\_HMONG

    Constant for the "Pahawh Hmong" Unicode character block.

    Since:
    :   9
  + ### DUPLOYAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DUPLOYAN

    Constant for the "Duployan" Unicode character block.

    Since:
    :   9
  + ### SHORTHAND\_FORMAT\_CONTROLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SHORTHAND\_FORMAT\_CONTROLS

    Constant for the "Shorthand Format Controls" Unicode character block.

    Since:
    :   9
  + ### MENDE\_KIKAKUI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MENDE\_KIKAKUI

    Constant for the "Mende Kikakui" Unicode character block.

    Since:
    :   9
  + ### ORNAMENTAL\_DINGBATS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ORNAMENTAL\_DINGBATS

    Constant for the "Ornamental Dingbats" Unicode character block.

    Since:
    :   9
  + ### GEOMETRIC\_SHAPES\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GEOMETRIC\_SHAPES\_EXTENDED

    Constant for the "Geometric Shapes Extended" Unicode character block.

    Since:
    :   9
  + ### SUPPLEMENTAL\_ARROWS\_C

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTAL\_ARROWS\_C

    Constant for the "Supplemental Arrows-C" Unicode character block.

    Since:
    :   9
  + ### CHEROKEE\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CHEROKEE\_SUPPLEMENT

    Constant for the "Cherokee Supplement" Unicode character block.

    Since:
    :   9
  + ### HATRAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HATRAN

    Constant for the "Hatran" Unicode character block.

    Since:
    :   9
  + ### OLD\_HUNGARIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_HUNGARIAN

    Constant for the "Old Hungarian" Unicode character block.

    Since:
    :   9
  + ### MULTANI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MULTANI

    Constant for the "Multani" Unicode character block.

    Since:
    :   9
  + ### AHOM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") AHOM

    Constant for the "Ahom" Unicode character block.

    Since:
    :   9
  + ### EARLY\_DYNASTIC\_CUNEIFORM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") EARLY\_DYNASTIC\_CUNEIFORM

    Constant for the "Early Dynastic Cuneiform" Unicode character block.

    Since:
    :   9
  + ### ANATOLIAN\_HIEROGLYPHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ANATOLIAN\_HIEROGLYPHS

    Constant for the "Anatolian Hieroglyphs" Unicode character block.

    Since:
    :   9
  + ### SUTTON\_SIGNWRITING

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUTTON\_SIGNWRITING

    Constant for the "Sutton SignWriting" Unicode character block.

    Since:
    :   9
  + ### SUPPLEMENTAL\_SYMBOLS\_AND\_PICTOGRAPHS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SUPPLEMENTAL\_SYMBOLS\_AND\_PICTOGRAPHS

    Constant for the "Supplemental Symbols and Pictographs" Unicode
    character block.

    Since:
    :   9
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_E

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_E

    Constant for the "CJK Unified Ideographs Extension E" Unicode
    character block.

    Since:
    :   9
  + ### SYRIAC\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SYRIAC\_SUPPLEMENT

    Constant for the "Syriac Supplement" Unicode
    character block.

    Since:
    :   11
  + ### CYRILLIC\_EXTENDED\_C

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYRILLIC\_EXTENDED\_C

    Constant for the "Cyrillic Extended-C" Unicode
    character block.

    Since:
    :   11
  + ### OSAGE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OSAGE

    Constant for the "Osage" Unicode
    character block.

    Since:
    :   11
  + ### NEWA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NEWA

    Constant for the "Newa" Unicode
    character block.

    Since:
    :   11
  + ### MONGOLIAN\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MONGOLIAN\_SUPPLEMENT

    Constant for the "Mongolian Supplement" Unicode
    character block.

    Since:
    :   11
  + ### MARCHEN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MARCHEN

    Constant for the "Marchen" Unicode
    character block.

    Since:
    :   11
  + ### IDEOGRAPHIC\_SYMBOLS\_AND\_PUNCTUATION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") IDEOGRAPHIC\_SYMBOLS\_AND\_PUNCTUATION

    Constant for the "Ideographic Symbols and Punctuation" Unicode
    character block.

    Since:
    :   11
  + ### TANGUT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TANGUT

    Constant for the "Tangut" Unicode
    character block.

    Since:
    :   11
  + ### TANGUT\_COMPONENTS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TANGUT\_COMPONENTS

    Constant for the "Tangut Components" Unicode
    character block.

    Since:
    :   11
  + ### KANA\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KANA\_EXTENDED\_A

    Constant for the "Kana Extended-A" Unicode
    character block.

    Since:
    :   11
  + ### GLAGOLITIC\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GLAGOLITIC\_SUPPLEMENT

    Constant for the "Glagolitic Supplement" Unicode
    character block.

    Since:
    :   11
  + ### ADLAM

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ADLAM

    Constant for the "Adlam" Unicode
    character block.

    Since:
    :   11
  + ### MASARAM\_GONDI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MASARAM\_GONDI

    Constant for the "Masaram Gondi" Unicode
    character block.

    Since:
    :   11
  + ### ZANABAZAR\_SQUARE

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ZANABAZAR\_SQUARE

    Constant for the "Zanabazar Square" Unicode
    character block.

    Since:
    :   11
  + ### NUSHU

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NUSHU

    Constant for the "Nushu" Unicode
    character block.

    Since:
    :   11
  + ### SOYOMBO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SOYOMBO

    Constant for the "Soyombo" Unicode
    character block.

    Since:
    :   11
  + ### BHAIKSUKI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") BHAIKSUKI

    Constant for the "Bhaiksuki" Unicode
    character block.

    Since:
    :   11
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_F

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_F

    Constant for the "CJK Unified Ideographs Extension F" Unicode
    character block.

    Since:
    :   11
  + ### GEORGIAN\_EXTENDED

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GEORGIAN\_EXTENDED

    Constant for the "Georgian Extended" Unicode
    character block.

    Since:
    :   12
  + ### HANIFI\_ROHINGYA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") HANIFI\_ROHINGYA

    Constant for the "Hanifi Rohingya" Unicode
    character block.

    Since:
    :   12
  + ### OLD\_SOGDIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_SOGDIAN

    Constant for the "Old Sogdian" Unicode
    character block.

    Since:
    :   12
  + ### SOGDIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SOGDIAN

    Constant for the "Sogdian" Unicode
    character block.

    Since:
    :   12
  + ### DOGRA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DOGRA

    Constant for the "Dogra" Unicode
    character block.

    Since:
    :   12
  + ### GUNJALA\_GONDI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") GUNJALA\_GONDI

    Constant for the "Gunjala Gondi" Unicode
    character block.

    Since:
    :   12
  + ### MAKASAR

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MAKASAR

    Constant for the "Makasar" Unicode
    character block.

    Since:
    :   12
  + ### MEDEFAIDRIN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MEDEFAIDRIN

    Constant for the "Medefaidrin" Unicode
    character block.

    Since:
    :   12
  + ### MAYAN\_NUMERALS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") MAYAN\_NUMERALS

    Constant for the "Mayan Numerals" Unicode
    character block.

    Since:
    :   12
  + ### INDIC\_SIYAQ\_NUMBERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") INDIC\_SIYAQ\_NUMBERS

    Constant for the "Indic Siyaq Numbers" Unicode
    character block.

    Since:
    :   12
  + ### CHESS\_SYMBOLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CHESS\_SYMBOLS

    Constant for the "Chess Symbols" Unicode
    character block.

    Since:
    :   12
  + ### ELYMAIC

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ELYMAIC

    Constant for the "Elymaic" Unicode
    character block.

    Since:
    :   13
  + ### NANDINAGARI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NANDINAGARI

    Constant for the "Nandinagari" Unicode
    character block.

    Since:
    :   13
  + ### TAMIL\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TAMIL\_SUPPLEMENT

    Constant for the "Tamil Supplement" Unicode
    character block.

    Since:
    :   13
  + ### EGYPTIAN\_HIEROGLYPH\_FORMAT\_CONTROLS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") EGYPTIAN\_HIEROGLYPH\_FORMAT\_CONTROLS

    Constant for the "Egyptian Hieroglyph Format Controls" Unicode
    character block.

    Since:
    :   13
  + ### SMALL\_KANA\_EXTENSION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SMALL\_KANA\_EXTENSION

    Constant for the "Small Kana Extension" Unicode
    character block.

    Since:
    :   13
  + ### NYIAKENG\_PUACHUE\_HMONG

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NYIAKENG\_PUACHUE\_HMONG

    Constant for the "Nyiakeng Puachue Hmong" Unicode
    character block.

    Since:
    :   13
  + ### WANCHO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") WANCHO

    Constant for the "Wancho" Unicode
    character block.

    Since:
    :   13
  + ### OTTOMAN\_SIYAQ\_NUMBERS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OTTOMAN\_SIYAQ\_NUMBERS

    Constant for the "Ottoman Siyaq Numbers" Unicode
    character block.

    Since:
    :   13
  + ### SYMBOLS\_AND\_PICTOGRAPHS\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SYMBOLS\_AND\_PICTOGRAPHS\_EXTENDED\_A

    Constant for the "Symbols and Pictographs Extended-A" Unicode
    character block.

    Since:
    :   13
  + ### YEZIDI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") YEZIDI

    Constant for the "Yezidi" Unicode
    character block.

    Since:
    :   15
  + ### CHORASMIAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CHORASMIAN

    Constant for the "Chorasmian" Unicode
    character block.

    Since:
    :   15
  + ### DIVES\_AKURU

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DIVES\_AKURU

    Constant for the "Dives Akuru" Unicode
    character block.

    Since:
    :   15
  + ### LISU\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LISU\_SUPPLEMENT

    Constant for the "Lisu Supplement" Unicode
    character block.

    Since:
    :   15
  + ### KHITAN\_SMALL\_SCRIPT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KHITAN\_SMALL\_SCRIPT

    Constant for the "Khitan Small Script" Unicode
    character block.

    Since:
    :   15
  + ### TANGUT\_SUPPLEMENT

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TANGUT\_SUPPLEMENT

    Constant for the "Tangut Supplement" Unicode
    character block.

    Since:
    :   15
  + ### SYMBOLS\_FOR\_LEGACY\_COMPUTING

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") SYMBOLS\_FOR\_LEGACY\_COMPUTING

    Constant for the "Symbols for Legacy Computing" Unicode
    character block.

    Since:
    :   15
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_G

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_G

    Constant for the "CJK Unified Ideographs Extension G" Unicode
    character block.

    Since:
    :   15
  + ### ARABIC\_EXTENDED\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC\_EXTENDED\_B

    Constant for the "Arabic Extended-B" Unicode
    character block.

    Since:
    :   19
  + ### VITHKUQI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") VITHKUQI

    Constant for the "Vithkuqi" Unicode
    character block.

    Since:
    :   19
  + ### LATIN\_EXTENDED\_F

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_F

    Constant for the "Latin Extended-F" Unicode
    character block.

    Since:
    :   19
  + ### OLD\_UYGHUR

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") OLD\_UYGHUR

    Constant for the "Old Uyghur" Unicode
    character block.

    Since:
    :   19
  + ### UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") UNIFIED\_CANADIAN\_ABORIGINAL\_SYLLABICS\_EXTENDED\_A

    Constant for the "Unified Canadian Aboriginal Syllabics Extended-A" Unicode
    character block.

    Since:
    :   19
  + ### CYPRO\_MINOAN

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYPRO\_MINOAN

    Constant for the "Cypro-Minoan" Unicode
    character block.

    Since:
    :   19
  + ### TANGSA

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TANGSA

    Constant for the "Tangsa" Unicode
    character block.

    Since:
    :   19
  + ### KANA\_EXTENDED\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KANA\_EXTENDED\_B

    Constant for the "Kana Extended-B" Unicode
    character block.

    Since:
    :   19
  + ### ZNAMENNY\_MUSICAL\_NOTATION

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ZNAMENNY\_MUSICAL\_NOTATION

    Constant for the "Znamenny Musical Notation" Unicode
    character block.

    Since:
    :   19
  + ### LATIN\_EXTENDED\_G

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") LATIN\_EXTENDED\_G

    Constant for the "Latin Extended-G" Unicode
    character block.

    Since:
    :   19
  + ### TOTO

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") TOTO

    Constant for the "Toto" Unicode
    character block.

    Since:
    :   19
  + ### ETHIOPIC\_EXTENDED\_B

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ETHIOPIC\_EXTENDED\_B

    Constant for the "Ethiopic Extended-B" Unicode
    character block.

    Since:
    :   19
  + ### ARABIC\_EXTENDED\_C

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") ARABIC\_EXTENDED\_C

    Constant for the "Arabic Extended-C" Unicode
    character block.

    Since:
    :   20
  + ### DEVANAGARI\_EXTENDED\_A

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") DEVANAGARI\_EXTENDED\_A

    Constant for the "Devanagari Extended-A" Unicode
    character block.

    Since:
    :   20
  + ### KAWI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KAWI

    Constant for the "Kawi" Unicode
    character block.

    Since:
    :   20
  + ### KAKTOVIK\_NUMERALS

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") KAKTOVIK\_NUMERALS

    Constant for the "Kaktovik Numerals" Unicode
    character block.

    Since:
    :   20
  + ### CYRILLIC\_EXTENDED\_D

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CYRILLIC\_EXTENDED\_D

    Constant for the "Cyrillic Extended-D" Unicode
    character block.

    Since:
    :   20
  + ### NAG\_MUNDARI

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") NAG\_MUNDARI

    Constant for the "Nag Mundari" Unicode
    character block.

    Since:
    :   20
  + ### CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_H

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") CJK\_UNIFIED\_IDEOGRAPHS\_EXTENSION\_H

    Constant for the "CJK Unified Ideographs Extension H" Unicode
    character block.

    Since:
    :   20
* ## Method Details

  + ### of

    public static [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") of(char c)

    Returns the object representing the Unicode block containing the
    given character, or `null` if the character is not a
    member of a defined block.

    **Note:** This method cannot handle
     [supplementary
    characters](Character.md#supplementary). To support all Unicode characters, including
    supplementary characters, use the [`of(int)`](#of(int)) method.

    Parameters:
    :   `c` - The character in question

    Returns:
    :   The `UnicodeBlock` instance representing the
        Unicode block of which this character is a member, or
        `null` if the character is not a member of any
        Unicode block
  + ### of

    public static [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") of(int codePoint)

    Returns the object representing the Unicode block
    containing the given character (Unicode code point), or
    `null` if the character is not a member of a
    defined block.

    Parameters:
    :   `codePoint` - the character (Unicode code point) in question.

    Returns:
    :   The `UnicodeBlock` instance representing the
        Unicode block of which this character is a member, or
        `null` if the character is not a member of any
        Unicode block

    Throws:
    :   `IllegalArgumentException` - if the specified
        `codePoint` is an invalid Unicode code point.

    Since:
    :   1.5

    See Also:
    :   - [`Character.isValidCodePoint(int)`](Character.md#isValidCodePoint(int))
  + ### forName

    public static final [Character.UnicodeBlock](Character.UnicodeBlock.md "class in java.lang") forName([String](String.md "class in java.lang") blockName)

    Returns the UnicodeBlock with the given name. Block
    names are determined by The Unicode Standard. The file
    `Blocks.txt` defines blocks for a particular
    version of the standard. The [`Character`](Character.md "class in java.lang") class specifies
    the version of the standard that it supports.

    This method accepts block names in the following forms:
    1. Canonical block names as defined by the Unicode Standard.
       For example, the standard defines a "Basic Latin" block. Therefore, this
       method accepts "Basic Latin" as a valid block name. The documentation of
       each UnicodeBlock provides the canonical name.+ Canonical block names with all spaces removed. For example, "BasicLatin"
         is a valid block name for the "Basic Latin" block.+ The text representation of each constant UnicodeBlock identifier.
           For example, this method will return the [`BASIC_LATIN`](#BASIC_LATIN) block if
           provided with the "BASIC\_LATIN" name. This form replaces all spaces and
           hyphens in the canonical name with underscores.Finally, character case is ignored for all of the valid block name forms.
    For example, "BASIC\_LATIN" and "basic\_latin" are both valid block names.
    The en\_US locale's case mapping rules are used to provide case-insensitive
    string comparisons for block name validation.

    If the Unicode Standard changes block names, both the previous and
    current names will be accepted.

    Parameters:
    :   `blockName` - A `UnicodeBlock` name.

    Returns:
    :   The `UnicodeBlock` instance identified
        by `blockName`

    Throws:
    :   `IllegalArgumentException` - if `blockName` is an
        invalid name
    :   `NullPointerException` - if `blockName` is null

    Since:
    :   1.5