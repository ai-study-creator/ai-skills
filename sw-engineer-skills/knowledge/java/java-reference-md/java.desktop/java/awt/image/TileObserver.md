Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Interface TileObserver

---

public interface TileObserver

An interface for objects that wish to be informed when tiles
of a WritableRenderedImage become modifiable by some writer via
a call to getWritableTile, and when they become unmodifiable via
the last call to releaseWritableTile.

See Also:
:   * [`WritableRenderedImage`](WritableRenderedImage.md "interface in java.awt.image")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `tileUpdate(WritableRenderedImage source,
  int tileX,
  int tileY,
  boolean willBeWritable)`

  A tile is about to be updated (it is either about to be grabbed
  for writing, or it is being released from writing).

* ## Method Details

  + ### tileUpdate

    void tileUpdate([WritableRenderedImage](WritableRenderedImage.md "interface in java.awt.image") source,
    int tileX,
    int tileY,
    boolean willBeWritable)

    A tile is about to be updated (it is either about to be grabbed
    for writing, or it is being released from writing).

    Parameters:
    :   `source` - the image that owns the tile.
    :   `tileX` - the X index of the tile that is being updated.
    :   `tileY` - the Y index of the tile that is being updated.
    :   `willBeWritable` - If true, the tile will be grabbed for writing;
        otherwise it is being released.