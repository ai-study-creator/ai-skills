Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Interface Line

All Superinterfaces:
:   `AutoCloseable`

All Known Subinterfaces:
:   `Clip`, `DataLine`, `Mixer`, `Port`, `SourceDataLine`, `TargetDataLine`

---

public interface Line
extends [AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")

The `Line` interface represents a mono or multi-channel audio feed. A
line is an element of the digital audio "pipeline," such as a mixer, an input
or output port, or a data path into or out of a mixer.

A line can have controls, such as gain, pan, and reverb. The controls
themselves are instances of classes that extend the base [`Control`](Control.md "class in javax.sound.sampled")
class. The `Line` interface provides two accessor methods for obtaining
the line's controls: [`getControls`](#getControls()) returns the entire set,
and [`getControl`](#getControl(javax.sound.sampled.Control.Type)) returns a single control of specified
type.

Lines exist in various states at different times. When a line opens, it
reserves system resources for itself, and when it closes, these resources are
freed for other objects or applications. The [`isOpen()`](#isOpen()) method lets
you discover whether a line is open or closed. An open line need not be
processing data, however. Such processing is typically initiated by
subinterface methods such as
[`SourceDataLine.write`](SourceDataLine.md#write(byte%5B%5D,int,int)) and
[`TargetDataLine.read`](TargetDataLine.md#read(byte%5B%5D,int,int)).

You can register an object to receive notifications whenever the line's state
changes. The object must implement the [`LineListener`](LineListener.md "interface in javax.sound.sampled") interface, which
consists of the single method [`update`](LineListener.md#update(javax.sound.sampled.LineEvent)). This method
will be invoked when a line opens and closes (and, if it's a [`DataLine`](DataLine.md "interface in javax.sound.sampled")
, when it starts and stops).

An object can be registered to listen to multiple lines. The event it
receives in its `update` method will specify which line created the
event, what type of event it was (`OPEN`, `CLOSE`, `START`,
or `STOP`), and how many sample frames the line had processed at the
time the event occurred.

Certain line operations, such as open and close, can generate security
exceptions if invoked by unprivileged code when the line is a shared audio
resource.

Since:
:   1.3

See Also:
:   * [`LineEvent`](LineEvent.md "class in javax.sound.sampled")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static class`

  `Line.Info`

  A `Line.Info` object contains information about a line.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addLineListener(LineListener listener)`

  Adds a listener to this line.

  `void`

  `close()`

  Closes the line, indicating that any system resources in use by the line
  can be released.

  `Control`

  `getControl(Control.Type control)`

  Obtains a control of the specified type, if there is any.

  `Control[]`

  `getControls()`

  Obtains the set of controls associated with this line.

  `Line.Info`

  `getLineInfo()`

  Obtains the `Line.Info` object describing this line.

  `boolean`

  `isControlSupported(Control.Type control)`

  Indicates whether the line supports a control of the specified type.

  `boolean`

  `isOpen()`

  Indicates whether the line is open, meaning that it has reserved system
  resources and is operational, although it might not currently be playing
  or capturing sound.

  `void`

  `open()`

  Opens the line, indicating that it should acquire any required system
  resources and become operational.

  `void`

  `removeLineListener(LineListener listener)`

  Removes the specified listener from this line's list of listeners.

* ## Method Details

  + ### getLineInfo

    [Line.Info](Line.Info.md "class in javax.sound.sampled") getLineInfo()

    Obtains the `Line.Info` object describing this line.

    Returns:
    :   description of the line
  + ### open

    void open()
    throws [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

    Opens the line, indicating that it should acquire any required system
    resources and become operational. If this operation succeeds, the line is
    marked as open, and an `OPEN` event is dispatched to the line's
    listeners.

    Note that some lines, once closed, cannot be reopened. Attempts to reopen
    such a line will always result in an `LineUnavailableException`.

    Some types of lines have configurable properties that may affect resource
    allocation. For example, a `DataLine` must be opened with a
    particular format and buffer size. Such lines should provide a mechanism
    for configuring these properties, such as an additional `open`
    method or methods which allow an application to specify the desired
    settings.

    This method takes no arguments, and opens the line with the current
    settings. For [`SourceDataLine`](SourceDataLine.md "interface in javax.sound.sampled") and [`TargetDataLine`](TargetDataLine.md "interface in javax.sound.sampled") objects,
    this means that the line is opened with default settings. For a
    [`Clip`](Clip.md "interface in javax.sound.sampled"), however, the buffer size is determined when data is loaded.
    Since this method does not allow the application to specify any data to
    load, an `IllegalArgumentException` is thrown. Therefore, you
    should instead use one of the `open` methods provided in the
    `Clip` interface to load data into the `Clip`.

    For `DataLine`'s, if the `DataLine.Info` object which was
    used to retrieve the line, specifies at least one fully qualified audio
    format, the last one will be used as the default format.

    Throws:
    :   `IllegalArgumentException` - if this method is called on a Clip
        instance
    :   `LineUnavailableException` - if the line cannot be opened due to
        resource restrictions
    :   `SecurityException` - if the line cannot be opened due to security
        restrictions

    See Also:
    :   - [`close()`](#close())
        - [`isOpen()`](#isOpen())
        - [`LineEvent`](LineEvent.md "class in javax.sound.sampled")
        - [`DataLine`](DataLine.md "interface in javax.sound.sampled")
        - [`Clip.open(AudioFormat, byte[], int, int)`](Clip.md#open(javax.sound.sampled.AudioFormat,byte%5B%5D,int,int))
        - [`Clip.open(AudioInputStream)`](Clip.md#open(javax.sound.sampled.AudioInputStream))
  + ### close

    void close()

    Closes the line, indicating that any system resources in use by the line
    can be released. If this operation succeeds, the line is marked closed
    and a `CLOSE` event is dispatched to the line's listeners.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Throws:
    :   `SecurityException` - if the line cannot be closed due to security
        restrictions

    See Also:
    :   - [`open()`](#open())
        - [`isOpen()`](#isOpen())
        - [`LineEvent`](LineEvent.md "class in javax.sound.sampled")
  + ### isOpen

    boolean isOpen()

    Indicates whether the line is open, meaning that it has reserved system
    resources and is operational, although it might not currently be playing
    or capturing sound.

    Returns:
    :   `true` if the line is open, otherwise `false`

    See Also:
    :   - [`open()`](#open())
        - [`close()`](#close())
  + ### getControls

    [Control](Control.md "class in javax.sound.sampled")[] getControls()

    Obtains the set of controls associated with this line. Some controls may
    only be available when the line is open. If there are no controls, this
    method returns an array of length 0.

    Returns:
    :   the array of controls

    See Also:
    :   - [`getControl(javax.sound.sampled.Control.Type)`](#getControl(javax.sound.sampled.Control.Type))
  + ### isControlSupported

    boolean isControlSupported([Control.Type](Control.Type.md "class in javax.sound.sampled") control)

    Indicates whether the line supports a control of the specified type. Some
    controls may only be available when the line is open.

    Parameters:
    :   `control` - the type of the control for which support is queried

    Returns:
    :   `true` if at least one control of the specified type is
        supported, otherwise `false`
  + ### getControl

    [Control](Control.md "class in javax.sound.sampled") getControl([Control.Type](Control.Type.md "class in javax.sound.sampled") control)

    Obtains a control of the specified type, if there is any. Some controls
    may only be available when the line is open.

    Parameters:
    :   `control` - the type of the requested control

    Returns:
    :   a control of the specified type

    Throws:
    :   `IllegalArgumentException` - if a control of the specified type is
        not supported

    See Also:
    :   - [`getControls()`](#getControls())
        - [`isControlSupported(Control.Type control)`](#isControlSupported(javax.sound.sampled.Control.Type))
  + ### addLineListener

    void addLineListener([LineListener](LineListener.md "interface in javax.sound.sampled") listener)

    Adds a listener to this line. Whenever the line's status changes, the
    listener's `update()` method is called with a `LineEvent`
    object that describes the change.

    Parameters:
    :   `listener` - the object to add as a listener to this line

    See Also:
    :   - [`removeLineListener(javax.sound.sampled.LineListener)`](#removeLineListener(javax.sound.sampled.LineListener))
        - [`LineListener.update(javax.sound.sampled.LineEvent)`](LineListener.md#update(javax.sound.sampled.LineEvent))
        - [`LineEvent`](LineEvent.md "class in javax.sound.sampled")
  + ### removeLineListener

    void removeLineListener([LineListener](LineListener.md "interface in javax.sound.sampled") listener)

    Removes the specified listener from this line's list of listeners.

    Parameters:
    :   `listener` - listener to remove

    See Also:
    :   - [`addLineListener(javax.sound.sampled.LineListener)`](#addLineListener(javax.sound.sampled.LineListener))