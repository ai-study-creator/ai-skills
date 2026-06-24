Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface Icon

All Known Subinterfaces:
:   `SynthIcon`

All Known Implementing Classes:
:   `IconUIResource`, `ImageIcon`, `MetalCheckBoxIcon`, `MetalComboBoxIcon`, `MetalIconFactory.FileIcon16`, `MetalIconFactory.FolderIcon16`, `MetalIconFactory.PaletteCloseIcon`, `MetalIconFactory.TreeControlIcon`, `MetalIconFactory.TreeFolderIcon`, `MetalIconFactory.TreeLeafIcon`

---

public interface Icon

A small fixed size picture, typically used to decorate components.

Since:
:   1.2

See Also:
:   * [`ImageIcon`](ImageIcon.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIconHeight()`

  Returns the icon's height.

  `int`

  `getIconWidth()`

  Returns the icon's width.

  `void`

  `paintIcon(Component c,
  Graphics g,
  int x,
  int y)`

  Draw the icon at the specified location.

* ## Method Details

  + ### paintIcon

    void paintIcon([Component](../../java/awt/Component.md "class in java.awt") c,
    [Graphics](../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y)

    Draw the icon at the specified location. Icon implementations
    may use the Component argument to get properties useful for
    painting, e.g. the foreground or background color.

    Parameters:
    :   `c` - a `Component` to get properties useful for painting
    :   `g` - the graphics context
    :   `x` - the X coordinate of the icon's top-left corner
    :   `y` - the Y coordinate of the icon's top-left corner
  + ### getIconWidth

    int getIconWidth()

    Returns the icon's width.

    Returns:
    :   an int specifying the fixed width of the icon.
  + ### getIconHeight

    int getIconHeight()

    Returns the icon's height.

    Returns:
    :   an int specifying the fixed height of the icon.