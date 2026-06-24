Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Enum Class Character.UnicodeScript

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Enum](Enum.md "class in java.lang")<[Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang")>

java.lang.Character.UnicodeScript

All Implemented Interfaces:
:   `Serializable`, `Comparable<Character.UnicodeScript>`, `Constable`

Enclosing class:
:   `Character`

---

public static enum Character.UnicodeScript
extends [Enum](Enum.md "class in java.lang")<[Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang")>

A family of character subsets representing the character scripts
defined in the [*Unicode Standard Annex #24: Script Names*](http://www.unicode.org/reports/tr24/). Every Unicode
character is assigned to a single Unicode script, either a specific
script, such as [`Latin`](#LATIN), or
one of the following three special values,
[`Inherited`](#INHERITED),
[`Common`](#COMMON) or
[`Unknown`](#UNKNOWN).

Since:
:   1.7

External Specifications
:   * [Unicode Script Property](https://www.unicode.org/reports/tr24)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ADLAM`

  Unicode script "Adlam".

  `AHOM`

  Unicode script "Ahom".

  `ANATOLIAN_HIEROGLYPHS`

  Unicode script "Anatolian Hieroglyphs".

  `ARABIC`

  Unicode script "Arabic".

  `ARMENIAN`

  Unicode script "Armenian".

  `AVESTAN`

  Unicode script "Avestan".

  `BALINESE`

  Unicode script "Balinese".

  `BAMUM`

  Unicode script "Bamum".

  `BASSA_VAH`

  Unicode script "Bassa Vah".

  `BATAK`

  Unicode script "Batak".

  `BENGALI`

  Unicode script "Bengali".

  `BHAIKSUKI`

  Unicode script "Bhaiksuki".

  `BOPOMOFO`

  Unicode script "Bopomofo".

  `BRAHMI`

  Unicode script "Brahmi".

  `BRAILLE`

  Unicode script "Braille".

  `BUGINESE`

  Unicode script "Buginese".

  `BUHID`

  Unicode script "Buhid".

  `CANADIAN_ABORIGINAL`

  Unicode script "Canadian\_Aboriginal".

  `CARIAN`

  Unicode script "Carian".

  `CAUCASIAN_ALBANIAN`

  Unicode script "Caucasian Albanian".

  `CHAKMA`

  Unicode script "Chakma".

  `CHAM`

  Unicode script "Cham".

  `CHEROKEE`

  Unicode script "Cherokee".

  `CHORASMIAN`

  Unicode script "Chorasmian".

  `COMMON`

  Unicode script "Common".

  `COPTIC`

  Unicode script "Coptic".

  `CUNEIFORM`

  Unicode script "Cuneiform".

  `CYPRIOT`

  Unicode script "Cypriot".

  `CYPRO_MINOAN`

  Unicode script "Cypro Minoan".

  `CYRILLIC`

  Unicode script "Cyrillic".

  `DESERET`

  Unicode script "Deseret".

  `DEVANAGARI`

  Unicode script "Devanagari".

  `DIVES_AKURU`

  Unicode script "Dives Akuru".

  `DOGRA`

  Unicode script "Dogra".

  `DUPLOYAN`

  Unicode script "Duployan".

  `EGYPTIAN_HIEROGLYPHS`

  Unicode script "Egyptian\_Hieroglyphs".

  `ELBASAN`

  Unicode script "Elbasan".

  `ELYMAIC`

  Unicode script "Elymaic".

  `ETHIOPIC`

  Unicode script "Ethiopic".

  `GEORGIAN`

  Unicode script "Georgian".

  `GLAGOLITIC`

  Unicode script "Glagolitic".

  `GOTHIC`

  Unicode script "Gothic".

  `GRANTHA`

  Unicode script "Grantha".

  `GREEK`

  Unicode script "Greek".

  `GUJARATI`

  Unicode script "Gujarati".

  `GUNJALA_GONDI`

  Unicode script "Gunjala Gondi".

  `GURMUKHI`

  Unicode script "Gurmukhi".

  `HAN`

  Unicode script "Han".

  `HANGUL`

  Unicode script "Hangul".

  `HANIFI_ROHINGYA`

  Unicode script "Hanifi Rohingya".

  `HANUNOO`

  Unicode script "Hanunoo".

  `HATRAN`

  Unicode script "Hatran".

  `HEBREW`

  Unicode script "Hebrew".

  `HIRAGANA`

  Unicode script "Hiragana".

  `IMPERIAL_ARAMAIC`

  Unicode script "Imperial\_Aramaic".

  `INHERITED`

  Unicode script "Inherited".

  `INSCRIPTIONAL_PAHLAVI`

  Unicode script "Inscriptional\_Pahlavi".

  `INSCRIPTIONAL_PARTHIAN`

  Unicode script "Inscriptional\_Parthian".

  `JAVANESE`

  Unicode script "Javanese".

  `KAITHI`

  Unicode script "Kaithi".

  `KANNADA`

  Unicode script "Kannada".

  `KATAKANA`

  Unicode script "Katakana".

  `KAWI`

  Unicode script "Kawi".

  `KAYAH_LI`

  Unicode script "Kayah\_Li".

  `KHAROSHTHI`

  Unicode script "Kharoshthi".

  `KHITAN_SMALL_SCRIPT`

  Unicode script "Khitan Small Script".

  `KHMER`

  Unicode script "Khmer".

  `KHOJKI`

  Unicode script "Khojki".

  `KHUDAWADI`

  Unicode script "Khudawadi".

  `LAO`

  Unicode script "Lao".

  `LATIN`

  Unicode script "Latin".

  `LEPCHA`

  Unicode script "Lepcha".

  `LIMBU`

  Unicode script "Limbu".

  `LINEAR_A`

  Unicode script "Linear A".

  `LINEAR_B`

  Unicode script "Linear\_B".

  `LISU`

  Unicode script "Lisu".

  `LYCIAN`

  Unicode script "Lycian".

  `LYDIAN`

  Unicode script "Lydian".

  `MAHAJANI`

  Unicode script "Mahajani".

  `MAKASAR`

  Unicode script "Makasar".

  `MALAYALAM`

  Unicode script "Malayalam".

  `MANDAIC`

  Unicode script "Mandaic".

  `MANICHAEAN`

  Unicode script "Manichaean".

  `MARCHEN`

  Unicode script "Marchen".

  `MASARAM_GONDI`

  Unicode script "Masaram Gondi".

  `MEDEFAIDRIN`

  Unicode script "Medefaidrin".

  `MEETEI_MAYEK`

  Unicode script "Meetei\_Mayek".

  `MENDE_KIKAKUI`

  Unicode script "Mende Kikakui".

  `MEROITIC_CURSIVE`

  Unicode script "Meroitic Cursive".

  `MEROITIC_HIEROGLYPHS`

  Unicode script "Meroitic Hieroglyphs".

  `MIAO`

  Unicode script "Miao".

  `MODI`

  Unicode script "Modi".

  `MONGOLIAN`

  Unicode script "Mongolian".

  `MRO`

  Unicode script "Mro".

  `MULTANI`

  Unicode script "Multani".

  `MYANMAR`

  Unicode script "Myanmar".

  `NABATAEAN`

  Unicode script "Nabataean".

  `NAG_MUNDARI`

  Unicode script "Nag Mundari".

  `NANDINAGARI`

  Unicode script "Nandinagari".

  `NEW_TAI_LUE`

  Unicode script "New\_Tai\_Lue".

  `NEWA`

  Unicode script "Newa".

  `NKO`

  Unicode script "Nko".

  `NUSHU`

  Unicode script "Nushu".

  `NYIAKENG_PUACHUE_HMONG`

  Unicode script "Nyiakeng Puachue Hmong".

  `OGHAM`

  Unicode script "Ogham".

  `OL_CHIKI`

  Unicode script "Ol\_Chiki".

  `OLD_HUNGARIAN`

  Unicode script "Old Hungarian".

  `OLD_ITALIC`

  Unicode script "Old\_Italic".

  `OLD_NORTH_ARABIAN`

  Unicode script "Old North Arabian".

  `OLD_PERMIC`

  Unicode script "Old Permic".

  `OLD_PERSIAN`

  Unicode script "Old\_Persian".

  `OLD_SOGDIAN`

  Unicode script "Old Sogdian".

  `OLD_SOUTH_ARABIAN`

  Unicode script "Old\_South\_Arabian".

  `OLD_TURKIC`

  Unicode script "Old\_Turkic".

  `OLD_UYGHUR`

  Unicode script "Old Uyghur".

  `ORIYA`

  Unicode script "Oriya".

  `OSAGE`

  Unicode script "Osage".

  `OSMANYA`

  Unicode script "Osmanya".

  `PAHAWH_HMONG`

  Unicode script "Pahawh Hmong".

  `PALMYRENE`

  Unicode script "Palmyrene".

  `PAU_CIN_HAU`

  Unicode script "Pau Cin Hau".

  `PHAGS_PA`

  Unicode script "Phags\_Pa".

  `PHOENICIAN`

  Unicode script "Phoenician".

  `PSALTER_PAHLAVI`

  Unicode script "Psalter Pahlavi".

  `REJANG`

  Unicode script "Rejang".

  `RUNIC`

  Unicode script "Runic".

  `SAMARITAN`

  Unicode script "Samaritan".

  `SAURASHTRA`

  Unicode script "Saurashtra".

  `SHARADA`

  Unicode script "Sharada".

  `SHAVIAN`

  Unicode script "Shavian".

  `SIDDHAM`

  Unicode script "Siddham".

  `SIGNWRITING`

  Unicode script "SignWriting".

  `SINHALA`

  Unicode script "Sinhala".

  `SOGDIAN`

  Unicode script "Sogdian".

  `SORA_SOMPENG`

  Unicode script "Sora Sompeng".

  `SOYOMBO`

  Unicode script "Soyombo".

  `SUNDANESE`

  Unicode script "Sundanese".

  `SYLOTI_NAGRI`

  Unicode script "Syloti\_Nagri".

  `SYRIAC`

  Unicode script "Syriac".

  `TAGALOG`

  Unicode script "Tagalog".

  `TAGBANWA`

  Unicode script "Tagbanwa".

  `TAI_LE`

  Unicode script "Tai\_Le".

  `TAI_THAM`

  Unicode script "Tai\_Tham".

  `TAI_VIET`

  Unicode script "Tai\_Viet".

  `TAKRI`

  Unicode script "Takri".

  `TAMIL`

  Unicode script "Tamil".

  `TANGSA`

  Unicode script "Tangsa".

  `TANGUT`

  Unicode script "Tangut".

  `TELUGU`

  Unicode script "Telugu".

  `THAANA`

  Unicode script "Thaana".

  `THAI`

  Unicode script "Thai".

  `TIBETAN`

  Unicode script "Tibetan".

  `TIFINAGH`

  Unicode script "Tifinagh".

  `TIRHUTA`

  Unicode script "Tirhuta".

  `TOTO`

  Unicode script "Toto".

  `UGARITIC`

  Unicode script "Ugaritic".

  `UNKNOWN`

  Unicode script "Unknown".

  `VAI`

  Unicode script "Vai".

  `VITHKUQI`

  Unicode script "Vithkuqi".

  `WANCHO`

  Unicode script "Wancho".

  `WARANG_CITI`

  Unicode script "Warang Citi".

  `YEZIDI`

  Unicode script "Yezidi".

  `YI`

  Unicode script "Yi".

  `ZANABAZAR_SQUARE`

  Unicode script "Zanabazar Square".
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static final Character.UnicodeScript`

  `forName(String scriptName)`

  Returns the UnicodeScript constant with the given Unicode script
  name or the script name alias.

  `static Character.UnicodeScript`

  `of(int codePoint)`

  Returns the enum constant representing the Unicode script of which
  the given character (Unicode code point) is assigned to.

  `static Character.UnicodeScript`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Character.UnicodeScript[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### COMMON

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") COMMON

    Unicode script "Common".
  + ### LATIN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LATIN

    Unicode script "Latin".
  + ### GREEK

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GREEK

    Unicode script "Greek".
  + ### CYRILLIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CYRILLIC

    Unicode script "Cyrillic".
  + ### ARMENIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ARMENIAN

    Unicode script "Armenian".
  + ### HEBREW

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") HEBREW

    Unicode script "Hebrew".
  + ### ARABIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ARABIC

    Unicode script "Arabic".
  + ### SYRIAC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SYRIAC

    Unicode script "Syriac".
  + ### THAANA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") THAANA

    Unicode script "Thaana".
  + ### DEVANAGARI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") DEVANAGARI

    Unicode script "Devanagari".
  + ### BENGALI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BENGALI

    Unicode script "Bengali".
  + ### GURMUKHI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GURMUKHI

    Unicode script "Gurmukhi".
  + ### GUJARATI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GUJARATI

    Unicode script "Gujarati".
  + ### ORIYA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ORIYA

    Unicode script "Oriya".
  + ### TAMIL

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TAMIL

    Unicode script "Tamil".
  + ### TELUGU

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TELUGU

    Unicode script "Telugu".
  + ### KANNADA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KANNADA

    Unicode script "Kannada".
  + ### MALAYALAM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MALAYALAM

    Unicode script "Malayalam".
  + ### SINHALA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SINHALA

    Unicode script "Sinhala".
  + ### THAI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") THAI

    Unicode script "Thai".
  + ### LAO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LAO

    Unicode script "Lao".
  + ### TIBETAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TIBETAN

    Unicode script "Tibetan".
  + ### MYANMAR

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MYANMAR

    Unicode script "Myanmar".
  + ### GEORGIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GEORGIAN

    Unicode script "Georgian".
  + ### HANGUL

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") HANGUL

    Unicode script "Hangul".
  + ### ETHIOPIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ETHIOPIC

    Unicode script "Ethiopic".
  + ### CHEROKEE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CHEROKEE

    Unicode script "Cherokee".
  + ### CANADIAN\_ABORIGINAL

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CANADIAN\_ABORIGINAL

    Unicode script "Canadian\_Aboriginal".
  + ### OGHAM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OGHAM

    Unicode script "Ogham".
  + ### RUNIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") RUNIC

    Unicode script "Runic".
  + ### KHMER

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KHMER

    Unicode script "Khmer".
  + ### MONGOLIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MONGOLIAN

    Unicode script "Mongolian".
  + ### HIRAGANA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") HIRAGANA

    Unicode script "Hiragana".
  + ### KATAKANA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KATAKANA

    Unicode script "Katakana".
  + ### BOPOMOFO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BOPOMOFO

    Unicode script "Bopomofo".
  + ### HAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") HAN

    Unicode script "Han".
  + ### YI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") YI

    Unicode script "Yi".
  + ### OLD\_ITALIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_ITALIC

    Unicode script "Old\_Italic".
  + ### GOTHIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GOTHIC

    Unicode script "Gothic".
  + ### DESERET

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") DESERET

    Unicode script "Deseret".
  + ### INHERITED

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") INHERITED

    Unicode script "Inherited".
  + ### TAGALOG

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TAGALOG

    Unicode script "Tagalog".
  + ### HANUNOO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") HANUNOO

    Unicode script "Hanunoo".
  + ### BUHID

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BUHID

    Unicode script "Buhid".
  + ### TAGBANWA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TAGBANWA

    Unicode script "Tagbanwa".
  + ### LIMBU

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LIMBU

    Unicode script "Limbu".
  + ### TAI\_LE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TAI\_LE

    Unicode script "Tai\_Le".
  + ### LINEAR\_B

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LINEAR\_B

    Unicode script "Linear\_B".
  + ### UGARITIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") UGARITIC

    Unicode script "Ugaritic".
  + ### SHAVIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SHAVIAN

    Unicode script "Shavian".
  + ### OSMANYA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OSMANYA

    Unicode script "Osmanya".
  + ### CYPRIOT

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CYPRIOT

    Unicode script "Cypriot".
  + ### BRAILLE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BRAILLE

    Unicode script "Braille".
  + ### BUGINESE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BUGINESE

    Unicode script "Buginese".
  + ### COPTIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") COPTIC

    Unicode script "Coptic".
  + ### NEW\_TAI\_LUE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NEW\_TAI\_LUE

    Unicode script "New\_Tai\_Lue".
  + ### GLAGOLITIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GLAGOLITIC

    Unicode script "Glagolitic".
  + ### TIFINAGH

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TIFINAGH

    Unicode script "Tifinagh".
  + ### SYLOTI\_NAGRI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SYLOTI\_NAGRI

    Unicode script "Syloti\_Nagri".
  + ### OLD\_PERSIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_PERSIAN

    Unicode script "Old\_Persian".
  + ### KHAROSHTHI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KHAROSHTHI

    Unicode script "Kharoshthi".
  + ### BALINESE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BALINESE

    Unicode script "Balinese".
  + ### CUNEIFORM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CUNEIFORM

    Unicode script "Cuneiform".
  + ### PHOENICIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") PHOENICIAN

    Unicode script "Phoenician".
  + ### PHAGS\_PA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") PHAGS\_PA

    Unicode script "Phags\_Pa".
  + ### NKO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NKO

    Unicode script "Nko".
  + ### SUNDANESE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SUNDANESE

    Unicode script "Sundanese".
  + ### BATAK

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BATAK

    Unicode script "Batak".
  + ### LEPCHA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LEPCHA

    Unicode script "Lepcha".
  + ### OL\_CHIKI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OL\_CHIKI

    Unicode script "Ol\_Chiki".
  + ### VAI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") VAI

    Unicode script "Vai".
  + ### SAURASHTRA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SAURASHTRA

    Unicode script "Saurashtra".
  + ### KAYAH\_LI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KAYAH\_LI

    Unicode script "Kayah\_Li".
  + ### REJANG

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") REJANG

    Unicode script "Rejang".
  + ### LYCIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LYCIAN

    Unicode script "Lycian".
  + ### CARIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CARIAN

    Unicode script "Carian".
  + ### LYDIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LYDIAN

    Unicode script "Lydian".
  + ### CHAM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CHAM

    Unicode script "Cham".
  + ### TAI\_THAM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TAI\_THAM

    Unicode script "Tai\_Tham".
  + ### TAI\_VIET

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TAI\_VIET

    Unicode script "Tai\_Viet".
  + ### AVESTAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") AVESTAN

    Unicode script "Avestan".
  + ### EGYPTIAN\_HIEROGLYPHS

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") EGYPTIAN\_HIEROGLYPHS

    Unicode script "Egyptian\_Hieroglyphs".
  + ### SAMARITAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SAMARITAN

    Unicode script "Samaritan".
  + ### MANDAIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MANDAIC

    Unicode script "Mandaic".
  + ### LISU

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LISU

    Unicode script "Lisu".
  + ### BAMUM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BAMUM

    Unicode script "Bamum".
  + ### JAVANESE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") JAVANESE

    Unicode script "Javanese".
  + ### MEETEI\_MAYEK

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MEETEI\_MAYEK

    Unicode script "Meetei\_Mayek".
  + ### IMPERIAL\_ARAMAIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") IMPERIAL\_ARAMAIC

    Unicode script "Imperial\_Aramaic".
  + ### OLD\_SOUTH\_ARABIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_SOUTH\_ARABIAN

    Unicode script "Old\_South\_Arabian".
  + ### INSCRIPTIONAL\_PARTHIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") INSCRIPTIONAL\_PARTHIAN

    Unicode script "Inscriptional\_Parthian".
  + ### INSCRIPTIONAL\_PAHLAVI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") INSCRIPTIONAL\_PAHLAVI

    Unicode script "Inscriptional\_Pahlavi".
  + ### OLD\_TURKIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_TURKIC

    Unicode script "Old\_Turkic".
  + ### BRAHMI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BRAHMI

    Unicode script "Brahmi".
  + ### KAITHI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KAITHI

    Unicode script "Kaithi".
  + ### MEROITIC\_HIEROGLYPHS

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MEROITIC\_HIEROGLYPHS

    Unicode script "Meroitic Hieroglyphs".

    Since:
    :   1.8
  + ### MEROITIC\_CURSIVE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MEROITIC\_CURSIVE

    Unicode script "Meroitic Cursive".

    Since:
    :   1.8
  + ### SORA\_SOMPENG

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SORA\_SOMPENG

    Unicode script "Sora Sompeng".

    Since:
    :   1.8
  + ### CHAKMA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CHAKMA

    Unicode script "Chakma".

    Since:
    :   1.8
  + ### SHARADA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SHARADA

    Unicode script "Sharada".

    Since:
    :   1.8
  + ### TAKRI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TAKRI

    Unicode script "Takri".

    Since:
    :   1.8
  + ### MIAO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MIAO

    Unicode script "Miao".

    Since:
    :   1.8
  + ### CAUCASIAN\_ALBANIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CAUCASIAN\_ALBANIAN

    Unicode script "Caucasian Albanian".

    Since:
    :   9
  + ### BASSA\_VAH

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BASSA\_VAH

    Unicode script "Bassa Vah".

    Since:
    :   9
  + ### DUPLOYAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") DUPLOYAN

    Unicode script "Duployan".

    Since:
    :   9
  + ### ELBASAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ELBASAN

    Unicode script "Elbasan".

    Since:
    :   9
  + ### GRANTHA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GRANTHA

    Unicode script "Grantha".

    Since:
    :   9
  + ### PAHAWH\_HMONG

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") PAHAWH\_HMONG

    Unicode script "Pahawh Hmong".

    Since:
    :   9
  + ### KHOJKI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KHOJKI

    Unicode script "Khojki".

    Since:
    :   9
  + ### LINEAR\_A

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") LINEAR\_A

    Unicode script "Linear A".

    Since:
    :   9
  + ### MAHAJANI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MAHAJANI

    Unicode script "Mahajani".

    Since:
    :   9
  + ### MANICHAEAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MANICHAEAN

    Unicode script "Manichaean".

    Since:
    :   9
  + ### MENDE\_KIKAKUI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MENDE\_KIKAKUI

    Unicode script "Mende Kikakui".

    Since:
    :   9
  + ### MODI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MODI

    Unicode script "Modi".

    Since:
    :   9
  + ### MRO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MRO

    Unicode script "Mro".

    Since:
    :   9
  + ### OLD\_NORTH\_ARABIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_NORTH\_ARABIAN

    Unicode script "Old North Arabian".

    Since:
    :   9
  + ### NABATAEAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NABATAEAN

    Unicode script "Nabataean".

    Since:
    :   9
  + ### PALMYRENE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") PALMYRENE

    Unicode script "Palmyrene".

    Since:
    :   9
  + ### PAU\_CIN\_HAU

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") PAU\_CIN\_HAU

    Unicode script "Pau Cin Hau".

    Since:
    :   9
  + ### OLD\_PERMIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_PERMIC

    Unicode script "Old Permic".

    Since:
    :   9
  + ### PSALTER\_PAHLAVI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") PSALTER\_PAHLAVI

    Unicode script "Psalter Pahlavi".

    Since:
    :   9
  + ### SIDDHAM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SIDDHAM

    Unicode script "Siddham".

    Since:
    :   9
  + ### KHUDAWADI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KHUDAWADI

    Unicode script "Khudawadi".

    Since:
    :   9
  + ### TIRHUTA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TIRHUTA

    Unicode script "Tirhuta".

    Since:
    :   9
  + ### WARANG\_CITI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") WARANG\_CITI

    Unicode script "Warang Citi".

    Since:
    :   9
  + ### AHOM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") AHOM

    Unicode script "Ahom".

    Since:
    :   9
  + ### ANATOLIAN\_HIEROGLYPHS

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ANATOLIAN\_HIEROGLYPHS

    Unicode script "Anatolian Hieroglyphs".

    Since:
    :   9
  + ### HATRAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") HATRAN

    Unicode script "Hatran".

    Since:
    :   9
  + ### MULTANI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MULTANI

    Unicode script "Multani".

    Since:
    :   9
  + ### OLD\_HUNGARIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_HUNGARIAN

    Unicode script "Old Hungarian".

    Since:
    :   9
  + ### SIGNWRITING

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SIGNWRITING

    Unicode script "SignWriting".

    Since:
    :   9
  + ### ADLAM

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ADLAM

    Unicode script "Adlam".

    Since:
    :   11
  + ### BHAIKSUKI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") BHAIKSUKI

    Unicode script "Bhaiksuki".

    Since:
    :   11
  + ### MARCHEN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MARCHEN

    Unicode script "Marchen".

    Since:
    :   11
  + ### NEWA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NEWA

    Unicode script "Newa".

    Since:
    :   11
  + ### OSAGE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OSAGE

    Unicode script "Osage".

    Since:
    :   11
  + ### TANGUT

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TANGUT

    Unicode script "Tangut".

    Since:
    :   11
  + ### MASARAM\_GONDI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MASARAM\_GONDI

    Unicode script "Masaram Gondi".

    Since:
    :   11
  + ### NUSHU

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NUSHU

    Unicode script "Nushu".

    Since:
    :   11
  + ### SOYOMBO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SOYOMBO

    Unicode script "Soyombo".

    Since:
    :   11
  + ### ZANABAZAR\_SQUARE

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ZANABAZAR\_SQUARE

    Unicode script "Zanabazar Square".

    Since:
    :   11
  + ### HANIFI\_ROHINGYA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") HANIFI\_ROHINGYA

    Unicode script "Hanifi Rohingya".

    Since:
    :   12
  + ### OLD\_SOGDIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_SOGDIAN

    Unicode script "Old Sogdian".

    Since:
    :   12
  + ### SOGDIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") SOGDIAN

    Unicode script "Sogdian".

    Since:
    :   12
  + ### DOGRA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") DOGRA

    Unicode script "Dogra".

    Since:
    :   12
  + ### GUNJALA\_GONDI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") GUNJALA\_GONDI

    Unicode script "Gunjala Gondi".

    Since:
    :   12
  + ### MAKASAR

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MAKASAR

    Unicode script "Makasar".

    Since:
    :   12
  + ### MEDEFAIDRIN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") MEDEFAIDRIN

    Unicode script "Medefaidrin".

    Since:
    :   12
  + ### ELYMAIC

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") ELYMAIC

    Unicode script "Elymaic".

    Since:
    :   13
  + ### NANDINAGARI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NANDINAGARI

    Unicode script "Nandinagari".

    Since:
    :   13
  + ### NYIAKENG\_PUACHUE\_HMONG

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NYIAKENG\_PUACHUE\_HMONG

    Unicode script "Nyiakeng Puachue Hmong".

    Since:
    :   13
  + ### WANCHO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") WANCHO

    Unicode script "Wancho".

    Since:
    :   13
  + ### YEZIDI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") YEZIDI

    Unicode script "Yezidi".

    Since:
    :   15
  + ### CHORASMIAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CHORASMIAN

    Unicode script "Chorasmian".

    Since:
    :   15
  + ### DIVES\_AKURU

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") DIVES\_AKURU

    Unicode script "Dives Akuru".

    Since:
    :   15
  + ### KHITAN\_SMALL\_SCRIPT

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KHITAN\_SMALL\_SCRIPT

    Unicode script "Khitan Small Script".

    Since:
    :   15
  + ### VITHKUQI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") VITHKUQI

    Unicode script "Vithkuqi".

    Since:
    :   19
  + ### OLD\_UYGHUR

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") OLD\_UYGHUR

    Unicode script "Old Uyghur".

    Since:
    :   19
  + ### CYPRO\_MINOAN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") CYPRO\_MINOAN

    Unicode script "Cypro Minoan".

    Since:
    :   19
  + ### TANGSA

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TANGSA

    Unicode script "Tangsa".

    Since:
    :   19
  + ### TOTO

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") TOTO

    Unicode script "Toto".

    Since:
    :   19
  + ### KAWI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") KAWI

    Unicode script "Kawi".

    Since:
    :   20
  + ### NAG\_MUNDARI

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") NAG\_MUNDARI

    Unicode script "Nag Mundari".

    Since:
    :   20
  + ### UNKNOWN

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") UNKNOWN

    Unicode script "Unknown".
* ## Method Details

  + ### values

    public static [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") valueOf([String](String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null
  + ### of

    public static [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") of(int codePoint)

    Returns the enum constant representing the Unicode script of which
    the given character (Unicode code point) is assigned to.

    Parameters:
    :   `codePoint` - the character (Unicode code point) in question.

    Returns:
    :   The `UnicodeScript` constant representing the
        Unicode script of which this character is assigned to.

    Throws:
    :   `IllegalArgumentException` - if the specified
        `codePoint` is an invalid Unicode code point.

    See Also:
    :   - [`Character.isValidCodePoint(int)`](Character.md#isValidCodePoint(int))
  + ### forName

    public static final [Character.UnicodeScript](Character.UnicodeScript.md "enum class in java.lang") forName([String](String.md "class in java.lang") scriptName)

    Returns the UnicodeScript constant with the given Unicode script
    name or the script name alias. Script names and their aliases are
    determined by The Unicode Standard. The files `Scripts.txt`
    and `PropertyValueAliases.txt` define script names
    and the script name aliases for a particular version of the
    standard. The [`Character`](Character.md "class in java.lang") class specifies the version of
    the standard that it supports.

    Character case is ignored for all of the valid script names.
    The en\_US locale's case mapping rules are used to provide
    case-insensitive string comparisons for script name validation.

    Parameters:
    :   `scriptName` - A `UnicodeScript` name.

    Returns:
    :   The `UnicodeScript` constant identified
        by `scriptName`

    Throws:
    :   `IllegalArgumentException` - if `scriptName` is an
        invalid name
    :   `NullPointerException` - if `scriptName` is null