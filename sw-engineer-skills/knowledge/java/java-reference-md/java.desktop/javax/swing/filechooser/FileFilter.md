Module [java.desktop](../../../module-summary.md)

Package [javax.swing.filechooser](package-summary.md)

# Class FileFilter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.filechooser.FileFilter

Direct Known Subclasses:
:   `BasicFileChooserUI.AcceptAllFileFilter`, `FileNameExtensionFilter`

---

public abstract class FileFilter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

`FileFilter` is an abstract class used by `JFileChooser`
for filtering the set of files shown to the user. See
`FileNameExtensionFilter` for an implementation that filters using
the file name extension.

A `FileFilter`
can be set on a `JFileChooser` to
keep unwanted files from appearing in the directory listing.
For an example implementation of a simple file filter, see
`yourJDK/demo/jfc/FileChooserDemo/ExampleFileFilter.java`.
For more information and examples see
[How to Use File Choosers](https://docs.oracle.com/javase/tutorial/uiswing/components/filechooser.html),
a section in *The Java Tutorial*.

See Also:
:   * [`FileNameExtensionFilter`](FileNameExtensionFilter.md "class in javax.swing.filechooser")
    * [`JFileChooser.setFileFilter(javax.swing.filechooser.FileFilter)`](../JFileChooser.md#setFileFilter(javax.swing.filechooser.FileFilter))
    * [`JFileChooser.addChoosableFileFilter(javax.swing.filechooser.FileFilter)`](../JFileChooser.md#addChoosableFileFilter(javax.swing.filechooser.FileFilter))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FileFilter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `accept(File f)`

  Whether the given file is accepted by this filter.

  `abstract String`

  `getDescription()`

  The description of this filter.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileFilter

    protected FileFilter()

    Constructor for subclasses to call.
* ## Method Details

  + ### accept

    public abstract boolean accept([File](../../../../java.base/java/io/File.md "class in java.io") f)

    Whether the given file is accepted by this filter.

    Parameters:
    :   `f` - the File to test

    Returns:
    :   true if the file is to be accepted
  + ### getDescription

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    The description of this filter. For example: "JPG and GIF Images"

    Returns:
    :   the description of this filter

    See Also:
    :   - [`FileView.getName(java.io.File)`](FileView.md#getName(java.io.File))