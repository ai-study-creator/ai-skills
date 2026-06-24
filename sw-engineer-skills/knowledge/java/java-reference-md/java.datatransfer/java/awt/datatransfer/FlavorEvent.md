Module [java.datatransfer](../../../module-summary.md)

Package [java.awt.datatransfer](package-summary.md)

# Class FlavorEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

java.awt.datatransfer.FlavorEvent

All Implemented Interfaces:
:   `Serializable`

---

public class FlavorEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

`FlavorEvent` is used to notify interested parties that available
[`DataFlavor`](DataFlavor.md "class in java.awt.datatransfer")s have changed in the [`Clipboard`](Clipboard.md "class in java.awt.datatransfer") (the event source).

Since:
:   1.5

See Also:
:   * [`FlavorListener`](FlavorListener.md "interface in java.awt.datatransfer")
    * [Serialized Form](../../../../serialized-form.md#java.awt.datatransfer.FlavorEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FlavorEvent(Clipboard source)`

  Constructs a `FlavorEvent` object.
* ## Method Summary

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FlavorEvent

    public FlavorEvent([Clipboard](Clipboard.md "class in java.awt.datatransfer") source)

    Constructs a `FlavorEvent` object.

    Parameters:
    :   `source` - the `Clipboard` that is the source of the event

    Throws:
    :   `IllegalArgumentException` - if the `source` is `null`