Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class SoftBevelBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

[javax.swing.border.BevelBorder](BevelBorder.md "class in javax.swing.border")

javax.swing.border.SoftBevelBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

---

public class SoftBevelBorder
extends [BevelBorder](BevelBorder.md "class in javax.swing.border")

A class which implements a raised or lowered bevel with
softened corners.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  ### Fields inherited from class javax.swing.border.[BevelBorder](BevelBorder.md "class in javax.swing.border")

  `bevelType, highlightInner, highlightOuter, LOWERED, RAISED, shadowInner, shadowOuter`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SoftBevelBorder(int bevelType)`

  Creates a bevel border with the specified type and whose
  colors will be derived from the background color of the
  component passed into the paintBorder method.

  `SoftBevelBorder(int bevelType,
  Color highlight,
  Color shadow)`

  Creates a bevel border with the specified type, highlight and
  shadow colors.

  `SoftBevelBorder(int bevelType,
  Color highlightOuterColor,
  Color highlightInnerColor,
  Color shadowOuterColor,
  Color shadowInnerColor)`

  Creates a bevel border with the specified type, highlight
  shadow colors.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitialize the insets parameter with this Border's current Insets.

  `boolean`

  `isBorderOpaque()`

  Returns whether or not the border is opaque.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints the border for the specified component with the specified
  position and size.

  ### Methods inherited from class javax.swing.border.[BevelBorder](BevelBorder.md "class in javax.swing.border")

  `getBevelType, getHighlightInnerColor, getHighlightInnerColor, getHighlightOuterColor, getHighlightOuterColor, getShadowInnerColor, getShadowInnerColor, getShadowOuterColor, getShadowOuterColor, paintLoweredBevel, paintRaisedBevel`

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SoftBevelBorder

    public SoftBevelBorder(int bevelType)

    Creates a bevel border with the specified type and whose
    colors will be derived from the background color of the
    component passed into the paintBorder method.

    Parameters:
    :   `bevelType` - the type of bevel for the border
  + ### SoftBevelBorder

    public SoftBevelBorder(int bevelType,
    [Color](../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../java/awt/Color.md "class in java.awt") shadow)

    Creates a bevel border with the specified type, highlight and
    shadow colors.

    Parameters:
    :   `bevelType` - the type of bevel for the border
    :   `highlight` - the color to use for the bevel highlight
    :   `shadow` - the color to use for the bevel shadow
  + ### SoftBevelBorder

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"bevelType","highlightOuterColor","highlightInnerColor","shadowOuterColor","shadowInnerColor"})
    public SoftBevelBorder(int bevelType,
    [Color](../../../java/awt/Color.md "class in java.awt") highlightOuterColor,
    [Color](../../../java/awt/Color.md "class in java.awt") highlightInnerColor,
    [Color](../../../java/awt/Color.md "class in java.awt") shadowOuterColor,
    [Color](../../../java/awt/Color.md "class in java.awt") shadowInnerColor)

    Creates a bevel border with the specified type, highlight
    shadow colors.

    Parameters:
    :   `bevelType` - the type of bevel for the border
    :   `highlightOuterColor` - the color to use for the bevel outer highlight
    :   `highlightInnerColor` - the color to use for the bevel inner highlight
    :   `shadowOuterColor` - the color to use for the bevel outer shadow
    :   `shadowInnerColor` - the color to use for the bevel inner shadow
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the border for the specified component with the specified
    position and size.

    Specified by:
    :   `paintBorder` in interface `Border`

    Overrides:
    :   `paintBorder` in class `BevelBorder`

    Parameters:
    :   `c` - the component for which this border is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the painted border
    :   `y` - the y position of the painted border
    :   `width` - the width of the painted border
    :   `height` - the height of the painted border
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Insets](../../../java/awt/Insets.md "class in java.awt") insets)

    Reinitialize the insets parameter with this Border's current Insets.

    Overrides:
    :   `getBorderInsets` in class `BevelBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the object to be reinitialized

    Returns:
    :   the `insets` object

    Throws:
    :   `NullPointerException` - if the specified `insets`
        is `null`
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Returns whether or not the border is opaque.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Overrides:
    :   `isBorderOpaque` in class `BevelBorder`

    Returns:
    :   true