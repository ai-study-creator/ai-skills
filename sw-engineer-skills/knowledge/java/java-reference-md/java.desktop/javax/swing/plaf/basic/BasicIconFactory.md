Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicIconFactory

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicIconFactory

All Implemented Interfaces:
:   `Serializable`

---

public class BasicIconFactory
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io")

Factory object that can vend Icons appropriate for the basic L & F.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicIconFactory()`

  Constructs a `BasicIconFactory`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Icon`

  `createEmptyFrameIcon()`

  Returns an empty frame icon.

  `static Icon`

  `getCheckBoxIcon()`

  Returns a check box icon.

  `static Icon`

  `getCheckBoxMenuItemIcon()`

  Returns a check box menu item icon.

  `static Icon`

  `getMenuArrowIcon()`

  Returns a menu arrow icon.

  `static Icon`

  `getMenuItemArrowIcon()`

  Returns a menu item arrow icon.

  `static Icon`

  `getMenuItemCheckIcon()`

  Returns a menu item check icon.

  `static Icon`

  `getRadioButtonIcon()`

  Returns a radio button icon.

  `static Icon`

  `getRadioButtonMenuItemIcon()`

  Returns a radio button menu item icon.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicIconFactory

    public BasicIconFactory()

    Constructs a `BasicIconFactory`.
* ## Method Details

  + ### getMenuItemCheckIcon

    public static [Icon](../../Icon.md "interface in javax.swing") getMenuItemCheckIcon()

    Returns a menu item check icon.

    Returns:
    :   a menu item check icon
  + ### getMenuItemArrowIcon

    public static [Icon](../../Icon.md "interface in javax.swing") getMenuItemArrowIcon()

    Returns a menu item arrow icon.

    Returns:
    :   a menu item arrow icon
  + ### getMenuArrowIcon

    public static [Icon](../../Icon.md "interface in javax.swing") getMenuArrowIcon()

    Returns a menu arrow icon.

    Returns:
    :   a menu arrow icon
  + ### getCheckBoxIcon

    public static [Icon](../../Icon.md "interface in javax.swing") getCheckBoxIcon()

    Returns a check box icon.

    Returns:
    :   a check box icon
  + ### getRadioButtonIcon

    public static [Icon](../../Icon.md "interface in javax.swing") getRadioButtonIcon()

    Returns a radio button icon.

    Returns:
    :   a radio button icon
  + ### getCheckBoxMenuItemIcon

    public static [Icon](../../Icon.md "interface in javax.swing") getCheckBoxMenuItemIcon()

    Returns a check box menu item icon.

    Returns:
    :   a check box menu item icon
  + ### getRadioButtonMenuItemIcon

    public static [Icon](../../Icon.md "interface in javax.swing") getRadioButtonMenuItemIcon()

    Returns a radio button menu item icon.

    Returns:
    :   a radio button menu item icon
  + ### createEmptyFrameIcon

    public static [Icon](../../Icon.md "interface in javax.swing") createEmptyFrameIcon()

    Returns an empty frame icon.

    Returns:
    :   an empty frame icon