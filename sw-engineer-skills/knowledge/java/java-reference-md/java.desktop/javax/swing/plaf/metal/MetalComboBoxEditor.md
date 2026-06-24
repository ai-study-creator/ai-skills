Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxEditor

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicComboBoxEditor](../basic/BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalComboBoxEditor

All Implemented Interfaces:
:   `FocusListener`, `EventListener`, `ComboBoxEditor`

Direct Known Subclasses:
:   `MetalComboBoxEditor.UIResource`

---

public class MetalComboBoxEditor
extends [BasicComboBoxEditor](../basic/BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

The default editor for Metal editable combo boxes

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `MetalComboBoxEditor.UIResource`

  A subclass of BasicComboBoxEditor that implements UIResource.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static Insets`

  `editorBorderInsets`

  The default editor border `Insets`.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicComboBoxEditor](../basic/BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

  `editor`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalComboBoxEditor()`

  Constructs a new instance of `MetalComboBoxEditor`.
* ## Method Summary

  ### Methods inherited from class javax.swing.plaf.basic.[BasicComboBoxEditor](../basic/BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

  `addActionListener, createEditorComponent, focusGained, focusLost, getEditorComponent, getItem, removeActionListener, selectAll, setItem`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### editorBorderInsets

    protected static [Insets](../../../../java/awt/Insets.md "class in java.awt") editorBorderInsets

    The default editor border `Insets`. This field
    might not be used.
* ## Constructor Details

  + ### MetalComboBoxEditor

    public MetalComboBoxEditor()

    Constructs a new instance of `MetalComboBoxEditor`.