Module [java.desktop](../../../module-summary.md)

Package [javax.swing.colorchooser](package-summary.md)

# Class ColorChooserComponentFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.colorchooser.ColorChooserComponentFactory

---

public class ColorChooserComponentFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A class designed to produce preconfigured "accessory" objects to
insert into color choosers.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static AbstractColorChooserPanel[]`

  `getDefaultChooserPanels()`

  Returns the default chooser panels.

  `static JComponent`

  `getPreviewPanel()`

  Returns the preview panel.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getDefaultChooserPanels

    public static [AbstractColorChooserPanel](AbstractColorChooserPanel.md "class in javax.swing.colorchooser")[] getDefaultChooserPanels()

    Returns the default chooser panels.

    Returns:
    :   the default chooser panels
  + ### getPreviewPanel

    public static [JComponent](../JComponent.md "class in javax.swing") getPreviewPanel()

    Returns the preview panel.

    Returns:
    :   the preview panel