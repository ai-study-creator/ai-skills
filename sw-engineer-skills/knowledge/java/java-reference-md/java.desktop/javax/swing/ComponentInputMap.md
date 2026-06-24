Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ComponentInputMap

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.InputMap](InputMap.md "class in javax.swing")

javax.swing.ComponentInputMap

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ComponentInputMapUIResource`

---

public class ComponentInputMap
extends [InputMap](InputMap.md "class in javax.swing")

A `ComponentInputMap` is an `InputMap`
associated with a particular `JComponent`.
The component is automatically notified whenever
the `ComponentInputMap` changes.
`ComponentInputMap`s are used for
`WHEN_IN_FOCUSED_WINDOW` bindings.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ComponentInputMap(JComponent component)`

  Creates a `ComponentInputMap` associated with the
  specified component.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `clear()`

  Removes all the mappings from this object.

  `JComponent`

  `getComponent()`

  Returns the component the `InputMap` was created for.

  `void`

  `put(KeyStroke keyStroke,
  Object actionMapKey)`

  Adds a binding for `keyStroke` to `actionMapKey`.

  `void`

  `remove(KeyStroke key)`

  Removes the binding for `key` from this object.

  `void`

  `setParent(InputMap map)`

  Sets the parent, which must be a `ComponentInputMap`
  associated with the same component as this
  `ComponentInputMap`.

  ### Methods inherited from class javax.swing.[InputMap](InputMap.md "class in javax.swing")

  `allKeys, get, getParent, keys, size`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ComponentInputMap

    public ComponentInputMap([JComponent](JComponent.md "class in javax.swing") component)

    Creates a `ComponentInputMap` associated with the
    specified component.

    Parameters:
    :   `component` - a non-null `JComponent`

    Throws:
    :   `IllegalArgumentException` - if `component` is null
* ## Method Details

  + ### setParent

    public void setParent([InputMap](InputMap.md "class in javax.swing") map)

    Sets the parent, which must be a `ComponentInputMap`
    associated with the same component as this
    `ComponentInputMap`.

    Overrides:
    :   `setParent` in class `InputMap`

    Parameters:
    :   `map` - a `ComponentInputMap`

    Throws:
    :   `IllegalArgumentException` - if `map`
        is not a `ComponentInputMap`
        or is not associated with the same component
  + ### getComponent

    public [JComponent](JComponent.md "class in javax.swing") getComponent()

    Returns the component the `InputMap` was created for.

    Returns:
    :   the component the `InputMap` was created for.
  + ### put

    public void put([KeyStroke](KeyStroke.md "class in javax.swing") keyStroke,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") actionMapKey)

    Adds a binding for `keyStroke` to `actionMapKey`.
    If `actionMapKey` is null, this removes the current binding
    for `keyStroke`.

    Overrides:
    :   `put` in class `InputMap`

    Parameters:
    :   `keyStroke` - a `KeyStroke`
    :   `actionMapKey` - an action map key
  + ### remove

    public void remove([KeyStroke](KeyStroke.md "class in javax.swing") key)

    Removes the binding for `key` from this object.

    Overrides:
    :   `remove` in class `InputMap`

    Parameters:
    :   `key` - the `KeyStroke` for which to remove the binding
  + ### clear

    public void clear()

    Removes all the mappings from this object.

    Overrides:
    :   `clear` in class `InputMap`