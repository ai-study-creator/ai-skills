Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface OpenURIHandler

---

public interface OpenURIHandler

An implementor is notified when the application is asked to open a URI.

Since:
:   9

See Also:
:   * [`Desktop.setOpenURIHandler(OpenURIHandler)`](../Desktop.md#setOpenURIHandler(java.awt.desktop.OpenURIHandler))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `openURI(OpenURIEvent e)`

  Called when the application is asked to open a `URI`.

* ## Method Details

  + ### openURI

    void openURI([OpenURIEvent](OpenURIEvent.md "class in java.awt.desktop") e)

    Called when the application is asked to open a `URI`.

    Parameters:
    :   `e` - the request to open a `URI`