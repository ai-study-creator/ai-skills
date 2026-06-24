Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface ControllerEventListener

All Superinterfaces:
:   `EventListener`

---

public interface ControllerEventListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The `ControllerEventListener` interface should be implemented by
classes whose instances need to be notified when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has
processed a requested type of MIDI control-change event. To register a
`ControllerEventListener` object to receive such notifications, invoke
the
[`addControllerEventListener`](Sequencer.md#addControllerEventListener(javax.sound.midi.ControllerEventListener,int%5B%5D)) method of `Sequencer`, specifying the types
of MIDI controllers about which you are interested in getting control-change
notifications.

See Also:
:   * [`MidiChannel.controlChange(int, int)`](MidiChannel.md#controlChange(int,int))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `controlChange(ShortMessage event)`

  Invoked when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has encountered and processed a
  control-change event of interest to this listener.

* ## Method Details

  + ### controlChange

    void controlChange([ShortMessage](ShortMessage.md "class in javax.sound.midi") event)

    Invoked when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has encountered and processed a
    control-change event of interest to this listener. The event passed in is
    a `ShortMessage` whose first data byte indicates the controller
    number and whose second data byte is the value to which the controller
    was set.

    Parameters:
    :   `event` - the control-change event that the sequencer encountered in
        the sequence it is processing

    See Also:
    :   - [`Sequencer.addControllerEventListener(ControllerEventListener, int[])`](Sequencer.md#addControllerEventListener(javax.sound.midi.ControllerEventListener,int%5B%5D))
        - [`MidiChannel.controlChange(int, int)`](MidiChannel.md#controlChange(int,int))
        - [`ShortMessage.getData1()`](ShortMessage.md#getData1())
        - [`ShortMessage.getData2()`](ShortMessage.md#getData2())