Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class ComboBoxUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.ComboBoxUI

Direct Known Subclasses:
:   `BasicComboBoxUI`, `MultiComboBoxUI`

---

public abstract class ComboBoxUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Pluggable look and feel interface for JComboBox.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ComboBoxUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `isFocusTraversable(JComboBox<?> c)`

  Determine whether or not the combo box itself is traversable

  `abstract boolean`

  `isPopupVisible(JComboBox<?> c)`

  Determine the visibility of the popup

  `abstract void`

  `setPopupVisible(JComboBox<?> c,
  boolean v)`

  Set the visibility of the popup

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ComboBoxUI

    protected ComboBoxUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### setPopupVisible

    public abstract void setPopupVisible([JComboBox](../JComboBox.md "class in javax.swing")<?> c,
    boolean v)

    Set the visibility of the popup

    Parameters:
    :   `c` - a `JComboBox`
    :   `v` - a `boolean` determining the visibility of the popup
  + ### isPopupVisible

    public abstract boolean isPopupVisible([JComboBox](../JComboBox.md "class in javax.swing")<?> c)

    Determine the visibility of the popup

    Parameters:
    :   `c` - a `JComboBox`

    Returns:
    :   true if popup of the `JComboBox` is visible
  + ### isFocusTraversable

    public abstract boolean isFocusTraversable([JComboBox](../JComboBox.md "class in javax.swing")<?> c)

    Determine whether or not the combo box itself is traversable

    Parameters:
    :   `c` - a `JComboBox`

    Returns:
    :   true if the given `JComboBox` is traversable