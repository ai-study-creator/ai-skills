Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Interface PreferenceChangeListener

All Superinterfaces:
:   `EventListener`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../../../java.base/java/lang/FunctionalInterface.md "annotation interface in java.lang")
public interface PreferenceChangeListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

A listener for receiving preference change events.

Since:
:   1.4

See Also:
:   * [`Preferences`](Preferences.md "class in java.util.prefs")
    * [`PreferenceChangeEvent`](PreferenceChangeEvent.md "class in java.util.prefs")
    * [`NodeChangeListener`](NodeChangeListener.md "interface in java.util.prefs")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `preferenceChange(PreferenceChangeEvent evt)`

  This method gets called when a preference is added, removed or when
  its value is changed.

* ## Method Details

  + ### preferenceChange

    void preferenceChange([PreferenceChangeEvent](PreferenceChangeEvent.md "class in java.util.prefs") evt)

    This method gets called when a preference is added, removed or when
    its value is changed.

    Parameters:
    :   `evt` - A PreferenceChangeEvent object describing the event source
        and the preference that has changed.