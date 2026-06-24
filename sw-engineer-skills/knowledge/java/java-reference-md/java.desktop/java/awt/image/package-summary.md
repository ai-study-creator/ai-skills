Module [java.desktop](../../../module-summary.md)

# Package java.awt.image

---

package java.awt.image

Provides classes for creating and modifying images. Images are processed
using a streaming framework that involves an image producer, optional image
filters, and an image consumer. This framework makes it possible to
progressively render an image while it is being fetched and generated.
Moreover, the framework allows an application to discard the storage used by
an image and to regenerate it at any time. This package provides a number of
image producers, consumers, and filters that you can configure for your image
processing needs.

Since:
:   1.0

* Related Packages

  Package

  Description

  [java.awt](../package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.

  [java.awt.image.renderable](renderable/package-summary.md)

  Provides classes and interfaces for producing rendering-independent images.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AbstractMultiResolutionImage](AbstractMultiResolutionImage.md "class in java.awt.image")

  This class provides default implementations of several `Image` methods
  for classes that want to implement the `MultiResolutionImage`
  interface.

  [AffineTransformOp](AffineTransformOp.md "class in java.awt.image")

  This class uses an affine transform to perform a linear mapping from
  2D coordinates in the source image or `Raster` to 2D coordinates
  in the destination image or `Raster`.

  [AreaAveragingScaleFilter](AreaAveragingScaleFilter.md "class in java.awt.image")

  An ImageFilter class for scaling images using a simple area averaging
  algorithm that produces smoother results than the nearest neighbor
  algorithm.

  [BandCombineOp](BandCombineOp.md "class in java.awt.image")

  This class performs an arbitrary linear combination of the bands
  in a `Raster`, using a specified matrix.

  [BandedSampleModel](BandedSampleModel.md "class in java.awt.image")

  This class represents image data which is stored in a band interleaved
  fashion and for
  which each sample of a pixel occupies one data element of the DataBuffer.

  [BaseMultiResolutionImage](BaseMultiResolutionImage.md "class in java.awt.image")

  This class is an array-based implementation of
  the `AbstractMultiResolutionImage` class.

  [BufferedImage](BufferedImage.md "class in java.awt.image")

  The `BufferedImage` subclass describes an [`Image`](../Image.md "class in java.awt") with an accessible buffer of image data.

  [BufferedImageFilter](BufferedImageFilter.md "class in java.awt.image")

  The `BufferedImageFilter` class subclasses an
  `ImageFilter` to provide a simple means of
  using a single-source/single-destination image operator
  ([`BufferedImageOp`](BufferedImageOp.md "interface in java.awt.image")) to filter a `BufferedImage`
  in the Image Producer/Consumer/Observer
  paradigm.

  [BufferedImageOp](BufferedImageOp.md "interface in java.awt.image")

  This interface describes single-input/single-output
  operations performed on `BufferedImage` objects.

  [BufferStrategy](BufferStrategy.md "class in java.awt.image")

  The `BufferStrategy` class represents the mechanism with which
  to organize complex memory on a particular `Canvas` or
  `Window`.

  [ByteLookupTable](ByteLookupTable.md "class in java.awt.image")

  This class defines a lookup table object.

  [ColorConvertOp](ColorConvertOp.md "class in java.awt.image")

  This class performs a pixel-by-pixel color conversion of the data in
  the source image.

  [ColorModel](ColorModel.md "class in java.awt.image")

  The `ColorModel` abstract class encapsulates the
  methods for translating a pixel value to color components
  (for example, red, green, and blue) and an alpha component.

  [ComponentColorModel](ComponentColorModel.md "class in java.awt.image")

  A `ColorModel` class that works with pixel values that
  represent color and alpha information as separate samples and that
  store each sample in a separate data element.

  [ComponentSampleModel](ComponentSampleModel.md "class in java.awt.image")

  This class represents image data which is stored such that each sample
  of a pixel occupies one data element of the DataBuffer.

  [ConvolveOp](ConvolveOp.md "class in java.awt.image")

  This class implements a convolution from the source
  to the destination.

  [CropImageFilter](CropImageFilter.md "class in java.awt.image")

  An ImageFilter class for cropping images.

  [DataBuffer](DataBuffer.md "class in java.awt.image")

  This class exists to wrap one or more data arrays.

  [DataBufferByte](DataBufferByte.md "class in java.awt.image")

  This class extends `DataBuffer` and stores data internally as bytes.

  [DataBufferDouble](DataBufferDouble.md "class in java.awt.image")

  This class extends `DataBuffer` and stores data internally
  in `double` form.

  [DataBufferFloat](DataBufferFloat.md "class in java.awt.image")

  This class extends `DataBuffer` and stores data internally
  in `float` form.

  [DataBufferInt](DataBufferInt.md "class in java.awt.image")

  This class extends `DataBuffer` and stores data internally
  as integers.

  [DataBufferShort](DataBufferShort.md "class in java.awt.image")

  This class extends `DataBuffer` and stores data internally as shorts.

  [DataBufferUShort](DataBufferUShort.md "class in java.awt.image")

  This class extends `DataBuffer` and stores data internally as
  shorts.

  [DirectColorModel](DirectColorModel.md "class in java.awt.image")

  The `DirectColorModel` class is a `ColorModel`
  class that works with pixel values that represent RGB
  color and alpha information as separate samples and that pack all
  samples for a single pixel into a single int, short, or byte quantity.

  [FilteredImageSource](FilteredImageSource.md "class in java.awt.image")

  This class is an implementation of the ImageProducer interface which
  takes an existing image and a filter object and uses them to produce
  image data for a new filtered version of the original image.

  [ImageConsumer](ImageConsumer.md "interface in java.awt.image")

  The interface for objects expressing interest in image data through
  the ImageProducer interfaces.

  [ImageFilter](ImageFilter.md "class in java.awt.image")

  This class implements a filter for the set of interface methods that
  are used to deliver data from an ImageProducer to an ImageConsumer.

  [ImageObserver](ImageObserver.md "interface in java.awt.image")

  An asynchronous update interface for receiving notifications about
  Image information as the Image is constructed.

  [ImageProducer](ImageProducer.md "interface in java.awt.image")

  The interface for objects which can produce the image data for Images.

  [ImagingOpException](ImagingOpException.md "class in java.awt.image")

  The `ImagingOpException` is thrown if one of the
  [`BufferedImageOp`](BufferedImageOp.md "interface in java.awt.image") or [`RasterOp`](RasterOp.md "interface in java.awt.image") filter methods cannot
  process the image.

  [IndexColorModel](IndexColorModel.md "class in java.awt.image")

  The `IndexColorModel` class is a `ColorModel`
  class that works with pixel values consisting of a
  single sample that is an index into a fixed colormap in the default
  sRGB color space.

  [Kernel](Kernel.md "class in java.awt.image")

  The `Kernel` class defines a matrix that describes how a
  specified pixel and its surrounding pixels affect the value
  computed for the pixel's position in the output image of a filtering
  operation.

  [LookupOp](LookupOp.md "class in java.awt.image")

  This class implements a lookup operation from the source
  to the destination.

  [LookupTable](LookupTable.md "class in java.awt.image")

  This abstract class defines a lookup table object.

  [MemoryImageSource](MemoryImageSource.md "class in java.awt.image")

  This class is an implementation of the ImageProducer interface which
  uses an array to produce pixel values for an Image.

  [MultiPixelPackedSampleModel](MultiPixelPackedSampleModel.md "class in java.awt.image")

  The `MultiPixelPackedSampleModel` class represents
  one-banded images and can pack multiple one-sample
  pixels into one data element.

  [MultiResolutionImage](MultiResolutionImage.md "interface in java.awt.image")

  This interface is designed to be an optional additional API supported by
  some implementations of [`Image`](../Image.md "class in java.awt") to allow them to provide
  alternate images for various rendering resolutions.

  [PackedColorModel](PackedColorModel.md "class in java.awt.image")

  The `PackedColorModel` class is an abstract
  [`ColorModel`](ColorModel.md "class in java.awt.image") class that works with pixel values which represent
  color and alpha information as separate samples and which pack all
  samples for a single pixel into a single int, short, or byte quantity.

  [PixelGrabber](PixelGrabber.md "class in java.awt.image")

  The PixelGrabber class implements an ImageConsumer which can be attached
  to an Image or ImageProducer object to retrieve a subset of the pixels
  in that image.

  [PixelInterleavedSampleModel](PixelInterleavedSampleModel.md "class in java.awt.image")

  This class represents image data which is stored in a pixel interleaved
  fashion and for
  which each sample of a pixel occupies one data element of the DataBuffer.

  [Raster](Raster.md "class in java.awt.image")

  A class representing a rectangular array of pixels.

  [RasterFormatException](RasterFormatException.md "class in java.awt.image")

  The `RasterFormatException` is thrown if there is
  invalid layout information in the [`Raster`](Raster.md "class in java.awt.image").

  [RasterOp](RasterOp.md "interface in java.awt.image")

  This interface describes single-input/single-output
  operations performed on Raster objects.

  [RenderedImage](RenderedImage.md "interface in java.awt.image")

  RenderedImage is a common interface for objects which contain
  or can produce image data in the form of Rasters.

  [ReplicateScaleFilter](ReplicateScaleFilter.md "class in java.awt.image")

  An ImageFilter class for scaling images using the simplest algorithm.

  [RescaleOp](RescaleOp.md "class in java.awt.image")

  This class performs a pixel-by-pixel rescaling of the data in the
  source image by multiplying the sample values for each pixel by a scale
  factor and then adding an offset.

  [RGBImageFilter](RGBImageFilter.md "class in java.awt.image")

  This class provides an easy way to create an ImageFilter which modifies
  the pixels of an image in the default RGB ColorModel.

  [SampleModel](SampleModel.md "class in java.awt.image")

  This abstract class defines an interface for extracting samples of pixels
  in an image.

  [ShortLookupTable](ShortLookupTable.md "class in java.awt.image")

  This class defines a lookup table object.

  [SinglePixelPackedSampleModel](SinglePixelPackedSampleModel.md "class in java.awt.image")

  This class represents pixel data packed such that the N samples which make
  up a single pixel are stored in a single data array element, and each data
  data array element holds samples for only one pixel.

  [TileObserver](TileObserver.md "interface in java.awt.image")

  An interface for objects that wish to be informed when tiles
  of a WritableRenderedImage become modifiable by some writer via
  a call to getWritableTile, and when they become unmodifiable via
  the last call to releaseWritableTile.

  [VolatileImage](VolatileImage.md "class in java.awt.image")

  VolatileImage is an image which can lose its
  contents at any time due to circumstances beyond the control of the
  application (e.g., situations caused by the operating system or by
  other applications).

  [WritableRaster](WritableRaster.md "class in java.awt.image")

  This class extends Raster to provide pixel writing capabilities.

  [WritableRenderedImage](WritableRenderedImage.md "interface in java.awt.image")

  WritableRenderedImage is a common interface for objects which
  contain or can produce image data in the form of Rasters and
  which can be modified and/or written over.