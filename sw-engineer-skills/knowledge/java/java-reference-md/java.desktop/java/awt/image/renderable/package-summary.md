Module [java.desktop](../../../../module-summary.md)

# Package java.awt.image.renderable

---

package java.awt.image.renderable

Provides classes and interfaces for producing rendering-independent images.

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.awt.image](../package-summary.md)

  Provides classes for creating and modifying images.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [ContextualRenderedImageFactory](ContextualRenderedImageFactory.md "interface in java.awt.image.renderable")

  ContextualRenderedImageFactory provides an interface for the
  functionality that may differ between instances of
  RenderableImageOp.

  [ParameterBlock](ParameterBlock.md "class in java.awt.image.renderable")

  A `ParameterBlock` encapsulates all the information about sources and
  parameters (Objects) required by a RenderableImageOp, or other
  classes that process images.

  [RenderableImage](RenderableImage.md "interface in java.awt.image.renderable")

  A RenderableImage is a common interface for rendering-independent
  images (a notion which subsumes resolution independence).

  [RenderableImageOp](RenderableImageOp.md "class in java.awt.image.renderable")

  This class handles the renderable aspects of an operation with help
  from its associated instance of a ContextualRenderedImageFactory.

  [RenderableImageProducer](RenderableImageProducer.md "class in java.awt.image.renderable")

  An adapter class that implements ImageProducer to allow the
  asynchronous production of a RenderableImage.

  [RenderContext](RenderContext.md "class in java.awt.image.renderable")

  A RenderContext encapsulates the information needed to produce a
  specific rendering from a RenderableImage.

  [RenderedImageFactory](RenderedImageFactory.md "interface in java.awt.image.renderable")

  The RenderedImageFactory interface (often abbreviated RIF) is
  intended to be implemented by classes that wish to act as factories
  to produce different renderings, for example by executing a series
  of BufferedImageOps on a set of sources, depending on a specific
  set of parameters, properties, and rendering hints.