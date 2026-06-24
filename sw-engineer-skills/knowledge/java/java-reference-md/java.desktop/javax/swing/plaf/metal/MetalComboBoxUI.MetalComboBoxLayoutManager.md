Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxUI.MetalComboBoxLayoutManager

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicComboBoxUI.ComboBoxLayoutManager](../basic/BasicComboBoxUI.ComboBoxLayoutManager.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalComboBoxUI.MetalComboBoxLayoutManager

All Implemented Interfaces:
:   `LayoutManager`

Enclosing class:
:   `MetalComboBoxUI`

---

public class MetalComboBoxUI.MetalComboBoxLayoutManager
extends [BasicComboBoxUI.ComboBoxLayoutManager](../basic/BasicComboBoxUI.ComboBoxLayoutManager.md "class in javax.swing.plaf.basic")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `MetalComboBoxUI`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalComboBoxLayoutManager()`

  Constructs a `MetalComboBoxLayoutManager`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `layoutContainer(Container parent)`

  Lays out the specified container.

  `void`

  `superLayout(Container parent)`

  Lays out the parent container.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicComboBoxUI.ComboBoxLayoutManager](../basic/BasicComboBoxUI.ComboBoxLayoutManager.md "class in javax.swing.plaf.basic")

  `addLayoutComponent, minimumLayoutSize, preferredLayoutSize, removeLayoutComponent`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalComboBoxLayoutManager

    public MetalComboBoxLayoutManager()

    Constructs a `MetalComboBoxLayoutManager`.
* ## Method Details

  + ### layoutContainer

    public void layoutContainer([Container](../../../../java/awt/Container.md "class in java.awt") parent)

    Description copied from interface: `LayoutManager`

    Lays out the specified container.

    Specified by:
    :   `layoutContainer` in interface `LayoutManager`

    Overrides:
    :   `layoutContainer` in class `BasicComboBoxUI.ComboBoxLayoutManager`

    Parameters:
    :   `parent` - the container to be laid out
  + ### superLayout

    public void superLayout([Container](../../../../java/awt/Container.md "class in java.awt") parent)

    Lays out the parent container.

    Parameters:
    :   `parent` - a container