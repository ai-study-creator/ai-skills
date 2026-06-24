Module [java.desktop](../../../module-summary.md)

Package [javax.swing.border](package-summary.md)

# Class CompoundBorder

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.border.AbstractBorder](AbstractBorder.md "class in javax.swing.border")

javax.swing.border.CompoundBorder

All Implemented Interfaces:
:   `Serializable`, `Border`

Direct Known Subclasses:
:   `BorderUIResource.CompoundBorderUIResource`

---

public class CompoundBorder
extends [AbstractBorder](AbstractBorder.md "class in javax.swing.border")

A composite Border class used to compose two Border objects
into a single border by nesting an inside Border object within
the insets of an outside Border object.
For example, this class may be used to add blank margin space
to a component with an existing decorative border:

```
    Border border = comp.getBorder();
    Border margin = new EmptyBorder(10,10,10,10);
    comp.setBorder(new CompoundBorder(border, margin));
```

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

  `protected Border`

  `insideBorder`

  The inside border.

  `protected Border`

  `outsideBorder`

  The outside border.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CompoundBorder()`

  Creates a compound border with null outside and inside borders.

  `CompoundBorder(Border outsideBorder,
  Border insideBorder)`

  Creates a compound border with the specified outside and
  inside borders.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Insets`

  `getBorderInsets(Component c,
  Insets insets)`

  Reinitialize the insets parameter with this Border's current Insets.

  `Border`

  `getInsideBorder()`

  Returns the inside border object.

  `Border`

  `getOutsideBorder()`

  Returns the outside border object.

  `boolean`

  `isBorderOpaque()`

  Returns whether or not the compound border is opaque.

  `void`

  `paintBorder(Component c,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints the compound border by painting the outside border
  with the specified position and size and then painting the
  inside border at the specified position and size offset by
  the insets of the outside border.

  ### Methods inherited from class javax.swing.border.[AbstractBorder](AbstractBorder.md "class in javax.swing.border")

  `getBaseline, getBaselineResizeBehavior, getBorderInsets, getInteriorRectangle, getInteriorRectangle`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### outsideBorder

    protected [Border](Border.md "interface in javax.swing.border") outsideBorder

    The outside border.
  + ### insideBorder

    protected [Border](Border.md "interface in javax.swing.border") insideBorder

    The inside border.
* ## Constructor Details

  + ### CompoundBorder

    public CompoundBorder()

    Creates a compound border with null outside and inside borders.
  + ### CompoundBorder

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"outsideBorder","insideBorder"})
    public CompoundBorder([Border](Border.md "interface in javax.swing.border") outsideBorder,
    [Border](Border.md "interface in javax.swing.border") insideBorder)

    Creates a compound border with the specified outside and
    inside borders. Either border may be null.

    Parameters:
    :   `outsideBorder` - the outside border
    :   `insideBorder` - the inside border to be nested
* ## Method Details

  + ### isBorderOpaque

    public boolean isBorderOpaque()

    Returns whether or not the compound border is opaque.

    Specified by:
    :   `isBorderOpaque` in interface `Border`

    Overrides:
    :   `isBorderOpaque` in class `AbstractBorder`

    Returns:
    :   `true` if the inside and outside borders
        are each either `null` or opaque;
        or `false` otherwise
  + ### paintBorder

    public void paintBorder([Component](../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the compound border by painting the outside border
    with the specified position and size and then painting the
    inside border at the specified position and size offset by
    the insets of the outside border.

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
  + ### getOutsideBorder

    public [Border](Border.md "interface in javax.swing.border") getOutsideBorder()

    Returns the outside border object.

    Returns:
    :   the outside `Border` object
  + ### getInsideBorder

    public [Border](Border.md "interface in javax.swing.border") getInsideBorder()

    Returns the inside border object.

    Returns:
    :   the inside `Border` object