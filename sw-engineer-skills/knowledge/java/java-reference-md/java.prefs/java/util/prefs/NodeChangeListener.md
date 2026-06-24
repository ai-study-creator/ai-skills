Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Interface NodeChangeListener

All Superinterfaces:
:   `EventListener`

---

public interface NodeChangeListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

A listener for receiving preference node change events.

Since:
:   1.4

See Also:
:   * [`Preferences`](Preferences.md "class in java.util.prefs")
    * [`NodeChangeEvent`](NodeChangeEvent.md "class in java.util.prefs")
    * [`PreferenceChangeListener`](PreferenceChangeListener.md "interface in java.util.prefs")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `childAdded(NodeChangeEvent evt)`

  This method gets called when a child node is added.

  `void`

  `childRemoved(NodeChangeEvent evt)`

  This method gets called when a child node is removed.

* ## Method Details

  + ### childAdded

    void childAdded([NodeChangeEvent](NodeChangeEvent.md "class in java.util.prefs") evt)

    This method gets called when a child node is added.

    Parameters:
    :   `evt` - A node change event object describing the parent
        and child node.
  + ### childRemoved

    void childRemoved([NodeChangeEvent](NodeChangeEvent.md "class in java.util.prefs") evt)

    This method gets called when a child node is removed.

    Parameters:
    :   `evt` - A node change event object describing the parent
        and child node.