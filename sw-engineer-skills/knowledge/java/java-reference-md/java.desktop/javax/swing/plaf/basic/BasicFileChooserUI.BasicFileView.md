Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicFileChooserUI.BasicFileView

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.filechooser.FileView](../../filechooser/FileView.md "class in javax.swing.filechooser")

javax.swing.plaf.basic.BasicFileChooserUI.BasicFileView

Enclosing class:
:   `BasicFileChooserUI`

---

protected class BasicFileChooserUI.BasicFileView
extends [FileView](../../filechooser/FileView.md "class in javax.swing.filechooser")

A basic file view.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Hashtable<File,Icon>`

  `iconCache`

  The icon cache
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicFileView()`

  Constructs a `BasicFileView`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `cacheIcon(File f,
  Icon i)`

  Caches an icon for a file.

  `void`

  `clearIconCache()`

  Clears the icon cache.

  `Icon`

  `getCachedIcon(File f)`

  Returns the cached icon for the file.

  `String`

  `getDescription(File f)`

  A human readable description of the file.

  `Icon`

  `getIcon(File f)`

  The icon that represents this file in the `JFileChooser`.

  `String`

  `getName(File f)`

  The name of the file.

  `String`

  `getTypeDescription(File f)`

  A human readable description of the type of the file.

  `Boolean`

  `isHidden(File f)`

  Returns whether or not a file is hidden.

  ### Methods inherited from class javax.swing.filechooser.[FileView](../../filechooser/FileView.md "class in javax.swing.filechooser")

  `isTraversable`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### iconCache

    protected [Hashtable](../../../../../java.base/java/util/Hashtable.md "class in java.util")<[File](../../../../../java.base/java/io/File.md "class in java.io"),[Icon](../../Icon.md "interface in javax.swing")> iconCache

    The icon cache
* ## Constructor Details

  + ### BasicFileView

    public BasicFileView()

    Constructs a `BasicFileView`.
* ## Method Details

  + ### clearIconCache

    public void clearIconCache()

    Clears the icon cache.
  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    The name of the file. Normally this would be simply
    `f.getName()`.

    Overrides:
    :   `getName` in class `FileView`

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   a `String` representing the name of the file
  + ### getDescription

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDescription([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    A human readable description of the file. For example,
    a file named *jag.jpg* might have a description that read:
    "A JPEG image file of James Gosling's face".

    Overrides:
    :   `getDescription` in class `FileView`

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   a `String` containing a description of the file or
        `null` if it is not available.
  + ### getTypeDescription

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getTypeDescription([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    A human readable description of the type of the file. For
    example, a `jpg` file might have a type description of:
    "A JPEG Compressed Image File"

    Overrides:
    :   `getTypeDescription` in class `FileView`

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   a `String` containing a description of the type of the file
        or `null` if it is not available .
  + ### getCachedIcon

    public [Icon](../../Icon.md "interface in javax.swing") getCachedIcon([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Returns the cached icon for the file.

    Parameters:
    :   `f` - the file

    Returns:
    :   the cached icon for the file
  + ### cacheIcon

    public void cacheIcon([File](../../../../../java.base/java/io/File.md "class in java.io") f,
    [Icon](../../Icon.md "interface in javax.swing") i)

    Caches an icon for a file.

    Parameters:
    :   `f` - the file
    :   `i` - the icon
  + ### getIcon

    public [Icon](../../Icon.md "interface in javax.swing") getIcon([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    The icon that represents this file in the `JFileChooser`.

    Overrides:
    :   `getIcon` in class `FileView`

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   an `Icon` which represents the specified `File` or
        `null` if it is not available.
  + ### isHidden

    public [Boolean](../../../../../java.base/java/lang/Boolean.md "class in java.lang") isHidden([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Returns whether or not a file is hidden.

    Parameters:
    :   `f` - the file

    Returns:
    :   whether or not a file is hidden