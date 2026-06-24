Module [java.desktop](../../../module-summary.md)

Package [javax.swing.plaf](package-summary.md)

# Class FileChooserUI

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](ComponentUI.md "class in javax.swing.plaf")

javax.swing.plaf.FileChooserUI

Direct Known Subclasses:
:   `BasicFileChooserUI`, `MultiFileChooserUI`

---

public abstract class FileChooserUI
extends [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

Pluggable look and feel interface for `JFileChooser`.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FileChooserUI()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `ensureFileIsVisible(JFileChooser fc,
  File f)`

  Ensure the file in question is visible.

  `abstract FileFilter`

  `getAcceptAllFileFilter(JFileChooser fc)`

  Returns an accept-all file filter.

  `abstract String`

  `getApproveButtonText(JFileChooser fc)`

  Returns approve button text.

  `JButton`

  `getDefaultButton(JFileChooser fc)`

  Returns default button for current `LookAndFeel`.

  `abstract String`

  `getDialogTitle(JFileChooser fc)`

  Returns the dialog title.

  `abstract FileView`

  `getFileView(JFileChooser fc)`

  Returns a file view.

  `abstract void`

  `rescanCurrentDirectory(JFileChooser fc)`

  Rescan the current directory.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  `contains, createUI, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, installUI, paint, uninstallUI, update`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileChooserUI

    protected FileChooserUI()

    Constructor for subclasses to call.
* ## Method Details

  + ### getAcceptAllFileFilter

    public abstract [FileFilter](../filechooser/FileFilter.md "class in javax.swing.filechooser") getAcceptAllFileFilter([JFileChooser](../JFileChooser.md "class in javax.swing") fc)

    Returns an accept-all file filter.

    Parameters:
    :   `fc` - the file chooser

    Returns:
    :   an accept-all file filter
  + ### getFileView

    public abstract [FileView](../filechooser/FileView.md "class in javax.swing.filechooser") getFileView([JFileChooser](../JFileChooser.md "class in javax.swing") fc)

    Returns a file view.

    Parameters:
    :   `fc` - the file chooser

    Returns:
    :   a file view
  + ### getApproveButtonText

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getApproveButtonText([JFileChooser](../JFileChooser.md "class in javax.swing") fc)

    Returns approve button text.

    Parameters:
    :   `fc` - the file chooser

    Returns:
    :   approve button text.
  + ### getDialogTitle

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getDialogTitle([JFileChooser](../JFileChooser.md "class in javax.swing") fc)

    Returns the dialog title.

    Parameters:
    :   `fc` - the file chooser

    Returns:
    :   the dialog title.
  + ### rescanCurrentDirectory

    public abstract void rescanCurrentDirectory([JFileChooser](../JFileChooser.md "class in javax.swing") fc)

    Rescan the current directory.

    Parameters:
    :   `fc` - the file chooser
  + ### ensureFileIsVisible

    public abstract void ensureFileIsVisible([JFileChooser](../JFileChooser.md "class in javax.swing") fc,
    [File](../../../../java.base/java/io/File.md "class in java.io") f)

    Ensure the file in question is visible.

    Parameters:
    :   `fc` - the file chooser
    :   `f` - the file
  + ### getDefaultButton

    public [JButton](../JButton.md "class in javax.swing") getDefaultButton([JFileChooser](../JFileChooser.md "class in javax.swing") fc)

    Returns default button for current `LookAndFeel`.
    `JFileChooser` will use this button as default button
    for dialog windows.

    Parameters:
    :   `fc` - the `JFileChooser` whose default button is requested

    Returns:
    :   the default JButton for current look and feel

    Since:
    :   1.7