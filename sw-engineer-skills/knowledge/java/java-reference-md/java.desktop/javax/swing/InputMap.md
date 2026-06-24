Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class InputMap

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.InputMap

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ComponentInputMap`, `InputMapUIResource`

---

public class InputMap
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

`InputMap` provides a binding between an input event (currently only
`KeyStroke`s are used) and an `Object`. `InputMap`s are
usually used with an `ActionMap`, to determine an `Action` to
perform when a key is pressed. An `InputMap` can have a parent that
is searched for bindings not defined in the `InputMap`.

As with `ActionMap` if you create a cycle, eg:

```
   InputMap am = new InputMap();
   InputMap bm = new InputMap():
   am.setParent(bm);
   bm.setParent(am);
```

some of the methods will cause a StackOverflowError to be thrown.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InputMap()`

  Creates an `InputMap` with no parent and no mappings.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `KeyStroke[]`

  `allKeys()`

  Returns an array of the `KeyStroke`s defined in this
  `InputMap` and its parent.

  `void`

  `clear()`

  Removes all the mappings from this `InputMap`.

  `Object`

  `get(KeyStroke keyStroke)`

  Returns the binding for `keyStroke`, messaging the
  parent `InputMap` if the binding is not locally defined.

  `InputMap`

  `getParent()`

  Gets this `InputMap`'s parent.

  `KeyStroke[]`

  `keys()`

  Returns the `KeyStroke`s that are bound in this `InputMap`.

  `void`

  `put(KeyStroke keyStroke,
  Object actionMapKey)`

  Adds a binding for `keyStroke` to `actionMapKey`.

  `void`

  `remove(KeyStroke key)`

  Removes the binding for `key` from this `InputMap`.

  `void`

  `setParent(InputMap map)`

  Sets this `InputMap`'s parent.

  `int`

  `size()`

  Returns the number of `KeyStroke` bindings.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InputMap

    public InputMap()

    Creates an `InputMap` with no parent and no mappings.
* ## Method Details

  + ### setParent

    public void setParent([InputMap](InputMap.md "class in javax.swing") map)

    Sets this `InputMap`'s parent.

    Parameters:
    :   `map` - the `InputMap` that is the parent of this one
  + ### getParent

    public [InputMap](InputMap.md "class in javax.swing") getParent()

    Gets this `InputMap`'s parent.

    Returns:
    :   map the `InputMap` that is the parent of this one,
        or null if this `InputMap` has no parent
  + ### put

    public void put([KeyStroke](KeyStroke.md "class in javax.swing") keyStroke,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") actionMapKey)

    Adds a binding for `keyStroke` to `actionMapKey`.
    If `actionMapKey` is null, this removes the current binding
    for `keyStroke`.

    Parameters:
    :   `keyStroke` - a `KeyStroke`
    :   `actionMapKey` - an action map key
  + ### get

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") get([KeyStroke](KeyStroke.md "class in javax.swing") keyStroke)

    Returns the binding for `keyStroke`, messaging the
    parent `InputMap` if the binding is not locally defined.

    Parameters:
    :   `keyStroke` - the `KeyStroke` for which to get the binding

    Returns:
    :   the binding for `keyStroke`
  + ### remove

    public void remove([KeyStroke](KeyStroke.md "class in javax.swing") key)

    Removes the binding for `key` from this `InputMap`.

    Parameters:
    :   `key` - the `KeyStroke` for which to remove the binding
  + ### clear

    public void clear()

    Removes all the mappings from this `InputMap`.
  + ### keys

    public [KeyStroke](KeyStroke.md "class in javax.swing")[] keys()

    Returns the `KeyStroke`s that are bound in this `InputMap`.

    Returns:
    :   an array of the `KeyStroke`s that are bound in this
        `InputMap`
  + ### size

    public int size()

    Returns the number of `KeyStroke` bindings.

    Returns:
    :   the number of `KeyStroke` bindings
  + ### allKeys

    public [KeyStroke](KeyStroke.md "class in javax.swing")[] allKeys()

    Returns an array of the `KeyStroke`s defined in this
    `InputMap` and its parent. This differs from `keys()`
    in that this method includes the keys defined in the parent.

    Returns:
    :   an array of the `KeyStroke`s defined in this
        `InputMap` and its parent