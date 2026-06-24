# Hierarchy For Package java.awt.desktop

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.awt.desktop.[AppEvent](AppEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[AboutEvent](AboutEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[AppForegroundEvent](AppForegroundEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[AppHiddenEvent](AppHiddenEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[AppReopenedEvent](AppReopenedEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[FilesEvent](FilesEvent.md "class in java.awt.desktop")
        + java.awt.desktop.[OpenFilesEvent](OpenFilesEvent.md "class in java.awt.desktop")
        + java.awt.desktop.[PrintFilesEvent](PrintFilesEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[OpenURIEvent](OpenURIEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[PreferencesEvent](PreferencesEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[QuitEvent](QuitEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[ScreenSleepEvent](ScreenSleepEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[SystemSleepEvent](SystemSleepEvent.md "class in java.awt.desktop")
      * java.awt.desktop.[UserSessionEvent](UserSessionEvent.md "class in java.awt.desktop")

## Interface Hierarchy

* java.awt.desktop.[AboutHandler](AboutHandler.md "interface in java.awt.desktop")
* java.util.[EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")
  + java.awt.desktop.[SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")
    - java.awt.desktop.[AppForegroundListener](AppForegroundListener.md "interface in java.awt.desktop")
    - java.awt.desktop.[AppHiddenListener](AppHiddenListener.md "interface in java.awt.desktop")
    - java.awt.desktop.[AppReopenedListener](AppReopenedListener.md "interface in java.awt.desktop")
    - java.awt.desktop.[ScreenSleepListener](ScreenSleepListener.md "interface in java.awt.desktop")
    - java.awt.desktop.[SystemSleepListener](SystemSleepListener.md "interface in java.awt.desktop")
    - java.awt.desktop.[UserSessionListener](UserSessionListener.md "interface in java.awt.desktop")
* java.awt.desktop.[OpenFilesHandler](OpenFilesHandler.md "interface in java.awt.desktop")
* java.awt.desktop.[OpenURIHandler](OpenURIHandler.md "interface in java.awt.desktop")
* java.awt.desktop.[PreferencesHandler](PreferencesHandler.md "interface in java.awt.desktop")
* java.awt.desktop.[PrintFilesHandler](PrintFilesHandler.md "interface in java.awt.desktop")
* java.awt.desktop.[QuitHandler](QuitHandler.md "interface in java.awt.desktop")
* java.awt.desktop.[QuitResponse](QuitResponse.md "interface in java.awt.desktop")

## Enum Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../../../java.base/java/lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.awt.desktop.[QuitStrategy](QuitStrategy.md "enum class in java.awt.desktop")
    - java.awt.desktop.[UserSessionEvent.Reason](UserSessionEvent.Reason.md "enum class in java.awt.desktop")