Module [java.desktop](../../../module-summary.md)

Package [javax.swing.filechooser](package-summary.md)

# Class FileSystemView

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.filechooser.FileSystemView

---

public abstract class FileSystemView
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

FileSystemView is JFileChooser's gateway to the
file system. Since the JDK1.1 File API doesn't allow
access to such information as root partitions, file type
information, or hidden file bits, this class is designed
to intuit as much OS-specific file system information as
possible.

Java Licensees may want to provide a different implementation of
FileSystemView to better handle a given operating system.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileSystemView()`

  Constructs a FileSystemView.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `File`

  `createFileObject(File dir,
  String filename)`

  Returns a File object constructed in dir from the given filename.

  `File`

  `createFileObject(String path)`

  Returns a File object constructed from the given path string.

  `protected File`

  `createFileSystemRoot(File f)`

  Creates a new `File` object for `f` with correct
  behavior for a file system root directory.

  `abstract File`

  `createNewFolder(File containingDir)`

  Creates a new folder with a default folder name.

  `File`

  `getChild(File parent,
  String fileName)`

  Returns a `File` object which is normally constructed with `new
  File(parent, fileName)` except when the parent and child are both
  special folders, in which case the `File` is a wrapper containing
  a ShellFolder object.

  `File[]`

  `getChooserComboBoxFiles()`

  Returns an array of files representing the values which will be shown
  in the file chooser selector.

  `final File[]`

  `getChooserShortcutPanelFiles()`

  Returns an array of files representing the values to show by default in
  the file chooser shortcuts panel.

  `File`

  `getDefaultDirectory()`

  Return the user's default starting directory for the file chooser.

  `File[]`

  `getFiles(File dir,
  boolean useFileHiding)`

  Gets the list of shown (i.e.

  `static FileSystemView`

  `getFileSystemView()`

  Returns the file system view.

  `File`

  `getHomeDirectory()`

  Returns the home directory.

  `File`

  `getLinkLocation(File file)`

  Returns the regular file referenced by the specified link file if
  the specified file is a shell interpreted link.

  `File`

  `getParentDirectory(File dir)`

  Returns the parent directory of `dir`.

  `File[]`

  `getRoots()`

  Returns all root partitions on this system.

  `String`

  `getSystemDisplayName(File f)`

  Name of a file, directory, or folder as it would be displayed in
  a system file browser.

  `Icon`

  `getSystemIcon(File f)`

  Icon for a file, directory, or folder as it would be displayed in
  a system file browser.

  `Icon`

  `getSystemIcon(File f,
  int width,
  int height)`

  Returns an icon for a file, directory, or folder as it would be displayed
  in a system file browser for the requested size.

  `String`

  `getSystemTypeDescription(File f)`

  Type description for a file, directory, or folder as it would be displayed in
  a system file browser.

  `boolean`

  `isComputerNode(File dir)`

  Used by UI classes to decide whether to display a special icon
  for a computer node, e.g.

  `boolean`

  `isDrive(File dir)`

  Used by UI classes to decide whether to display a special icon
  for drives or partitions, e.g.

  `boolean`

  `isFileSystem(File f)`

  Checks if `f` represents a real directory or file as opposed to a
  special folder such as `"Desktop"`.

  `boolean`

  `isFileSystemRoot(File dir)`

  Is dir the root of a tree in the file system, such as a drive
  or partition.

  `boolean`

  `isFloppyDrive(File dir)`

  Used by UI classes to decide whether to display a special icon
  for a floppy disk.

  `boolean`

  `isHiddenFile(File f)`

  Returns whether a file is hidden or not.

  `boolean`

  `isLink(File file)`

  Returns whether the specified file denotes a shell interpreted link which
  can be obtained by the [`getLinkLocation(File)`](#getLinkLocation(java.io.File)).

  `boolean`

  `isParent(File folder,
  File file)`

  On Windows, a file can appear in multiple folders, other than its
  parent directory in the filesystem.

  `boolean`

  `isRoot(File f)`

  Determines if the given file is a root in the navigable tree(s).

  `Boolean`

  `isTraversable(File f)`

  Returns true if the file (directory) can be visited.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileSystemView

    public FileSystemView()

    Constructs a FileSystemView.
* ## Method Details

  + ### getFileSystemView

    public static [FileSystemView](FileSystemView.md "class in javax.swing.filechooser") getFileSystemView()

    Returns the file system view.

    Returns:
    :   the file system view
  + ### isRoot

    public boolean isRoot([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Determines if the given file is a root in the navigable tree(s).
    Examples: Windows 98 has one root, the Desktop folder. DOS has one root
    per drive letter, `C:\`, `D:\`, etc. Unix has one root,
    the `"/"` directory.
    The default implementation gets information from the `ShellFolder` class.

    Parameters:
    :   `f` - a `File` object representing a directory

    Returns:
    :   `true` if `f` is a root in the navigable tree.

    See Also:
    :   - [`isFileSystemRoot(java.io.File)`](#isFileSystemRoot(java.io.File))
  + ### isTraversable

    public [Boolean](../../../../java.base/java/lang/Boolean.md "class in java.lang") isTraversable([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Returns true if the file (directory) can be visited.
    Returns false if the directory cannot be traversed.

    Parameters:
    :   `f` - the `File`

    Returns:
    :   `true` if the file/directory can be traversed, otherwise `false`

    Since:
    :   1.4

    See Also:
    :   - [`JFileChooser.isTraversable(java.io.File)`](../JFileChooser.md#isTraversable(java.io.File))
        - [`FileView.isTraversable(java.io.File)`](FileView.md#isTraversable(java.io.File))
  + ### getSystemDisplayName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemDisplayName([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Name of a file, directory, or folder as it would be displayed in
    a system file browser. Example from Windows: the "M:\" directory
    displays as "CD-ROM (M:)"
    The default implementation gets information from the ShellFolder class.

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   the file name as it would be displayed by a native file chooser

    Since:
    :   1.4

    See Also:
    :   - [`JFileChooser.getName(java.io.File)`](../JFileChooser.md#getName(java.io.File))
  + ### getSystemTypeDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemTypeDescription([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Type description for a file, directory, or folder as it would be displayed in
    a system file browser. Example from Windows: the "Desktop" folder
    is described as "Desktop".
    Override for platforms with native ShellFolder implementations.

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   the file type description as it would be displayed by a native file chooser
        or null if no native information is available.

    Since:
    :   1.4

    See Also:
    :   - [`JFileChooser.getTypeDescription(java.io.File)`](../JFileChooser.md#getTypeDescription(java.io.File))
  + ### getSystemIcon

    public [Icon](../Icon.md "interface in javax.swing") getSystemIcon([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Icon for a file, directory, or folder as it would be displayed in
    a system file browser. Example from Windows: the "M:\" directory
    displays a CD-ROM icon.

    The default implementation gets information from the ShellFolder class.

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   an icon as it would be displayed by a native file chooser

    Since:
    :   1.4

    See Also:
    :   - [`JFileChooser.getIcon(java.io.File)`](../JFileChooser.md#getIcon(java.io.File))
  + ### getSystemIcon

    public [Icon](../Icon.md "interface in javax.swing") getSystemIcon([File](../../../../java.base/java/io/File.md "class in java.io") f,
    int width,
    int height)

    Returns an icon for a file, directory, or folder as it would be displayed
    in a system file browser for the requested size.

    Example:

    ```
         FileSystemView fsv = FileSystemView.getFileSystemView();
         Icon icon = fsv.getSystemIcon(new File("application.exe"), 64, 64);
         JLabel label = new JLabel(icon);
    ```

    Parameters:
    :   `f` - a `File` object for which the icon will be retrieved
    :   `width` - width of the icon in user coordinate system.
    :   `height` - height of the icon in user coordinate system.

    Returns:
    :   an icon as it would be displayed by a native file chooser
        or null for a non-existent or inaccessible file.

    Throws:
    :   `IllegalArgumentException` - if an invalid parameter such
        as a negative size or a null file reference is passed.

    Since:
    :   17

    See Also:
    :   - [`JFileChooser.getIcon(java.io.File)`](../JFileChooser.md#getIcon(java.io.File))
        - [`AbstractMultiResolutionImage`](../../../java/awt/image/AbstractMultiResolutionImage.md "class in java.awt.image")
        - [`getSystemIcon(File)`](#getSystemIcon(java.io.File))
  + ### isParent

    public boolean isParent([File](../../../../java.base/java/io/File.md "class in java.io") folder,
    [File](../../../../java.base/java/io/File.md "class in java.io") file)

    On Windows, a file can appear in multiple folders, other than its
    parent directory in the filesystem. Folder could for example be the
    "Desktop" folder which is not the same as file.getParentFile().

    Parameters:
    :   `folder` - a `File` object representing a directory or special folder
    :   `file` - a `File` object

    Returns:
    :   `true` if `folder` is a directory or special folder and contains `file`.

    Since:
    :   1.4
  + ### getChild

    public [File](../../../../java.base/java/io/File.md "class in java.io") getChild([File](../../../../java.base/java/io/File.md "class in java.io") parent,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") fileName)

    Returns a `File` object which is normally constructed with `new
    File(parent, fileName)` except when the parent and child are both
    special folders, in which case the `File` is a wrapper containing
    a ShellFolder object.

    Parameters:
    :   `parent` - a `File` object representing a directory or special folder
    :   `fileName` - a name of a file or folder which exists in `parent`

    Returns:
    :   a File object.

    Since:
    :   1.4
  + ### isFileSystem

    public boolean isFileSystem([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Checks if `f` represents a real directory or file as opposed to a
    special folder such as `"Desktop"`. Used by UI classes to decide if
    a folder is selectable when doing directory choosing.

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   `true` if `f` is a real file or directory.

    Since:
    :   1.4
  + ### createNewFolder

    public abstract [File](../../../../java.base/java/io/File.md "class in java.io") createNewFolder([File](../../../../java.base/java/io/File.md "class in java.io") containingDir)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new folder with a default folder name.

    Parameters:
    :   `containingDir` - a `File` object denoting directory to contain the new folder

    Returns:
    :   a `File` object denoting the newly created folder

    Throws:
    :   `IOException` - if new folder could not be created
  + ### isHiddenFile

    public boolean isHiddenFile([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Returns whether a file is hidden or not.

    Parameters:
    :   `f` - a `File` object

    Returns:
    :   true if the given `File` denotes a hidden file
  + ### isFileSystemRoot

    public boolean isFileSystemRoot([File](../../../../java.base/java/io/File.md "class in java.io") dir)

    Is dir the root of a tree in the file system, such as a drive
    or partition. Example: Returns true for "C:\" on Windows 98.

    Parameters:
    :   `dir` - a `File` object representing a directory

    Returns:
    :   `true` if `f` is a root of a filesystem

    Since:
    :   1.4

    See Also:
    :   - [`isRoot(java.io.File)`](#isRoot(java.io.File))
  + ### isDrive

    public boolean isDrive([File](../../../../java.base/java/io/File.md "class in java.io") dir)

    Used by UI classes to decide whether to display a special icon
    for drives or partitions, e.g. a "hard disk" icon.
    The default implementation has no way of knowing, so always returns false.

    Parameters:
    :   `dir` - a directory

    Returns:
    :   `false` always

    Since:
    :   1.4
  + ### isFloppyDrive

    public boolean isFloppyDrive([File](../../../../java.base/java/io/File.md "class in java.io") dir)

    Used by UI classes to decide whether to display a special icon
    for a floppy disk. Implies isDrive(dir).
    The default implementation has no way of knowing, so always returns false.

    Parameters:
    :   `dir` - a directory

    Returns:
    :   `false` always

    Since:
    :   1.4
  + ### isComputerNode

    public boolean isComputerNode([File](../../../../java.base/java/io/File.md "class in java.io") dir)

    Used by UI classes to decide whether to display a special icon
    for a computer node, e.g. "My Computer" or a network server.
    The default implementation has no way of knowing, so always returns false.

    Parameters:
    :   `dir` - a directory

    Returns:
    :   `false` always

    Since:
    :   1.4
  + ### getRoots

    public [File](../../../../java.base/java/io/File.md "class in java.io")[] getRoots()

    Returns all root partitions on this system. For example, on
    Windows, this would be the "Desktop" folder, while on DOS this
    would be the A: through Z: drives.

    Returns:
    :   an array of `File` objects representing all root partitions
        on this system
  + ### getHomeDirectory

    public [File](../../../../java.base/java/io/File.md "class in java.io") getHomeDirectory()

    Returns the home directory.

    Returns:
    :   the home directory
  + ### getDefaultDirectory

    public [File](../../../../java.base/java/io/File.md "class in java.io") getDefaultDirectory()

    Return the user's default starting directory for the file chooser.

    Returns:
    :   a `File` object representing the default
        starting folder

    Since:
    :   1.4
  + ### createFileObject

    public [File](../../../../java.base/java/io/File.md "class in java.io") createFileObject([File](../../../../java.base/java/io/File.md "class in java.io") dir,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filename)

    Returns a File object constructed in dir from the given filename.

    Parameters:
    :   `dir` - an abstract pathname denoting a directory
    :   `filename` - a `String` representation of a pathname

    Returns:
    :   a `File` object created from `dir` and `filename`
  + ### createFileObject

    public [File](../../../../java.base/java/io/File.md "class in java.io") createFileObject([String](../../../../java.base/java/lang/String.md "class in java.lang") path)

    Returns a File object constructed from the given path string.

    Parameters:
    :   `path` - `String` representation of path

    Returns:
    :   a `File` object created from the given `path`
  + ### getFiles

    public [File](../../../../java.base/java/io/File.md "class in java.io")[] getFiles([File](../../../../java.base/java/io/File.md "class in java.io") dir,
    boolean useFileHiding)

    Gets the list of shown (i.e. not hidden) files.

    Parameters:
    :   `dir` - the root directory of files to be returned
    :   `useFileHiding` - determine if hidden files are returned

    Returns:
    :   an array of `File` objects representing files and
        directories in the given `dir`. It includes hidden
        files if `useFileHiding` is false.
  + ### getParentDirectory

    public [File](../../../../java.base/java/io/File.md "class in java.io") getParentDirectory([File](../../../../java.base/java/io/File.md "class in java.io") dir)

    Returns the parent directory of `dir`.

    Parameters:
    :   `dir` - the `File` being queried

    Returns:
    :   the parent directory of `dir`, or
        `null` if `dir` is `null`
  + ### getChooserComboBoxFiles

    public [File](../../../../java.base/java/io/File.md "class in java.io")[] getChooserComboBoxFiles()

    Returns an array of files representing the values which will be shown
    in the file chooser selector.

    Returns:
    :   an array of `File` objects. The array returned may be
        possibly empty if there are no appropriate permissions.

    Since:
    :   9
  + ### getChooserShortcutPanelFiles

    public final [File](../../../../java.base/java/io/File.md "class in java.io")[] getChooserShortcutPanelFiles()

    Returns an array of files representing the values to show by default in
    the file chooser shortcuts panel.

    Returns:
    :   an array of `File` objects. The array returned may be
        possibly empty if there are no appropriate permissions.

    Since:
    :   12
  + ### isLink

    public boolean isLink([File](../../../../java.base/java/io/File.md "class in java.io") file)

    Returns whether the specified file denotes a shell interpreted link which
    can be obtained by the [`getLinkLocation(File)`](#getLinkLocation(java.io.File)).

    Parameters:
    :   `file` - a file

    Returns:
    :   whether this is a link

    Throws:
    :   `NullPointerException` - if `file` equals `null`
    :   `SecurityException` - if the caller does not have necessary
        permissions

    Since:
    :   9

    See Also:
    :   - [`getLinkLocation(File)`](#getLinkLocation(java.io.File))
  + ### getLinkLocation

    public [File](../../../../java.base/java/io/File.md "class in java.io") getLinkLocation([File](../../../../java.base/java/io/File.md "class in java.io") file)
    throws [FileNotFoundException](../../../../java.base/java/io/FileNotFoundException.md "class in java.io")

    Returns the regular file referenced by the specified link file if
    the specified file is a shell interpreted link.
    Returns `null` if the specified file is not
    a shell interpreted link.

    Parameters:
    :   `file` - a file

    Returns:
    :   the linked file or `null`.

    Throws:
    :   `FileNotFoundException` - if the linked file does not exist
    :   `NullPointerException` - if `file` equals `null`
    :   `SecurityException` - if the caller does not have necessary
        permissions

    Since:
    :   9
  + ### createFileSystemRoot

    protected [File](../../../../java.base/java/io/File.md "class in java.io") createFileSystemRoot([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Creates a new `File` object for `f` with correct
    behavior for a file system root directory.

    Parameters:
    :   `f` - a `File` object representing a file system root
        directory, for example "/" on Unix or "C:\" on Windows.

    Returns:
    :   a new `File` object

    Since:
    :   1.4