Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface CompositeContext

---

public interface CompositeContext

The `CompositeContext` interface defines the encapsulated
and optimized environment for a compositing operation.
`CompositeContext` objects maintain state for
compositing operations. In a multi-threaded environment, several
contexts can exist simultaneously for a single [`Composite`](Composite.md "interface in java.awt")
object.

See Also:
:   * [`Composite`](Composite.md "interface in java.awt")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `compose(Raster src,
  Raster dstIn,
  WritableRaster dstOut)`

  Composes the two source [`Raster`](image/Raster.md "class in java.awt.image") objects and
  places the result in the destination
  [`WritableRaster`](image/WritableRaster.md "class in java.awt.image").

  `void`

  `dispose()`

  Releases resources allocated for a context.

* ## Method Details

  + ### dispose

    void dispose()

    Releases resources allocated for a context.
  + ### compose

    void compose([Raster](image/Raster.md "class in java.awt.image") src,
    [Raster](image/Raster.md "class in java.awt.image") dstIn,
    [WritableRaster](image/WritableRaster.md "class in java.awt.image") dstOut)

    Composes the two source [`Raster`](image/Raster.md "class in java.awt.image") objects and
    places the result in the destination
    [`WritableRaster`](image/WritableRaster.md "class in java.awt.image"). Note that the destination
    can be the same object as either the first or second
    source. Note that `dstIn` and
    `dstOut` must be compatible with the
    `dstColorModel` passed to the
    [`createContext`](Composite.md#createContext(java.awt.image.ColorModel,java.awt.image.ColorModel,java.awt.RenderingHints))
    method of the `Composite` interface.

    Parameters:
    :   `src` - the first source for the compositing operation
    :   `dstIn` - the second source for the compositing operation
    :   `dstOut` - the `WritableRaster` into which the
        result of the operation is stored

    See Also:
    :   - [`Composite`](Composite.md "interface in java.awt")