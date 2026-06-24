Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class MouseInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.MouseInfo

---

public class MouseInfo
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

`MouseInfo` provides methods for getting information about the mouse,
such as mouse pointer location and the number of mouse buttons.

Since:
:   1.5

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static int`

  `getNumberOfButtons()`

  Returns the number of buttons on the mouse.

  `static PointerInfo`

  `getPointerInfo()`

  Returns a `PointerInfo` instance that represents the current
  location of the mouse pointer.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getPointerInfo

    public static [PointerInfo](PointerInfo.md "class in java.awt") getPointerInfo()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns a `PointerInfo` instance that represents the current
    location of the mouse pointer.
    The `GraphicsDevice` stored in this `PointerInfo`
    contains the mouse pointer. The coordinate system used for the mouse position
    depends on whether or not the `GraphicsDevice` is part of a virtual
    screen device.
    For virtual screen devices, the coordinates are given in the virtual
    coordinate system, otherwise they are returned in the coordinate system
    of the `GraphicsDevice`. See [`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt")
    for more information about the virtual screen devices.
    On systems without a mouse, returns `null`.

    If there is a security manager, its `checkPermission` method
    is called with an `AWTPermission("watchMousePointer")`
    permission before creating and returning a `PointerInfo`
    object. This may result in a `SecurityException`.

    Returns:
    :   location of the mouse pointer

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless() returns true
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow the operation

    Since:
    :   1.5

    See Also:
    :   - [`GraphicsConfiguration`](GraphicsConfiguration.md "class in java.awt")
        - [`SecurityManager.checkPermission(java.security.Permission)`](../../../java.base/java/lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`AWTPermission`](AWTPermission.md "class in java.awt")
  + ### getNumberOfButtons

    public static int getNumberOfButtons()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Returns the number of buttons on the mouse.
    On systems without a mouse, returns `-1`.
    The number of buttons is obtained from the AWT Toolkit
    by requesting the `"awt.mouse.numButtons"` desktop property
    which is set by the underlying native platform.

    Returns:
    :   number of buttons on the mouse

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless() returns true

    Since:
    :   1.5

    See Also:
    :   - [`Toolkit.getDesktopProperty(java.lang.String)`](Toolkit.md#getDesktopProperty(java.lang.String))