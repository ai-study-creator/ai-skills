Module [java.desktop](../../../module-summary.md)

Package [java.awt.desktop](package-summary.md)

# Interface SystemSleepListener

All Superinterfaces:
:   `EventListener`, `SystemEventListener`

---

public interface SystemSleepListener
extends [SystemEventListener](SystemEventListener.md "interface in java.awt.desktop")

Implementors receive notification as the system is entering sleep, and after
the system wakes.

This notification is useful for disconnecting from network services prior to
sleep, or re-establishing a connection if the network configuration has
changed during sleep.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `systemAboutToSleep(SystemSleepEvent e)`

  Called when the system is about to sleep.

  `void`

  `systemAwoke(SystemSleepEvent e)`

  Called after the system has awoken from sleeping.

* ## Method Details

  + ### systemAboutToSleep

    void systemAboutToSleep([SystemSleepEvent](SystemSleepEvent.md "class in java.awt.desktop") e)

    Called when the system is about to sleep. Note: This message may not be
    delivered prior to the actual system sleep, and may be processed after
    the corresponding wake has occurred.

    Parameters:
    :   `e` - the system sleep event
  + ### systemAwoke

    void systemAwoke([SystemSleepEvent](SystemSleepEvent.md "class in java.awt.desktop") e)

    Called after the system has awoken from sleeping.

    Parameters:
    :   `e` - the system sleep event