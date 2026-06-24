Module [java.desktop](../../../module-summary.md)

Package [java.awt.image](package-summary.md)

# Interface WritableRenderedImage

All Superinterfaces:
:   `RenderedImage`

All Known Implementing Classes:
:   `BufferedImage`

---

public interface WritableRenderedImage
extends [RenderedImage](RenderedImage.md "interface in java.awt.image")

WritableRenderedImage is a common interface for objects which
contain or can produce image data in the form of Rasters and
which can be modified and/or written over. The image
data may be stored/produced as a single tile or a regular array
of tiles.

WritableRenderedImage provides notification to other interested
objects when a tile is checked out for writing (via the
getWritableTile method) and when the last writer of a particular
tile relinquishes its access (via a call to releaseWritableTile).
Additionally, it allows any caller to determine whether any tiles
are currently checked out (via hasTileWriters), and to obtain a
list of such tiles (via getWritableTileIndices, in the form of a Vector
of Point objects).

Objects wishing to be notified of changes in tile writability must
implement the TileObserver interface, and are added by a
call to addTileObserver. Multiple calls to
addTileObserver for the same object will result in multiple
notifications. An existing observer may reduce its notifications
by calling removeTileObserver; if the observer had no
notifications the operation is a no-op.

It is necessary for a WritableRenderedImage to ensure that
notifications occur only when the first writer acquires a tile and
the last writer releases it.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addTileObserver(TileObserver to)`

  Adds an observer.

  `WritableRaster`

  `getWritableTile(int tileX,
  int tileY)`

  Checks out a tile for writing.

  `Point[]`

  `getWritableTileIndices()`

  Returns an array of Point objects indicating which tiles
  are checked out for writing.

  `boolean`

  `hasTileWriters()`

  Returns whether any tile is checked out for writing.

  `boolean`

  `isTileWritable(int tileX,
  int tileY)`

  Returns whether a tile is currently checked out for writing.

  `void`

  `releaseWritableTile(int tileX,
  int tileY)`

  Relinquishes the right to write to a tile.

  `void`

  `removeTileObserver(TileObserver to)`

  Removes an observer.

  `void`

  `setData(Raster r)`

  Sets a rect of the image to the contents of the Raster r, which is
  assumed to be in the same coordinate space as the WritableRenderedImage.

  ### Methods inherited from interface java.awt.image.[RenderedImage](RenderedImage.md "interface in java.awt.image")

  `copyData, getColorModel, getData, getData, getHeight, getMinTileX, getMinTileY, getMinX, getMinY, getNumXTiles, getNumYTiles, getProperty, getPropertyNames, getSampleModel, getSources, getTile, getTileGridXOffset, getTileGridYOffset, getTileHeight, getTileWidth, getWidth`

* ## Method Details

  + ### addTileObserver

    void addTileObserver([TileObserver](TileObserver.md "interface in java.awt.image") to)

    Adds an observer. If the observer is already present,
    it will receive multiple notifications.

    Parameters:
    :   `to` - the specified `TileObserver`
  + ### removeTileObserver

    void removeTileObserver([TileObserver](TileObserver.md "interface in java.awt.image") to)

    Removes an observer. If the observer was not registered,
    nothing happens. If the observer was registered for multiple
    notifications, it will now be registered for one fewer.

    Parameters:
    :   `to` - the specified `TileObserver`
  + ### getWritableTile

    [WritableRaster](WritableRaster.md "class in java.awt.image") getWritableTile(int tileX,
    int tileY)

    Checks out a tile for writing.
    The WritableRenderedImage is responsible for notifying all
    of its TileObservers when a tile goes from having
    no writers to having one writer.

    Parameters:
    :   `tileX` - the X index of the tile.
    :   `tileY` - the Y index of the tile.

    Returns:
    :   a writable tile.
  + ### releaseWritableTile

    void releaseWritableTile(int tileX,
    int tileY)

    Relinquishes the right to write to a tile. If the caller
    continues to write to the tile, the results are undefined.
    Calls to this method should only appear in matching pairs
    with calls to getWritableTile; any other use will lead
    to undefined results.
    The WritableRenderedImage is responsible for notifying all of
    its TileObservers when a tile goes from having one writer
    to having no writers.

    Parameters:
    :   `tileX` - the X index of the tile.
    :   `tileY` - the Y index of the tile.
  + ### isTileWritable

    boolean isTileWritable(int tileX,
    int tileY)

    Returns whether a tile is currently checked out for writing.

    Parameters:
    :   `tileX` - the X index of the tile.
    :   `tileY` - the Y index of the tile.

    Returns:
    :   `true` if specified tile is checked out
        for writing; `false` otherwise.
  + ### getWritableTileIndices

    [Point](../Point.md "class in java.awt")[] getWritableTileIndices()

    Returns an array of Point objects indicating which tiles
    are checked out for writing. Returns null if none are
    checked out.

    Returns:
    :   an array containing the locations of tiles that are
        checked out for writing.
  + ### hasTileWriters

    boolean hasTileWriters()

    Returns whether any tile is checked out for writing.
    Semantically equivalent to (getWritableTileIndices() != null).

    Returns:
    :   `true` if any tiles are checked out for
        writing; `false` otherwise.
  + ### setData

    void setData([Raster](Raster.md "class in java.awt.image") r)

    Sets a rect of the image to the contents of the Raster r, which is
    assumed to be in the same coordinate space as the WritableRenderedImage.
    The operation is clipped to the bounds of the WritableRenderedImage.

    Parameters:
    :   `r` - the specified `Raster`