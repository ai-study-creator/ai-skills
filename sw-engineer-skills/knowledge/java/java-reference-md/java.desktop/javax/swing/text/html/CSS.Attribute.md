Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class CSS.Attribute

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.CSS.Attribute

Enclosing class:
:   `CSS`

---

public static final class CSS.Attribute
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Definitions to be used as a key on AttributeSet's
that might hold CSS attributes. Since this is a
closed set (i.e. defined exactly by the specification),
it is final and cannot be extended.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final CSS.Attribute`

  `BACKGROUND`

  CSS attribute "background".

  `static final CSS.Attribute`

  `BACKGROUND_ATTACHMENT`

  CSS attribute "background-attachment".

  `static final CSS.Attribute`

  `BACKGROUND_COLOR`

  CSS attribute "background-color".

  `static final CSS.Attribute`

  `BACKGROUND_IMAGE`

  CSS attribute "background-image".

  `static final CSS.Attribute`

  `BACKGROUND_POSITION`

  CSS attribute "background-position".

  `static final CSS.Attribute`

  `BACKGROUND_REPEAT`

  CSS attribute "background-repeat".

  `static final CSS.Attribute`

  `BORDER`

  CSS attribute "border".

  `static final CSS.Attribute`

  `BORDER_BOTTOM`

  CSS attribute "border-bottom".

  `static final CSS.Attribute`

  `BORDER_BOTTOM_COLOR`

  CSS attribute "border-bottom-color".

  `static final CSS.Attribute`

  `BORDER_BOTTOM_STYLE`

  CSS attribute "border-bottom-style".

  `static final CSS.Attribute`

  `BORDER_BOTTOM_WIDTH`

  CSS attribute "border-bottom-width".

  `static final CSS.Attribute`

  `BORDER_COLOR`

  CSS attribute "border-color".

  `static final CSS.Attribute`

  `BORDER_LEFT`

  CSS attribute "border-left".

  `static final CSS.Attribute`

  `BORDER_LEFT_COLOR`

  CSS attribute "margin-right".

  `static final CSS.Attribute`

  `BORDER_LEFT_STYLE`

  CSS attribute "border-left-style".

  `static final CSS.Attribute`

  `BORDER_LEFT_WIDTH`

  CSS attribute "border-left-width".

  `static final CSS.Attribute`

  `BORDER_RIGHT`

  CSS attribute "border-right".

  `static final CSS.Attribute`

  `BORDER_RIGHT_COLOR`

  CSS attribute "border-right-color".

  `static final CSS.Attribute`

  `BORDER_RIGHT_STYLE`

  CSS attribute "border-right-style".

  `static final CSS.Attribute`

  `BORDER_RIGHT_WIDTH`

  CSS attribute "border-right-width".

  `static final CSS.Attribute`

  `BORDER_STYLE`

  CSS attribute "border-style".

  `static final CSS.Attribute`

  `BORDER_TOP`

  CSS attribute "border-top".

  `static final CSS.Attribute`

  `BORDER_TOP_COLOR`

  CSS attribute "border-top-color".

  `static final CSS.Attribute`

  `BORDER_TOP_STYLE`

  CSS attribute "border-top-style".

  `static final CSS.Attribute`

  `BORDER_TOP_WIDTH`

  CSS attribute "border-top-width".

  `static final CSS.Attribute`

  `BORDER_WIDTH`

  CSS attribute "border-width".

  `static final CSS.Attribute`

  `CLEAR`

  CSS attribute "clear".

  `static final CSS.Attribute`

  `COLOR`

  CSS attribute "color".

  `static final CSS.Attribute`

  `DISPLAY`

  CSS attribute "display".

  `static final CSS.Attribute`

  `FLOAT`

  CSS attribute "float".

  `static final CSS.Attribute`

  `FONT`

  CSS attribute "font".

  `static final CSS.Attribute`

  `FONT_FAMILY`

  CSS attribute "font-family".

  `static final CSS.Attribute`

  `FONT_SIZE`

  CSS attribute "font-size".

  `static final CSS.Attribute`

  `FONT_STYLE`

  CSS attribute "font-style".

  `static final CSS.Attribute`

  `FONT_VARIANT`

  CSS attribute "font-variant".

  `static final CSS.Attribute`

  `FONT_WEIGHT`

  CSS attribute "font-weight".

  `static final CSS.Attribute`

  `HEIGHT`

  CSS attribute "height".

  `static final CSS.Attribute`

  `LETTER_SPACING`

  CSS attribute "letter-spacing".

  `static final CSS.Attribute`

  `LINE_HEIGHT`

  CSS attribute "line-height".

  `static final CSS.Attribute`

  `LIST_STYLE`

  CSS attribute "list-style".

  `static final CSS.Attribute`

  `LIST_STYLE_IMAGE`

  CSS attribute "list-style-image".

  `static final CSS.Attribute`

  `LIST_STYLE_POSITION`

  CSS attribute "list-style-position".

  `static final CSS.Attribute`

  `LIST_STYLE_TYPE`

  CSS attribute "list-style-type".

  `static final CSS.Attribute`

  `MARGIN`

  CSS attribute "margin".

  `static final CSS.Attribute`

  `MARGIN_BOTTOM`

  CSS attribute "margin-bottom".

  `static final CSS.Attribute`

  `MARGIN_LEFT`

  CSS attribute "margin-left".

  `static final CSS.Attribute`

  `MARGIN_RIGHT`

  CSS attribute "margin-right".

  `static final CSS.Attribute`

  `MARGIN_TOP`

  CSS attribute "margin-top".

  `static final CSS.Attribute`

  `PADDING`

  CSS attribute "padding".

  `static final CSS.Attribute`

  `PADDING_BOTTOM`

  CSS attribute "padding-bottom".

  `static final CSS.Attribute`

  `PADDING_LEFT`

  CSS attribute "padding-left".

  `static final CSS.Attribute`

  `PADDING_RIGHT`

  CSS attribute "padding-right".

  `static final CSS.Attribute`

  `PADDING_TOP`

  CSS attribute "padding-top".

  `static final CSS.Attribute`

  `TEXT_ALIGN`

  CSS attribute "text-align".

  `static final CSS.Attribute`

  `TEXT_DECORATION`

  CSS attribute "text-decoration".

  `static final CSS.Attribute`

  `TEXT_INDENT`

  CSS attribute "text-indent".

  `static final CSS.Attribute`

  `TEXT_TRANSFORM`

  CSS attribute "text-transform".

  `static final CSS.Attribute`

  `VERTICAL_ALIGN`

  CSS attribute "vertical-align".

  `static final CSS.Attribute`

  `WHITE_SPACE`

  CSS attribute "white-space".

  `static final CSS.Attribute`

  `WIDTH`

  CSS attribute "width".

  `static final CSS.Attribute`

  `WORD_SPACING`

  CSS attribute "word-spacing".
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDefaultValue()`

  Fetch the default value for the attribute.

  `boolean`

  `isInherited()`

  Indicates if the attribute should be inherited
  from the parent or not.

  `String`

  `toString()`

  The string representation of the attribute.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### BACKGROUND

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BACKGROUND

    CSS attribute "background".
  + ### BACKGROUND\_ATTACHMENT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BACKGROUND\_ATTACHMENT

    CSS attribute "background-attachment".
  + ### BACKGROUND\_COLOR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BACKGROUND\_COLOR

    CSS attribute "background-color".
  + ### BACKGROUND\_IMAGE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BACKGROUND\_IMAGE

    CSS attribute "background-image".
  + ### BACKGROUND\_POSITION

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BACKGROUND\_POSITION

    CSS attribute "background-position".
  + ### BACKGROUND\_REPEAT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BACKGROUND\_REPEAT

    CSS attribute "background-repeat".
  + ### BORDER

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER

    CSS attribute "border".
  + ### BORDER\_BOTTOM

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_BOTTOM

    CSS attribute "border-bottom".
  + ### BORDER\_BOTTOM\_COLOR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_BOTTOM\_COLOR

    CSS attribute "border-bottom-color".
  + ### BORDER\_BOTTOM\_STYLE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_BOTTOM\_STYLE

    CSS attribute "border-bottom-style".
  + ### BORDER\_BOTTOM\_WIDTH

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_BOTTOM\_WIDTH

    CSS attribute "border-bottom-width".
  + ### BORDER\_COLOR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_COLOR

    CSS attribute "border-color".
  + ### BORDER\_LEFT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_LEFT

    CSS attribute "border-left".
  + ### BORDER\_LEFT\_COLOR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_LEFT\_COLOR

    CSS attribute "margin-right".
  + ### BORDER\_LEFT\_STYLE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_LEFT\_STYLE

    CSS attribute "border-left-style".
  + ### BORDER\_LEFT\_WIDTH

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_LEFT\_WIDTH

    CSS attribute "border-left-width".
  + ### BORDER\_RIGHT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_RIGHT

    CSS attribute "border-right".
  + ### BORDER\_RIGHT\_COLOR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_RIGHT\_COLOR

    CSS attribute "border-right-color".
  + ### BORDER\_RIGHT\_STYLE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_RIGHT\_STYLE

    CSS attribute "border-right-style".
  + ### BORDER\_RIGHT\_WIDTH

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_RIGHT\_WIDTH

    CSS attribute "border-right-width".
  + ### BORDER\_STYLE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_STYLE

    CSS attribute "border-style".
  + ### BORDER\_TOP

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_TOP

    CSS attribute "border-top".
  + ### BORDER\_TOP\_COLOR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_TOP\_COLOR

    CSS attribute "border-top-color".
  + ### BORDER\_TOP\_STYLE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_TOP\_STYLE

    CSS attribute "border-top-style".
  + ### BORDER\_TOP\_WIDTH

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_TOP\_WIDTH

    CSS attribute "border-top-width".
  + ### BORDER\_WIDTH

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") BORDER\_WIDTH

    CSS attribute "border-width".
  + ### CLEAR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") CLEAR

    CSS attribute "clear".
  + ### COLOR

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") COLOR

    CSS attribute "color".
  + ### DISPLAY

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") DISPLAY

    CSS attribute "display".
  + ### FLOAT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") FLOAT

    CSS attribute "float".
  + ### FONT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") FONT

    CSS attribute "font".
  + ### FONT\_FAMILY

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") FONT\_FAMILY

    CSS attribute "font-family".
  + ### FONT\_SIZE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") FONT\_SIZE

    CSS attribute "font-size".
  + ### FONT\_STYLE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") FONT\_STYLE

    CSS attribute "font-style".
  + ### FONT\_VARIANT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") FONT\_VARIANT

    CSS attribute "font-variant".
  + ### FONT\_WEIGHT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") FONT\_WEIGHT

    CSS attribute "font-weight".
  + ### HEIGHT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") HEIGHT

    CSS attribute "height".
  + ### LETTER\_SPACING

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") LETTER\_SPACING

    CSS attribute "letter-spacing".
  + ### LINE\_HEIGHT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") LINE\_HEIGHT

    CSS attribute "line-height".
  + ### LIST\_STYLE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") LIST\_STYLE

    CSS attribute "list-style".
  + ### LIST\_STYLE\_IMAGE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") LIST\_STYLE\_IMAGE

    CSS attribute "list-style-image".
  + ### LIST\_STYLE\_POSITION

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") LIST\_STYLE\_POSITION

    CSS attribute "list-style-position".
  + ### LIST\_STYLE\_TYPE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") LIST\_STYLE\_TYPE

    CSS attribute "list-style-type".
  + ### MARGIN

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") MARGIN

    CSS attribute "margin".
  + ### MARGIN\_BOTTOM

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") MARGIN\_BOTTOM

    CSS attribute "margin-bottom".
  + ### MARGIN\_LEFT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") MARGIN\_LEFT

    CSS attribute "margin-left".
  + ### MARGIN\_RIGHT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") MARGIN\_RIGHT

    CSS attribute "margin-right".
  + ### MARGIN\_TOP

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") MARGIN\_TOP

    CSS attribute "margin-top".
  + ### PADDING

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") PADDING

    CSS attribute "padding".
  + ### PADDING\_BOTTOM

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") PADDING\_BOTTOM

    CSS attribute "padding-bottom".
  + ### PADDING\_LEFT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") PADDING\_LEFT

    CSS attribute "padding-left".
  + ### PADDING\_RIGHT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") PADDING\_RIGHT

    CSS attribute "padding-right".
  + ### PADDING\_TOP

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") PADDING\_TOP

    CSS attribute "padding-top".
  + ### TEXT\_ALIGN

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") TEXT\_ALIGN

    CSS attribute "text-align".
  + ### TEXT\_DECORATION

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") TEXT\_DECORATION

    CSS attribute "text-decoration".
  + ### TEXT\_INDENT

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") TEXT\_INDENT

    CSS attribute "text-indent".
  + ### TEXT\_TRANSFORM

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") TEXT\_TRANSFORM

    CSS attribute "text-transform".
  + ### VERTICAL\_ALIGN

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") VERTICAL\_ALIGN

    CSS attribute "vertical-align".
  + ### WORD\_SPACING

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") WORD\_SPACING

    CSS attribute "word-spacing".
  + ### WHITE\_SPACE

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") WHITE\_SPACE

    CSS attribute "white-space".
  + ### WIDTH

    public static final [CSS.Attribute](CSS.Attribute.md "class in javax.swing.text.html") WIDTH

    CSS attribute "width".
* ## Method Details

  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    The string representation of the attribute. This
    should exactly match the string specified in the
    CSS specification.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### getDefaultValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDefaultValue()

    Fetch the default value for the attribute.
    If there is no default value (such as for
    composite attributes), null will be returned.

    Returns:
    :   default value for the attribute
  + ### isInherited

    public boolean isInherited()

    Indicates if the attribute should be inherited
    from the parent or not.

    Returns:
    :   true if the attribute should be inherited from the parent