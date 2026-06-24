Module [java.desktop](../../module-summary.md)

Package [java.applet](package-summary.md)

# Interface AudioClip

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public interface AudioClip

Deprecated, for removal: This API element is subject to removal in a future version.

The Applet API is deprecated, no replacement.

The `AudioClip` interface is a simple abstraction for playing a sound
clip. Multiple `AudioClip` items can be playing at the same time, and
the resulting sound is mixed together to produce a composite.

Since:
:   1.0

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `loop()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Starts playing this audio clip in a loop.

  `void`

  `play()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Starts playing this audio clip.

  `void`

  `stop()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Stops playing this audio clip.

* ## Method Details

  + ### play

    void play()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Starts playing this audio clip. Each time this method is called, the clip
    is restarted from the beginning.
  + ### loop

    void loop()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Starts playing this audio clip in a loop.
  + ### stop

    void stop()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Stops playing this audio clip.