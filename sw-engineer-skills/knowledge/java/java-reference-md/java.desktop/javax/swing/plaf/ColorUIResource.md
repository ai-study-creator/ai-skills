Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class ColorUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Color](../../../java/awt/Color.md "class in java.awt")

javax.swing.plaf.ColorUIResource

All Implemented Interfaces:
:   `Paint`, `Transparency`, `Serializable`, `UIResource`

---

public class ColorUIResource
extends [Color](../../../java/awt/Color.md "class in java.awt")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A subclass of Color that implements UIResource. UI
classes that create colors should use this class.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`UIResource`](UIResource.md "interface in javax.swing.plaf")

* ## Field Summary

  ### Fields inherited from class java.awt.[Color](../../../java/awt/Color.md "class in java.awt")

  `black, BLACK, blue, BLUE, cyan, CYAN, DARK_GRAY, darkGray, gray, GRAY, green, GREEN, LIGHT_GRAY, lightGray, magenta, MAGENTA, orange, ORANGE, pink, PINK, red, RED, white, WHITE, yellow, YELLOW`

  ### Fields inherited from interface java.awt.[Transparency](../../../java/awt/Transparency.md "interface in java.awt")

  `BITMASK, OPAQUE, TRANSLUCENT`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ColorUIResource(float r,
  float g,
  float b)`

  Constructs a `ColorUIResource`.

  `ColorUIResource(int rgb)`

  Constructs a `ColorUIResource`.

  `ColorUIResource(int r,
  int g,
  int b)`

  Constructs a `ColorUIResource`.

  `ColorUIResource(Color c)`

  Constructs a `ColorUIResource`.
* ## Method Summary

  ### Methods inherited from class java.awt.[Color](../../../java/awt/Color.md "class in java.awt")

  `brighter, createContext, darker, decode, equals, getAlpha, getBlue, getColor, getColor, getColor, getColorComponents, getColorComponents, getColorSpace, getComponents, getComponents, getGreen, getHSBColor, getRed, getRGB, getRGBColorComponents, getRGBComponents, getTransparency, hashCode, HSBtoRGB, RGBtoHSB, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ColorUIResource

    [@ConstructorProperties](../../../java/beans/ConstructorProperties.md "annotation interface in java.beans")({"red","green","blue"})
    public ColorUIResource(int r,
    int g,
    int b)

    Constructs a `ColorUIResource`.

    Parameters:
    :   `r` - the red component
    :   `g` - the green component
    :   `b` - the blue component
  + ### ColorUIResource

    public ColorUIResource(int rgb)

    Constructs a `ColorUIResource`.

    Parameters:
    :   `rgb` - the combined RGB components
  + ### ColorUIResource

    public ColorUIResource(float r,
    float g,
    float b)

    Constructs a `ColorUIResource`.

    Parameters:
    :   `r` - the red component
    :   `g` - the green component
    :   `b` - the blue component
  + ### ColorUIResource

    public ColorUIResource([Color](../../../java/awt/Color.md "class in java.awt") c)

    Constructs a `ColorUIResource`.

    Parameters:
    :   `c` - the color