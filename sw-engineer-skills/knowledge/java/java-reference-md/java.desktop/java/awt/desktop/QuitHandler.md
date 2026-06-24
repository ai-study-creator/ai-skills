Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface QuitHandler

---

public interface QuitHandler

An implementor determines if requests to quit this application should proceed
or cancel.

Since:
:   9

See Also:
:   * [`Desktop.setQuitHandler(QuitHandler)`](../Desktop.md#setQuitHandler(java.awt.desktop.QuitHandler))
    * [`Desktop.setQuitStrategy(QuitStrategy)`](../Desktop.md#setQuitStrategy(java.awt.desktop.QuitStrategy))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `handleQuitRequestWith(QuitEvent e,
  QuitResponse response)`

  Invoked when the application is asked to quit.

* ## Method Details

  + ### handleQuitRequestWith

    void handleQuitRequestWith([QuitEvent](QuitEvent.md "class in java.awt.desktop") e,
    [QuitResponse](QuitResponse.md "interface in java.awt.desktop") response)

    Invoked when the application is asked to quit.

    Implementors must call either [`QuitResponse.cancelQuit()`](QuitResponse.md#cancelQuit()),
    [`QuitResponse.performQuit()`](QuitResponse.md#performQuit()), or ensure the application terminates.
    The process (or log-out) requesting this app to quit will be blocked
    until the [`QuitResponse`](QuitResponse.md "interface in java.awt.desktop") is handled. Apps that require complex UI
    to shutdown may call the [`QuitResponse`](QuitResponse.md "interface in java.awt.desktop") from any thread. Your app
    may be asked to quit multiple times before you have responded to the
    initial request. This handler is called each time a quit is requested,
    and the same [`QuitResponse`](QuitResponse.md "interface in java.awt.desktop") object is passed until it is handled.
    Once used, the [`QuitResponse`](QuitResponse.md "interface in java.awt.desktop") cannot be used again to change the
    decision.

    Parameters:
    :   `e` - the request to quit this application
    :   `response` - the one-shot response object used to cancel or proceed
        with the quit action