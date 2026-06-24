Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface AdjustmentListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`

---

public interface AdjustmentListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving adjustment events.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `adjustmentValueChanged(AdjustmentEvent e)`

  Invoked when the value of the adjustable has changed.

* ## Method Details

  + ### adjustmentValueChanged

    void adjustmentValueChanged([AdjustmentEvent](AdjustmentEvent.md "class in java.awt.event") e)

    Invoked when the value of the adjustable has changed.

    Parameters:
    :   `e` - the event to be processed