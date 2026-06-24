Module [java.desktop](../../../module-summary.md)

# Package javax.swing.filechooser

---

package javax.swing.filechooser

Contains classes and interfaces used by the `JFileChooser` component.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

## Related Documentation

This document forms the complete API specification. For overviews, tutorials,
examples, guides, and tool documentation, please see:

* [How to Use File Choosers](https://docs.oracle.com/javase/tutorial/uiswing/components/filechooser.html),
  a section in *The Java Tutorial*

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing](../package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.
* Classes

  Class

  Description

  [FileFilter](FileFilter.md "class in javax.swing.filechooser")

  `FileFilter` is an abstract class used by `JFileChooser`
  for filtering the set of files shown to the user.

  [FileNameExtensionFilter](FileNameExtensionFilter.md "class in javax.swing.filechooser")

  An implementation of `FileFilter` that filters using a
  specified set of extensions.

  [FileSystemView](FileSystemView.md "class in javax.swing.filechooser")

  FileSystemView is JFileChooser's gateway to the
  file system.

  [FileView](FileView.md "class in javax.swing.filechooser")

  `FileView` defines an abstract class that can be implemented
  to provide the filechooser with UI information for a `File`.