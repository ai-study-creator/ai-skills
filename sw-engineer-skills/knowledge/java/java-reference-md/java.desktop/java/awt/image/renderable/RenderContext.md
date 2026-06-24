Module [java.desktop](../../../../module-summary.md)

Package [java.awt.image.renderable](package-summary.md)

# Class RenderContext

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.image.renderable.RenderContext

All Implemented Interfaces:
:   `Cloneable`

---

public class RenderContext
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A RenderContext encapsulates the information needed to produce a
specific rendering from a RenderableImage. It contains the area to
be rendered specified in rendering-independent terms, the
resolution at which the rendering is to be performed, and hints
used to control the rendering process.

Users create RenderContexts and pass them to the
RenderableImage via the createRendering method. Most of the methods of
RenderContexts are not meant to be used directly by applications,
but by the RenderableImage and operator classes to which it is
passed.

The AffineTransform parameter passed into and out of this class
are cloned. The RenderingHints and Shape parameters are not
necessarily cloneable and are therefore only reference copied.
Altering RenderingHints or Shape instances that are in use by
instances of RenderContext may have undesired side effects.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RenderContext(AffineTransform usr2dev)`

  Constructs a RenderContext with a given transform.

  `RenderContext(AffineTransform usr2dev,
  RenderingHints hints)`

  Constructs a RenderContext with a given transform and rendering hints.

  `RenderContext(AffineTransform usr2dev,
  Shape aoi)`

  Constructs a RenderContext with a given transform and area of interest.

  `RenderContext(AffineTransform usr2dev,
  Shape aoi,
  RenderingHints hints)`

  Constructs a RenderContext with a given transform.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Makes a copy of a RenderContext.

  `void`

  `concatenateTransform(AffineTransform modTransform)`

  Modifies the current user-to-device transform by appending another
  transform.

  `void`

  `concetenateTransform(AffineTransform modTransform)`

  Deprecated.

  replaced by
  `concatenateTransform(AffineTransform)`.

  `Shape`

  `getAreaOfInterest()`

  Gets the ares of interest currently contained in the
  RenderContext.

  `RenderingHints`

  `getRenderingHints()`

  Gets the rendering hints of this `RenderContext`.

  `AffineTransform`

  `getTransform()`

  Gets the current user-to-device AffineTransform.

  `void`

  `preConcatenateTransform(AffineTransform modTransform)`

  Modifies the current user-to-device transform by prepending another
  transform.

  `void`

  `preConcetenateTransform(AffineTransform modTransform)`

  Deprecated.

  replaced by
  `preConcatenateTransform(AffineTransform)`.

  `void`

  `setAreaOfInterest(Shape newAoi)`

  Sets the current area of interest.

  `void`

  `setRenderingHints(RenderingHints hints)`

  Sets the rendering hints of this `RenderContext`.

  `void`

  `setTransform(AffineTransform newTransform)`

  Sets the current user-to-device AffineTransform contained
  in the RenderContext to a given transform.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RenderContext

    public RenderContext([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") usr2dev,
    [Shape](../../Shape.md "interface in java.awt") aoi,
    [RenderingHints](../../RenderingHints.md "class in java.awt") hints)

    Constructs a RenderContext with a given transform.
    The area of interest is supplied as a Shape,
    and the rendering hints are supplied as a RenderingHints object.

    Parameters:
    :   `usr2dev` - an AffineTransform.
    :   `aoi` - a Shape representing the area of interest.
    :   `hints` - a RenderingHints object containing rendering hints.
  + ### RenderContext

    public RenderContext([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") usr2dev)

    Constructs a RenderContext with a given transform.
    The area of interest is taken to be the entire renderable area.
    No rendering hints are used.

    Parameters:
    :   `usr2dev` - an AffineTransform.
  + ### RenderContext

    public RenderContext([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") usr2dev,
    [RenderingHints](../../RenderingHints.md "class in java.awt") hints)

    Constructs a RenderContext with a given transform and rendering hints.
    The area of interest is taken to be the entire renderable area.

    Parameters:
    :   `usr2dev` - an AffineTransform.
    :   `hints` - a RenderingHints object containing rendering hints.
  + ### RenderContext

    public RenderContext([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") usr2dev,
    [Shape](../../Shape.md "interface in java.awt") aoi)

    Constructs a RenderContext with a given transform and area of interest.
    The area of interest is supplied as a Shape.
    No rendering hints are used.

    Parameters:
    :   `usr2dev` - an AffineTransform.
    :   `aoi` - a Shape representing the area of interest.
* ## Method Details

  + ### getRenderingHints

    public [RenderingHints](../../RenderingHints.md "class in java.awt") getRenderingHints()

    Gets the rendering hints of this `RenderContext`.

    Returns:
    :   a `RenderingHints` object that represents
        the rendering hints of this `RenderContext`.

    See Also:
    :   - [`setRenderingHints(RenderingHints)`](#setRenderingHints(java.awt.RenderingHints))
  + ### setRenderingHints

    public void setRenderingHints([RenderingHints](../../RenderingHints.md "class in java.awt") hints)

    Sets the rendering hints of this `RenderContext`.

    Parameters:
    :   `hints` - a `RenderingHints` object that represents
        the rendering hints to assign to this `RenderContext`.

    See Also:
    :   - [`getRenderingHints()`](#getRenderingHints())
  + ### setTransform

    public void setTransform([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") newTransform)

    Sets the current user-to-device AffineTransform contained
    in the RenderContext to a given transform.

    Parameters:
    :   `newTransform` - the new AffineTransform.

    See Also:
    :   - [`getTransform()`](#getTransform())
  + ### preConcatenateTransform

    public void preConcatenateTransform([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") modTransform)

    Modifies the current user-to-device transform by prepending another
    transform. In matrix notation the operation is:

    ```
     [this] = [modTransform] x [this]
    ```

    Parameters:
    :   `modTransform` - the AffineTransform to prepend to the
        current usr2dev transform.

    Since:
    :   1.3
  + ### preConcetenateTransform

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void preConcetenateTransform([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") modTransform)

    Deprecated.

    replaced by
    `preConcatenateTransform(AffineTransform)`.

    Modifies the current user-to-device transform by prepending another
    transform. In matrix notation the operation is:

    ```
     [this] = [modTransform] x [this]
    ```

    This method does the same thing as the preConcatenateTransform
    method. It is here for backward compatibility with previous releases
    which misspelled the method name.

    Parameters:
    :   `modTransform` - the AffineTransform to prepend to the
        current usr2dev transform.
  + ### concatenateTransform

    public void concatenateTransform([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") modTransform)

    Modifies the current user-to-device transform by appending another
    transform. In matrix notation the operation is:

    ```
     [this] = [this] x [modTransform]
    ```

    Parameters:
    :   `modTransform` - the AffineTransform to append to the
        current usr2dev transform.

    Since:
    :   1.3
  + ### concetenateTransform

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void concetenateTransform([AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") modTransform)

    Deprecated.

    replaced by
    `concatenateTransform(AffineTransform)`.

    Modifies the current user-to-device transform by appending another
    transform. In matrix notation the operation is:

    ```
     [this] = [this] x [modTransform]
    ```

    This method does the same thing as the concatenateTransform
    method. It is here for backward compatibility with previous releases
    which misspelled the method name.

    Parameters:
    :   `modTransform` - the AffineTransform to append to the
        current usr2dev transform.
  + ### getTransform

    public [AffineTransform](../../geom/AffineTransform.md "class in java.awt.geom") getTransform()

    Gets the current user-to-device AffineTransform.

    Returns:
    :   a reference to the current AffineTransform.

    See Also:
    :   - [`setTransform(AffineTransform)`](#setTransform(java.awt.geom.AffineTransform))
  + ### setAreaOfInterest

    public void setAreaOfInterest([Shape](../../Shape.md "interface in java.awt") newAoi)

    Sets the current area of interest. The old area is discarded.

    Parameters:
    :   `newAoi` - The new area of interest.

    See Also:
    :   - [`getAreaOfInterest()`](#getAreaOfInterest())
  + ### getAreaOfInterest

    public [Shape](../../Shape.md "interface in java.awt") getAreaOfInterest()

    Gets the ares of interest currently contained in the
    RenderContext.

    Returns:
    :   a reference to the area of interest of the RenderContext,
        or null if none is specified.

    See Also:
    :   - [`setAreaOfInterest(Shape)`](#setAreaOfInterest(java.awt.Shape))
  + ### clone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Makes a copy of a RenderContext. The area of interest is copied
    by reference. The usr2dev AffineTransform and hints are cloned,
    while the area of interest is copied by reference.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the new cloned RenderContext.

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")