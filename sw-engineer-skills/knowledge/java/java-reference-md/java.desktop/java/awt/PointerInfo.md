Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class PointerInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.PointerInfo

---

public final class PointerInfo
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A class that describes the pointer position.
It provides the `GraphicsDevice` where the pointer is and
the `Point` that represents the coordinates of the pointer.

Instances of this class should be obtained via
[`MouseInfo.getPointerInfo()`](MouseInfo.md#getPointerInfo()).
The `PointerInfo` instance is not updated dynamically as the mouse
moves. To get the updated location, you must call
[`MouseInfo.getPointerInfo()`](MouseInfo.md#getPointerInfo()) again.

Since:
:   1.5

See Also:
:   * [`MouseInfo.getPointerInfo()`](MouseInfo.md#getPointerInfo())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `GraphicsDevice`

  `getDevice()`

  Returns the `GraphicsDevice` where the mouse pointer was at the
  moment this `PointerInfo` was created.

  `Point`

  `getLocation()`

  Returns the `Point` that represents the coordinates of the pointer
  on the screen.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getDevice

    public [GraphicsDevice](GraphicsDevice.md "class in java.awt") getDevice()

    Returns the `GraphicsDevice` where the mouse pointer was at the
    moment this `PointerInfo` was created.

    Returns:
    :   `GraphicsDevice` corresponding to the pointer

    Since:
    :   1.5
  + ### getLocation

    public [Point](Point.md "class in java.awt") getLocation()

    Returns the `Point` that represents the coordinates of the pointer
    on the screen. See [`MouseInfo.getPointerInfo()`](MouseInfo.md#getPointerInfo()) for more information
    about coordinate calculation for multiscreen systems.

    Returns:
    :   coordinates of mouse pointer

    Since:
    :   1.5

    See Also:
    :   - [`MouseInfo`](MouseInfo.md "class in java.awt")
        - [`MouseInfo.getPointerInfo()`](MouseInfo.md#getPointerInfo())