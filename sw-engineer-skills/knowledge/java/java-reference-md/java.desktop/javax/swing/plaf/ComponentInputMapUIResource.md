Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class ComponentInputMapUIResource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.InputMap](../InputMap.md "class in javax.swing")

[javax.swing.ComponentInputMap](../ComponentInputMap.md "class in javax.swing")

javax.swing.plaf.ComponentInputMapUIResource

All Implemented Interfaces:
:   `Serializable`, `UIResource`

---

public class ComponentInputMapUIResource
extends [ComponentInputMap](../ComponentInputMap.md "class in javax.swing")
implements [UIResource](UIResource.md "interface in javax.swing.plaf")

A subclass of javax.swing.ComponentInputMap that implements UIResource.
UI classes which provide a ComponentInputMap should use this class.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ComponentInputMapUIResource(JComponent component)`

  Constructs a `ComponentInputMapUIResource`.
* ## Method Summary

  ### Methods inherited from class javax.swing.[ComponentInputMap](../ComponentInputMap.md "class in javax.swing")

  `clear, getComponent, put, remove, setParent`

  ### Methods inherited from class javax.swing.[InputMap](../InputMap.md "class in javax.swing")

  `allKeys, get, getParent, keys, size`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ComponentInputMapUIResource

    public ComponentInputMapUIResource([JComponent](../JComponent.md "class in javax.swing") component)

    Constructs a `ComponentInputMapUIResource`.

    Parameters:
    :   `component` - a non-null JComponent