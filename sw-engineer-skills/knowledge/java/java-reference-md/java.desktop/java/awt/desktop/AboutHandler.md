Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface AboutHandler

---

public interface AboutHandler

An implementer receives notification when the app is asked to show its about
dialog.

Since:
:   9

See Also:
:   * [`Desktop.setAboutHandler(AboutHandler)`](../Desktop.md#setAboutHandler(java.awt.desktop.AboutHandler))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `handleAbout(AboutEvent e)`

  Called when the application is asked to show its about dialog.

* ## Method Details

  + ### handleAbout

    void handleAbout([AboutEvent](AboutEvent.md "class in java.awt.desktop") e)

    Called when the application is asked to show its about dialog.

    Parameters:
    :   `e` - the request to show the about dialog