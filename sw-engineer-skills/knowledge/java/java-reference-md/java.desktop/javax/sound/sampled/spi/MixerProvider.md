Module [java.desktop](../../../../module-summary.md)

Package [javax.sound.sampled.spi](package-summary.md)

# Class MixerProvider

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.spi.MixerProvider

---

public abstract class MixerProvider
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A provider or factory for a particular mixer type. This mechanism allows the
implementation to determine how resources are managed in creation /
management of a mixer.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MixerProvider()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Mixer`

  `getMixer(Mixer.Info info)`

  Obtains an instance of the mixer represented by the info object.

  `abstract Mixer.Info[]`

  `getMixerInfo()`

  Obtains the set of info objects representing the mixer or mixers provided
  by this MixerProvider.

  `boolean`

  `isMixerSupported(Mixer.Info info)`

  Indicates whether the mixer provider supports the mixer represented by
  the specified mixer info object.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MixerProvider

    protected MixerProvider()

    Constructor for subclasses to call.
* ## Method Details

  + ### isMixerSupported

    public boolean isMixerSupported([Mixer.Info](../Mixer.Info.md "class in javax.sound.sampled") info)

    Indicates whether the mixer provider supports the mixer represented by
    the specified mixer info object.

    The full set of mixer info objects that represent the mixers supported by
    this `MixerProvider` may be obtained through the
    `getMixerInfo` method.

    Parameters:
    :   `info` - an info object that describes the mixer for which support is
        queried

    Returns:
    :   `true` if the specified mixer is supported, otherwise
        `false`

    Throws:
    :   `NullPointerException` - if `info` is `null`

    See Also:
    :   - [`getMixerInfo()`](#getMixerInfo())
  + ### getMixerInfo

    public abstract [Mixer.Info](../Mixer.Info.md "class in javax.sound.sampled")[] getMixerInfo()

    Obtains the set of info objects representing the mixer or mixers provided
    by this MixerProvider.

    The `isMixerSupported` method returns `true` for all the info
    objects returned by this method. The corresponding mixer instances for
    the info objects are returned by the `getMixer` method.

    Returns:
    :   a set of mixer info objects

    See Also:
    :   - [`getMixer(Mixer.Info)`](#getMixer(javax.sound.sampled.Mixer.Info))
        - [`isMixerSupported(Mixer.Info)`](#isMixerSupported(javax.sound.sampled.Mixer.Info))
  + ### getMixer

    public abstract [Mixer](../Mixer.md "interface in javax.sound.sampled") getMixer([Mixer.Info](../Mixer.Info.md "class in javax.sound.sampled") info)

    Obtains an instance of the mixer represented by the info object. If
    `null` is passed, then the default mixer will be returned.

    The full set of the mixer info objects that represent the mixers
    supported by this `MixerProvider` may be obtained through the
    `getMixerInfo` method. Use the `isMixerSupported` method to
    test whether this `MixerProvider` supports a particular mixer.

    Parameters:
    :   `info` - an info object that describes the desired mixer, or
        `null` for the default mixer

    Returns:
    :   mixer instance

    Throws:
    :   `IllegalArgumentException` - if the info object specified does not
        match the info object for a mixer supported by this
        `MixerProvider`, or if this `MixerProvider` does not
        have default mixer, but default mixer has been requested

    See Also:
    :   - [`getMixerInfo()`](#getMixerInfo())
        - [`isMixerSupported(Mixer.Info)`](#isMixerSupported(javax.sound.sampled.Mixer.Info))