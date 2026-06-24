Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Robot

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Robot

---

public class Robot
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

This class is used to generate native system input events
for the purposes of test automation, self-running demos, and
other applications where control of the mouse and keyboard
is needed. The primary purpose of Robot is to facilitate
automated testing of Java platform implementations.

Using the class to generate input events differs from posting
events to the AWT event queue or AWT components in that the
events are generated in the platform's native input
queue. For example, `Robot.mouseMove` will actually move
the mouse cursor instead of just generating mouse move events.

Note that some platforms require special privileges or extensions
to access low-level input control. If the current platform configuration
does not allow input control, an `AWTException` will be thrown
when trying to construct Robot objects. For example, X-Window systems
will throw the exception if the XTEST 2.2 standard extension is not supported
(or not enabled) by the X server.

Applications that use Robot for purposes other than self-testing should
handle these error conditions gracefully.

Platforms and desktop environments may impose restrictions or limitations
on the access required to implement all functionality in the Robot class.
For example:

* preventing access to the contents of any part of a desktop
  or Window on the desktop that is not owned by the running application.
* treating window decorations as non-owned content.
* ignoring or limiting specific requests to manipulate windows.
* ignoring or limiting specific requests for Robot generated (synthesized)
  events related to keyboard and mouse etc.
* requiring specific or global permissions to any access to window
  contents, even application owned content,or to perform even limited
  synthesizing of events.

The Robot API specification requires that approvals for these be granted
for full operation.
If they are not granted, the API will be degraded as discussed here.
Relevant specific API methods may document more specific limitations
and requirements.
Depending on the policies of the desktop environment,
the approvals mentioned above may:

* be required every time
* or persistent for the lifetime of an application,
* or persistent across multiple user desktop sessions
* be fine-grained permissions
* be associated with a specific binary application,
  or a class of binary applications.

When such approvals need to given interactively, it may impede the normal
operation of the application until approved, and if approval is denied
or not possible, or cannot be made persistent then it will degrade
the functionality of this class and in turn any part of the operation
of the application which is dependent on it.

