Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class TitledBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

javax.swing.border.TitledBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

Direct Known Subclasses:
:   `BorderUIResource.TitledBorderUIResource`

---

public class TitledBorder
extends [AbstractBorder](AbstractBorder.md "class in javax.swing.border")

A class which implements an arbitrary border
with the addition of a String title in a
specified position and justification.

If the border, font, or color property values are not
specified in the constructor or by invoking the appropriate
set methods, the property values will be defined by the current
look and feel, using the following property names in the
Defaults Table:

* "TitledBorder.border"* "TitledBorder.font"* "TitledBorder.titleColor"

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

  `static final int`

  `ABOVE_BOTTOM`

  Position the title above the border's bottom line.

  `static final int`

  `ABOVE_TOP`

  Position the title above the border's top line.

  `static final int`

  `BELOW_BOTTOM`

  Position the title below the border's bottom line.

  `static final int`

  `BELOW_TOP`

  Position the title below the border's top line.

  `protected Border`

  `border`

  The border.

  `static final int`

  `BOTTOM`

  Position the title in the middle of the border's bottom line.

  `static final int`

  `CENTER`

  Position title text in the center of the border line.

  `static final int`

  `DEFAULT_JUSTIFICATION`

  Use the default justification for the title text.

  `static final int`

  `DEFAULT_POSITION`

  Use the default vertical orientation for the title text.

  `protected static final int`

  `EDGE_SPACING`

  Space between the border and the component's edge

  `static final int`

  `LEADING`

  Position title text at the left side of the border line
  for left to right orientation, at the right side of the
  border line for right to left orientation.

  `static final int`

  `LEFT`

  Position title text at the left side of the border line.

  `static final int`

  `RIGHT`

  Position title text at the right side of the border line.

  `protected static final int`

  `TEXT_INSET_H`

  Horizontal inset of text that is left or right justified

  `protected static final int`

  `TEXT_SPACING`

  Space between the border and text

  `protected String`

  `title`

  The title the border should display.

  `protected Color`

  `titleColor`

  The color of the title.

  `protected Font`

  `titleFont`

  The font for rendering the title.

  `protected int`

  `titleJustification`

  The justification for the title.

  `protected int`

  `titlePosition`

  The position for the title.

  `static final int`

  `TOP`

  Position the title in the middle of the border's top line.

  `static final int`

  `TRAILING`

  Position title text at the right side of the border line
  for left to right orientation, at the left side of the
  border line for right to left orientation.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TitledBorder(String title)`

  Creates a TitledBorder instance.

  `TitledBorder(Border border)`

  Creates a TitledBorder instance with the specified border
  and an empty title.

  `TitledBorder(Border border,
  String title)`

  Creates a TitledBorder instance with the specified border
  and title.

  `TitledBorder(Border border,
  String title,
  int titleJustification,
  int titlePosition)`

  Creates a TitledBorder instance with the specified border,
  title, title-justification, and title-position.

  `TitledBorder(Border border,
  String title,
  int titleJustification,
  int titlePosition,
  Font titleFont)`

  Creates a TitledBorder instance with the specified border,
  title, title-justification, title-position, and title-font.

  `TitledBorder(Border border,
  String title,
  int titleJustification,
  int titlePosition,
  Font titleFont,
  Color titleColor)`

  Creates a TitledBorder instance with the specified border,
  title, title-justification, title-position, title-font, and
  title-color.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getBaseline(Component c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(Component c)`

  Returns an enum indicating how the baseline of the border
  changes as the size changes.

  `Border`

  `getBorder()`

  Returns the border of the titled border.

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitialize the insets parameter with this Border's current Insets.

  `protected Font`

  `getFont(Component c)`

  Returns default font of the titled border.

  `Dimension`

  `getMinimumSize(Component c)`

  Returns the minimum dimensions this border requires
  in order to fully display the border and title.

  `String`

  `getTitle()`

  Returns the title of the titled border.

  `Color`

  `getTitleColor()`

  Returns the title-color of the titled border.

  `Font`

  `getTitleFont()`

  Returns the title-font of the titled border.

  `int`

  `getTitleJustification()`

  Returns the title-justification of the titled border.

  `int`

  `getTitlePosition()`

  Returns the title-position of the titled border.

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

  Paints the border for the specified component with the
  specified position and size.

  `void`

  `setBorder(Border border)`

  Sets the border of the titled border.

  `void`

  `setTitle(String title)`

  Sets the title of the titled border.

  `void`

  `setTitleColor(Color titleColor)`

  Sets the title-color of the titled border.

  `void`

  `setTitleFont(Font titleFont)`

  Sets the title-font of the titled border.

  `void`

  `setTitleJustification(int titleJustification)`

  Sets the title-justification of the titled border.

  `void`

  `setTitlePosition(int titlePosition)`

  Sets the title-position of the titled border.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### title

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") title

    The title the border should display.
  + ### border

    protected [Border](Border.md "interface in javax.swing.border") border

    The border.
  + ### titlePosition

    protected int titlePosition

    The position for the title.
  + ### titleJustification

    protected int titleJustification

    The justification for the title.
  + ### titleFont

    protected [Font](../../../java/awt/Font.md "class in java.awt") titleFont

    The font for rendering the title.
  + ### titleColor

    protected [Color](../../../java/awt/Color.md "class in java.awt") titleColor

    The color of the title.
  + ### DEFAULT\_POSITION

    public static final int DEFAULT\_POSITION

    Use the default vertical orientation for the title text.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.DEFAULT_POSITION)
  + ### ABOVE\_TOP

    public static final int ABOVE\_TOP

    Position the title above the border's top line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.ABOVE_TOP)
  + ### TOP

    public static final int TOP

    Position the title in the middle of the border's top line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.TOP)
  + ### BELOW\_TOP

    public static final int BELOW\_TOP

    Position the title below the border's top line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.BELOW_TOP)
  + ### ABOVE\_BOTTOM

    public static final int ABOVE\_BOTTOM

    Position the title above the border's bottom line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.ABOVE_BOTTOM)
  + ### BOTTOM

    public static final int BOTTOM

    Position the title in the middle of the border's bottom line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.BOTTOM)
  + ### BELOW\_BOTTOM

    public static final int BELOW\_BOTTOM

    Position the title below the border's bottom line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.BELOW_BOTTOM)
  + ### DEFAULT\_JUSTIFICATION

    public static final int DEFAULT\_JUSTIFICATION

    Use the default justification for the title text.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION)
  + ### LEFT

    public static final int LEFT

    Position title text at the left side of the border line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.LEFT)
  + ### CENTER

    public static final int CENTER

    Position title text in the center of the border line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.CENTER)
  + ### RIGHT

    public static final int RIGHT

    Position title text at the right side of the border line.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.RIGHT)
  + ### LEADING

    public static final int LEADING

    Position title text at the left side of the border line
    for left to right orientation, at the right side of the
    border line for right to left orientation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.LEADING)
  + ### TRAILING

    public static final int TRAILING

    Position title text at the right side of the border line
    for left to right orientation, at the left side of the
    border line for right to left orientation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.TRAILING)
  + ### EDGE\_SPACING

    protected static final int EDGE\_SPACING

    Space between the border and the component's edge

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.EDGE_SPACING)
  + ### TEXT\_SPACING

    protected static final int TEXT\_SPACING

    Space between the border and text

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.TEXT_SPACING)
  + ### TEXT\_INSET\_H

    protected static final int TEXT\_INSET\_H

    Horizontal inset of text that is left or right justified

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.border.TitledBorder.TEXT_INSET_H)
* ## Constructor Details

  + ### TitledBorder

    public TitledBorder([String](../../../../java.base/java/lang/String.md "class in java.lang") title)

    Creates a TitledBorder instance.

    Parameters:
    :   `title` - the title the border should display
  + ### TitledBorder

    public TitledBorder([Border](Border.md "interface in javax.swing.border") border)

    Creates a TitledBorder instance with the specified border
    and an empty title.

    Parameters:
    :   `border` - the border
  + ### TitledBorder

    public TitledBorder([Border](Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title)

    Creates a TitledBorder instance with the specified border
    and title.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
  + ### TitledBorder

    public TitledBorder([Border](Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition)

    Creates a TitledBorder instance with the specified border,
    title, title-justification, and title-position.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
    :   `titleJustification` - the justification for the title
    :   `titlePosition` - the position for the title
  + ### TitledBorder

    public TitledBorder([Border](Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition,
    [Font](../../../java/awt/Font.md "class in java.awt") titleFont)

    Creates a TitledBorder instance with the specified border,
    title, title-justification, title-position, and title-font.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
    :   `titleJustification` - the justification for the title
    :   `titlePosition` - the position for the title
    :   `titleFont` - the font for rendering the title
  + ### TitledBorder

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"border","title","titleJustification","titlePosition","titleFont","titleColor"})
    public TitledBorder([Border](Border.md "interface in javax.swing.border") border,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") title,
    int titleJustification,
    int titlePosition,
    [Font](../../../java/awt/Font.md "class in java.awt") titleFont,
    [Color](../../../java/awt/Color.md "class in java.awt") titleColor)

    Creates a TitledBorder instance with the specified border,
    title, title-justification, title-position, title-font, and
    title-color.

    Parameters:
    :   `border` - the border
    :   `title` - the title the border should display
    :   `titleJustification` - the justification for the title
    :   `titlePosition` - the position for the title
    :   `titleFont` - the font of the title
    :   `titleColor` - the color of the title
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the border for the specified component with the
    specified position and size.

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
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Returns whether or not the border is opaque.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Overrides:
    :   `isBorderOpaque` in class `AbstractBorder`

    Returns:
    :   false
  + ### getTitle

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getTitle()

    Returns the title of the titled border.

    Returns:
    :   the title of the titled border
  + ### getBorder

    public [Border](Border.md "interface in javax.swing.border") getBorder()

    Returns the border of the titled border.

    Returns:
    :   the border of the titled border
  + ### getTitlePosition

    public int getTitlePosition()

    Returns the title-position of the titled border.

    Returns:
    :   the title-position of the titled border
  + ### getTitleJustification

    public int getTitleJustification()

    Returns the title-justification of the titled border.

    Returns:
    :   the title-justification of the titled border
  + ### getTitleFont

    public [Font](../../../java/awt/Font.md "class in java.awt") getTitleFont()

    Returns the title-font of the titled border.

    Returns:
    :   the title-font of the titled border
  + ### getTitleColor

    public [Color](../../../java/awt/Color.md "class in java.awt") getTitleColor()

    Returns the title-color of the titled border.

    Returns:
    :   the title-color of the titled border
  + ### setTitle

    public void setTitle([String](../../../../java.base/java/lang/String.md "class in java.lang") title)

    Sets the title of the titled border.

    Parameters:
    :   `title` - the title for the border
  + ### setBorder

    public void setBorder([Border](Border.md "interface in javax.swing.border") border)

    Sets the border of the titled border.

    Parameters:
    :   `border` - the border
  + ### setTitlePosition

    public void setTitlePosition(int titlePosition)

    Sets the title-position of the titled border.

    Parameters:
    :   `titlePosition` - the position for the border
  + ### setTitleJustification

    public void setTitleJustification(int titleJustification)

    Sets the title-justification of the titled border.

    Parameters:
    :   `titleJustification` - the justification for the border
  + ### setTitleFont

    public void setTitleFont([Font](../../../java/awt/Font.md "class in java.awt") titleFont)

    Sets the title-font of the titled border.

    Parameters:
    :   `titleFont` - the font for the border title
  + ### setTitleColor

    public void setTitleColor([Color](../../../java/awt/Color.md "class in java.awt") titleColor)

    Sets the title-color of the titled border.

    Parameters:
    :   `titleColor` - the color for the border title
  + ### getMinimumSize

    public [Dimension](../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns the minimum dimensions this border requires
    in order to fully display the border and title.

    Parameters:
    :   `c` - the component where this border will be drawn

    Returns:
    :   the `Dimension` object
  + ### getBaseline

    public int getBaseline([Component](../../../java/awt/Component.md "class in java.awt") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `AbstractBorder`

    Parameters:
    :   `c` - `Component` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   the baseline or < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `NullPointerException` - if `Component` is `null`
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../JComponent.md#getBaseline(int,int))
  + ### getBaselineResizeBehavior

    public [Component.BaselineResizeBehavior](../../../java/awt/Component.BaselineResizeBehavior.md "enum class in java.awt") getBaselineResizeBehavior([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns an enum indicating how the baseline of the border
    changes as the size changes.

    Overrides:
    :   `getBaselineResizeBehavior` in class `AbstractBorder`

    Parameters:
    :   `c` - `Component` to return baseline resize behavior for

    Returns:
    :   an enum indicating how the baseline changes as the border is
        resized

    Throws:
    :   `NullPointerException` - if `Component` is `null`

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../JComponent.md#getBaseline(int,int))
  + ### getFont

    protected [Font](../../../java/awt/Font.md "class in java.awt") getFont([Component](../../../java/awt/Component.md "class in java.awt") c)

    Returns default font of the titled border.

    Parameters:
    :   `c` - the component

    Returns:
    :   default font of the titled border