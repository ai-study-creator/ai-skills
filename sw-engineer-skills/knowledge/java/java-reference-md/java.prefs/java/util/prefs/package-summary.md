Module [java.prefs](../../../module-summary.md)

# Package java.util.prefs

---

package java.util.prefs

This package allows applications to store and retrieve user and system
preference and configuration data. This data is stored persistently in an
implementation-dependent backing store. There are two separate trees of
preference nodes, one for user preferences and one for system preferences.

Since:
:   1.4

* Related Packages

  Module

  Package

  Description

  [java.base](../../../../java.base/module-summary.md)

  [java.util](../../../../java.base/java/util/package-summary.md)

  Contains the collections framework, some internationalization support classes,
  a service loader, properties, random number generation, string parsing
  and scanning classes, base64 encoding and decoding, a bit array, and
  several miscellaneous utility classes.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AbstractPreferences](AbstractPreferences.md "class in java.util.prefs")

  This class provides a skeletal implementation of the [`Preferences`](Preferences.md "class in java.util.prefs")
  class, greatly easing the task of implementing it.

  [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

  Thrown to indicate that a preferences operation could not complete because
  of a failure in the backing store, or a failure to contact the backing
  store.

  [InvalidPreferencesFormatException](InvalidPreferencesFormatException.md "class in java.util.prefs")

  Thrown to indicate that an operation could not complete because
  the input did not conform to the appropriate XML document type
  for a collection of preferences, as per the [`Preferences`](Preferences.md "class in java.util.prefs")
  specification.

  [NodeChangeEvent](NodeChangeEvent.md "class in java.util.prefs")

  An event emitted by a `Preferences` node to indicate that
  a child of that node has been added or removed.

  [NodeChangeListener](NodeChangeListener.md "interface in java.util.prefs")

  A listener for receiving preference node change events.

  [PreferenceChangeEvent](PreferenceChangeEvent.md "class in java.util.prefs")

  An event emitted by a `Preferences` node to indicate that
  a preference has been added, removed or has had its value changed.

  [PreferenceChangeListener](PreferenceChangeListener.md "interface in java.util.prefs")

  A listener for receiving preference change events.

  [Preferences](Preferences.md "class in java.util.prefs")

  A node in a hierarchical collection of preference data.

  [PreferencesFactory](PreferencesFactory.md "interface in java.util.prefs")

  A factory object that generates Preferences objects.