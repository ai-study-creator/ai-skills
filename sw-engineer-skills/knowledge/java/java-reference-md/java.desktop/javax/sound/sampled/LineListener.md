Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Interface LineListener

All Superinterfaces:
:   `EventListener`

---

public interface LineListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Instances of classes that implement the `LineListener` interface can
register to receive events when a line's status changes.

Since:
:   1.3

See Also:
:   * [`Line`](Line.md "interface in javax.sound.sampled")
    * [`Line.addLineListener(javax.sound.sampled.LineListener)`](Line.md#addLineListener(javax.sound.sampled.LineListener))
    * [`Line.removeLineListener(javax.sound.sampled.LineListener)`](Line.md#removeLineListener(javax.sound.sampled.LineListener))
    * [`LineEvent`](LineEvent.md "class in javax.sound.sampled")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `update(LineEvent event)`

  Informs the listener that a line's state has changed.

* ## Method Details

  + ### update

    void update([LineEvent](LineEvent.md "class in javax.sound.sampled") event)

    Informs the listener that a line's state has changed. The listener can
    then invoke `LineEvent` methods to obtain information about the
    event.

    Parameters:
    :   `event` - a line event that describes the change