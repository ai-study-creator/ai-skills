Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class InsetsUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Insets](../../../java/awt/Insets.md "class in java.awt")

javax.swing.plaf.InsetsUIResource

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `UIResource`

---

public class InsetsUIResource
extends [Insets](../../../java/awt/Insets.md "class in java.awt")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A subclass of Insets that implements UIResource. UI
classes that use Insets values for default properties
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

  ### Fields inherited from class java.awt.[Insets](../../../java/awt/Insets.md "class in java.awt")

  `bottom, left, right, top`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InsetsUIResource(int top,
  int left,
  int bottom,
  int right)`

  Constructs an `InsetsUIResource`.
* ## Method Summary

  ### Methods inherited from class java.awt.[Insets](../../../java/awt/Insets.md "class in java.awt")

  `clone, equals, hashCode, set, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InsetsUIResource

    public InsetsUIResource(int top,
    int left,
    int bottom,
    int right)

    Constructs an `InsetsUIResource`.

    Parameters:
    :   `top` - the inset from the top
    :   `left` - the inset from the left
    :   `bottom` - the inset from the bottom
    :   `right` - the inset from the right