Since:
:   1.3

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Robot()`

  Constructs a Robot object in the coordinate system of the primary screen.

  `Robot(GraphicsDevice screen)`

  Creates a Robot for the given screen device.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `MultiResolutionImage`

  `createMultiResolutionScreenCapture(Rectangle screenRect)`

  Creates an image containing pixels read from the screen.

  `BufferedImage`

  `createScreenCapture(Rectangle screenRect)`

  Creates an image containing pixels read from the screen.

  `void`

  `delay(int ms)`

  Sleeps for the specified time.

  `int`

  `getAutoDelay()`

  Returns the number of milliseconds this Robot sleeps after generating an event.

  `Color`

  `getPixelColor(int x,
  int y)`

  Returns the color of a pixel at the given screen coordinates.

  `boolean`

  `isAutoWaitForIdle()`

  Returns whether this Robot automatically invokes `waitForIdle`
  after generating an event.

  `void`

  `keyPress(int keycode)`

  Presses a given key.

  `void`

  `keyRelease(int keycode)`

  Releases a given key.

  `void`

  `mouseMove(int x,
  int y)`

  Moves mouse pointer to given screen coordinates.

  `void`

  `mousePress(int buttons)`

  Presses one or more mouse buttons.

  `void`

  `mouseRelease(int buttons)`

  Releases one or more mouse buttons.

  `void`

  `mouseWheel(int wheelAmt)`

  Rotates the scroll wheel on wheel-equipped mice.

  `void`

  `setAutoDelay(int ms)`

  Sets the number of milliseconds this Robot sleeps after generating an event.

  `void`

  `setAutoWaitForIdle(boolean isOn)`

  Sets whether this Robot automatically invokes `waitForIdle`
  after generating an event.

  `String`

  `toString()`

  Returns a string representation of this Robot.

  `void`

  `waitForIdle()`

  Waits until all events currently on the event queue have been processed.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Robot

    public Robot()
    throws [AWTException](AWTException.md "class in java.awt")

    Constructs a Robot object in the coordinate system of the primary screen.

    Throws:
    :   `AWTException` - if the platform configuration does not allow
        low-level input control. This exception is always thrown when
        GraphicsEnvironment.isHeadless() returns true
    :   `SecurityException` - if `createRobot` permission is not granted

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### Robot

    public Robot([GraphicsDevice](GraphicsDevice.md "class in java.awt") screen)
    throws [AWTException](AWTException.md "class in java.awt")

    Creates a Robot for the given screen device. Coordinates passed
    to Robot method calls like mouseMove, getPixelColor and
    createScreenCapture will be interpreted as being in the same coordinate
    system as the specified screen. Note that depending on the platform
    configuration, multiple screens may either:
    - share the same coordinate system to form a combined virtual screen
    - use different coordinate systems to act as independent screens

    If screen devices are reconfigured such that the coordinate system is
    affected, the behavior of existing Robot objects is undefined.

    Parameters:
    :   `screen` - A screen GraphicsDevice indicating the coordinate
        system the Robot will operate in.

    Throws:
    :   `AWTException` - if the platform configuration does not allow
        low-level input control. This exception is always thrown when
        GraphicsEnvironment.isHeadless() returns true.
    :   `IllegalArgumentException` - if `screen` is not a screen
        GraphicsDevice.
    :   `SecurityException` - if `createRobot` permission is not granted

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
        - [`GraphicsDevice`](GraphicsDevice.md "class in java.awt")
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
* ## Method Details

  + ### mouseMove

    public void mouseMove(int x,
    int y)

    Moves mouse pointer to given screen coordinates.

    The mouse pointer may not visually move on some platforms,
    while the subsequent mousePress and mouseRelease can be
    delivered to the correct location

    Parameters:
    :   `x` - X position
    :   `y` - Y position
  + ### mousePress

    public void mousePress(int buttons)

    Presses one or more mouse buttons. The mouse buttons should
    be released using the [`mouseRelease(int)`](#mouseRelease(int)) method.

    Parameters:
    :   `buttons` - the Button mask; a combination of one or more
        mouse button masks.

        It is allowed to use only a combination of valid values as a `buttons` parameter.
        A valid combination consists of `InputEvent.BUTTON1_DOWN_MASK`,
        `InputEvent.BUTTON2_DOWN_MASK`, `InputEvent.BUTTON3_DOWN_MASK`
        and values returned by the
        [`InputEvent.getMaskForButton(button)`](event/InputEvent.md#getMaskForButton(int)) method.
        The valid combination also depends on a
        [`Toolkit.areExtraMouseButtonsEnabled()`](Toolkit.md#areExtraMouseButtonsEnabled()) value as follows:
        - If support for extended mouse buttons is
          [`disabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java
          then it is allowed to use only the following standard button masks:
          `InputEvent.BUTTON1_DOWN_MASK`, `InputEvent.BUTTON2_DOWN_MASK`,
          `InputEvent.BUTTON3_DOWN_MASK`.- If support for extended mouse buttons is
            [`enabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java
            then it is allowed to use the standard button masks
            and masks for existing extended mouse buttons, if the mouse has more then three buttons.
            In that way, it is allowed to use the button masks corresponding to the buttons
            in the range from 1 to [`MouseInfo.getNumberOfButtons()`](MouseInfo.md#getNumberOfButtons()).
              
            It is recommended to use the [`InputEvent.getMaskForButton(button)`](event/InputEvent.md#getMaskForButton(int))
            method to obtain the mask for any mouse button by its number.

        The following standard button masks are also accepted:
        - `InputEvent.BUTTON1_MASK`- `InputEvent.BUTTON2_MASK`- `InputEvent.BUTTON3_MASK`However, it is recommended to use `InputEvent.BUTTON1_DOWN_MASK`,
        `InputEvent.BUTTON2_DOWN_MASK`, `InputEvent.BUTTON3_DOWN_MASK` instead.
        Either extended `_DOWN_MASK` or old `_MASK` values
        should be used, but both those models should not be mixed.

    Throws:
    :   `IllegalArgumentException` - if the `buttons` mask contains the mask for extra mouse button
        and support for extended mouse buttons is [`disabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java
    :   `IllegalArgumentException` - if the `buttons` mask contains the mask for extra mouse button
        that does not exist on the mouse and support for extended mouse buttons is [`enabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java

    See Also:
    :   - [`mouseRelease(int)`](#mouseRelease(int))
        - [`InputEvent.getMaskForButton(int)`](event/InputEvent.md#getMaskForButton(int))
        - [`Toolkit.areExtraMouseButtonsEnabled()`](Toolkit.md#areExtraMouseButtonsEnabled())
        - [`MouseInfo.getNumberOfButtons()`](MouseInfo.md#getNumberOfButtons())
        - [`MouseEvent`](event/MouseEvent.md "class in java.awt.event")
  + ### mouseRelease

    public void mouseRelease(int buttons)

    Releases one or more mouse buttons.

    Parameters:
    :   `buttons` - the Button mask; a combination of one or more
        mouse button masks.

        It is allowed to use only a combination of valid values as a `buttons` parameter.
        A valid combination consists of `InputEvent.BUTTON1_DOWN_MASK`,
        `InputEvent.BUTTON2_DOWN_MASK`, `InputEvent.BUTTON3_DOWN_MASK`
        and values returned by the
        [`InputEvent.getMaskForButton(button)`](event/InputEvent.md#getMaskForButton(int)) method.
        The valid combination also depends on a
        [`Toolkit.areExtraMouseButtonsEnabled()`](Toolkit.md#areExtraMouseButtonsEnabled()) value as follows:
        - If the support for extended mouse buttons is
          [`disabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java
          then it is allowed to use only the following standard button masks:
          `InputEvent.BUTTON1_DOWN_MASK`, `InputEvent.BUTTON2_DOWN_MASK`,
          `InputEvent.BUTTON3_DOWN_MASK`.- If the support for extended mouse buttons is
            [`enabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java
            then it is allowed to use the standard button masks
            and masks for existing extended mouse buttons, if the mouse has more then three buttons.
            In that way, it is allowed to use the button masks corresponding to the buttons
            in the range from 1 to [`MouseInfo.getNumberOfButtons()`](MouseInfo.md#getNumberOfButtons()).
              
            It is recommended to use the [`InputEvent.getMaskForButton(button)`](event/InputEvent.md#getMaskForButton(int))
            method to obtain the mask for any mouse button by its number.

        The following standard button masks are also accepted:
        - `InputEvent.BUTTON1_MASK`- `InputEvent.BUTTON2_MASK`- `InputEvent.BUTTON3_MASK`However, it is recommended to use `InputEvent.BUTTON1_DOWN_MASK`,
        `InputEvent.BUTTON2_DOWN_MASK`, `InputEvent.BUTTON3_DOWN_MASK` instead.
        Either extended `_DOWN_MASK` or old `_MASK` values
        should be used, but both those models should not be mixed.

    Throws:
    :   `IllegalArgumentException` - if the `buttons` mask contains the mask for extra mouse button
        and support for extended mouse buttons is [`disabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java
    :   `IllegalArgumentException` - if the `buttons` mask contains the mask for extra mouse button
        that does not exist on the mouse and support for extended mouse buttons is [`enabled`](Toolkit.md#areExtraMouseButtonsEnabled()) by Java

    See Also:
    :   - [`mousePress(int)`](#mousePress(int))
        - [`InputEvent.getMaskForButton(int)`](event/InputEvent.md#getMaskForButton(int))
        - [`Toolkit.areExtraMouseButtonsEnabled()`](Toolkit.md#areExtraMouseButtonsEnabled())
        - [`MouseInfo.getNumberOfButtons()`](MouseInfo.md#getNumberOfButtons())
        - [`MouseEvent`](event/MouseEvent.md "class in java.awt.event")
  + ### mouseWheel

    public void mouseWheel(int wheelAmt)

    Rotates the scroll wheel on wheel-equipped mice.

    Parameters:
    :   `wheelAmt` - number of "notches" to move the mouse wheel
        Negative values indicate movement up/away from the user,
        positive values indicate movement down/towards the user.

    Since:
    :   1.4
  + ### keyPress

    public void keyPress(int keycode)

    Presses a given key. The key should be released using the
    `keyRelease` method.

    Key codes that have more than one physical key associated with them
    (e.g. `KeyEvent.VK_SHIFT` could mean either the
    left or right shift key) will map to the left key.

    Parameters:
    :   `keycode` - Key to press (e.g. `KeyEvent.VK_A`)

    Throws:
    :   `IllegalArgumentException` - if `keycode` is not
        a valid key

    See Also:
    :   - [`keyRelease(int)`](#keyRelease(int))
        - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
  + ### keyRelease

    public void keyRelease(int keycode)

    Releases a given key.

    Key codes that have more than one physical key associated with them
    (e.g. `KeyEvent.VK_SHIFT` could mean either the
    left or right shift key) will map to the left key.

    Parameters:
    :   `keycode` - Key to release (e.g. `KeyEvent.VK_A`)

    Throws:
    :   `IllegalArgumentException` - if `keycode` is not a
        valid key

    See Also:
    :   - [`keyPress(int)`](#keyPress(int))
        - [`KeyEvent`](event/KeyEvent.md "class in java.awt.event")
  + ### getPixelColor

    public [Color](Color.md "class in java.awt") getPixelColor(int x,
    int y)

    Returns the color of a pixel at the given screen coordinates.

    If the desktop environment requires that permissions be granted
    to capture screen content, and the required permissions are not granted,
    then a `SecurityException` may be thrown,
    or the content of the returned `Color` is undefined.

    Parameters:
    :   `x` - X position of pixel
    :   `y` - Y position of pixel

    Returns:
    :   Color of the pixel

    Throws:
    :   `SecurityException` - if `readDisplayPixels` permission
        is not granted, or access to the screen is denied
        by the desktop environment
  + ### createScreenCapture

    public [BufferedImage](image/BufferedImage.md "class in java.awt.image") createScreenCapture([Rectangle](Rectangle.md "class in java.awt") screenRect)

    Creates an image containing pixels read from the screen.

    If the desktop environment requires that permissions be granted
    to capture screen content, and the required permissions are not granted,
    then a `SecurityException` may be thrown,
    or the contents of the returned `BufferedImage` are undefined.

    Parameters:
    :   `screenRect` - Rect to capture in screen coordinates

    Returns:
    :   The captured image

    Throws:
    :   `IllegalArgumentException` - if `screenRect` width and height
        are not greater than zero
    :   `SecurityException` - if `readDisplayPixels` permission
        is not granted, or access to the screen is denied
        by the desktop environment

    See Also:
    :   - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### createMultiResolutionScreenCapture

    public [MultiResolutionImage](image/MultiResolutionImage.md "interface in java.awt.image") createMultiResolutionScreenCapture([Rectangle](Rectangle.md "class in java.awt") screenRect)

    Creates an image containing pixels read from the screen.
    This method can be used in case there is a scaling transform
    from user space to screen (device) space.
    Typically this means that the display is a high resolution screen,
    although strictly it means any case in which there is such a transform.
    Returns a [`MultiResolutionImage`](image/MultiResolutionImage.md "interface in java.awt.image").

    For a non-scaled display, the `MultiResolutionImage`
    will have one image variant:
    - Base Image with user specified size.

    For a high resolution display where there is a scaling transform,
    the `MultiResolutionImage` will have two image variants:
    - Base Image with user specified size. This is scaled from the screen.- Native device resolution image with device size pixels.

    Example:

    ```
          Image nativeResImage;
          MultiResolutionImage mrImage = robot.createMultiResolutionScreenCapture(frame.getBounds());
          List<Image> resolutionVariants = mrImage.getResolutionVariants();
          if (resolutionVariants.size() > 1) {
              nativeResImage = resolutionVariants.get(1);
          } else {
              nativeResImage = resolutionVariants.get(0);
          }
    ```

    Parameters:
    :   `screenRect` - Rect to capture in screen coordinates

    Returns:
    :   The captured image

    Throws:
    :   `IllegalArgumentException` - if `screenRect` width and height
        are not greater than zero
    :   `SecurityException` - if `readDisplayPixels` permission
        is not granted, or access to the screen is denied
        by the desktop environment

    Since:
    :   9

    See Also:
    :   - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### isAutoWaitForIdle

    public boolean isAutoWaitForIdle()

    Returns whether this Robot automatically invokes `waitForIdle`
    after generating an event.

    Returns:
    :   Whether `waitForIdle` is automatically called
  + ### setAutoWaitForIdle

    public void setAutoWaitForIdle(boolean isOn)

    Sets whether this Robot automatically invokes `waitForIdle`
    after generating an event.

    Parameters:
    :   `isOn` - Whether `waitForIdle` is automatically invoked
  + ### getAutoDelay

    public int getAutoDelay()

    Returns the number of milliseconds this Robot sleeps after generating an event.

    Returns:
    :   the delay duration in milliseconds
  + ### setAutoDelay

    public void setAutoDelay(int ms)

    Sets the number of milliseconds this Robot sleeps after generating an event.

    Parameters:
    :   `ms` - the delay duration in milliseconds

    Throws:
    :   `IllegalArgumentException` - If `ms`
        is not between 0 and 60,000 milliseconds inclusive
  + ### delay

    public void delay(int ms)

    Sleeps for the specified time.

    If the invoking thread is interrupted while waiting, then it will return
    immediately with the interrupt status set. If the interrupted status is
    already set, this method returns immediately with the interrupt status
    set.

    Parameters:
    :   `ms` - time to sleep in milliseconds

    Throws:
    :   `IllegalArgumentException` - if `ms` is not between `0`
        and `60,000` milliseconds inclusive
  + ### waitForIdle

    public void waitForIdle()

    Waits until all events currently on the event queue have been processed.

    Throws:
    :   `IllegalThreadStateException` - if called on the AWT event dispatching thread
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this Robot.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation.