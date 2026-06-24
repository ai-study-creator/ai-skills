Module [java.desktop](../../../module-summary.md)

Package [javax.swing.filechooser](package-summary.md)

# Class FileView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.filechooser.FileView

Direct Known Subclasses:
:   `BasicFileChooserUI.BasicFileView`

---

public abstract class FileView
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

`FileView` defines an abstract class that can be implemented
to provide the filechooser with UI information for a `File`.
Each L&F `JFileChooserUI` object implements this
class to pass back the correct icons and type descriptions specific to
that L&F. For example, the Microsoft Windows L&F returns the
generic Windows icons for directories and generic files.
Additionally, you may want to provide your own `FileView` to
`JFileChooser` to return different icons or additional
information using [`JFileChooser.setFileView(javax.swing.filechooser.FileView)`](../JFileChooser.md#setFileView(javax.swing.filechooser.FileView)).

`JFileChooser` first looks to see if there is a user defined
`FileView`, if there is, it gets type information from
there first. If `FileView` returns `null` for
any method, `JFileChooser` then uses the L&F specific
view to get the information.
So, for example, if you provide a `FileView` class that
returns an `Icon` for JPG files, and returns `null`
icons for all other files, the UI's `FileView` will provide
default icons for all other files.

For an example implementation of a simple file view, see
`yourJDK/demo/jfc/FileChooserDemo/ExampleFileView.java`.
For more information and examples see
[How to Use File Choosers](https://docs.oracle.com/javase/tutorial/uiswing/components/filechooser.html),
a section in *The Java Tutorial*.

See Also:
:   * [`JFileChooser`](../JFileChooser.md "class in javax.swing")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FileView()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

  `isTraversable(File f)`

  Whether the directory is traversable or not.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileView

    protected FileView()

    Constructor for subclasses to call.
* ## Method Details

  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName([File](../../../../java.base/java/io/File.md "class in java.io") f)

    The name of the file. Normally this would be simply
    `f.getName()`.

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   a `String` representing the name of the file
  + ### getDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription([File](../../../../java.base/java/io/File.md "class in java.io") f)

    A human readable description of the file. For example,
    a file named *jag.jpg* might have a description that read:
    "A JPEG image file of James Gosling's face".

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   a `String` containing a description of the file or
        `null` if it is not available.
  + ### getTypeDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getTypeDescription([File](../../../../java.base/java/io/File.md "class in java.io") f)

    A human readable description of the type of the file. For
    example, a `jpg` file might have a type description of:
    "A JPEG Compressed Image File"

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   a `String` containing a description of the type of the file
        or `null` if it is not available .
  + ### getIcon

    public [Icon](../Icon.md "interface in javax.swing") getIcon([File](../../../../java.base/java/io/File.md "class in java.io") f)

    The icon that represents this file in the `JFileChooser`.

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   an `Icon` which represents the specified `File` or
        `null` if it is not available.
  + ### isTraversable

    public [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") isTraversable([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Whether the directory is traversable or not. This might be
    useful, for example, if you want a directory to represent
    a compound document and don't want the user to descend into it.

    Parameters:
    :   `f` - a `File` object representing a directory

    Returns:
    :   `true` if the directory is traversable,
        `false` if it is not, and `null` if the
        file system should be checked.

    See Also:
    :   - [`FileSystemView.isTraversable(java.io.File)`](FileSystemView.md#isTraversable(java.io.File))