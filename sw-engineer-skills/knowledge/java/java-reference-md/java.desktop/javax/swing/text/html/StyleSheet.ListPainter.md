Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class StyleSheet.ListPainter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.StyleSheet.ListPainter

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `StyleSheet`

---

public static final class StyleSheet.ListPainter
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

Class to carry out some of the duties of CSS list
formatting. Implementations of this
class enable views to present the CSS formatting
while not knowing anything about how the CSS values
are being cached.

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `paint(Graphics g,
  float x,
  float y,
  float w,
  float h,
  View v,
  int item)`

  Paints the CSS list decoration according to the
  attributes given.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    float x,
    float y,
    float w,
    float h,
    [View](../View.md "class in javax.swing.text") v,
    int item)

    Paints the CSS list decoration according to the
    attributes given.

    Parameters:
    :   `g` - the rendering surface.
    :   `x` - the x coordinate of the list item allocation
    :   `y` - the y coordinate of the list item allocation
    :   `w` - the width of the list item allocation
    :   `h` - the height of the list item allocation
    :   `v` - the allocated area to paint into.
    :   `item` - which list item is being painted. This
        is a number greater than or equal to 0.