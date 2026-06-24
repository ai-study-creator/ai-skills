Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.event](package-summary.md)

# Interface IIOReadProgressListener

All Superinterfaces:
:   `EventListener`

---

public interface IIOReadProgressListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

An interface used by `ImageReader` implementations to
notify callers of their image and thumbnail reading methods of
progress.

This interface receives general indications of decoding
progress (via the `imageProgress` and
`thumbnailProgress` methods), and events indicating when
an entire image has been updated (via the
`imageStarted`, `imageComplete`,
`thumbnailStarted` and `thumbnailComplete`
methods). Applications that wish to be informed of pixel updates
as they happen (for example, during progressive decoding), should
provide an `IIOReadUpdateListener`.

See Also:
:   * [`IIOReadUpdateListener`](IIOReadUpdateListener.md "interface in javax.imageio.event")
    * [`ImageReader.addIIOReadProgressListener(javax.imageio.event.IIOReadProgressListener)`](../ImageReader.md#addIIOReadProgressListener(javax.imageio.event.IIOReadProgressListener))
    * [`ImageReader.removeIIOReadProgressListener(javax.imageio.event.IIOReadProgressListener)`](../ImageReader.md#removeIIOReadProgressListener(javax.imageio.event.IIOReadProgressListener))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `imageComplete(ImageReader source)`

  Reports that the current image read operation has completed.

  `void`

  `imageProgress(ImageReader source,
  float percentageDone)`

  Reports the approximate degree of completion of the current
  `read` call of the associated
  `ImageReader`.

  `void`

  `imageStarted(ImageReader source,
  int imageIndex)`

  Reports that an image read operation is beginning.

  `void`

  `readAborted(ImageReader source)`

  Reports that a read has been aborted via the reader's
  `abort` method.

  `void`

  `sequenceComplete(ImageReader source)`

  Reports that a sequence of read operations has completed.

  `void`

  `sequenceStarted(ImageReader source,
  int minIndex)`

  Reports that a sequence of read operations is beginning.

  `void`

  `thumbnailComplete(ImageReader source)`

  Reports that a thumbnail read operation has completed.

  `void`

  `thumbnailProgress(ImageReader source,
  float percentageDone)`

  Reports the approximate degree of completion of the current
  `getThumbnail` call within the associated
  `ImageReader`.

  `void`

  `thumbnailStarted(ImageReader source,
  int imageIndex,
  int thumbnailIndex)`

  Reports that a thumbnail read operation is beginning.

* ## Method Details

  + ### sequenceStarted

    void sequenceStarted([ImageReader](../ImageReader.md "class in javax.imageio") source,
    int minIndex)

    Reports that a sequence of read operations is beginning.
    `ImageReader` implementations are required to call
    this method exactly once from their
    `readAll(Iterator)` method.

    Parameters:
    :   `source` - the `ImageReader` object calling this method.
    :   `minIndex` - the index of the first image to be read.
  + ### sequenceComplete

    void sequenceComplete([ImageReader](../ImageReader.md "class in javax.imageio") source)

    Reports that a sequence of read operations has completed.
    `ImageReader` implementations are required to call
    this method exactly once from their
    `readAll(Iterator)` method.

    Parameters:
    :   `source` - the `ImageReader` object calling this method.
  + ### imageStarted

    void imageStarted([ImageReader](../ImageReader.md "class in javax.imageio") source,
    int imageIndex)

    Reports that an image read operation is beginning. All
    `ImageReader` implementations are required to call
    this method exactly once when beginning an image read
    operation.

    Parameters:
    :   `source` - the `ImageReader` object calling this method.
    :   `imageIndex` - the index of the image being read within its
        containing input file or stream.
  + ### imageProgress

    void imageProgress([ImageReader](../ImageReader.md "class in javax.imageio") source,
    float percentageDone)

    Reports the approximate degree of completion of the current
    `read` call of the associated
    `ImageReader`.

    The degree of completion is expressed as a percentage
    varying from `0.0F` to `100.0F`. The
    percentage should ideally be calculated in terms of the
    remaining time to completion, but it is usually more practical
    to use a more well-defined metric such as pixels decoded or
    portion of input stream consumed. In any case, a sequence of
    calls to this method during a given read operation should
    supply a monotonically increasing sequence of percentage
    values. It is not necessary to supply the exact values
    `0` and `100`, as these may be inferred
    by the callee from other methods.

    Each particular `ImageReader` implementation may
    call this method at whatever frequency it desires. A rule of
    thumb is to call it around each 5 percent mark.

    Parameters:
    :   `source` - the `ImageReader` object calling this method.
    :   `percentageDone` - the approximate percentage of decoding that
        has been completed.
  + ### imageComplete

    void imageComplete([ImageReader](../ImageReader.md "class in javax.imageio") source)

    Reports that the current image read operation has completed.
    All `ImageReader` implementations are required to
    call this method exactly once upon completion of each image
    read operation.

    Parameters:
    :   `source` - the `ImageReader` object calling this
        method.
  + ### thumbnailStarted

    void thumbnailStarted([ImageReader](../ImageReader.md "class in javax.imageio") source,
    int imageIndex,
    int thumbnailIndex)

    Reports that a thumbnail read operation is beginning. All
    `ImageReader` implementations are required to call
    this method exactly once when beginning a thumbnail read
    operation.

    Parameters:
    :   `source` - the `ImageReader` object calling this method.
    :   `imageIndex` - the index of the image being read within its
        containing input file or stream.
    :   `thumbnailIndex` - the index of the thumbnail being read.
  + ### thumbnailProgress

    void thumbnailProgress([ImageReader](../ImageReader.md "class in javax.imageio") source,
    float percentageDone)

    Reports the approximate degree of completion of the current
    `getThumbnail` call within the associated
    `ImageReader`. The semantics are identical to those
    of `imageProgress`.

    Parameters:
    :   `source` - the `ImageReader` object calling this method.
    :   `percentageDone` - the approximate percentage of decoding that
        has been completed.
  + ### thumbnailComplete

    void thumbnailComplete([ImageReader](../ImageReader.md "class in javax.imageio") source)

    Reports that a thumbnail read operation has completed. All
    `ImageReader` implementations are required to call
    this method exactly once upon completion of each thumbnail read
    operation.

    Parameters:
    :   `source` - the `ImageReader` object calling this
        method.
  + ### readAborted

    void readAborted([ImageReader](../ImageReader.md "class in javax.imageio") source)

    Reports that a read has been aborted via the reader's
    `abort` method. No further notifications will be
    given.

    Parameters:
    :   `source` - the `ImageReader` object calling this
        method.