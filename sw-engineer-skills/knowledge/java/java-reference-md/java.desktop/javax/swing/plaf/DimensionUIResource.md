Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class DimensionUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.geom.Dimension2D](../../../java/awt/geom/Dimension2D.md "class in java.awt.geom")

[java.awt.Dimension](../../../java/awt/Dimension.md "class in java.awt")

javax.swing.plaf.DimensionUIResource

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `UIResource`

---

public class DimensionUIResource
extends [Dimension](../../../java/awt/Dimension.md "class in java.awt")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A subclass of `Dimension` that implements
`UIResource`. UI classes that use
`Dimension` values for default properties
should use this class.

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

  ### Fields inherited from class java.awt.[Dimension](../../../java/awt/Dimension.md "class in java.awt")

  `height, width`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DimensionUIResource(int width,
  int height)`

  Constructs a `DimensionUIResource`.
* ## Method Summary

  ### Methods inherited from class java.awt.[Dimension](../../../java/awt/Dimension.md "class in java.awt")

  `equals, getHeight, getSize, getWidth, hashCode, setSize, setSize, setSize, toString`

  ### Methods inherited from class java.awt.geom.[Dimension2D](../../../java/awt/geom/Dimension2D.md "class in java.awt.geom")

  `clone, setSize`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DimensionUIResource

    public DimensionUIResource(int width,
    int height)

    Constructs a `DimensionUIResource`.

    Parameters:
    :   `width` - the width
    :   `height` - the height