Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class TextAttribute

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.text.AttributedCharacterIterator.Attribute](../../../../java.base/java/text/AttributedCharacterIterator.Attribute.md "class in java.text")

java.awt.font.TextAttribute

All Implemented Interfaces:
:   `Serializable`

---

public final class TextAttribute
extends [AttributedCharacterIterator.Attribute](../../../../java.base/java/text/AttributedCharacterIterator.Attribute.md "class in java.text")

The `TextAttribute` class defines attribute keys and
attribute values used for text rendering.

`TextAttribute` instances are used as attribute keys to
identify attributes in
[`Font`](../Font.md "class in java.awt"),
[`TextLayout`](TextLayout.md "class in java.awt.font"),
[`AttributedCharacterIterator`](../../../../java.base/java/text/AttributedCharacterIterator.md "interface in java.text"),
and other classes handling text attributes. Other constants defined
in this class can be used as attribute values.

For each text attribute, the documentation provides:

* the type of its value,* the relevant predefined constants, if any* the default effect if the attribute is absent* the valid values if there are limitations* a description of the effect.

## Values

* The values of attributes must always be immutable.* Where value limitations are given, any value outside of that
    set is reserved for future use; the value will be treated as
    the default.* The value `null` is treated the same as the
      default value and results in the default behavior.* If the value is not of the proper type, the attribute
        will be ignored.* The identity of the value does not matter, only the actual
          value. For example, `TextAttribute.WEIGHT_BOLD` and
          `Float.valueOf(2.0f)`
          indicate the same `WEIGHT`.* Attribute values of type `Number` (used for
            `WEIGHT`, `WIDTH`, `POSTURE`,
            `SIZE`, `JUSTIFICATION`, and
            `TRACKING`) can vary along their natural range and are
            not restricted to the predefined constants.
            `Number.floatValue()` is used to get the actual value
            from the `Number`.* The values for `WEIGHT`, `WIDTH`, and
              `POSTURE` are interpolated by the system, which
              can select the 'nearest available' font or use other techniques to
              approximate the user's request.

### Summary of attributes

Key, value type, principal constants, and default value behavior of
all TextAttributes

