Module [java.desktop](../../../module-summary.md)

Package [javax.swing.filechooser](package-summary.md)

# Class FileNameExtensionFilter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.filechooser.FileFilter](FileFilter.md "class in javax.swing.filechooser")

javax.swing.filechooser.FileNameExtensionFilter

---

public final class FileNameExtensionFilter
extends [FileFilter](FileFilter.md "class in javax.swing.filechooser")

An implementation of `FileFilter` that filters using a
specified set of extensions. The extension for a file is the
portion of the file name after the last ".". Files whose name does
not contain a "." have no file name extension. File name extension
comparisons are case insensitive.

The following example creates a
`FileNameExtensionFilter` that will show `jpg` files:

```
 FileFilter filter = new FileNameExtensionFilter("JPEG file", "jpg", "jpeg");
 JFileChooser fileChooser = ...;
 fileChooser.addChoosableFileFilter(filter);
```

Since:
:   1.6

See Also:
:   * [`FileFilter`](FileFilter.md "class in javax.swing.filechooser")
    * [`JFileChooser.setFileFilter(javax.swing.filechooser.FileFilter)`](../JFileChooser.md#setFileFilter(javax.swing.filechooser.FileFilter))
    * [`JFileChooser.addChoosableFileFilter(javax.swing.filechooser.FileFilter)`](../JFileChooser.md#addChoosableFileFilter(javax.swing.filechooser.FileFilter))
    * [`JFileChooser.getFileFilter()`](../JFileChooser.md#getFileFilter())

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileNameExtensionFilter(String description,
  String... extensions)`

  Creates a `FileNameExtensionFilter` with the specified
  description and file name extensions.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(File f)`

  Tests the specified file, returning true if the file is
  accepted, false otherwise.

  `String`

  `getDescription()`

  The description of this filter.

  `String[]`

  `getExtensions()`

  Returns the set of file name extensions files are tested against.

  `String`

  `toString()`

  Returns a string representation of the `FileNameExtensionFilter`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FileNameExtensionFilter

    public FileNameExtensionFilter([String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")... extensions)

    Creates a `FileNameExtensionFilter` with the specified
    description and file name extensions. The returned `FileNameExtensionFilter` will accept all directories and any
    file with a file name extension contained in `extensions`.

    Parameters:
    :   `description` - textual description for the filter, may be
        `null`
    :   `extensions` - the accepted file name extensions

    Throws:
    :   `IllegalArgumentException` - if extensions is `null`, empty,
        contains `null`, or contains an empty string

    See Also:
    :   - [`accept(java.io.File)`](#accept(java.io.File))
* ## Method Details

  + ### accept

    public boolean accept([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Tests the specified file, returning true if the file is
    accepted, false otherwise. True is returned if the extension
    matches one of the file name extensions of this `FileFilter`, or the file is a directory.

    Specified by:
    :   `accept` in class `FileFilter`

    Parameters:
    :   `f` - the `File` to test

    Returns:
    :   true if the file is to be accepted, false otherwise
  + ### getDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    The description of this filter. For example: "JPG and GIF Images."

    Specified by:
    :   `getDescription` in class `FileFilter`

    Returns:
    :   the description of this filter

    See Also:
    :   - [`FileView.getName(java.io.File)`](FileView.md#getName(java.io.File))
  + ### getExtensions

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getExtensions()

    Returns the set of file name extensions files are tested against.

    Returns:
    :   the set of file name extensions files are tested against
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the `FileNameExtensionFilter`.
    This method is intended to be used for debugging purposes,
    and the content and format of the returned string may vary
    between implementations.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `FileNameExtensionFilter`