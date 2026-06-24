Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class StyleSheet.BoxPainter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.StyleSheet.BoxPainter

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `StyleSheet`

---

public static final class StyleSheet.BoxPainter
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

Class to carry out some of the duties of
CSS formatting. Implementations of this
class enable views to present the CSS formatting
while not knowing anything about how the CSS values
are being cached.

As a delegate of Views, this object is responsible for
the insets of a View and making sure the background
is maintained according to the CSS attributes.

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `float`

  `getInset(int side,
  View v)`

  Fetches the inset needed on a given side to
  account for the margin, border, and padding.

  `void`

  `paint(Graphics g,
  float x,
  float y,
  float w,
  float h,
  View v)`

  Paints the CSS box according to the attributes
  given.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getInset

    public float getInset(int side,
    [View](../View.md "class in javax.swing.text") v)

    Fetches the inset needed on a given side to
    account for the margin, border, and padding.

    Parameters:
    :   `side` - The size of the box to fetch the
        inset for. This can be View.TOP,
        View.LEFT, View.BOTTOM, or View.RIGHT.
    :   `v` - the view making the request. This is
        used to get the AttributeSet, and may be used to
        resolve percentage arguments.

    Returns:
    :   the inset needed for the margin, border and padding.

    Throws:
    :   `IllegalArgumentException` - for an invalid direction
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    float x,
    float y,
    float w,
    float h,
    [View](../View.md "class in javax.swing.text") v)

    Paints the CSS box according to the attributes
    given. This should paint the border, padding,
    and background.

    Parameters:
    :   `g` - the rendering surface.
    :   `x` - the x coordinate of the allocated area to
        render into.
    :   `y` - the y coordinate of the allocated area to
        render into.
    :   `w` - the width of the allocated area to render into.
    :   `h` - the height of the allocated area to render into.
    :   `v` - the view making the request. This is
        used to get the AttributeSet, and may be used to
        resolve percentage arguments.