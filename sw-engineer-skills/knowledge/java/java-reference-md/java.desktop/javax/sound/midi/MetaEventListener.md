Module [java.desktop](../../../module-summary.md)

Package [javax.sound.midi](package-summary.md)

# Interface MetaEventListener

All Superinterfaces:
:   `EventListener`

---

public interface MetaEventListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The `MetaEventListener` interface should be implemented by classes
whose instances need to be notified when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has processed a
[`MetaMessage`](MetaMessage.md "class in javax.sound.midi"). To register a `MetaEventListener` object to
receive such notifications, pass it as the argument to the
[`addMetaEventListener`](Sequencer.md#addMetaEventListener(javax.sound.midi.MetaEventListener)) method of `Sequencer`.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `meta(MetaMessage meta)`

  Invoked when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has encountered and processed a
  `MetaMessage` in the `Sequence` it is processing.

* ## Method Details

  + ### meta

    void meta([MetaMessage](MetaMessage.md "class in javax.sound.midi") meta)

    Invoked when a [`Sequencer`](Sequencer.md "interface in javax.sound.midi") has encountered and processed a
    `MetaMessage` in the `Sequence` it is processing.

    Parameters:
    :   `meta` - the meta-message that the sequencer encountered