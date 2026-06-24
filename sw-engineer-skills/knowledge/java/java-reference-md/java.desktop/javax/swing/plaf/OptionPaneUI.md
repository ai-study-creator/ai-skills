Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class OptionPaneUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.OptionPaneUI

Direct Known Subclasses:
:   `BasicOptionPaneUI`, `MultiOptionPaneUI`

---

public abstract class OptionPaneUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Pluggable look and feel interface for JOptionPane.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `OptionPaneUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `containsCustomComponents(JOptionPane op)`

  Returns true if the user has supplied instances of Component for
  either the options or message.

  `abstract void`

  `selectInitialValue(JOptionPane op)`

  Requests the component representing the default value to have
  focus.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### OptionPaneUI

    protected OptionPaneUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### selectInitialValue

    public abstract void selectInitialValue([JOptionPane](../JOptionPane.md "class in javax.swing") op)

    Requests the component representing the default value to have
    focus.

    Parameters:
    :   `op` - a `JOptionPane`
  + ### containsCustomComponents

    public abstract boolean containsCustomComponents([JOptionPane](../JOptionPane.md "class in javax.swing") op)

    Returns true if the user has supplied instances of Component for
    either the options or message.

    Parameters:
    :   `op` - a `JOptionPane`

    Returns:
    :   `true` if the given `JOptionPane` contains user
        created `Component`s