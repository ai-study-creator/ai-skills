Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class JTextComponent.KeyBinding

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.JTextComponent.KeyBinding

Enclosing class:
:   `JTextComponent`

---

public static class JTextComponent.KeyBinding
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Binding record for creating key bindings.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `String`

  `actionName`

  The name of the action for the key.

  `KeyStroke`

  `key`

  The key.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KeyBinding(KeyStroke key,
  String actionName)`

  Creates a new key binding.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### key

    public [KeyStroke](../KeyStroke.md "class in javax.swing") key

    The key.
  + ### actionName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") actionName

    The name of the action for the key.
* ## Constructor Details

  + ### KeyBinding

    public KeyBinding([KeyStroke](../KeyStroke.md "class in javax.swing") key,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") actionName)

    Creates a new key binding.

    Parameters:
    :   `key` - the key
    :   `actionName` - the name of the action for the key