Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface ScreenSleepListener

All Superinterfaces:
:   `EventListener`, `SystemEventListener`

---

public interface ScreenSleepListener
extends [SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")

Implementors receive notification when the displays attached to the system
have entered power save sleep.

This notification is useful for discontinuing a costly animation, or
indicating that the user is no longer present on a network service.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `screenAboutToSleep(ScreenSleepEvent e)`

  Called when the system displays have entered power save sleep.

  `void`

  `screenAwoke(ScreenSleepEvent e)`

  Called when the system displays have awoken from power save sleep.

* ## Method Details

  + ### screenAboutToSleep

    void screenAboutToSleep([ScreenSleepEvent](ScreenSleepEvent.md "class in java.awt.desktop") e)

    Called when the system displays have entered power save sleep.

    Parameters:
    :   `e` - the screen sleep event
  + ### screenAwoke

    void screenAwoke([ScreenSleepEvent](ScreenSleepEvent.md "class in java.awt.desktop") e)

    Called when the system displays have awoken from power save sleep.

    Parameters:
    :   `e` - the screen sleep event