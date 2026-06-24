Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Interface FlavorListener

All Superinterfaces:
:   `EventListener`

---

public interface FlavorListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Defines an object which listens for [`FlavorEvent`](FlavorEvent.md "class in java.awt.datatransfer")s.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `flavorsChanged(FlavorEvent e)`

  Invoked when the target [`Clipboard`](Clipboard.md "class in java.awt.datatransfer") of the listener has changed its
  available [`DataFlavor`](DataFlavor.md "class in java.awt.datatransfer")s.

* ## Method Details

  + ### flavorsChanged

    void flavorsChanged([FlavorEvent](FlavorEvent.md "class in java.awt.datatransfer") e)

    Invoked when the target [`Clipboard`](Clipboard.md "class in java.awt.datatransfer") of the listener has changed its
    available [`DataFlavor`](DataFlavor.md "class in java.awt.datatransfer")s.

    Some notifications may be redundant — they are not caused by a
    change of the set of DataFlavors available on the clipboard. For example,
    if the clipboard subsystem supposes that the system clipboard's contents
    has been changed but it can't ascertain whether its DataFlavors have been
    changed because of some exceptional condition when accessing the
    clipboard, the notification is sent to ensure from omitting a significant
    notification. Ordinarily, those redundant notifications should be
    occasional.

    Parameters:
    :   `e` - a `FlavorEvent` object