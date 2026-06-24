Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface PrintFilesHandler

---

public interface PrintFilesHandler

An implementor can respond to requests to print documents that the app has
been registered to handle.

Since:
:   9

See Also:
:   * [`Desktop.setPrintFileHandler(PrintFilesHandler)`](../Desktop.md#setPrintFileHandler(java.awt.desktop.PrintFilesHandler))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `printFiles(PrintFilesEvent e)`

  Called when the application is asked to print a list of files.

* ## Method Details

  + ### printFiles

    void printFiles([PrintFilesEvent](PrintFilesEvent.md "class in java.awt.desktop") e)

    Called when the application is asked to print a list of files.

    Parameters:
    :   `e` - the request to print a list of files