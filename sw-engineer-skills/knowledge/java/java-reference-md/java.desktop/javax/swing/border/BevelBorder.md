Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class BevelBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

javax.swing.border.BevelBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

Direct Known Subclasses:
:   `BorderUIResource.BevelBorderUIResource`, `SoftBevelBorder`

---

public class BevelBorder
extends [AbstractBorder](AbstractBorder.md "class in javax.swing.border")

A class which implements a simple two-line bevel border.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `bevelType`

  The bevel type.

  `protected Color`

  `highlightInner`

  The color to use for the bevel inner highlight.

  `protected Color`

  `highlightOuter`

  The color to use for the bevel outer highlight.

  `static final int`

  `LOWERED`

  Lowered bevel type.

  `static final int`

  `RAISED`

  Raised bevel type.

  `protected Color`

  `shadowInner`

  The color to use for the bevel inner shadow.

  `protected Color`

  `shadowOuter`

  the color to use for the bevel outer shadow
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BevelBorder(int bevelType)`

  Creates a bevel border with the specified type and whose
  colors will be derived from the background color of the
  component passed into the paintBorder method.

  `BevelBorder(int bevelType,
  Color highlight,
  Color shadow)`

  Creates a bevel border with the specified type, highlight and
  shadow colors.

  `BevelBorder(int bevelType,
  Color highlightOuterColor,
  Color highlightInnerColor,
  Color shadowOuterColor,
  Color shadowInnerColor)`

  Creates a bevel border with the specified type, highlight and
  shadow colors.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getBevelType()`

  Returns the type of the bevel border.

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitialize the insets parameter with this Border's current Insets.

  `Color`

  `getHighlightInnerColor()`

  Returns the inner highlight color of the bevel border.

  `Color`

  `getHighlightInnerColor(Component c)`

  Returns the inner highlight color of the bevel border
  when rendered on the specified component.

  `Color`

  `getHighlightOuterColor()`

  Returns the outer highlight color of the bevel border.

  `Color`

  `getHighlightOuterColor(Component c)`

  Returns the outer highlight color of the bevel border
  when rendered on the specified component.

  `Color`

  `getShadowInnerColor()`

  Returns the inner shadow color of the bevel border.

  `Color`

  `getShadowInnerColor(Component c)`

  Returns the inner shadow color of the bevel border
  when rendered on the specified component.

  `Color`

  `getShadowOuterColor()`

  Returns the outer shadow color of the bevel border.

  `Color`

  `getShadowOuterColor(Component c)`

  Returns the outer shadow color of the bevel border
  when rendered on the specified component.

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

  `protected void`

  `paintLoweredBevel(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints a lowered bevel for the specified component with the specified
  position and size.

  `protected void`

  `paintRaisedBevel(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints a raised bevel for the specified component with the specified
  position and size.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### RAISED

    public static final int RAISED

    Raised bevel type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.BevelBorder.RAISED)
  + ### LOWERED

    public static final int LOWERED

    Lowered bevel type.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.BevelBorder.LOWERED)
  + ### bevelType

    protected int bevelType

    The bevel type.
  + ### highlightOuter

    protected [Color](../../../java/awt/Color.md "class in java.awt") highlightOuter

    The color to use for the bevel outer highlight.
  + ### highlightInner

    protected [Color](../../../java/awt/Color.md "class in java.awt") highlightInner

    The color to use for the bevel inner highlight.
  + ### shadowInner

    protected [Color](../../../java/awt/Color.md "class in java.awt") shadowInner

    The color to use for the bevel inner shadow.
  + ### shadowOuter

    protected [Color](../../../java/awt/Color.md "class in java.awt") shadowOuter

    the color to use for the bevel outer shadow
