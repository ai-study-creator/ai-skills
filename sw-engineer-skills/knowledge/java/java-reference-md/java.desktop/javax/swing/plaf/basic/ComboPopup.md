Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Interface ComboPopup

All Known Implementing Classes:
:   `BasicComboPopup`, `MetalComboBoxUI.MetalComboPopup`

---

public interface ComboPopup

The interface which defines the methods required for the implementation of the popup
portion of a combo box.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `KeyListener`

  `getKeyListener()`

  Returns a key listener that will be added to the combo box or null.

  `JList<Object>`

  `getList()`

  Returns the list that is being used to draw the items in the combo box.

  `MouseListener`

  `getMouseListener()`

  Returns a mouse listener that will be added to the combo box or null.

  `MouseMotionListener`

  `getMouseMotionListener()`

  Returns a mouse motion listener that will be added to the combo box or null.

  `void`

  `hide()`

  Hides the popup

  `boolean`

  `isVisible()`

  Returns true if the popup is visible (currently being displayed).

  `void`

  `show()`

  Shows the popup

  `void`

  `uninstallingUI()`

  Called to inform the ComboPopup that the UI is uninstalling.

* ## Method Details

  + ### show

    void show()

    Shows the popup
  + ### hide

    void hide()

    Hides the popup
  + ### isVisible

    boolean isVisible()

    Returns true if the popup is visible (currently being displayed).

    Returns:
    :   `true` if the component is visible; `false` otherwise.
  + ### getList

    [JList](../../JList.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")> getList()

    Returns the list that is being used to draw the items in the combo box.
    This method is highly implementation specific and should not be used
    for general list manipulation.

    Returns:
    :   the list that is being used to draw the items in the combo box
  + ### getMouseListener

    [MouseListener](../../../../java/awt/event/MouseListener.md "interface in java.awt.event") getMouseListener()

    Returns a mouse listener that will be added to the combo box or null.
    If this method returns null then it will not be added to the combo box.

    Returns:
    :   a `MouseListener` or null
  + ### getMouseMotionListener

    [MouseMotionListener](../../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event") getMouseMotionListener()

    Returns a mouse motion listener that will be added to the combo box or null.
    If this method returns null then it will not be added to the combo box.

    Returns:
    :   a `MouseMotionListener` or null
  + ### getKeyListener

    [KeyListener](../../../../java/awt/event/KeyListener.md "interface in java.awt.event") getKeyListener()

    Returns a key listener that will be added to the combo box or null.
    If this method returns null then it will not be added to the combo box.

    Returns:
    :   a key listener that will be added to the combo box or null
  + ### uninstallingUI

    void uninstallingUI()

    Called to inform the ComboPopup that the UI is uninstalling.
    If the ComboPopup added any listeners in the component, it should remove them here.