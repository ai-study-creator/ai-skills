Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class EmptyBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

javax.swing.border.EmptyBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

Direct Known Subclasses:
:   `BorderUIResource.EmptyBorderUIResource`, `MatteBorder`

---

public class EmptyBorder
extends [AbstractBorder](AbstractBorder.md "class in javax.swing.border")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A class which provides an empty, transparent border which
takes up space but does no drawing.

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

  `bottom`

  The bottom inset of the border.

  `protected int`

  `left`

  The left inset of the border.

  `protected int`

  `right`

  The right inset of the border.

  `protected int`

  `top`

  The top inset of the border.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EmptyBorder(int top,
  int left,
  int bottom,
  int right)`

  Creates an empty border with the specified insets.

  `EmptyBorder(Insets borderInsets)`

  Creates an empty border with the specified insets.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets()`

  Returns the insets of the border.

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

  Does no drawing by default.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### left

    protected int left

    The left inset of the border.
  + ### right

    protected int right

    The right inset of the border.
  + ### top

    protected int top

    The top inset of the border.
  + ### bottom

    protected int bottom

    The bottom inset of the border.
* ## Constructor Details

  + ### EmptyBorder

    public EmptyBorder(int top,
    int left,
    int bottom,
    int right)

    Creates an empty border with the specified insets.

    Parameters:
    :   `top` - the top inset of the border
    :   `left` - the left inset of the border
    :   `bottom` - the bottom inset of the border
    :   `right` - the right inset of the border
  + ### EmptyBorder

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")("borderInsets")
    public EmptyBorder([Insets](../../../java/awt/Insets.md "class in java.awt") borderInsets)

    Creates an empty border with the specified insets.

    Parameters:
    :   `borderInsets` - the insets of the border

    Throws:
    :   `NullPointerException` - if the specified `borderInsets`
        is `null`
* ## Method Details

  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Does no drawing by default.

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
  + ### getBorderInsets

    public [Insets](../../../java/awt/Insets.md "class in java.awt") getBorderInsets()

    Returns the insets of the border.

    Returns:
    :   an `Insets` object containing the insets from top, left,
        bottom and right

    Since:
    :   1.3
  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Returns whether or not the border is opaque.
    Returns false by default.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Overrides:
    :   `isBorderOpaque` in class `AbstractBorder`

    Returns:
    :   false