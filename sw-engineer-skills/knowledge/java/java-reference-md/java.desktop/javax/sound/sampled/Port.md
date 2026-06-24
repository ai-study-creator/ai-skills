Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Interface Port

All Superinterfaces:
:   `AutoCloseable`, `Line`

---

public interface Port
extends [Line](Line.md "interface in javax.sound.sampled")

Ports are simple lines for input or output of audio to or from audio devices.
Common examples of ports that act as source lines (mixer inputs) include the
microphone, line input, and CD-ROM drive. Ports that act as target lines
(mixer outputs) include the speaker, headphone, and line output. You can
access port using a [`Port.Info`](Port.Info.md "class in javax.sound.sampled") object.

Since:
:   1.3

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static class`

  `Port.Info`

  The `Port.Info` class extends `Line.Info` with additional
  information specific to ports, including the port's name and whether it
  is a source or a target for its mixer.
* ## Method Summary

  ### Methods inherited from interface javax.sound.sampled.[Line](Line.md "interface in javax.sound.sampled")

  `addLineListener, close, getControl, getControls, getLineInfo, isControlSupported, isOpen, open, removeLineListener`