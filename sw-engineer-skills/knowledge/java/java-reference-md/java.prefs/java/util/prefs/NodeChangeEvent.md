Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Class NodeChangeEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.util.prefs.NodeChangeEvent

All Implemented Interfaces:
:   `Serializable`

---

public class NodeChangeEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

An event emitted by a `Preferences` node to indicate that
a child of that node has been added or removed.

Note, that although NodeChangeEvent inherits Serializable interface from
java.util.EventObject, it is not intended to be Serializable. Appropriate
serialization methods are implemented to throw NotSerializableException.

Since:
:   1.4

See Also:
:   * [`Preferences`](Preferences.md "class in java.util.prefs")
    * [`NodeChangeListener`](NodeChangeListener.md "interface in java.util.prefs")
    * [`PreferenceChangeEvent`](PreferenceChangeEvent.md "class in java.util.prefs")

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NodeChangeEvent(Preferences parent,
  Preferences child)`

  Constructs a new `NodeChangeEvent` instance.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Preferences`

  `getChild()`

  Returns the node that was added or removed.

  `Preferences`

  `getParent()`

  Returns the parent of the node that was added or removed.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NodeChangeEvent

    public NodeChangeEvent([Preferences](Preferences.md "class in java.util.prefs") parent,
    [Preferences](Preferences.md "class in java.util.prefs") child)

    Constructs a new `NodeChangeEvent` instance.

    Parameters:
    :   `parent` - The parent of the node that was added or removed.
    :   `child` - The node that was added or removed.
* ## Method Details

  + ### getParent

    public [Preferences](Preferences.md "class in java.util.prefs") getParent()

    Returns the parent of the node that was added or removed.

    Returns:
    :   The parent Preferences node whose child was added or removed
  + ### getChild

    public [Preferences](Preferences.md "class in java.util.prefs") getChild()

    Returns the node that was added or removed.

    Returns:
    :   The node that was added or removed.