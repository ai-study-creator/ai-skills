Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class PrintJob

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.PrintJob

---

public abstract class PrintJob
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

An abstract class which initiates and executes a print job.
It provides access to a print graphics object which renders
to an appropriate print device.

See Also:
:   * [`Toolkit.getPrintJob(java.awt.Frame, java.lang.String, java.util.Properties)`](Toolkit.md#getPrintJob(java.awt.Frame,java.lang.String,java.util.Properties))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PrintJob()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `end()`

  Ends the print job and does any necessary cleanup.

  `void`

  `finalize()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finalization has been deprecated for removal.

  `abstract Graphics`

  `getGraphics()`

  Gets a Graphics object that will draw to the next page.

  `abstract Dimension`

  `getPageDimension()`

  Returns the dimensions of the page in pixels.

  `abstract int`

  `getPageResolution()`

  Returns the resolution of the page in pixels per inch.

  `abstract boolean`

  `lastPageFirst()`

  Returns true if the last page will be printed first.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PrintJob

    protected PrintJob()

    Constructor for subclasses to call.
* ## Method Details

  + ### getGraphics

    public abstract [Graphics](Graphics.md "class in java.awt") getGraphics()

    Gets a Graphics object that will draw to the next page.
    The page is sent to the printer when the graphics
    object is disposed. This graphics object will also implement
    the PrintGraphics interface.

    Returns:
    :   the graphics context for printing the next page

    See Also:
    :   - [`PrintGraphics`](PrintGraphics.md "interface in java.awt")
  + ### getPageDimension

    public abstract [Dimension](Dimension.md "class in java.awt") getPageDimension()

    Returns the dimensions of the page in pixels.
    The resolution of the page is chosen so that it
    is similar to the screen resolution.

    Returns:
    :   the page dimension
  + ### getPageResolution

    public abstract int getPageResolution()

    Returns the resolution of the page in pixels per inch.
    Note that this doesn't have to correspond to the physical
    resolution of the printer.

    Returns:
    :   the page resolution
  + ### lastPageFirst

    public abstract boolean lastPageFirst()

    Returns true if the last page will be printed first.

    Returns:
    :   `true` if the last page will be printed first;
        otherwise `false`
  + ### end

    public abstract void end()

    Ends the print job and does any necessary cleanup.
  + ### finalize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9",
    [forRemoval](../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    public void finalize()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finalization has been deprecated for removal. See
    [`Object.finalize()`](../../../java.base/java/lang/Object.md#finalize()) for background information and details
    about migration options.

    Ends this print job once it is no longer referenced.

    Overrides:
    :   `finalize` in class `Object`

    See Also:
    :   - [`end()`](#end())