| Key Value Type Principal Constants Default Value | | | |
| --- | --- | --- | --- |
| [`FAMILY`](#FAMILY) String See Font [`DIALOG`](../Font.md#DIALOG), [`DIALOG_INPUT`](../Font.md#DIALOG_INPUT),   [`SERIF`](../Font.md#SERIF), [`SANS_SERIF`](../Font.md#SANS_SERIF), and [`MONOSPACED`](../Font.md#MONOSPACED). "Default" (use platform default)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`WEIGHT`](#WEIGHT) Number WEIGHT\_REGULAR, WEIGHT\_BOLD WEIGHT\_REGULAR|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`WIDTH`](#WIDTH) Number WIDTH\_CONDENSED, WIDTH\_REGULAR, WIDTH\_EXTENDED WIDTH\_REGULAR|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`POSTURE`](#POSTURE) Number POSTURE\_REGULAR, POSTURE\_OBLIQUE POSTURE\_REGULAR|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`SIZE`](#SIZE) Number none 12.0|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`TRANSFORM`](#TRANSFORM) [`TransformAttribute`](TransformAttribute.md "class in java.awt.font") See TransformAttribute [`IDENTITY`](TransformAttribute.md#IDENTITY) TransformAttribute.IDENTITY|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`SUPERSCRIPT`](#SUPERSCRIPT) Integer SUPERSCRIPT\_SUPER, SUPERSCRIPT\_SUB 0 (use the standard glyphs and metrics)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`FONT`](#FONT) [`Font`](../Font.md "class in java.awt") none null (do not override font resolution)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`CHAR_REPLACEMENT`](#CHAR_REPLACEMENT) [`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font") none null (draw text using font glyphs)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`FOREGROUND`](#FOREGROUND) [`Paint`](../Paint.md "interface in java.awt") none null (use current graphics paint)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`BACKGROUND`](#BACKGROUND) [`Paint`](../Paint.md "interface in java.awt") none null (do not render background)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`UNDERLINE`](#UNDERLINE) Integer UNDERLINE\_ON -1 (do not render underline)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`STRIKETHROUGH`](#STRIKETHROUGH) Boolean STRIKETHROUGH\_ON false (do not render strikethrough)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`RUN_DIRECTION`](#RUN_DIRECTION) Boolean RUN\_DIRECTION\_LTR RUN\_DIRECTION\_RTL null (use [`Bidi`](../../../../java.base/java/text/Bidi.md "class in java.text") standard default)| [`BIDI_EMBEDDING`](#BIDI_EMBEDDING) Integer none 0 (use base line direction)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`JUSTIFICATION`](#JUSTIFICATION) Number JUSTIFICATION\_FULL JUSTIFICATION\_FULL|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`INPUT_METHOD_HIGHLIGHT`](#INPUT_METHOD_HIGHLIGHT) [`InputMethodHighlight`](../im/InputMethodHighlight.md "class in java.awt.im"),   [`Annotation`](../../../../java.base/java/text/Annotation.md "class in java.text") (see class) null (do not apply input highlighting)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`INPUT_METHOD_UNDERLINE`](#INPUT_METHOD_UNDERLINE) Integer UNDERLINE\_LOW\_ONE\_PIXEL, UNDERLINE\_LOW\_TWO\_PIXEL -1 (do not render underline)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`SWAP_COLORS`](#SWAP_COLORS) Boolean SWAP\_COLORS\_ON false (do not swap colors)|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`NUMERIC_SHAPING`](#NUMERIC_SHAPING) [`NumericShaper`](NumericShaper.md "class in java.awt.font") none null (do not shape digits)|  |  |  |  |  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | | [`KERNING`](#KERNING) Integer KERNING\_ON 0 (do not request kerning)|  |  |  |  |  |  |  |  | | --- | --- | --- | --- | --- | --- | --- | --- | | [`LIGATURES`](#LIGATURES) Integer LIGATURES\_ON 0 (do not form optional ligatures)|  |  |  |  | | --- | --- | --- | --- | | [`TRACKING`](#TRACKING) Number TRACKING\_LOOSE, TRACKING\_TIGHT 0 (do not add tracking) | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |

See Also:
:   * [`Font`](../Font.md "class in java.awt")
    * [`TextLayout`](TextLayout.md "class in java.awt.font")
    * [`AttributedCharacterIterator`](../../../../java.base/java/text/AttributedCharacterIterator.md "interface in java.text")
    * [Serialized Form](../../../../serialized-form.md#java.awt.font.TextAttribute)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final TextAttribute`

  `BACKGROUND`

  Attribute key for the paint used to render the background of
  the text.

  `static final TextAttribute`

  `BIDI_EMBEDDING`

  Attribute key for the embedding level of the text.

  `static final TextAttribute`

  `CHAR_REPLACEMENT`

  Attribute key for a user-defined glyph to display in lieu
  of the font's standard glyph for a character.

  `static final TextAttribute`

  `FAMILY`

  Attribute key for the font name.

  `static final TextAttribute`

  `FONT`

  Attribute key used to provide the font to use to render text.

  `static final TextAttribute`

  `FOREGROUND`

  Attribute key for the paint used to render the text.

  `static final TextAttribute`

  `INPUT_METHOD_HIGHLIGHT`

  Attribute key for input method highlight styles.

  `static final TextAttribute`

  `INPUT_METHOD_UNDERLINE`

  Attribute key for input method underlines.

  `static final TextAttribute`

  `JUSTIFICATION`

  Attribute key for the justification of a paragraph.

  `static final Float`

  `JUSTIFICATION_FULL`

  Justify the line to the full requested width.

  `static final Float`

  `JUSTIFICATION_NONE`

  Do not allow the line to be justified.

  `static final TextAttribute`

  `KERNING`

  Attribute key to request kerning.

  `static final Integer`

  `KERNING_ON`

  Request standard kerning.

  `static final TextAttribute`

  `LIGATURES`

  Attribute key for enabling optional ligatures.

  `static final Integer`

  `LIGATURES_ON`

  Request standard optional ligatures.

  `static final TextAttribute`

  `NUMERIC_SHAPING`

  Attribute key for converting ASCII decimal digits to other
  decimal ranges.

  `static final TextAttribute`

  `POSTURE`

  Attribute key for the posture of a font.

  `static final Float`

  `POSTURE_OBLIQUE`

  The standard italic posture.

  `static final Float`

  `POSTURE_REGULAR`

  The standard posture, upright.

  `static final TextAttribute`

  `RUN_DIRECTION`

  Attribute key for the run direction of the line.

  `static final Boolean`

  `RUN_DIRECTION_LTR`

  Left-to-right run direction.

  `static final Boolean`

  `RUN_DIRECTION_RTL`

  Right-to-left run direction.

  `static final TextAttribute`

  `SIZE`

  Attribute key for the font size.

  `static final TextAttribute`

  `STRIKETHROUGH`

  Attribute key for strikethrough.

  `static final Boolean`

  `STRIKETHROUGH_ON`

  A single strikethrough.

  `static final TextAttribute`

  `SUPERSCRIPT`

  Attribute key for superscripting and subscripting.

  `static final Integer`

  `SUPERSCRIPT_SUB`

  Standard subscript.

  `static final Integer`

  `SUPERSCRIPT_SUPER`

  Standard superscript.

  `static final TextAttribute`

  `SWAP_COLORS`

  Attribute key for swapping foreground and background
  `Paints`.

  `static final Boolean`

  `SWAP_COLORS_ON`

  Swap foreground and background.

  `static final TextAttribute`

  `TRACKING`

  Attribute key to control tracking.

  `static final Float`

  `TRACKING_LOOSE`

  Perform loose tracking.

  `static final Float`

  `TRACKING_TIGHT`

  Perform tight tracking.

  `static final TextAttribute`

  `TRANSFORM`

  Attribute key for the transform of a font.

  `static final TextAttribute`

  `UNDERLINE`

  Attribute key for underline.

  `static final Integer`

  `UNDERLINE_LOW_DASHED`

  Single pixel dashed low underline.

  `static final Integer`

  `UNDERLINE_LOW_DOTTED`

  Single pixel dotted low underline.

  `static final Integer`

  `UNDERLINE_LOW_GRAY`

  Double pixel gray low underline.

  `static final Integer`

  `UNDERLINE_LOW_ONE_PIXEL`

  Single pixel solid low underline.

  `static final Integer`

  `UNDERLINE_LOW_TWO_PIXEL`

  Double pixel solid low underline.

  `static final Integer`

  `UNDERLINE_ON`

  Standard underline.

  `static final TextAttribute`

  `WEIGHT`

  Attribute key for the weight of a font.

  `static final Float`

  `WEIGHT_BOLD`

  The standard bold weight.

  `static final Float`

  `WEIGHT_DEMIBOLD`

  A moderately lighter weight than `WEIGHT_BOLD`.

  `static final Float`

  `WEIGHT_DEMILIGHT`

  An intermediate weight between `WEIGHT_LIGHT` and
  `WEIGHT_STANDARD`.

  `static final Float`

  `WEIGHT_EXTRA_LIGHT`

  The lightest predefined weight.

  `static final Float`

  `WEIGHT_EXTRABOLD`

  An extra heavy weight.

  `static final Float`

  `WEIGHT_HEAVY`

  A moderately heavier weight than `WEIGHT_BOLD`.

  `static final Float`

  `WEIGHT_LIGHT`

  The standard light weight.

  `static final Float`

  `WEIGHT_MEDIUM`

  An intermediate weight between `WEIGHT_REGULAR` and
  `WEIGHT_BOLD`.

  `static final Float`

  `WEIGHT_REGULAR`

  The standard weight.

  `static final Float`

  `WEIGHT_SEMIBOLD`

  A moderately heavier weight than `WEIGHT_REGULAR`.

  `static final Float`

  `WEIGHT_ULTRABOLD`

  The heaviest predefined weight.

  `static final TextAttribute`

  `WIDTH`

  Attribute key for the width of a font.

  `static final Float`

  `WIDTH_CONDENSED`

  The most condensed predefined width.

  `static final Float`

  `WIDTH_EXTENDED`

  The most extended predefined width.

  `static final Float`

  `WIDTH_REGULAR`

  The standard width.

  `static final Float`

  `WIDTH_SEMI_CONDENSED`

  A moderately condensed width.

  `static final Float`

  `WIDTH_SEMI_EXTENDED`

  A moderately extended width.

  ### Fields inherited from class java.text.[AttributedCharacterIterator.Attribute](../../../../java.base/java/text/AttributedCharacterIterator.Attribute.md "class in java.text")

  `INPUT_METHOD_SEGMENT, LANGUAGE, READING`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TextAttribute(String name)`

  Constructs a `TextAttribute` with the specified name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `readResolve()`

  Resolves instances being deserialized to the predefined constants.

  ### Methods inherited from class java.text.[AttributedCharacterIterator.Attribute](../../../../java.base/java/text/AttributedCharacterIterator.Attribute.md "class in java.text")

  `equals, getName, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### FAMILY

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") FAMILY

    Attribute key for the font name. Values are instances of
    **`String`**. The default value is
    `"Default"`, which causes the platform default font
    family to be used.

    The `Font` class defines constants for the logical
    font names
    [`DIALOG`](../Font.md#DIALOG),
    [`DIALOG_INPUT`](../Font.md#DIALOG_INPUT),
    [`SANS_SERIF`](../Font.md#SANS_SERIF),
    [`SERIF`](../Font.md#SERIF), and
    [`MONOSPACED`](../Font.md#MONOSPACED).

    This defines the value passed as `name` to the
    `Font` constructor. Both logical and physical
    font names are allowed. If a font with the requested name
    is not found, the default font is used.

    *Note:* This attribute is unfortunately misnamed, as
    it specifies the face name and not just the family. Thus
    values such as "Lucida Sans Bold" will select that face if it
    exists. Note, though, that if the requested face does not
    exist, the default will be used with *regular* weight.
    The "Bold" in the name is part of the face name, not a separate
    request that the font's weight be bold.
  + ### WEIGHT

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") WEIGHT

    Attribute key for the weight of a font. Values are instances
    of **`Number`**. The default value is
    `WEIGHT_REGULAR`.

    Several constant values are provided, see [`WEIGHT_EXTRA_LIGHT`](#WEIGHT_EXTRA_LIGHT), [`WEIGHT_LIGHT`](#WEIGHT_LIGHT), [`WEIGHT_DEMILIGHT`](#WEIGHT_DEMILIGHT), [`WEIGHT_REGULAR`](#WEIGHT_REGULAR), [`WEIGHT_SEMIBOLD`](#WEIGHT_SEMIBOLD), [`WEIGHT_MEDIUM`](#WEIGHT_MEDIUM), [`WEIGHT_DEMIBOLD`](#WEIGHT_DEMIBOLD), [`WEIGHT_BOLD`](#WEIGHT_BOLD), [`WEIGHT_HEAVY`](#WEIGHT_HEAVY),
    [`WEIGHT_EXTRABOLD`](#WEIGHT_EXTRABOLD), and [`WEIGHT_ULTRABOLD`](#WEIGHT_ULTRABOLD). The
    value `WEIGHT_BOLD` corresponds to the
    style value `Font.BOLD` as passed to the
    `Font` constructor.

    The value is roughly the ratio of the stem width to that of
    the regular weight.

    The system can interpolate the provided value.
  + ### WEIGHT\_EXTRA\_LIGHT

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_EXTRA\_LIGHT

    The lightest predefined weight.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_LIGHT

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_LIGHT

    The standard light weight.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_DEMILIGHT

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_DEMILIGHT

    An intermediate weight between `WEIGHT_LIGHT` and
    `WEIGHT_STANDARD`.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_REGULAR

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_REGULAR

    The standard weight. This is the default value for `WEIGHT`.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_SEMIBOLD

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_SEMIBOLD

    A moderately heavier weight than `WEIGHT_REGULAR`.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_MEDIUM

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_MEDIUM

    An intermediate weight between `WEIGHT_REGULAR` and
    `WEIGHT_BOLD`.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_DEMIBOLD

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_DEMIBOLD

    A moderately lighter weight than `WEIGHT_BOLD`.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_BOLD

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_BOLD

    The standard bold weight.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_HEAVY

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_HEAVY

    A moderately heavier weight than `WEIGHT_BOLD`.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_EXTRABOLD

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_EXTRABOLD

    An extra heavy weight.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WEIGHT\_ULTRABOLD

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WEIGHT\_ULTRABOLD

    The heaviest predefined weight.

    See Also:
    :   - [`WEIGHT`](#WEIGHT)
  + ### WIDTH

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") WIDTH

    Attribute key for the width of a font. Values are instances of
    **`Number`**. The default value is
    `WIDTH_REGULAR`.

    Several constant values are provided, see [`WIDTH_CONDENSED`](#WIDTH_CONDENSED), [`WIDTH_SEMI_CONDENSED`](#WIDTH_SEMI_CONDENSED), [`WIDTH_REGULAR`](#WIDTH_REGULAR), [`WIDTH_SEMI_EXTENDED`](#WIDTH_SEMI_EXTENDED), [`WIDTH_EXTENDED`](#WIDTH_EXTENDED).

    The value is roughly the ratio of the advance width to that
    of the regular width.

    The system can interpolate the provided value.
  + ### WIDTH\_CONDENSED

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WIDTH\_CONDENSED

    The most condensed predefined width.

    See Also:
    :   - [`WIDTH`](#WIDTH)
  + ### WIDTH\_SEMI\_CONDENSED

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WIDTH\_SEMI\_CONDENSED

    A moderately condensed width.

    See Also:
    :   - [`WIDTH`](#WIDTH)
  + ### WIDTH\_REGULAR

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WIDTH\_REGULAR

    The standard width. This is the default value for
    `WIDTH`.

    See Also:
    :   - [`WIDTH`](#WIDTH)
  + ### WIDTH\_SEMI\_EXTENDED

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WIDTH\_SEMI\_EXTENDED

    A moderately extended width.

    See Also:
    :   - [`WIDTH`](#WIDTH)
  + ### WIDTH\_EXTENDED

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") WIDTH\_EXTENDED

    The most extended predefined width.

    See Also:
    :   - [`WIDTH`](#WIDTH)
  + ### POSTURE

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") POSTURE

    Attribute key for the posture of a font. Values are instances
    of **`Number`**. The default value is
    `POSTURE_REGULAR`.

    Two constant values are provided, [`POSTURE_REGULAR`](#POSTURE_REGULAR)
    and [`POSTURE_OBLIQUE`](#POSTURE_OBLIQUE). The value
    `POSTURE_OBLIQUE` corresponds to the style value
    `Font.ITALIC` as passed to the `Font`
    constructor.

    The value is roughly the slope of the stems of the font,
    expressed as the run over the rise. Positive values lean right.

    The system can interpolate the provided value.

    This will affect the font's italic angle as returned by
    `Font.getItalicAngle`.

    See Also:
    :   - [`Font.getItalicAngle()`](../Font.md#getItalicAngle())
  + ### POSTURE\_REGULAR

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") POSTURE\_REGULAR

    The standard posture, upright. This is the default value for
    `POSTURE`.

    See Also:
    :   - [`POSTURE`](#POSTURE)
  + ### POSTURE\_OBLIQUE

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") POSTURE\_OBLIQUE

    The standard italic posture.

    See Also:
    :   - [`POSTURE`](#POSTURE)
  + ### SIZE

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") SIZE

    Attribute key for the font size. Values are instances of
    **`Number`**. The default value is 12pt.

    This corresponds to the `size` parameter to the
    `Font` constructor.

    Very large or small sizes will impact rendering performance,
    and the rendering system might not render text at these sizes.
    Negative sizes are illegal and result in the default size.

    Note that the appearance and metrics of a 12pt font with a
    2x transform might be different than that of a 24 point font
    with no transform.
  + ### TRANSFORM

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") TRANSFORM

    Attribute key for the transform of a font. Values are
    instances of **`TransformAttribute`**. The
    default value is `TransformAttribute.IDENTITY`.

    The `TransformAttribute` class defines the
    constant [`IDENTITY`](TransformAttribute.md#IDENTITY).

    This corresponds to the transform passed to
    `Font.deriveFont(AffineTransform)`. Since that
    transform is mutable and `TextAttribute` values must
    not be, the `TransformAttribute` wrapper class is
    used.

    The primary intent is to support scaling and skewing, though
    other effects are possible.

    Some transforms will cause the baseline to be rotated and/or
    shifted. The text and the baseline are transformed together so
    that the text follows the new baseline. For example, with text
    on a horizontal baseline, the new baseline follows the
    direction of the unit x vector passed through the
    transform. Text metrics are measured against this new baseline.
    So, for example, with other things being equal, text rendered
    with a rotated TRANSFORM and an unrotated TRANSFORM will measure as
    having the same ascent, descent, and advance.

    In styled text, the baselines for each such run are aligned
    one after the other to potentially create a non-linear baseline
    for the entire run of text. For more information, see [`TextLayout.getLayoutPath()`](TextLayout.md#getLayoutPath()).

    See Also:
    :   - [`TransformAttribute`](TransformAttribute.md "class in java.awt.font")
        - [`AffineTransform`](../geom/AffineTransform.md "class in java.awt.geom")
  + ### SUPERSCRIPT

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") SUPERSCRIPT

    Attribute key for superscripting and subscripting. Values are
    instances of **`Integer`**. The default value is
    0, which means that no superscript or subscript is used.

    Two constant values are provided, see [`SUPERSCRIPT_SUPER`](#SUPERSCRIPT_SUPER) and [`SUPERSCRIPT_SUB`](#SUPERSCRIPT_SUB). These have
    the values 1 and -1 respectively. Values of
    greater magnitude define greater levels of superscript or
    subscripting, for example, 2 corresponds to super-superscript,
    3 to super-super-superscript, and similarly for negative values
    and subscript, up to a level of 7 (or -7). Values beyond this
    range are reserved; behavior is platform-dependent.

    `SUPERSCRIPT` can
    impact the ascent and descent of a font. The ascent
    and descent can never become negative, however.
  + ### SUPERSCRIPT\_SUPER

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") SUPERSCRIPT\_SUPER

    Standard superscript.

    See Also:
    :   - [`SUPERSCRIPT`](#SUPERSCRIPT)
  + ### SUPERSCRIPT\_SUB

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") SUPERSCRIPT\_SUB

    Standard subscript.

    See Also:
    :   - [`SUPERSCRIPT`](#SUPERSCRIPT)
  + ### FONT

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") FONT

    Attribute key used to provide the font to use to render text.
    Values are instances of [`Font`](../Font.md "class in java.awt"). The default
    value is null, indicating that normal resolution of a
    `Font` from attributes should be performed.

    `TextLayout` and
    `AttributedCharacterIterator` work in terms of
    `Maps` of `TextAttributes`. Normally,
    all the attributes are examined and used to select and
    configure a `Font` instance. If a `FONT`
    attribute is present, though, its associated `Font`
    will be used. This provides a way for users to override the
    resolution of font attributes into a `Font`, or
    force use of a particular `Font` instance. This
    also allows users to specify subclasses of `Font` in
    cases where a `Font` can be subclassed.

    `FONT` is used for special situations where
    clients already have a `Font` instance but still
    need to use `Map`-based APIs. Typically, there will
    be no other attributes in the `Map` except the
    `FONT` attribute. With `Map`-based APIs
    the common case is to specify all attributes individually, so
    `FONT` is not needed or desirable.

    However, if both `FONT` and other attributes are
    present in the `Map`, the rendering system will
    merge the attributes defined in the `Font` with the
    additional attributes. This merging process classifies
    `TextAttributes` into two groups. One group, the
    'primary' group, is considered fundamental to the selection and
    metric behavior of a font. These attributes are
    `FAMILY`, `WEIGHT`, `WIDTH`,
    `POSTURE`, `SIZE`,
    `TRANSFORM`, `SUPERSCRIPT`, and
    `TRACKING`. The other group, the 'secondary' group,
    consists of all other defined attributes, with the exception of
    `FONT` itself.

    To generate the new `Map`, first the
    `Font` is obtained from the `FONT`
    attribute, and *all* of its attributes extracted into a
    new `Map`. Then only the *secondary*
    attributes from the original `Map` are added to
    those in the new `Map`. Thus the values of primary
    attributes come solely from the `Font`, and the
    values of secondary attributes originate with the
    `Font` but can be overridden by other values in the
    `Map`.

    *Note:*`Font's Map`-based
    constructor and `deriveFont` methods do not process
    the `FONT` attribute, as these are used to create
    new `Font` objects. Instead, [`Font.getFont(Map)`](../Font.md#getFont(java.util.Map)) should be used to
    handle the `FONT` attribute.

    See Also:
    :   - [`Font`](../Font.md "class in java.awt")
  + ### CHAR\_REPLACEMENT

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") CHAR\_REPLACEMENT

    Attribute key for a user-defined glyph to display in lieu
    of the font's standard glyph for a character. Values are
    instances of GraphicAttribute. The default value is null,
    indicating that the standard glyphs provided by the font
    should be used.

    This attribute is used to reserve space for a graphic or
    other component embedded in a line of text. It is required for
    correct positioning of 'inline' components within a line when
    bidirectional reordering (see [`Bidi`](../../../../java.base/java/text/Bidi.md "class in java.text")) is
    performed. Each character (Unicode code point) will be
    rendered using the provided GraphicAttribute. Typically, the
    characters to which this attribute is applied should be
    `\uFFFC`.

    The GraphicAttribute determines the logical and visual
    bounds of the text; the actual Font values are ignored.

    See Also:
    :   - [`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font")
  + ### FOREGROUND

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") FOREGROUND

    Attribute key for the paint used to render the text. Values are
    instances of **`Paint`**. The default value is
    null, indicating that the `Paint` set on the
    `Graphics2D` at the time of rendering is used.

    Glyphs will be rendered using this
    `Paint` regardless of the `Paint` value
    set on the `Graphics` (but see [`SWAP_COLORS`](#SWAP_COLORS)).

    See Also:
    :   - [`Paint`](../Paint.md "interface in java.awt")
        - [`SWAP_COLORS`](#SWAP_COLORS)
  + ### BACKGROUND

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") BACKGROUND

    Attribute key for the paint used to render the background of
    the text. Values are instances of **`Paint`**.
    The default value is null, indicating that the background
    should not be rendered.

    The logical bounds of the text will be filled using this
    `Paint`, and then the text will be rendered on top
    of it (but see [`SWAP_COLORS`](#SWAP_COLORS)).

    The visual bounds of the text is extended to include the
    logical bounds, if necessary. The outline is not affected.

    See Also:
    :   - [`Paint`](../Paint.md "interface in java.awt")
        - [`SWAP_COLORS`](#SWAP_COLORS)
  + ### UNDERLINE

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") UNDERLINE

    Attribute key for underline. Values are instances of
    **`Integer`**. The default value is -1, which
    means no underline.

    The constant value [`UNDERLINE_ON`](#UNDERLINE_ON) is provided.

    The underline affects both the visual bounds and the outline
    of the text.
  + ### UNDERLINE\_ON

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") UNDERLINE\_ON

    Standard underline.

    See Also:
    :   - [`UNDERLINE`](#UNDERLINE)
  + ### STRIKETHROUGH

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") STRIKETHROUGH

    Attribute key for strikethrough. Values are instances of
    **`Boolean`**. The default value is
    `false`, which means no strikethrough.

    The constant value [`STRIKETHROUGH_ON`](#STRIKETHROUGH_ON) is provided.

    The strikethrough affects both the visual bounds and the
    outline of the text.
  + ### STRIKETHROUGH\_ON

    public static final [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") STRIKETHROUGH\_ON

    A single strikethrough.

    See Also:
    :   - [`STRIKETHROUGH`](#STRIKETHROUGH)
  + ### RUN\_DIRECTION

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") RUN\_DIRECTION

    Attribute key for the run direction of the line. Values are
    instances of **`Boolean`**. The default value is
    null, which indicates that the standard Bidi algorithm for
    determining run direction should be used with the value [`Bidi.DIRECTION_DEFAULT_LEFT_TO_RIGHT`](../../../../java.base/java/text/Bidi.md#DIRECTION_DEFAULT_LEFT_TO_RIGHT).

    The constants [`RUN_DIRECTION_RTL`](#RUN_DIRECTION_RTL) and [`RUN_DIRECTION_LTR`](#RUN_DIRECTION_LTR) are provided.

    This determines the value passed to the [`Bidi`](../../../../java.base/java/text/Bidi.md "class in java.text") constructor to select the primary direction of
    the text in the paragraph.

    *Note:* This attribute should have the same value for
    all the text in a paragraph, otherwise the behavior is
    undetermined.

    See Also:
    :   - [`Bidi`](../../../../java.base/java/text/Bidi.md "class in java.text")
  + ### RUN\_DIRECTION\_LTR

    public static final [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") RUN\_DIRECTION\_LTR

    Left-to-right run direction.

    See Also:
    :   - [`RUN_DIRECTION`](#RUN_DIRECTION)
  + ### RUN\_DIRECTION\_RTL

    public static final [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") RUN\_DIRECTION\_RTL

    Right-to-left run direction.

    See Also:
    :   - [`RUN_DIRECTION`](#RUN_DIRECTION)
  + ### BIDI\_EMBEDDING

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") BIDI\_EMBEDDING

    Attribute key for the embedding level of the text. Values are
    instances of **`Integer`**. The default value is
    `null`, indicating that the Bidirectional
    algorithm should run without explicit embeddings.

    Positive values 1 through 61 are *embedding* levels,
    negative values -1 through -61 are *override* levels.
    The value 0 means that the base line direction is used. These
    levels are passed in the embedding levels array to the [`Bidi`](../../../../java.base/java/text/Bidi.md "class in java.text") constructor.

    *Note:* When this attribute is present anywhere in
    a paragraph, then any Unicode bidi control characters (RLO,
    LRO, RLE, LRE, and PDF) in the paragraph are
    disregarded, and runs of text where this attribute is not
    present are treated as though it were present and had the value
    0.

    See Also:
    :   - [`Bidi`](../../../../java.base/java/text/Bidi.md "class in java.text")
  + ### JUSTIFICATION

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") JUSTIFICATION

    Attribute key for the justification of a paragraph. Values are
    instances of **`Number`**. The default value is
    1, indicating that justification should use the full width
    provided. Values are pinned to the range [0..1].

    The constants [`JUSTIFICATION_FULL`](#JUSTIFICATION_FULL) and [`JUSTIFICATION_NONE`](#JUSTIFICATION_NONE) are provided.

    Specifies the fraction of the extra space to use when
    justification is requested on a `TextLayout`. For
    example, if the line is 50 points wide and it is requested to
    justify to 70 points, a value of 0.75 will pad to use
    three-quarters of the remaining space, or 15 points, so that
    the resulting line will be 65 points in length.

    *Note:* This should have the same value for all the
    text in a paragraph, otherwise the behavior is undetermined.

    See Also:
    :   - [`TextLayout.getJustifiedLayout(float)`](TextLayout.md#getJustifiedLayout(float))
  + ### JUSTIFICATION\_FULL

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") JUSTIFICATION\_FULL

    Justify the line to the full requested width. This is the
    default value for `JUSTIFICATION`.

    See Also:
    :   - [`JUSTIFICATION`](#JUSTIFICATION)
  + ### JUSTIFICATION\_NONE

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") JUSTIFICATION\_NONE

    Do not allow the line to be justified.

    See Also:
    :   - [`JUSTIFICATION`](#JUSTIFICATION)
  + ### INPUT\_METHOD\_HIGHLIGHT

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") INPUT\_METHOD\_HIGHLIGHT

    Attribute key for input method highlight styles.

    Values are instances of [`InputMethodHighlight`](../im/InputMethodHighlight.md "class in java.awt.im") or [`Annotation`](../../../../java.base/java/text/Annotation.md "class in java.text"). The default value is `null`,
    which means that input method styles should not be applied
    before rendering.

    If adjacent runs of text with the same
    `InputMethodHighlight` need to be rendered
    separately, the `InputMethodHighlights` should be
    wrapped in `Annotation` instances.

    Input method highlights are used while text is being
    composed by an input method. Text editing components should
    retain them even if they generally only deal with unstyled
    text, and make them available to the drawing routines.

    See Also:
    :   - [`Font`](../Font.md "class in java.awt")
        - [`InputMethodHighlight`](../im/InputMethodHighlight.md "class in java.awt.im")
        - [`Annotation`](../../../../java.base/java/text/Annotation.md "class in java.text")
  + ### INPUT\_METHOD\_UNDERLINE

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") INPUT\_METHOD\_UNDERLINE

    Attribute key for input method underlines. Values
    are instances of **`Integer`**. The default
    value is `-1`, which means no underline.

    Several constant values are provided, see [`UNDERLINE_LOW_ONE_PIXEL`](#UNDERLINE_LOW_ONE_PIXEL), [`UNDERLINE_LOW_TWO_PIXEL`](#UNDERLINE_LOW_TWO_PIXEL),
    [`UNDERLINE_LOW_DOTTED`](#UNDERLINE_LOW_DOTTED), [`UNDERLINE_LOW_GRAY`](#UNDERLINE_LOW_GRAY), and
    [`UNDERLINE_LOW_DASHED`](#UNDERLINE_LOW_DASHED).

    This may be used in conjunction with [`UNDERLINE`](#UNDERLINE) if
    desired. The primary purpose is for use by input methods.
    Other use of these underlines for simple ornamentation might
    confuse users.

    The input method underline affects both the visual bounds and
    the outline of the text.

    Since:
    :   1.3
  + ### UNDERLINE\_LOW\_ONE\_PIXEL

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") UNDERLINE\_LOW\_ONE\_PIXEL

    Single pixel solid low underline.

    Since:
    :   1.3

    See Also:
    :   - [`INPUT_METHOD_UNDERLINE`](#INPUT_METHOD_UNDERLINE)
  + ### UNDERLINE\_LOW\_TWO\_PIXEL

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") UNDERLINE\_LOW\_TWO\_PIXEL

    Double pixel solid low underline.

    Since:
    :   1.3

    See Also:
    :   - [`INPUT_METHOD_UNDERLINE`](#INPUT_METHOD_UNDERLINE)
  + ### UNDERLINE\_LOW\_DOTTED

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") UNDERLINE\_LOW\_DOTTED

    Single pixel dotted low underline.

    Since:
    :   1.3

    See Also:
    :   - [`INPUT_METHOD_UNDERLINE`](#INPUT_METHOD_UNDERLINE)
  + ### UNDERLINE\_LOW\_GRAY

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") UNDERLINE\_LOW\_GRAY

    Double pixel gray low underline.

    Since:
    :   1.3

    See Also:
    :   - [`INPUT_METHOD_UNDERLINE`](#INPUT_METHOD_UNDERLINE)
  + ### UNDERLINE\_LOW\_DASHED

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") UNDERLINE\_LOW\_DASHED

    Single pixel dashed low underline.

    Since:
    :   1.3

    See Also:
    :   - [`INPUT_METHOD_UNDERLINE`](#INPUT_METHOD_UNDERLINE)
  + ### SWAP\_COLORS

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") SWAP\_COLORS

    Attribute key for swapping foreground and background
    `Paints`. Values are instances of
    **`Boolean`**. The default value is
    `false`, which means do not swap colors.

    The constant value [`SWAP_COLORS_ON`](#SWAP_COLORS_ON) is defined.

    If the [`FOREGROUND`](#FOREGROUND) attribute is set, its
    `Paint` will be used as the background, otherwise
    the `Paint` currently on the `Graphics`
    will be used. If the [`BACKGROUND`](#BACKGROUND) attribute is set, its
    `Paint` will be used as the foreground, otherwise
    the system will find a contrasting color to the
    (resolved) background so that the text will be visible.

    See Also:
    :   - [`FOREGROUND`](#FOREGROUND)
        - [`BACKGROUND`](#BACKGROUND)
  + ### SWAP\_COLORS\_ON

    public static final [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") SWAP\_COLORS\_ON

    Swap foreground and background.

    Since:
    :   1.3

    See Also:
    :   - [`SWAP_COLORS`](#SWAP_COLORS)
  + ### NUMERIC\_SHAPING

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") NUMERIC\_SHAPING

    Attribute key for converting ASCII decimal digits to other
    decimal ranges. Values are instances of [`NumericShaper`](NumericShaper.md "class in java.awt.font").
    The default is `null`, which means do not perform
    numeric shaping.

    When a numeric shaper is defined, the text is first
    processed by the shaper before any other analysis of the text
    is performed.

    *Note:* This should have the same value for all the
    text in the paragraph, otherwise the behavior is undetermined.

    Since:
    :   1.4

    See Also:
    :   - [`NumericShaper`](NumericShaper.md "class in java.awt.font")
  + ### KERNING

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") KERNING

    Attribute key to request kerning. Values are instances of
    **`Integer`**. The default value is
    `0`, which does not request kerning.

    The constant value [`KERNING_ON`](#KERNING_ON) is provided.

    The default advances of single characters are not
    appropriate for some character sequences, for example "To" or
    "AWAY". Without kerning the adjacent characters appear to be
    separated by too much space. Kerning causes selected sequences
    of characters to be spaced differently for a more pleasing
    visual appearance.

    Since:
    :   1.6
  + ### KERNING\_ON

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") KERNING\_ON

    Request standard kerning.

    Since:
    :   1.6

    See Also:
    :   - [`KERNING`](#KERNING)
  + ### LIGATURES

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") LIGATURES

    Attribute key for enabling optional ligatures. Values are
    instances of **`Integer`**. The default value is
    `0`, which means do not use optional ligatures.

    The constant value [`LIGATURES_ON`](#LIGATURES_ON) is defined.

    Ligatures required by the writing system are always enabled.

    Since:
    :   1.6
  + ### LIGATURES\_ON

    public static final [Integer](../../../../java.base/java/lang/Integer.md "class in java.lang") LIGATURES\_ON

    Request standard optional ligatures.

    Since:
    :   1.6

    See Also:
    :   - [`LIGATURES`](#LIGATURES)
  + ### TRACKING

    public static final [TextAttribute](TextAttribute.md "class in java.awt.font") TRACKING

    Attribute key to control tracking. Values are instances of
    **`Number`**. The default value is
    `0`, which means no additional tracking.

    The constant values [`TRACKING_TIGHT`](#TRACKING_TIGHT) and [`TRACKING_LOOSE`](#TRACKING_LOOSE) are provided.

    The tracking value is multiplied by the font point size and
    passed through the font transform to determine an additional
    amount to add to the advance of each glyph cluster. Positive
    tracking values will inhibit formation of optional ligatures.
    Tracking values are typically between `-0.1` and
    `0.3`; values outside this range are generally not
    desirable.

    Since:
    :   1.6
  + ### TRACKING\_TIGHT

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") TRACKING\_TIGHT

    Perform tight tracking.

    Since:
    :   1.6

    See Also:
    :   - [`TRACKING`](#TRACKING)
  + ### TRACKING\_LOOSE

    public static final [Float](../../../../java.base/java/lang/Float.md "class in java.lang") TRACKING\_LOOSE

    Perform loose tracking.

    Since:
    :   1.6

    See Also:
    :   - [`TRACKING`](#TRACKING)
* ## Constructor Details

  + ### TextAttribute

    protected TextAttribute([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a `TextAttribute` with the specified name.

    Parameters:
    :   `name` - the attribute name to assign to this
        `TextAttribute`
* ## Method Details

  + ### readResolve

    protected [Object](../../../../java.base/java/lang/Object.md "class in java.lang") readResolve()
    throws [InvalidObjectException](../../../../java.base/java/io/InvalidObjectException.md "class in java.io")

    Resolves instances being deserialized to the predefined constants.

    Overrides:
    :   `readResolve` in class `AttributedCharacterIterator.Attribute`

    Returns:
    :   the resolved `Attribute` object

    Throws:
    :   `InvalidObjectException` - if the object to resolve is not
        an instance of `Attribute`