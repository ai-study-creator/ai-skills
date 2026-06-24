Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface FilenameFilter

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../lang/FunctionalInterface.md "annotation interface in java.lang")
public interface FilenameFilter

Instances of classes that implement this interface are used to
filter filenames. These instances are used to filter directory
listings in the `list` method of class
`File`, and by the Abstract Window Toolkit's file
dialog component.

Since:
:   1.0

See Also:
:   * [`FileDialog.setFilenameFilter(java.io.FilenameFilter)`](../../../java.desktop/java/awt/FileDialog.md#setFilenameFilter(java.io.FilenameFilter))
    * [`File`](File.md "class in java.io")
    * [`File.list(java.io.FilenameFilter)`](File.md#list(java.io.FilenameFilter))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(File dir,
  String name)`

  Tests if a specified file should be included in a file list.

* ## Method Details

  + ### accept

    boolean accept([File](File.md "class in java.io") dir,
    [String](../lang/String.md "class in java.lang") name)

    Tests if a specified file should be included in a file list.

    Parameters:
    :   `dir` - the directory in which the file was found.
    :   `name` - the name of the file.

    Returns:
    :   `true` if and only if the name should be
        included in the file list; `false` otherwise.