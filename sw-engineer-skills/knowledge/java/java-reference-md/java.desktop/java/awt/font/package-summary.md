Module [java.desktop](../../../module-summary.md)

# Package java.awt.font

---

package java.awt.font

Provides classes and interface relating to fonts. It contains support for
representing Type 1, Type 1 Multiple Master fonts, OpenType fonts, and
TrueType fonts.

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.awt](../package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.
* All Classes and InterfacesInterfacesClassesEnum Classes

  Class

  Description

  [FontRenderContext](FontRenderContext.md "class in java.awt.font")

  The `FontRenderContext` class is a container for the
  information needed to correctly measure text.

  [GlyphJustificationInfo](GlyphJustificationInfo.md "class in java.awt.font")

  The `GlyphJustificationInfo` class represents information
  about the justification properties of a glyph.

  [GlyphMetrics](GlyphMetrics.md "class in java.awt.font")

  The `GlyphMetrics` class represents information for a
  single glyph.

  [GlyphVector](GlyphVector.md "class in java.awt.font")

  A `GlyphVector` object is a collection of glyphs
  containing geometric information for the placement of each glyph
  in a transformed coordinate space which corresponds to the
  device on which the `GlyphVector` is ultimately
  displayed.

  [GraphicAttribute](GraphicAttribute.md "class in java.awt.font")

  This class is used with the CHAR\_REPLACEMENT attribute.

  [ImageGraphicAttribute](ImageGraphicAttribute.md "class in java.awt.font")

  The `ImageGraphicAttribute` class is an implementation of
  [`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font") which draws images in
  a [`TextLayout`](TextLayout.md "class in java.awt.font").

  [LayoutPath](LayoutPath.md "class in java.awt.font")

  LayoutPath provides a mapping between locations relative to the
  baseline and points in user space.

  [LineBreakMeasurer](LineBreakMeasurer.md "class in java.awt.font")

  The `LineBreakMeasurer` class allows styled text to be
  broken into lines (or segments) that fit within a particular visual
  advance.

  [LineMetrics](LineMetrics.md "class in java.awt.font")

  The `LineMetrics` class allows access to the
  metrics needed to layout characters along a line
  and to layout of a set of lines.

  [MultipleMaster](MultipleMaster.md "interface in java.awt.font")

  The `MultipleMaster` interface represents Type 1
  Multiple Master fonts.

  [NumericShaper](NumericShaper.md "class in java.awt.font")

  The `NumericShaper` class is used to convert Latin-1 (European)
  digits to other Unicode decimal digits.

  [NumericShaper.Range](NumericShaper.Range.md "enum class in java.awt.font")

  A `NumericShaper.Range` represents a Unicode range of a
  script having its own decimal digits.

  [OpenType](OpenType.md "interface in java.awt.font")

  The `OpenType` interface represents OpenType and
  TrueType fonts.

  [ShapeGraphicAttribute](ShapeGraphicAttribute.md "class in java.awt.font")

  The `ShapeGraphicAttribute` class is an implementation of
  [`GraphicAttribute`](GraphicAttribute.md "class in java.awt.font") that draws shapes in a [`TextLayout`](TextLayout.md "class in java.awt.font").

  [TextAttribute](TextAttribute.md "class in java.awt.font")

  The `TextAttribute` class defines attribute keys and
  attribute values used for text rendering.

  [TextHitInfo](TextHitInfo.md "class in java.awt.font")

  The `TextHitInfo` class represents a character position in a
  text model, and a **bias**, or "side," of the character.

  [TextLayout](TextLayout.md "class in java.awt.font")

  `TextLayout` is an immutable graphical representation of styled
  character data.

  [TextLayout.CaretPolicy](TextLayout.CaretPolicy.md "class in java.awt.font")

  Defines a policy for determining the strong caret location.

  [TextMeasurer](TextMeasurer.md "class in java.awt.font")

  The `TextMeasurer` class provides the primitive operations
  needed for line break: measuring up to a given advance, determining the
  advance of a range of characters, and generating a
  `TextLayout` for a range of characters.

  [TransformAttribute](TransformAttribute.md "class in java.awt.font")

  The `TransformAttribute` class provides an immutable
  wrapper for a transform so that it is safe to use as an attribute.