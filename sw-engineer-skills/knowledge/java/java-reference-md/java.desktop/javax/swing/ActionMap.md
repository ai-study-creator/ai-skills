Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ActionMap

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.ActionMap

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ActionMapUIResource`

---

public class ActionMap
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

`ActionMap` provides mappings from
`Object`s
(called *keys* or *`Action` names*)
to `Action`s.
An `ActionMap` is usually used with an `InputMap`
to locate a particular action
when a key is pressed. As with `InputMap`,
an `ActionMap` can have a parent
that is searched for keys not defined in the `ActionMap`.

As with `InputMap` if you create a cycle, eg:

```
   ActionMap am = new ActionMap();
   ActionMap bm = new ActionMap():
   am.setParent(bm);
   bm.setParent(am);
```

some of the methods will cause a StackOverflowError to be thrown.

Since:
:   1.3

See Also:
:   * [`InputMap`](InputMap.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ActionMap()`

  Creates an `ActionMap` with no parent and no mappings.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object[]`

  `allKeys()`

  Returns an array of the keys defined in this `ActionMap` and
  its parent.

  `void`

  `clear()`

  Removes all the mappings from this `ActionMap`.

  `Action`

  `get(Object key)`

  Returns the binding for `key`, messaging the
  parent `ActionMap` if the binding is not locally defined.

  `ActionMap`

  `getParent()`

  Returns this `ActionMap`'s parent.

  `Object[]`

  `keys()`

  Returns the `Action` names that are bound in this `ActionMap`.

  `void`

  `put(Object key,
  Action action)`

  Adds a binding for `key` to `action`.

  `void`

  `remove(Object key)`

  Removes the binding for `key` from this `ActionMap`.

  `void`

  `setParent(ActionMap map)`

  Sets this `ActionMap`'s parent.

  `int`

  `size()`

  Returns the number of bindings in this `ActionMap`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ActionMap

    public ActionMap()

    Creates an `ActionMap` with no parent and no mappings.
* ## Method Details

  + ### setParent

    public void setParent([ActionMap](ActionMap.md "class in javax.swing") map)

    Sets this `ActionMap`'s parent.

    Parameters:
    :   `map` - the `ActionMap` that is the parent of this one
  + ### getParent

    public [ActionMap](ActionMap.md "class in javax.swing") getParent()

    Returns this `ActionMap`'s parent.

    Returns:
    :   the `ActionMap` that is the parent of this one,
        or null if this `ActionMap` has no parent
  + ### put

    public void put([Object](../../../java.base/java/lang/Object.md "class in java.lang") key,
    [Action](Action.md "interface in javax.swing") action)

    Adds a binding for `key` to `action`.
    If `action` is null, this removes the current binding
    for `key`.

    In most instances, `key` will be
    `action.getValue(NAME)`.

    Parameters:
    :   `key` - a key
    :   `action` - a binding for `key`
  + ### get

    public [Action](Action.md "interface in javax.swing") get([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Returns the binding for `key`, messaging the
    parent `ActionMap` if the binding is not locally defined.

    Parameters:
    :   `key` - a key

    Returns:
    :   the binding for `key`
  + ### remove

    public void remove([Object](../../../java.base/java/lang/Object.md "class in java.lang") key)

    Removes the binding for `key` from this `ActionMap`.

    Parameters:
    :   `key` - a key
  + ### clear

    public void clear()

    Removes all the mappings from this `ActionMap`.
  + ### keys

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] keys()

    Returns the `Action` names that are bound in this `ActionMap`.

    Returns:
    :   an array of the keys
  + ### size

    public int size()

    Returns the number of bindings in this `ActionMap`.

    Returns:
    :   the number of bindings in this `ActionMap`
  + ### allKeys

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] allKeys()

    Returns an array of the keys defined in this `ActionMap` and
    its parent. This method differs from `keys()` in that
    this method includes the keys defined in the parent.

    Returns:
    :   an array of the keys