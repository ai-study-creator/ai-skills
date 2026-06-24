Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxEditor.UIResource

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicComboBoxEditor](../basic/BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.metal.MetalComboBoxEditor](MetalComboBoxEditor.md "class in javax.swing.plaf.metal")

javax.swing.plaf.metal.MetalComboBoxEditor.UIResource

All Implemented Interfaces:
:   `FocusListener`, `EventListener`, `ComboBoxEditor`, `UIResource`

Enclosing class:
:   `MetalComboBoxEditor`

---

public static class MetalComboBoxEditor.UIResource
extends [MetalComboBoxEditor](MetalComboBoxEditor.md "class in javax.swing.plaf.metal")
implements [UIResource](../UIResource.md "interface in javax.swing.plaf")

A subclass of BasicComboBoxEditor that implements UIResource.
BasicComboBoxEditor doesn't implement UIResource
directly so that applications can safely override the
cellRenderer property with BasicListCellRenderer subclasses.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.metal.[MetalComboBoxEditor](MetalComboBoxEditor.md "class in javax.swing.plaf.metal")

  `MetalComboBoxEditor.UIResource`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.metal.[MetalComboBoxEditor](MetalComboBoxEditor.md "class in javax.swing.plaf.metal")

  `editorBorderInsets`

  ### Fields inherited from class javax.swing.plaf.basic.[BasicComboBoxEditor](../basic/BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

  `editor`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UIResource()`

  Constructs a `UIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.plaf.basic.[BasicComboBoxEditor](../basic/BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

  `addActionListener, createEditorComponent, focusGained, focusLost, getEditorComponent, getItem, removeActionListener, selectAll, setItem`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### UIResource

    public UIResource()

    Constructs a `UIResource`.