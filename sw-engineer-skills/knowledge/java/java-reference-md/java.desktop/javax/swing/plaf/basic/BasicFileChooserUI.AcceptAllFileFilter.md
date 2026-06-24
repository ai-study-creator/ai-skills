Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicFileChooserUI.AcceptAllFileFilter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.filechooser.FileFilter](../../filechooser/FileFilter.md "class in javax.swing.filechooser")

javax.swing.plaf.basic.BasicFileChooserUI.AcceptAllFileFilter

Enclosing class:
:   `BasicFileChooserUI`

---

protected class BasicFileChooserUI.AcceptAllFileFilter
extends [FileFilter](../../filechooser/FileFilter.md "class in javax.swing.filechooser")

Accept all file filter.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AcceptAllFileFilter()`

  Constructs an `AcceptAllFileFilter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(File f)`

  Returns true.

  `String`

  `getDescription()`

  The description of this filter.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AcceptAllFileFilter

    public AcceptAllFileFilter()

    Constructs an `AcceptAllFileFilter`.
* ## Method Details

  + ### accept

    public boolean accept([File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Returns true.

    Specified by:
    :   `accept` in class `FileFilter`

    Parameters:
    :   `f` - the file

    Returns:
    :   true
  + ### getDescription

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    The description of this filter. For example: "JPG and GIF Images"

    Specified by:
    :   `getDescription` in class `FileFilter`

    Returns:
    :   the description of this filter

    See Also:
    :   - [`FileView.getName(java.io.File)`](../../filechooser/FileView.md#getName(java.io.File))