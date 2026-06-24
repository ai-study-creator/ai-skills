Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class FontUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Font](../../../java/awt/Font.md "class in java.awt")

javax.swing.plaf.FontUIResource

All Implemented Interfaces:
:   `Serializable`, `UIResource`

---

public class FontUIResource
extends [Font](../../../java/awt/Font.md "class in java.awt")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A subclass of java.awt.Font that implements UIResource.
UI classes which set default font properties should use
this class.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`UIResource`](UIResource.md "interface in javax.swing.plaf")

* ## Field Summary

  ### Fields inherited from class java.awt.[Font](../../../java/awt/Font.md "class in java.awt")

  `BOLD, CENTER_BASELINE, DIALOG, DIALOG_INPUT, HANGING_BASELINE, ITALIC, LAYOUT_LEFT_TO_RIGHT, LAYOUT_NO_LIMIT_CONTEXT, LAYOUT_NO_START_CONTEXT, LAYOUT_RIGHT_TO_LEFT, MONOSPACED, name, PLAIN, pointSize, ROMAN_BASELINE, SANS_SERIF, SERIF, size, style, TRUETYPE_FONT, TYPE1_FONT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FontUIResource(Font font)`

  Constructs a `FontUIResource`.

  `FontUIResource(String name,
  int style,
  int size)`

  Constructs a `FontUIResource`.
* ## Method Summary

  ### Methods inherited from class java.awt.[Font](../../../java/awt/Font.md "class in java.awt")

  `canDisplay, canDisplay, canDisplayUpTo, canDisplayUpTo, canDisplayUpTo, createFont, createFont, createFonts, createFonts, createGlyphVector, createGlyphVector, createGlyphVector, createGlyphVector, decode, deriveFont, deriveFont, deriveFont, deriveFont, deriveFont, deriveFont, equals, getAttributes, getAvailableAttributes, getBaselineFor, getFamily, getFamily, getFont, getFont, getFont, getFontName, getFontName, getItalicAngle, getLineMetrics, getLineMetrics, getLineMetrics, getLineMetrics, getMaxCharBounds, getMissingGlyphCode, getName, getNumGlyphs, getPSName, getSize, getSize2D, getStringBounds, getStringBounds, getStringBounds, getStringBounds, getStyle, getTransform, hashCode, hasLayoutAttributes, hasUniformLineMetrics, isBold, isItalic, isPlain, isTransformed, layoutGlyphVector, textRequiresLayout, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FontUIResource

    public FontUIResource([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    int style,
    int size)

    Constructs a `FontUIResource`.

    Parameters:
    :   `name` - the font name
    :   `style` - the style constant for the font
    :   `size` - the point size of the font
  + ### FontUIResource

    public FontUIResource([Font](../../../java/awt/Font.md "class in java.awt") font)

    Constructs a `FontUIResource`.

    Parameters:
    :   `font` - the font