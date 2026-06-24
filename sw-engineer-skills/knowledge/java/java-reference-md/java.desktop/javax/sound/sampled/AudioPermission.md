Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class AudioPermission

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.security.Permission](../../../../java.base/java/security/Permission.md "class in java.security")

[java.security.BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

javax.sound.sampled.AudioPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public class AudioPermission
extends [BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

The `AudioPermission` class represents access rights to the audio
system resources. An `AudioPermission` contains a target name but no
actions list; you either have the named permission or you don't.

The target name is the name of the audio permission (see the table below).
The names follow the hierarchical property-naming convention. Also, an
asterisk can be used to represent all the audio permissions.

The following table lists the possible `AudioPermission` target names.
For each name, the table provides a description of exactly what that
permission allows, as well as a discussion of the risks of granting code the
permission.

Permission target name, what the permission allows, and associated
risks

| Permission Target Name What the Permission Allows Risks of Allowing this Permission | | |
| --- | --- | --- |
| play Audio playback through the audio device or devices on the system. Allows the application to obtain and manipulate lines and mixers for audio playback (rendering). In some cases use of this permission may affect other applications because the audio from one line may be mixed with other audio being played on the system, or because manipulation of a mixer affects the audio for all lines using that mixer.|  |  |  | | --- | --- | --- | | record Audio recording through the audio device or devices on the system. Allows the application to obtain and manipulate lines and mixers for audio recording (capture). In some cases use of this permission may affect other applications because manipulation of a mixer affects the audio for all lines using that mixer. This permission can enable an applet or application to eavesdrop on a user. | | | | | |

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.sound.sampled.AudioPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AudioPermission(String name)`

  Creates a new `AudioPermission` object that has the specified
  symbolic name, such as "play" or "record".

  `AudioPermission(String name,
  String actions)`

  Creates a new `AudioPermission` object that has the specified
  symbolic name, such as "play" or "record".
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../../../java.base/java/security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AudioPermission

    public AudioPermission([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a new `AudioPermission` object that has the specified
    symbolic name, such as "play" or "record". An asterisk can be used to
    indicate all audio permissions.

    Parameters:
    :   `name` - the name of the new `AudioPermission`

    Throws:
    :   `NullPointerException` - if `name` is `null`
    :   `IllegalArgumentException` - if `name` is empty
  + ### AudioPermission

    public AudioPermission([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") actions)

    Creates a new `AudioPermission` object that has the specified
    symbolic name, such as "play" or "record". The `actions` parameter
    is currently unused and should be `null`.

    Parameters:
    :   `name` - the name of the new `AudioPermission`
    :   `actions` - (unused; should be `null`)

    Throws:
    :   `NullPointerException` - if `name` is `null`
    :   `IllegalArgumentException` - if `name` is empty