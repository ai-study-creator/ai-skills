Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface OpenFilesHandler

---

public interface OpenFilesHandler

An implementor is notified when the application is asked to open a list of
files.

Since:
:   9

See Also:
:   * [`Desktop.setOpenFileHandler(OpenFilesHandler)`](../Desktop.md#setOpenFileHandler(java.awt.desktop.OpenFilesHandler))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `openFiles(OpenFilesEvent e)`

  Called when the application is asked to open a list of files.

* ## Method Details

  + ### openFiles

    void openFiles([OpenFilesEvent](OpenFilesEvent.md "class in java.awt.desktop") e)

    Called when the application is asked to open a list of files.

    Parameters:
    :   `e` - the request to open a list of files, and the search term used
        to find them, if any