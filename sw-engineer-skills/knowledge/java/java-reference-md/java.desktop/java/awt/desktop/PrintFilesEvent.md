Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class PrintFilesEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

[java.awt.desktop.FilesEvent](FilesEvent.md "class in java.awt.desktop")

java.awt.desktop.PrintFilesEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class PrintFilesEvent
extends [FilesEvent](FilesEvent.md "class in java.awt.desktop")

Event sent when the app is asked to print a list of files.

Since:
:   9

See Also:
:   * [`PrintFilesHandler.printFiles(PrintFilesEvent)`](PrintFilesHandler.md#printFiles(java.awt.desktop.PrintFilesEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.PrintFilesEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrintFilesEvent(List<File> files)`

  Constructs a `PrintFilesEvent`.
* ## Method Summary

  ### Methods inherited from class java.awt.desktop.[FilesEvent](FilesEvent.md "class in java.awt.desktop")

  `getFiles`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PrintFilesEvent

    public PrintFilesEvent([List](../../../../java.base/java/util/List.md "interface in java.util")<[File](../../../../java.base/java/io/File.md "class in java.io")> files)

    Constructs a `PrintFilesEvent`.

    Parameters:
    :   `files` - the list of files

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())