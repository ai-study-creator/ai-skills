Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Class OpenFilesEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.desktop.AppEvent](AppEvent.md "class in java.awt.desktop")

[java.awt.desktop.FilesEvent](FilesEvent.md "class in java.awt.desktop")

java.awt.desktop.OpenFilesEvent

All Implemented Interfaces:
:   `Serializable`

---

public final class OpenFilesEvent
extends [FilesEvent](FilesEvent.md "class in java.awt.desktop")

Event sent when the app is asked to open a list of files.

Since:
:   9

See Also:
:   * [`OpenFilesHandler.openFiles(java.awt.desktop.OpenFilesEvent)`](OpenFilesHandler.md#openFiles(java.awt.desktop.OpenFilesEvent))
    * [Serialized Form](../../../../serialized-form.md#java.awt.desktop.OpenFilesEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OpenFilesEvent(List<File> files,
  String searchTerm)`

  Constructs an `OpenFilesEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getSearchTerm()`

  Gets the search term.

  ### Methods inherited from class java.awt.desktop.[FilesEvent](FilesEvent.md "class in java.awt.desktop")

  `getFiles`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### OpenFilesEvent

    public OpenFilesEvent([List](../../../../java.base/java/util/List.md "interface in java.util")<[File](../../../../java.base/java/io/File.md "class in java.io")> files,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") searchTerm)

    Constructs an `OpenFilesEvent`.

    Parameters:
    :   `files` - the list of files
    :   `searchTerm` - the search term

    Throws:
    :   `HeadlessException` - if [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
        returns `true`
    :   `UnsupportedOperationException` - if Desktop API is not supported on
        the current platform

    See Also:
    :   - [`Desktop.isDesktopSupported()`](../Desktop.md#isDesktopSupported())
        - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### getSearchTerm

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getSearchTerm()

    Gets the search term. The platform may optionally provide the search term
    that was used to find the files. This is for example the case on MacOS,
    when the files were opened using the Spotlight search menu or a Finder
    search window.

    This is useful for highlighting the search term in the documents when
    they are opened.

    Returns:
    :   the search term used to find the files