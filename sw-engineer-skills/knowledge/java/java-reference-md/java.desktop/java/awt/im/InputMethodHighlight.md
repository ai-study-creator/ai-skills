Module [java.desktop](../../../module-summary.md)

Package [java.awt.im](package-summary.md)

# Class InputMethodHighlight

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.im.InputMethodHighlight

---

public class InputMethodHighlight
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An InputMethodHighlight is used to describe the highlight
attributes of text being composed.
The description can be at two levels:
at the abstract level it specifies the conversion state and whether the
text is selected; at the concrete level it specifies style attributes used
to render the highlight.
An InputMethodHighlight must provide the description at the
abstract level; it may or may not provide the description at the concrete
level.
If no concrete style is provided, a renderer should use
[`Toolkit.mapInputMethodHighlight(java.awt.im.InputMethodHighlight)`](../Toolkit.md#mapInputMethodHighlight(java.awt.im.InputMethodHighlight)) to map to a concrete style.

The abstract description consists of three fields: `selected`,
`state`, and `variation`.
`selected` indicates whether the text range is the one that the
input method is currently working on, for example, the segment for which
conversion candidates are currently shown in a menu.
`state` represents the conversion state. State values are defined
by the input method framework and should be distinguished in all
mappings from abstract to concrete styles. Currently defined state values
are raw (unconverted) and converted.
These state values are recommended for use before and after the
main conversion step of text composition, say, before and after kana->kanji
or pinyin->hanzi conversion.
The `variation` field allows input methods to express additional
information about the conversion results.

InputMethodHighlight instances are typically used as attribute values
returned from AttributedCharacterIterator for the INPUT\_METHOD\_HIGHLIGHT
attribute. They may be wrapped into [`Annotation`](../../../../java.base/java/text/Annotation.md "class in java.text")
instances to indicate separate text segments.

Since:
:   1.2

See Also:
:   * [`AttributedCharacterIterator`](../../../../java.base/java/text/AttributedCharacterIterator.md "interface in java.text")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CONVERTED_TEXT`

  Constant for the converted text state.

  `static final int`

  `RAW_TEXT`

  Constant for the raw text state.

  `static final InputMethodHighlight`

  `SELECTED_CONVERTED_TEXT_HIGHLIGHT`

  Constant for the default highlight for selected converted text.

  `static final InputMethodHighlight`

  `SELECTED_RAW_TEXT_HIGHLIGHT`

  Constant for the default highlight for selected raw text.

  `static final InputMethodHighlight`

  `UNSELECTED_CONVERTED_TEXT_HIGHLIGHT`

  Constant for the default highlight for unselected converted text.

  `static final InputMethodHighlight`

  `UNSELECTED_RAW_TEXT_HIGHLIGHT`

  Constant for the default highlight for unselected raw text.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InputMethodHighlight(boolean selected,
  int state)`

  Constructs an input method highlight record.

  `InputMethodHighlight(boolean selected,
  int state,
  int variation)`

  Constructs an input method highlight record.

  `InputMethodHighlight(boolean selected,
  int state,
  int variation,
  Map<TextAttribute,?> style)`

  Constructs an input method highlight record.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getState()`

  Returns the conversion state of the text range.

  `Map<TextAttribute,?>`

  `getStyle()`

  Returns the rendering style attributes for the text range, or null.

  `int`

  `getVariation()`

  Returns the variation of the text range.

  `boolean`

  `isSelected()`

  Returns whether the text range is selected.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### RAW\_TEXT

    public static final int RAW\_TEXT

    Constant for the raw text state.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.im.InputMethodHighlight.RAW_TEXT)
  + ### CONVERTED\_TEXT

    public static final int CONVERTED\_TEXT

    Constant for the converted text state.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.im.InputMethodHighlight.CONVERTED_TEXT)
  + ### UNSELECTED\_RAW\_TEXT\_HIGHLIGHT

    public static final [InputMethodHighlight](InputMethodHighlight.md "class in java.awt.im") UNSELECTED\_RAW\_TEXT\_HIGHLIGHT

    Constant for the default highlight for unselected raw text.
  + ### SELECTED\_RAW\_TEXT\_HIGHLIGHT

    public static final [InputMethodHighlight](InputMethodHighlight.md "class in java.awt.im") SELECTED\_RAW\_TEXT\_HIGHLIGHT

    Constant for the default highlight for selected raw text.
  + ### UNSELECTED\_CONVERTED\_TEXT\_HIGHLIGHT

    public static final [InputMethodHighlight](InputMethodHighlight.md "class in java.awt.im") UNSELECTED\_CONVERTED\_TEXT\_HIGHLIGHT

    Constant for the default highlight for unselected converted text.
  + ### SELECTED\_CONVERTED\_TEXT\_HIGHLIGHT

    public static final [InputMethodHighlight](InputMethodHighlight.md "class in java.awt.im") SELECTED\_CONVERTED\_TEXT\_HIGHLIGHT

    Constant for the default highlight for selected converted text.
* ## Constructor Details

  + ### InputMethodHighlight

    public InputMethodHighlight(boolean selected,
    int state)

    Constructs an input method highlight record.
    The variation is set to 0, the style to null.

    Parameters:
    :   `selected` - Whether the text range is selected
    :   `state` - The conversion state for the text range - RAW\_TEXT or CONVERTED\_TEXT

    Throws:
    :   `IllegalArgumentException` - if a state other than RAW\_TEXT or CONVERTED\_TEXT is given

    See Also:
    :   - [`RAW_TEXT`](#RAW_TEXT)
        - [`CONVERTED_TEXT`](#CONVERTED_TEXT)
  + ### InputMethodHighlight

    public InputMethodHighlight(boolean selected,
    int state,
    int variation)

    Constructs an input method highlight record.
    The style is set to null.

    Parameters:
    :   `selected` - Whether the text range is selected
    :   `state` - The conversion state for the text range - RAW\_TEXT or CONVERTED\_TEXT
    :   `variation` - The style variation for the text range

    Throws:
    :   `IllegalArgumentException` - if a state other than RAW\_TEXT or CONVERTED\_TEXT is given

    See Also:
    :   - [`RAW_TEXT`](#RAW_TEXT)
        - [`CONVERTED_TEXT`](#CONVERTED_TEXT)
  + ### InputMethodHighlight

    public InputMethodHighlight(boolean selected,
    int state,
    int variation,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[TextAttribute](../font/TextAttribute.md "class in java.awt.font"),?> style)

    Constructs an input method highlight record.
    The style attributes map provided must be unmodifiable.

    Parameters:
    :   `selected` - whether the text range is selected
    :   `state` - the conversion state for the text range - RAW\_TEXT or CONVERTED\_TEXT
    :   `variation` - the variation for the text range
    :   `style` - the rendering style attributes for the text range, or null

    Throws:
    :   `IllegalArgumentException` - if a state other than RAW\_TEXT or CONVERTED\_TEXT is given

    Since:
    :   1.3

    See Also:
    :   - [`RAW_TEXT`](#RAW_TEXT)
        - [`CONVERTED_TEXT`](#CONVERTED_TEXT)
* ## Method Details

  + ### isSelected

    public boolean isSelected()

    Returns whether the text range is selected.

    Returns:
    :   whether the text range is selected
  + ### getState

    public int getState()

    Returns the conversion state of the text range.

    Returns:
    :   The conversion state for the text range - RAW\_TEXT or CONVERTED\_TEXT.

    See Also:
    :   - [`RAW_TEXT`](#RAW_TEXT)
        - [`CONVERTED_TEXT`](#CONVERTED_TEXT)
  + ### getVariation

    public int getVariation()

    Returns the variation of the text range.

    Returns:
    :   the variation of the text range
  + ### getStyle

    public [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[TextAttribute](../font/TextAttribute.md "class in java.awt.font"),?> getStyle()

    Returns the rendering style attributes for the text range, or null.

    Returns:
    :   the rendering style attributes for the text range, or null

    Since:
    :   1.3