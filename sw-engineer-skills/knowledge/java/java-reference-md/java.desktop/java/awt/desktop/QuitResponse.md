Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface QuitResponse

---

public interface QuitResponse

Used to respond to a request to quit the application.

Since:
:   9

See Also:
:   * [`Desktop.setQuitHandler(QuitHandler)`](../Desktop.md#setQuitHandler(java.awt.desktop.QuitHandler))
    * [`QuitHandler`](QuitHandler.md "interface in java.awt.desktop")
    * [`Desktop.setQuitStrategy(QuitStrategy)`](../Desktop.md#setQuitStrategy(java.awt.desktop.QuitStrategy))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `cancelQuit()`

  Notifies the external quit requester that the user has explicitly
  canceled the pending quit, and leaves the application running.

  `void`

  `performQuit()`

  Notifies the external quit requester that the quit will proceed, and
  performs the default [`QuitStrategy`](QuitStrategy.md "enum class in java.awt.desktop").

* ## Method Details

  + ### performQuit

    void performQuit()

    Notifies the external quit requester that the quit will proceed, and
    performs the default [`QuitStrategy`](QuitStrategy.md "enum class in java.awt.desktop").
  + ### cancelQuit

    void cancelQuit()

    Notifies the external quit requester that the user has explicitly
    canceled the pending quit, and leaves the application running.

    **Note: this will cancel a pending log-out, restart, or shutdown.**