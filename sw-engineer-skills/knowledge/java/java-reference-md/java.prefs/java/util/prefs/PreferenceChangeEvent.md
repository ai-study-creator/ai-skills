Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Class PreferenceChangeEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.util.prefs.PreferenceChangeEvent

All Implemented Interfaces:
:   `Serializable`

---

public class PreferenceChangeEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

An event emitted by a `Preferences` node to indicate that
a preference has been added, removed or has had its value changed.

Note, that although PreferenceChangeEvent inherits Serializable interface
from EventObject, it is not intended to be Serializable. Appropriate
serialization methods are implemented to throw NotSerializableException.

Since:
:   1.4

See Also:
:   * [`Preferences`](Preferences.md "class in java.util.prefs")
    * [`PreferenceChangeListener`](PreferenceChangeListener.md "interface in java.util.prefs")
    * [`NodeChangeEvent`](NodeChangeEvent.md "class in java.util.prefs")

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PreferenceChangeEvent(Preferences node,
  String key,
  String newValue)`

  Constructs a new `PreferenceChangeEvent` instance.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getKey()`

  Returns the key of the preference that was changed.

  `String`

  `getNewValue()`

  Returns the new value for the preference.

  `Preferences`

  `getNode()`

  Returns the preference node that emitted the event.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PreferenceChangeEvent

    public PreferenceChangeEvent([Preferences](Preferences.md "class in java.util.prefs") node,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") newValue)

    Constructs a new `PreferenceChangeEvent` instance.

    Parameters:
    :   `node` - The Preferences node that emitted the event.
    :   `key` - The key of the preference that was changed.
    :   `newValue` - The new value of the preference, or `null`
        if the preference is being removed.
* ## Method Details

  + ### getNode

    public [Preferences](Preferences.md "class in java.util.prefs") getNode()

    Returns the preference node that emitted the event.

    Returns:
    :   The preference node that emitted the event.
  + ### getKey

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getKey()

    Returns the key of the preference that was changed.

    Returns:
    :   The key of the preference that was changed.
  + ### getNewValue

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getNewValue()

    Returns the new value for the preference.

    Returns:
    :   The new value for the preference, or `null` if the
        preference was removed.