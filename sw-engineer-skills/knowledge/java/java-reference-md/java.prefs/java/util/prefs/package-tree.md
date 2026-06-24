# Hierarchy For Package java.util.prefs

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.util.prefs.[NodeChangeEvent](NodeChangeEvent.md "class in java.util.prefs")
    - java.util.prefs.[PreferenceChangeEvent](PreferenceChangeEvent.md "class in java.util.prefs")
  + java.util.prefs.[Preferences](Preferences.md "class in java.util.prefs")
    - java.util.prefs.[AbstractPreferences](AbstractPreferences.md "class in java.util.prefs")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.util.prefs.[BackingStoreException](BackingStoreException.md "class in java.util.prefs")
      * java.util.prefs.[InvalidPreferencesFormatException](InvalidPreferencesFormatException.md "class in java.util.prefs")

## Interface Hierarchy

* java.util.[EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")
  + java.util.prefs.[NodeChangeListener](NodeChangeListener.md "interface in java.util.prefs")
  + java.util.prefs.[PreferenceChangeListener](PreferenceChangeListener.md "interface in java.util.prefs")
* java.util.prefs.[PreferencesFactory](PreferencesFactory.md "interface in java.util.prefs")