* ## Constructor Details

  + ### BevelBorder

    public BevelBorder(int bevelType)

    Creates a bevel border with the specified type and whose
    colors will be derived from the background color of the
    component passed into the paintBorder method.

    Parameters:
    :   `bevelType` - the type of bevel for the border
  + ### BevelBorder

    public BevelBorder(int bevelType,
    [Color](../../../java/awt/Color.md "class in java.awt") highlight,
    [Color](../../../java/awt/Color.md "class in java.awt") shadow)

    Creates a bevel border with the specified type, highlight and
    shadow colors.
    The bevel outer highlight color and bevel inner highlight color
    will be derived from specified highlight color and
    bevel outer shadow color and bevel inner shadow color
    will be derived from specified shadow color.

    Parameters:
    :   `bevelType` - the type of bevel for the border
    :   `highlight` - the color to use for the bevel highlight
    :   `shadow` - the color to use for the bevel shadow
  + ### BevelBorder

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"bevelType","highlightOuterColor","highlightInnerColor","shadowOuterColor","shadowInnerColor"})
    public BevelBorder(int bevelType,
    [Color](../../../java/awt/Color.md "class in java.awt") highlightOuterColor,
    [Color](../../../java/awt/Color.md "class in java.awt") highlightInnerColor,
    [Color](../../../java/awt/Color.md "class in java.awt") shadowOuterColor,
    [Color](../../../java/awt/Color.md "class in java.awt") shadowInnerColor)

    Creates a bevel border with the specified type, highlight and
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
    :   `paintBorder` in class `AbstractBorder`

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
    :   `getBorderInsets` in class `AbstractBorder`

    Parameters:
    :   `c` - the component for which this border insets value applies
    :   `insets` - the object to be reinitialized

    Returns:
    :   the `insets` object

    Throws:
    :   `NullPointerException` - if the specified `insets`
        is `null`
  + ### getHighlightOuterColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getHighlightOuterColor([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns the outer highlight color of the bevel border
    when rendered on the specified component. If no highlight
    color was specified at instantiation, the highlight color
    is derived from the specified component's background color.

    Parameters:
    :   `c` - the component for which the highlight may be derived

    Returns:
    :   the outer highlight `Color`

    Since:
    :   1.3
  + ### getHighlightInnerColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getHighlightInnerColor([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns the inner highlight color of the bevel border
    when rendered on the specified component. If no highlight
    color was specified at instantiation, the highlight color
    is derived from the specified component's background color.

    Parameters:
    :   `c` - the component for which the highlight may be derived

    Returns:
    :   the inner highlight `Color`

    Since:
    :   1.3
  + ### getShadowInnerColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getShadowInnerColor([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns the inner shadow color of the bevel border
    when rendered on the specified component. If no shadow
    color was specified at instantiation, the shadow color
    is derived from the specified component's background color.

    Parameters:
    :   `c` - the component for which the shadow may be derived

    Returns:
    :   the inner shadow `Color`

    Since:
    :   1.3
  + ### getShadowOuterColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getShadowOuterColor([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns the outer shadow color of the bevel border
    when rendered on the specified component. If no shadow
    color was specified at instantiation, the shadow color
    is derived from the specified component's background color.

    Parameters:
    :   `c` - the component for which the shadow may be derived

    Returns:
    :   the outer shadow `Color`

    Since:
    :   1.3
  + ### getHighlightOuterColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getHighlightOuterColor()

    Returns the outer highlight color of the bevel border.
    Will return null if no highlight color was specified
    at instantiation.

    Returns:
    :   the outer highlight `Color` or `null` if no highlight
        color was specified

    Since:
    :   1.3
  + ### getHighlightInnerColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getHighlightInnerColor()

    Returns the inner highlight color of the bevel border.
    Will return null if no highlight color was specified
    at instantiation.

    Returns:
    :   the inner highlight `Color` or `null` if no highlight
        color was specified

    Since:
    :   1.3
  + ### getShadowInnerColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getShadowInnerColor()

    Returns the inner shadow color of the bevel border.
    Will return null if no shadow color was specified
    at instantiation.

    Returns:
    :   the inner shadow `Color` or `null` if no shadow color
        was specified

    Since:
    :   1.3
  + ### getShadowOuterColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getShadowOuterColor()

    Returns the outer shadow color of the bevel border.
    Will return null if no shadow color was specified
    at instantiation.

    Returns:
    :   the outer shadow `Color` or `null` if no shadow color
        was specified

    Since:
    :   1.3
  + ### getBevelType

    public int getBevelType()

    Returns the type of the bevel border.

    Returns:
    :   the bevel border type, either `RAISED` or `LOWERED`
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Returns whether or not the border is opaque. This implementation
    returns `true`.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Overrides:
    :   `isBorderOpaque` in class `AbstractBorder`

    Returns:
    :   true
  + ### paintRaisedBevel

    protected void paintRaisedBevel([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints a raised bevel for the specified component with the specified
    position and size.

    Parameters:
    :   `c` - the component for which the raised bevel is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the raised bevel
    :   `y` - the y position of the raised bevel
    :   `width` - the width of the raised bevel
    :   `height` - the height of the raised bevel
  + ### paintLoweredBevel

    protected void paintLoweredBevel([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints a lowered bevel for the specified component with the specified
    position and size.

    Parameters:
    :   `c` - the component for which the lowered bevel is being painted
    :   `g` - the paint graphics
    :   `x` - the x position of the lowered bevel
    :   `y` - the y position of the lowered bevel
    :   `width` - the width of the lowered bevel
    :   `height` - the height of the lowered bevel