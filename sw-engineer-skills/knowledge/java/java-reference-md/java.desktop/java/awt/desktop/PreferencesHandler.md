Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface PreferencesHandler

---

public interface PreferencesHandler

An implementor is notified when the app is asked to show its preferences UI.

Since:
:   9

See Also:
:   * [`Desktop.setPreferencesHandler(PreferencesHandler)`](../Desktop.md#setPreferencesHandler(java.awt.desktop.PreferencesHandler))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `handlePreferences(PreferencesEvent e)`

  Called when the app is asked to show its preferences UI.

* ## Method Details

  + ### handlePreferences

    void handlePreferences([PreferencesEvent](PreferencesEvent.md "class in java.awt.desktop") e)

    Called when the app is asked to show its preferences UI.

    Parameters:
    :   `e` - the request to show preferences