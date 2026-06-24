Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.event](package-summary.md)

# Interface IIOWriteProgressListener

All Superinterfaces:
:   `EventListener`

---

public interface IIOWriteProgressListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

An interface used by `ImageWriter` implementations to notify
callers of their image writing methods of progress.

See Also:
:   * [`ImageWriter.write(javax.imageio.metadata.IIOMetadata, javax.imageio.IIOImage, javax.imageio.ImageWriteParam)`](../ImageWriter.md#write(javax.imageio.metadata.IIOMetadata,javax.imageio.IIOImage,javax.imageio.ImageWriteParam))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `imageComplete(ImageWriter source)`

  Reports that the image write operation has completed.

  `void`

  `imageProgress(ImageWriter source,
  float percentageDone)`

  Reports the approximate degree of completion of the current
  `write` call within the associated
  `ImageWriter`.

  `void`

  `imageStarted(ImageWriter source,
  int imageIndex)`

  Reports that an image write operation is beginning.

  `void`

  `thumbnailComplete(ImageWriter source)`

  Reports that a thumbnail write operation has completed.

  `void`

  `thumbnailProgress(ImageWriter source,
  float percentageDone)`

  Reports the approximate degree of completion of the current
  thumbnail write within the associated `ImageWriter`.

  `void`

  `thumbnailStarted(ImageWriter source,
  int imageIndex,
  int thumbnailIndex)`

  Reports that a thumbnail write operation is beginning.

  `void`

  `writeAborted(ImageWriter source)`

  Reports that a write has been aborted via the writer's
  `abort` method.

* ## Method Details

  + ### imageStarted

    void imageStarted([ImageWriter](../ImageWriter.md "class in javax.imageio") source,
    int imageIndex)

    Reports that an image write operation is beginning. All
    `ImageWriter` implementations are required to call
    this method exactly once when beginning an image write
    operation.

    Parameters:
    :   `source` - the `ImageWriter` object calling this
        method.
    :   `imageIndex` - the index of the image being written within
        its containing input file or stream.
  + ### imageProgress

    void imageProgress([ImageWriter](../ImageWriter.md "class in javax.imageio") source,
    float percentageDone)

    Reports the approximate degree of completion of the current
    `write` call within the associated
    `ImageWriter`.

    The degree of completion is expressed as an index
    indicating which image is being written, and a percentage
    varying from `0.0F` to `100.0F`
    indicating how much of the current image has been output. The
    percentage should ideally be calculated in terms of the
    remaining time to completion, but it is usually more practical
    to use a more well-defined metric such as pixels decoded or
    portion of input stream consumed. In any case, a sequence of
    calls to this method during a given read operation should
    supply a monotonically increasing sequence of percentage
    values. It is not necessary to supply the exact values
    `0` and `100`, as these may be inferred
    by the callee from other methods.

    Each particular `ImageWriter` implementation may
    call this method at whatever frequency it desires. A rule of
    thumb is to call it around each 5 percent mark.

    Parameters:
    :   `source` - the `ImageWriter` object calling this method.
    :   `percentageDone` - the approximate percentage of decoding that
        has been completed.
  + ### imageComplete

    void imageComplete([ImageWriter](../ImageWriter.md "class in javax.imageio") source)

    Reports that the image write operation has completed. All
    `ImageWriter` implementations are required to call
    this method exactly once upon completion of each image write
    operation.

    Parameters:
    :   `source` - the `ImageWriter` object calling this method.
  + ### thumbnailStarted

    void thumbnailStarted([ImageWriter](../ImageWriter.md "class in javax.imageio") source,
    int imageIndex,
    int thumbnailIndex)

    Reports that a thumbnail write operation is beginning. All
    `ImageWriter` implementations are required to call
    this method exactly once when beginning a thumbnail write
    operation.

    Parameters:
    :   `source` - the `ImageWrite` object calling this method.
    :   `imageIndex` - the index of the image being written within its
        containing input file or stream.
    :   `thumbnailIndex` - the index of the thumbnail being written.
  + ### thumbnailProgress

    void thumbnailProgress([ImageWriter](../ImageWriter.md "class in javax.imageio") source,
    float percentageDone)

    Reports the approximate degree of completion of the current
    thumbnail write within the associated `ImageWriter`.
    The semantics are identical to those of
    `imageProgress`.

    Parameters:
    :   `source` - the `ImageWriter` object calling this
        method.
    :   `percentageDone` - the approximate percentage of decoding that
        has been completed.
  + ### thumbnailComplete

    void thumbnailComplete([ImageWriter](../ImageWriter.md "class in javax.imageio") source)

    Reports that a thumbnail write operation has completed. All
    `ImageWriter` implementations are required to call
    this method exactly once upon completion of each thumbnail
    write operation.

    Parameters:
    :   `source` - the `ImageWriter` object calling this
        method.
  + ### writeAborted

    void writeAborted([ImageWriter](../ImageWriter.md "class in javax.imageio") source)

    Reports that a write has been aborted via the writer's
    `abort` method. No further notifications will be
    given.

    Parameters:
    :   `source` - the `ImageWriter` object calling this
        method.