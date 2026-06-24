Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class FilesEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

java.awt.desktop.FilesEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `OpenFilesEvent`, `PrintFilesEvent`

---

public sealed class FilesEvent
extends [AppEvent](AppEvent.md "class in java.awt.desktop")
permits [OpenFilesEvent](OpenFilesEvent.md "class in java.awt.desktop"), [PrintFilesEvent](PrintFilesEvent.md "class in java.awt.desktop")

Auxiliary event containing a list of files.

Since:
:   9

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.FilesEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<File>`

  `getFiles()`

  Gets the list of files.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getFiles

    public [List](../../../../java.base/java/util/List.md "interface in java.util")<[File](../../../../java.base/java/io/File.md "class in java.io")> getFiles()

    Gets the list of files.

    Returns:
    :   the list of files