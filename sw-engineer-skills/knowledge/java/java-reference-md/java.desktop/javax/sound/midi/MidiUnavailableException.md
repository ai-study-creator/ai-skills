Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class MidiUnavailableException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.sound.midi.MidiUnavailableException

All Implemented Interfaces:
:   `Serializable`

---

public class MidiUnavailableException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

A `MidiUnavailableException` is thrown when a requested MIDI component
cannot be opened or created because it is unavailable. This often occurs when
a device is in use by another application. More generally, it can occur when
there is a finite number of a certain kind of resource that can be used for
some purpose, and all of them are already in use (perhaps all by this
application). For an example of the latter case, see the
[`setReceiver`](Transmitter.md#setReceiver(javax.sound.midi.Receiver)) method of
`Transmitter`.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.sound.midi.MidiUnavailableException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MidiUnavailableException()`

  Constructs a `MidiUnavailableException` that has `null` as
  its error detail message.

  `MidiUnavailableException(String message)`

  Constructs a `MidiUnavailableException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MidiUnavailableException

    public MidiUnavailableException()

    Constructs a `MidiUnavailableException` that has `null` as
    its error detail message.
  + ### MidiUnavailableException

    public MidiUnavailableException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a `MidiUnavailableException` with the specified detail
    message.

    Parameters:
    :   `message` - the string to display as an error detail message