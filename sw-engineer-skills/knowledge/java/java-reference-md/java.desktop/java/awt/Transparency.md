Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface Transparency

All Known Subinterfaces:
:   `Paint`

All Known Implementing Classes:
:   `BufferedImage`, `Color`, `ColorModel`, `ColorUIResource`, `ComponentColorModel`, `DirectColorModel`, `GradientPaint`, `IndexColorModel`, `LinearGradientPaint`, `MultipleGradientPaint`, `PackedColorModel`, `RadialGradientPaint`, `SystemColor`, `TexturePaint`, `VolatileImage`

---

public interface Transparency

The `Transparency` interface defines the common transparency
modes for implementing classes.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BITMASK`

  Represents image data that is guaranteed to be either completely
  opaque, with an alpha value of 1.0, or completely transparent,
  with an alpha value of 0.0.

  `static final int`

  `OPAQUE`

  Represents image data that is guaranteed to be completely opaque,
  meaning that all pixels have an alpha value of 1.0.

  `static final int`

  `TRANSLUCENT`

  Represents image data that contains or might contain arbitrary
  alpha values between and including 0.0 and 1.0.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getTransparency()`

  Returns the type of this `Transparency`.

* ## Field Details

  + ### OPAQUE

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int OPAQUE

    Represents image data that is guaranteed to be completely opaque,
    meaning that all pixels have an alpha value of 1.0.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Transparency.OPAQUE)
  + ### BITMASK

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int BITMASK

    Represents image data that is guaranteed to be either completely
    opaque, with an alpha value of 1.0, or completely transparent,
    with an alpha value of 0.0.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Transparency.BITMASK)
  + ### TRANSLUCENT

    [@Native](../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int TRANSLUCENT

    Represents image data that contains or might contain arbitrary
    alpha values between and including 0.0 and 1.0.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Transparency.TRANSLUCENT)
* ## Method Details

  + ### getTransparency

    int getTransparency()

    Returns the type of this `Transparency`.

    Returns:
    :   the field type of this `Transparency`, which is
        either OPAQUE, BITMASK or TRANSLUCENT.