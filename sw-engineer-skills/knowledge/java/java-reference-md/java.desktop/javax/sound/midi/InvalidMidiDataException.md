Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Class InvalidMidiDataException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.sound.midi.InvalidMidiDataException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidMidiDataException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

An `InvalidMidiDataException` indicates that inappropriate MIDI data
was encountered. This often means that the data is invalid in and of itself,
from the perspective of the MIDI specification. An example would be an
undefined status byte. However, the exception might simply mean that the data
was invalid in the context it was used, or that the object to which the data
was given was unable to parse or use it. For example, a file reader might not
be able to parse a Type 2 MIDI file, even though that format is defined in
the MIDI specification.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.sound.midi.InvalidMidiDataException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidMidiDataException()`

  Constructs an `InvalidMidiDataException` with `null` for its
  error detail message.

  `InvalidMidiDataException(String message)`

  Constructs an `InvalidMidiDataException` with the specified detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidMidiDataException

    public InvalidMidiDataException()

    Constructs an `InvalidMidiDataException` with `null` for its
    error detail message.
  + ### InvalidMidiDataException

    public InvalidMidiDataException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an `InvalidMidiDataException` with the specified detail
    message.

    Parameters:
    :   `message` - the string to display as an error detail message