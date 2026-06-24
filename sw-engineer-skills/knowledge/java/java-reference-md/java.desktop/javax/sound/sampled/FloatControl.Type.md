Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class FloatControl.Type

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.sampled.Control.Type](Control.Type.md "class in javax.sound.sampled")

javax.sound.sampled.FloatControl.Type

Enclosing class:
:   `FloatControl`

---

public static class FloatControl.Type
extends [Control.Type](Control.Type.md "class in javax.sound.sampled")

An instance of the `FloatControl.Type` inner class identifies one
kind of float control. Static instances are provided for the common
types.

Since:
:   1.3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final FloatControl.Type`

  `AUX_RETURN`

  Represents a control for the auxiliary return gain on a line.

  `static final FloatControl.Type`

  `AUX_SEND`

  Represents a control for the auxiliary send gain on a line.

  `static final FloatControl.Type`

  `BALANCE`

  Represents a control for the relative balance of a stereo signal
  between two stereo speakers.

  `static final FloatControl.Type`

  `MASTER_GAIN`

  Represents a control for the overall gain on a line.

  `static final FloatControl.Type`

  `PAN`

  Represents a control for the relative pan (left-right positioning) of
  the signal.

  `static final FloatControl.Type`

  `REVERB_RETURN`

  Represents a control for the post-reverb gain on a line.

  `static final FloatControl.Type`

  `REVERB_SEND`

  Represents a control for the pre-reverb gain on a line.

  `static final FloatControl.Type`

  `SAMPLE_RATE`

  Represents a control that changes the sample rate of audio playback.

  `static final FloatControl.Type`

  `VOLUME`

  Represents a control for the volume on a line.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Type(String name)`

  Constructs a new float control type.
* ## Method Summary

  ### Methods inherited from class javax.sound.sampled.[Control.Type](Control.Type.md "class in javax.sound.sampled")

  `equals, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MASTER\_GAIN

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") MASTER\_GAIN

    Represents a control for the overall gain on a line.

    Gain is a quantity in decibels (dB) that is added to the intrinsic
    decibel level of the audio signal--that is, the level of the signal
    before it is altered by the gain control. A positive gain amplifies
    (boosts) the signal's volume, and a negative gain attenuates(cuts)it.
    The gain setting defaults to a value of 0.0 dB, meaning the signal's
    loudness is unaffected. Note that gain measures dB, not amplitude.
    The relationship between a gain in decibels and the corresponding
    linear amplitude multiplier is:

    `linearScalar = pow(10.0, gainDB/20.0)`

    The `FloatControl` class has methods to impose a maximum and
    minimum allowable value for gain. However, because an audio signal
    might already be at a high amplitude, the maximum setting does not
    guarantee that the signal will be undistorted when the gain is
    applied to it (unless the maximum is zero or negative). To avoid
    numeric overflow from excessively large gain settings, a gain control
    can implement clipping, meaning that the signal's amplitude will be
    limited to the maximum value representable by its audio format,
    instead of wrapping around.

    These comments apply to gain controls in general, not just master
    gain controls. A line can have more than one gain control. For
    example, a mixer (which is itself a line) might have a master gain
    control, an auxiliary return control, a reverb return control, and,
    on each of its source lines, an individual aux send and reverb send.

    See Also:
    :   - [`AUX_SEND`](#AUX_SEND)
        - [`AUX_RETURN`](#AUX_RETURN)
        - [`REVERB_SEND`](#REVERB_SEND)
        - [`REVERB_RETURN`](#REVERB_RETURN)
        - [`VOLUME`](#VOLUME)
  + ### AUX\_SEND

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") AUX\_SEND

    Represents a control for the auxiliary send gain on a line.

    See Also:
    :   - [`MASTER_GAIN`](#MASTER_GAIN)
        - [`AUX_RETURN`](#AUX_RETURN)
  + ### AUX\_RETURN

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") AUX\_RETURN

    Represents a control for the auxiliary return gain on a line.

    See Also:
    :   - [`MASTER_GAIN`](#MASTER_GAIN)
        - [`AUX_SEND`](#AUX_SEND)
  + ### REVERB\_SEND

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") REVERB\_SEND

    Represents a control for the pre-reverb gain on a line. This control
    may be used to affect how much of a line's signal is directed to a
    mixer's internal reverberation unit.

    See Also:
    :   - [`MASTER_GAIN`](#MASTER_GAIN)
        - [`REVERB_RETURN`](#REVERB_RETURN)
        - [`EnumControl.Type.REVERB`](EnumControl.Type.md#REVERB)
  + ### REVERB\_RETURN

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") REVERB\_RETURN

    Represents a control for the post-reverb gain on a line. This control
    may be used to control the relative amplitude of the signal returned
    from an internal reverberation unit.

    See Also:
    :   - [`MASTER_GAIN`](#MASTER_GAIN)
        - [`REVERB_SEND`](#REVERB_SEND)
  + ### VOLUME

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") VOLUME

    Represents a control for the volume on a line.
  + ### PAN

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") PAN

    Represents a control for the relative pan (left-right positioning) of
    the signal. The signal may be mono; the pan setting affects how it is
    distributed by the mixer in a stereo mix. The valid range of values
    is -1.0 (left channel only) to 1.0 (right channel only). The default
    is 0.0 (centered).

    See Also:
    :   - [`BALANCE`](#BALANCE)
  + ### BALANCE

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") BALANCE

    Represents a control for the relative balance of a stereo signal
    between two stereo speakers. The valid range of values is -1.0 (left
    channel only) to 1.0 (right channel only). The default is 0.0
    (centered).

    See Also:
    :   - [`PAN`](#PAN)
  + ### SAMPLE\_RATE

    public static final [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled") SAMPLE\_RATE

    Represents a control that changes the sample rate of audio playback.
    The net effect of changing the sample rate depends on the
    relationship between the media's natural rate and the rate that is
    set via this control. The natural rate is the sample rate that is
    specified in the data line's `AudioFormat` object. For example,
    if the natural rate of the media is 11025 samples per second and the
    sample rate is set to 22050 samples per second, the media will play
    back at twice the normal speed.

    Changing the sample rate with this control does not affect the data
    line's audio format. Also note that whenever you change a sound's
    sample rate, a change in the sound's pitch results. For example,
    doubling the sample rate has the effect of doubling the frequencies
    in the sound's spectrum, which raises the pitch by an octave.
* ## Constructor Details

  + ### Type

    protected Type([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a new float control type.

    Parameters:
    :   `name` - the name of the new float control type