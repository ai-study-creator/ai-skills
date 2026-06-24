Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Interface SynthIcon

All Superinterfaces:
:   `Icon`

---

public interface SynthIcon
extends [Icon](../../Icon.md "interface in javax.swing")

An icon that is passed a `SynthContext`. Subclasses need only implement
the variants that take a `SynthContext`, but must be prepared for the
`SynthContext` to be null.

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default int`

  `getIconHeight()`

  Returns the icon's height.

  `int`

  `getIconHeight(SynthContext context)`

  Returns the icon's height for the given synth context.

  `default int`

  `getIconWidth()`

  Returns the icon's width.

  `int`

  `getIconWidth(SynthContext context)`

  Returns the icon's width for the given synth context.

  `default void`

  `paintIcon(Component c,
  Graphics g,
  int x,
  int y)`

  Draw the icon at the specified location.

  `void`

  `paintIcon(SynthContext context,
  Graphics g,
  int x,
  int y,
  int width,
  int height)`

  Paints the icon at the specified location for the given synth context.

* ## Method Details

  + ### paintIcon

    void paintIcon([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int width,
    int height)

    Paints the icon at the specified location for the given synth context.

    Parameters:
    :   `context` - identifies hosting region, may be null.
    :   `g` - the graphics context
    :   `x` - the x location to paint to
    :   `y` - the y location to paint to
    :   `width` - the width of the region to paint to, may be 0
    :   `height` - the height of the region to paint to, may be 0
  + ### getIconWidth

    int getIconWidth([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the icon's width for the given synth context.

    Parameters:
    :   `context` - `SynthContext` requesting the Icon, may be null.

    Returns:
    :   an int specifying the width of the icon.
  + ### getIconHeight

    int getIconHeight([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context)

    Returns the icon's height for the given synth context.

    Parameters:
    :   `context` - `SynthContext` requesting the Icon, may be null.

    Returns:
    :   an int specifying the height of the icon.
  + ### paintIcon

    default void paintIcon([Component](../../../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Description copied from interface: `Icon`

    Draw the icon at the specified location. Icon implementations
    may use the Component argument to get properties useful for
    painting, e.g. the foreground or background color.

    Specified by:
    :   `paintIcon` in interface `Icon`

    Parameters:
    :   `c` - a `Component` to get properties useful for painting
    :   `g` - the graphics context
    :   `x` - the X coordinate of the icon's top-left corner
    :   `y` - the Y coordinate of the icon's top-left corner
  + ### getIconWidth

    default int getIconWidth()

    Description copied from interface: `Icon`

    Returns the icon's width.

    Specified by:
    :   `getIconWidth` in interface `Icon`

    Returns:
    :   an int specifying the fixed width of the icon.
  + ### getIconHeight

    default int getIconHeight()

    Description copied from interface: `Icon`

    Returns the icon's height.

    Specified by:
    :   `getIconHeight` in interface `Icon`

    Returns:
    :   an int specifying the fixed height of the icon.