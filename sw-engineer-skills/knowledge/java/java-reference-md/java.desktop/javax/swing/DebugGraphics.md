Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class DebugGraphics

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Graphics](../../java/awt/Graphics.md "class in java.awt")

javax.swing.DebugGraphics

---

public class DebugGraphics
extends [Graphics](../../java/awt/Graphics.md "class in java.awt")

Graphics subclass supporting graphics debugging. Overrides most methods
from Graphics. DebugGraphics objects are rarely created by hand. They
are most frequently created automatically when a JComponent's
debugGraphicsOptions are changed using the setDebugGraphicsOptions()
method.

NOTE: You must turn off double buffering to use DebugGraphics:
RepaintManager repaintManager = RepaintManager.currentManager(component);
repaintManager.setDoubleBufferingEnabled(false);

Since:
:   1.2

See Also:
:   * [`JComponent.setDebugGraphicsOptions(int)`](JComponent.md#setDebugGraphicsOptions(int))
    * [`RepaintManager.currentManager(java.awt.Component)`](RepaintManager.md#currentManager(java.awt.Component))
    * [`RepaintManager.setDoubleBufferingEnabled(boolean)`](RepaintManager.md#setDoubleBufferingEnabled(boolean))

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BUFFERED_OPTION`

  Show buffered operations in a separate `Frame`.

  `static final int`

  `FLASH_OPTION`

  Flash graphics operations.

  `static final int`

  `LOG_OPTION`

  Log graphics operations.

  `static final int`

  `NONE_OPTION`

  Don't debug graphics operations.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DebugGraphics()`

  Constructs a new debug graphics context that supports slowed
  down drawing.

  `DebugGraphics(Graphics graphics)`

  Constructs a debug graphics context from an existing graphics
  context that supports slowed down drawing.

  `DebugGraphics(Graphics graphics,
  JComponent component)`

  Constructs a debug graphics context from an existing graphics
  context that slows down drawing for the specified component.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `clearRect(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.clearRect`.

  `void`

  `clipRect(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.clipRect`.

  `void`

  `copyArea(int x,
  int y,
  int width,
  int height,
  int destX,
  int destY)`

  Overrides `Graphics.copyArea`.

  `Graphics`

  `create()`

  Overrides `Graphics.create` to return a DebugGraphics object.

  `Graphics`

  `create(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.create` to return a DebugGraphics object.

  `void`

  `dispose()`

  Overrides `Graphics.dispose`.

  `void`

  `draw3DRect(int x,
  int y,
  int width,
  int height,
  boolean raised)`

  Overrides `Graphics.draw3DRect`.

  `void`

  `drawArc(int x,
  int y,
  int width,
  int height,
  int startAngle,
  int arcAngle)`

  Overrides `Graphics.drawArc`.

  `void`

  `drawBytes(byte[] data,
  int offset,
  int length,
  int x,
  int y)`

  Overrides `Graphics.drawBytes`.

  `void`

  `drawChars(char[] data,
  int offset,
  int length,
  int x,
  int y)`

  Overrides `Graphics.drawChars`.

  `boolean`

  `drawImage(Image img,
  int dx1,
  int dy1,
  int dx2,
  int dy2,
  int sx1,
  int sy1,
  int sx2,
  int sy2,
  Color bgcolor,
  ImageObserver observer)`

  Overrides `Graphics.drawImage`.

  `boolean`

  `drawImage(Image img,
  int dx1,
  int dy1,
  int dx2,
  int dy2,
  int sx1,
  int sy1,
  int sx2,
  int sy2,
  ImageObserver observer)`

  Overrides `Graphics.drawImage`.

  `boolean`

  `drawImage(Image img,
  int x,
  int y,
  int width,
  int height,
  Color bgcolor,
  ImageObserver observer)`

  Overrides `Graphics.drawImage`.

  `boolean`

  `drawImage(Image img,
  int x,
  int y,
  int width,
  int height,
  ImageObserver observer)`

  Overrides `Graphics.drawImage`.

  `boolean`

  `drawImage(Image img,
  int x,
  int y,
  Color bgcolor,
  ImageObserver observer)`

  Overrides `Graphics.drawImage`.

  `boolean`

  `drawImage(Image img,
  int x,
  int y,
  ImageObserver observer)`

  Overrides `Graphics.drawImage`.

  `void`

  `drawLine(int x1,
  int y1,
  int x2,
  int y2)`

  Overrides `Graphics.drawLine`.

  `void`

  `drawOval(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.drawOval`.

  `void`

  `drawPolygon(int[] xPoints,
  int[] yPoints,
  int nPoints)`

  Overrides `Graphics.drawPolygon`.

  `void`

  `drawPolyline(int[] xPoints,
  int[] yPoints,
  int nPoints)`

  Overrides `Graphics.drawPolyline`.

  `void`

  `drawRect(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.drawRect`.

  `void`

  `drawRoundRect(int x,
  int y,
  int width,
  int height,
  int arcWidth,
  int arcHeight)`

  Overrides `Graphics.drawRoundRect`.

  `void`

  `drawString(String aString,
  int x,
  int y)`

  Overrides `Graphics.drawString`.

  `void`

  `drawString(AttributedCharacterIterator iterator,
  int x,
  int y)`

  Overrides `Graphics.drawString`.

  `void`

  `fill3DRect(int x,
  int y,
  int width,
  int height,
  boolean raised)`

  Overrides `Graphics.fill3DRect`.

  `void`

  `fillArc(int x,
  int y,
  int width,
  int height,
  int startAngle,
  int arcAngle)`

  Overrides `Graphics.fillArc`.

  `void`

  `fillOval(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.fillOval`.

  `void`

  `fillPolygon(int[] xPoints,
  int[] yPoints,
  int nPoints)`

  Overrides `Graphics.fillPolygon`.

  `void`

  `fillRect(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.fillRect`.

  `void`

  `fillRoundRect(int x,
  int y,
  int width,
  int height,
  int arcWidth,
  int arcHeight)`

  Overrides `Graphics.fillRoundRect`.

  `static Color`

  `flashColor()`

  Returns the Color used to flash drawing operations.

  `static int`

  `flashCount()`

  Returns the number of times that drawing operations will flash.

  `static int`

  `flashTime()`

  Returns the time delay of drawing operation flashing.

  `Shape`

  `getClip()`

  Overrides `Graphics.getClip`.

  `Rectangle`

  `getClipBounds()`

  Overrides `Graphics.getClipBounds`.

  `Color`

  `getColor()`

  Returns the Color used for text drawing operations.

  `int`

  `getDebugOptions()`

  Returns the current debugging options for this DebugGraphics.

  `Font`

  `getFont()`

  Returns the Font used for text drawing operations.

  `FontMetrics`

  `getFontMetrics()`

  Overrides `Graphics.getFontMetrics`.

  `FontMetrics`

  `getFontMetrics(Font f)`

  Overrides `Graphics.getFontMetrics`.

  `boolean`

  `isDrawingBuffer()`

  Returns the drawingBuffer value.

  `static PrintStream`

  `logStream()`

  Returns the stream to which the DebugGraphics logs drawing operations.

  `void`

  `setClip(int x,
  int y,
  int width,
  int height)`

  Overrides `Graphics.setClip`.

  `void`

  `setClip(Shape clip)`

  Overrides `Graphics.setClip`.

  `void`

  `setColor(Color aColor)`

  Sets the color to be used for drawing and filling lines and shapes.

  `void`

  `setDebugOptions(int options)`

  Enables/disables diagnostic information about every graphics
  operation.

  `static void`

  `setFlashColor(Color flashColor)`

  Sets the Color used to flash drawing operations.

  `static void`

  `setFlashCount(int flashCount)`

  Sets the number of times that drawing operations will flash.

  `static void`

  `setFlashTime(int flashTime)`

  Sets the time delay of drawing operation flashing.

  `void`

  `setFont(Font aFont)`

  Sets the Font used for text drawing operations.

  `static void`

  `setLogStream(PrintStream stream)`

  Sets the stream to which the DebugGraphics logs drawing operations.

  `void`

  `setPaintMode()`

  Overrides `Graphics.setPaintMode`.

  `void`

  `setXORMode(Color aColor)`

  Overrides `Graphics.setXORMode`.

  `void`

  `translate(int x,
  int y)`

  Overrides `Graphics.translate`.

  ### Methods inherited from class java.awt.[Graphics](../../java/awt/Graphics.md "class in java.awt")

  `drawPolygon, fillPolygon, finalize, getClipBounds, getClipRect, hitClip, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### LOG\_OPTION

    public static final int LOG\_OPTION

    Log graphics operations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.DebugGraphics.LOG_OPTION)
  + ### FLASH\_OPTION

    public static final int FLASH\_OPTION

    Flash graphics operations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.DebugGraphics.FLASH_OPTION)
  + ### BUFFERED\_OPTION

    public static final int BUFFERED\_OPTION

    Show buffered operations in a separate `Frame`.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.DebugGraphics.BUFFERED_OPTION)
  + ### NONE\_OPTION

    public static final int NONE\_OPTION

    Don't debug graphics operations.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.DebugGraphics.NONE_OPTION)
* ## Constructor Details

  + ### DebugGraphics

    public DebugGraphics()

    Constructs a new debug graphics context that supports slowed
    down drawing.

    NOTE: This constructor should not be called by
    applications, it is for internal use only. When called directly
    it will create an un-usable instance.
  + ### DebugGraphics

    public DebugGraphics([Graphics](../../java/awt/Graphics.md "class in java.awt") graphics,
    [JComponent](JComponent.md "class in javax.swing") component)

    Constructs a debug graphics context from an existing graphics
    context that slows down drawing for the specified component.

    Parameters:
    :   `graphics` - the Graphics context to slow down
    :   `component` - the JComponent to draw slowly
  + ### DebugGraphics

    public DebugGraphics([Graphics](../../java/awt/Graphics.md "class in java.awt") graphics)

    Constructs a debug graphics context from an existing graphics
    context that supports slowed down drawing.

    Parameters:
    :   `graphics` - the Graphics context to slow down
* ## Method Details

  + ### create

    public [Graphics](../../java/awt/Graphics.md "class in java.awt") create()

    Overrides `Graphics.create` to return a DebugGraphics object.

    Specified by:
    :   `create` in class `Graphics`

    Returns:
    :   a new graphics context that is a copy of
        this graphics context.
  + ### create

    public [Graphics](../../java/awt/Graphics.md "class in java.awt") create(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.create` to return a DebugGraphics object.

    Overrides:
    :   `create` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
    :   `width` - the width of the clipping rectangle.
    :   `height` - the height of the clipping rectangle.

    Returns:
    :   a new graphics context.

    See Also:
    :   - [`Graphics.translate(int, int)`](../../java/awt/Graphics.md#translate(int,int))
        - [`Graphics.clipRect(int, int, int, int)`](../../java/awt/Graphics.md#clipRect(int,int,int,int))
  + ### setFlashColor

    public static void setFlashColor([Color](../../java/awt/Color.md "class in java.awt") flashColor)

    Sets the Color used to flash drawing operations.

    Parameters:
    :   `flashColor` - the Color used to flash drawing operations
  + ### flashColor

    public static [Color](../../java/awt/Color.md "class in java.awt") flashColor()

    Returns the Color used to flash drawing operations.

    Returns:
    :   the Color used to flash drawing operations

    See Also:
    :   - [`setFlashColor(java.awt.Color)`](#setFlashColor(java.awt.Color))
  + ### setFlashTime

    public static void setFlashTime(int flashTime)

    Sets the time delay of drawing operation flashing.

    Parameters:
    :   `flashTime` - the time delay of drawing operation flashing
  + ### flashTime

    public static int flashTime()

    Returns the time delay of drawing operation flashing.

    Returns:
    :   the time delay of drawing operation flashing

    See Also:
    :   - [`setFlashTime(int)`](#setFlashTime(int))
  + ### setFlashCount

    public static void setFlashCount(int flashCount)

    Sets the number of times that drawing operations will flash.

    Parameters:
    :   `flashCount` - number of times that drawing operations will flash
  + ### flashCount

    public static int flashCount()

    Returns the number of times that drawing operations will flash.

    Returns:
    :   the number of times that drawing operations will flash

    See Also:
    :   - [`setFlashCount(int)`](#setFlashCount(int))
  + ### setLogStream

    public static void setLogStream([PrintStream](../../../java.base/java/io/PrintStream.md "class in java.io") stream)

    Sets the stream to which the DebugGraphics logs drawing operations.

    Parameters:
    :   `stream` - the stream to which the DebugGraphics logs drawing operations
  + ### logStream

    public static [PrintStream](../../../java.base/java/io/PrintStream.md "class in java.io") logStream()

    Returns the stream to which the DebugGraphics logs drawing operations.

    Returns:
    :   the stream to which the DebugGraphics logs drawing operations

    See Also:
    :   - [`setLogStream(java.io.PrintStream)`](#setLogStream(java.io.PrintStream))
  + ### setFont

    public void setFont([Font](../../java/awt/Font.md "class in java.awt") aFont)

    Sets the Font used for text drawing operations.

    Specified by:
    :   `setFont` in class `Graphics`

    Parameters:
    :   `aFont` - the font.

    See Also:
    :   - [`Graphics.getFont()`](../../java/awt/Graphics.md#getFont())
        - [`Graphics.drawString(java.lang.String, int, int)`](../../java/awt/Graphics.md#drawString(java.lang.String,int,int))
        - [`Graphics.drawBytes(byte[], int, int, int, int)`](../../java/awt/Graphics.md#drawBytes(byte%5B%5D,int,int,int,int))
        - [`Graphics.drawChars(char[], int, int, int, int)`](../../java/awt/Graphics.md#drawChars(char%5B%5D,int,int,int,int))
  + ### getFont

    public [Font](../../java/awt/Font.md "class in java.awt") getFont()

    Returns the Font used for text drawing operations.

    Specified by:
    :   `getFont` in class `Graphics`

    Returns:
    :   this graphics context's current font.

    See Also:
    :   - [`setFont(java.awt.Font)`](#setFont(java.awt.Font))
  + ### setColor

    public void setColor([Color](../../java/awt/Color.md "class in java.awt") aColor)

    Sets the color to be used for drawing and filling lines and shapes.

    Specified by:
    :   `setColor` in class `Graphics`

    Parameters:
    :   `aColor` - the new rendering color.

    See Also:
    :   - [`Color`](../../java/awt/Color.md "class in java.awt")
        - [`Graphics.getColor()`](../../java/awt/Graphics.md#getColor())
  + ### getColor

    public [Color](../../java/awt/Color.md "class in java.awt") getColor()

    Returns the Color used for text drawing operations.

    Specified by:
    :   `getColor` in class `Graphics`

    Returns:
    :   this graphics context's current color.

    See Also:
    :   - [`setColor(java.awt.Color)`](#setColor(java.awt.Color))
  + ### getFontMetrics

    public [FontMetrics](../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics()

    Overrides `Graphics.getFontMetrics`.

    Overrides:
    :   `getFontMetrics` in class `Graphics`

    Returns:
    :   the font metrics of this graphics
        context's current font.

    See Also:
    :   - [`Graphics.getFont()`](../../java/awt/Graphics.md#getFont())
        - [`FontMetrics`](../../java/awt/FontMetrics.md "class in java.awt")
        - [`Graphics.getFontMetrics(Font)`](../../java/awt/Graphics.md#getFontMetrics(java.awt.Font))
  + ### getFontMetrics

    public [FontMetrics](../../java/awt/FontMetrics.md "class in java.awt") getFontMetrics([Font](../../java/awt/Font.md "class in java.awt") f)

    Overrides `Graphics.getFontMetrics`.

    Specified by:
    :   `getFontMetrics` in class `Graphics`

    Parameters:
    :   `f` - the specified font

    Returns:
    :   the font metrics for the specified font.

    See Also:
    :   - [`Graphics.getFont()`](../../java/awt/Graphics.md#getFont())
        - [`FontMetrics`](../../java/awt/FontMetrics.md "class in java.awt")
        - [`Graphics.getFontMetrics()`](../../java/awt/Graphics.md#getFontMetrics())
  + ### translate

    public void translate(int x,
    int y)

    Overrides `Graphics.translate`.

    Specified by:
    :   `translate` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
  + ### setPaintMode

    public void setPaintMode()

    Overrides `Graphics.setPaintMode`.

    Specified by:
    :   `setPaintMode` in class `Graphics`
  + ### setXORMode

    public void setXORMode([Color](../../java/awt/Color.md "class in java.awt") aColor)

    Overrides `Graphics.setXORMode`.

    Specified by:
    :   `setXORMode` in class `Graphics`

    Parameters:
    :   `aColor` - the XOR alternation color
  + ### getClipBounds

    public [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getClipBounds()

    Overrides `Graphics.getClipBounds`.

    Specified by:
    :   `getClipBounds` in class `Graphics`

    Returns:
    :   the bounding rectangle of the current clipping area,
        or `null` if no clip is set.

    See Also:
    :   - [`Graphics.getClip()`](../../java/awt/Graphics.md#getClip())
        - [`Graphics.clipRect(int, int, int, int)`](../../java/awt/Graphics.md#clipRect(int,int,int,int))
        - [`Graphics.setClip(int, int, int, int)`](../../java/awt/Graphics.md#setClip(int,int,int,int))
        - [`Graphics.setClip(Shape)`](../../java/awt/Graphics.md#setClip(java.awt.Shape))
  + ### clipRect

    public void clipRect(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.clipRect`.

    Specified by:
    :   `clipRect` in class `Graphics`

    Parameters:
    :   `x` - the x coordinate of the rectangle to intersect the clip with
    :   `y` - the y coordinate of the rectangle to intersect the clip with
    :   `width` - the width of the rectangle to intersect the clip with
    :   `height` - the height of the rectangle to intersect the clip with

    See Also:
    :   - [`Graphics.setClip(int, int, int, int)`](../../java/awt/Graphics.md#setClip(int,int,int,int))
        - [`Graphics.setClip(Shape)`](../../java/awt/Graphics.md#setClip(java.awt.Shape))
  + ### setClip

    public void setClip(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.setClip`.

    Specified by:
    :   `setClip` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the new clip rectangle.
    :   `y` - the *y* coordinate of the new clip rectangle.
    :   `width` - the width of the new clip rectangle.
    :   `height` - the height of the new clip rectangle.

    See Also:
    :   - [`Graphics.clipRect(int, int, int, int)`](../../java/awt/Graphics.md#clipRect(int,int,int,int))
        - [`Graphics.setClip(Shape)`](../../java/awt/Graphics.md#setClip(java.awt.Shape))
        - [`Graphics.getClip()`](../../java/awt/Graphics.md#getClip())
  + ### getClip

    public [Shape](../../java/awt/Shape.md "interface in java.awt") getClip()

    Overrides `Graphics.getClip`.

    Specified by:
    :   `getClip` in class `Graphics`

    Returns:
    :   a `Shape` object representing the
        current clipping area, or `null` if
        no clip is set.

    See Also:
    :   - [`Graphics.getClipBounds()`](../../java/awt/Graphics.md#getClipBounds())
        - [`Graphics.clipRect(int, int, int, int)`](../../java/awt/Graphics.md#clipRect(int,int,int,int))
        - [`Graphics.setClip(int, int, int, int)`](../../java/awt/Graphics.md#setClip(int,int,int,int))
        - [`Graphics.setClip(Shape)`](../../java/awt/Graphics.md#setClip(java.awt.Shape))
  + ### setClip

    public void setClip([Shape](../../java/awt/Shape.md "interface in java.awt") clip)

    Overrides `Graphics.setClip`.

    Specified by:
    :   `setClip` in class `Graphics`

    Parameters:
    :   `clip` - the `Shape` to use to set the clip.
        Passing `null` clears the current `clip`.

    See Also:
    :   - [`Graphics.getClip()`](../../java/awt/Graphics.md#getClip())
        - [`Graphics.clipRect(int, int, int, int)`](../../java/awt/Graphics.md#clipRect(int,int,int,int))
        - [`Graphics.setClip(int, int, int, int)`](../../java/awt/Graphics.md#setClip(int,int,int,int))
  + ### drawRect

    public void drawRect(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.drawRect`.

    Overrides:
    :   `drawRect` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate
        of the rectangle to be drawn.
    :   `y` - the *y* coordinate
        of the rectangle to be drawn.
    :   `width` - the width of the rectangle to be drawn.
    :   `height` - the height of the rectangle to be drawn.

    See Also:
    :   - [`Graphics.fillRect(int, int, int, int)`](../../java/awt/Graphics.md#fillRect(int,int,int,int))
        - [`Graphics.clearRect(int, int, int, int)`](../../java/awt/Graphics.md#clearRect(int,int,int,int))
  + ### fillRect

    public void fillRect(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.fillRect`.

    Specified by:
    :   `fillRect` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate
        of the rectangle to be filled.
    :   `y` - the *y* coordinate
        of the rectangle to be filled.
    :   `width` - the width of the rectangle to be filled.
    :   `height` - the height of the rectangle to be filled.

    See Also:
    :   - [`Graphics.clearRect(int, int, int, int)`](../../java/awt/Graphics.md#clearRect(int,int,int,int))
        - [`Graphics.drawRect(int, int, int, int)`](../../java/awt/Graphics.md#drawRect(int,int,int,int))
  + ### clearRect

    public void clearRect(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.clearRect`.

    Specified by:
    :   `clearRect` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the rectangle to clear.
    :   `y` - the *y* coordinate of the rectangle to clear.
    :   `width` - the width of the rectangle to clear.
    :   `height` - the height of the rectangle to clear.

    See Also:
    :   - [`Graphics.fillRect(int, int, int, int)`](../../java/awt/Graphics.md#fillRect(int,int,int,int))
        - [`Graphics.drawRect(int, int, int, int)`](../../java/awt/Graphics.md#drawRect(int,int,int,int))
        - [`Graphics.setColor(java.awt.Color)`](../../java/awt/Graphics.md#setColor(java.awt.Color))
        - [`Graphics.setPaintMode()`](../../java/awt/Graphics.md#setPaintMode())
        - [`Graphics.setXORMode(java.awt.Color)`](../../java/awt/Graphics.md#setXORMode(java.awt.Color))
  + ### drawRoundRect

    public void drawRoundRect(int x,
    int y,
    int width,
    int height,
    int arcWidth,
    int arcHeight)

    Overrides `Graphics.drawRoundRect`.

    Specified by:
    :   `drawRoundRect` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the rectangle to be drawn.
    :   `y` - the *y* coordinate of the rectangle to be drawn.
    :   `width` - the width of the rectangle to be drawn.
    :   `height` - the height of the rectangle to be drawn.
    :   `arcWidth` - the horizontal diameter of the arc
        at the four corners.
    :   `arcHeight` - the vertical diameter of the arc
        at the four corners.

    See Also:
    :   - [`Graphics.fillRoundRect(int, int, int, int, int, int)`](../../java/awt/Graphics.md#fillRoundRect(int,int,int,int,int,int))
  + ### fillRoundRect

    public void fillRoundRect(int x,
    int y,
    int width,
    int height,
    int arcWidth,
    int arcHeight)

    Overrides `Graphics.fillRoundRect`.

    Specified by:
    :   `fillRoundRect` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the rectangle to be filled.
    :   `y` - the *y* coordinate of the rectangle to be filled.
    :   `width` - the width of the rectangle to be filled.
    :   `height` - the height of the rectangle to be filled.
    :   `arcWidth` - the horizontal diameter
        of the arc at the four corners.
    :   `arcHeight` - the vertical diameter
        of the arc at the four corners.

    See Also:
    :   - [`Graphics.drawRoundRect(int, int, int, int, int, int)`](../../java/awt/Graphics.md#drawRoundRect(int,int,int,int,int,int))
  + ### drawLine

    public void drawLine(int x1,
    int y1,
    int x2,
    int y2)

    Overrides `Graphics.drawLine`.

    Specified by:
    :   `drawLine` in class `Graphics`

    Parameters:
    :   `x1` - the first point's *x* coordinate.
    :   `y1` - the first point's *y* coordinate.
    :   `x2` - the second point's *x* coordinate.
    :   `y2` - the second point's *y* coordinate.
  + ### draw3DRect

    public void draw3DRect(int x,
    int y,
    int width,
    int height,
    boolean raised)

    Overrides `Graphics.draw3DRect`.

    Overrides:
    :   `draw3DRect` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the rectangle to be drawn.
    :   `y` - the *y* coordinate of the rectangle to be drawn.
    :   `width` - the width of the rectangle to be drawn.
    :   `height` - the height of the rectangle to be drawn.
    :   `raised` - a boolean that determines whether the rectangle
        appears to be raised above the surface
        or sunk into the surface.

    See Also:
    :   - [`Graphics.fill3DRect(int, int, int, int, boolean)`](../../java/awt/Graphics.md#fill3DRect(int,int,int,int,boolean))
  + ### fill3DRect

    public void fill3DRect(int x,
    int y,
    int width,
    int height,
    boolean raised)

    Overrides `Graphics.fill3DRect`.

    Overrides:
    :   `fill3DRect` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the rectangle to be filled.
    :   `y` - the *y* coordinate of the rectangle to be filled.
    :   `width` - the width of the rectangle to be filled.
    :   `height` - the height of the rectangle to be filled.
    :   `raised` - a boolean value that determines whether the
        rectangle appears to be raised above the surface
        or etched into the surface.

    See Also:
    :   - [`Graphics.draw3DRect(int, int, int, int, boolean)`](../../java/awt/Graphics.md#draw3DRect(int,int,int,int,boolean))
  + ### drawOval

    public void drawOval(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.drawOval`.

    Specified by:
    :   `drawOval` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the upper left
        corner of the oval to be drawn.
    :   `y` - the *y* coordinate of the upper left
        corner of the oval to be drawn.
    :   `width` - the width of the oval to be drawn.
    :   `height` - the height of the oval to be drawn.

    See Also:
    :   - [`Graphics.fillOval(int, int, int, int)`](../../java/awt/Graphics.md#fillOval(int,int,int,int))
  + ### fillOval

    public void fillOval(int x,
    int y,
    int width,
    int height)

    Overrides `Graphics.fillOval`.

    Specified by:
    :   `fillOval` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the upper left corner
        of the oval to be filled.
    :   `y` - the *y* coordinate of the upper left corner
        of the oval to be filled.
    :   `width` - the width of the oval to be filled.
    :   `height` - the height of the oval to be filled.

    See Also:
    :   - [`Graphics.drawOval(int, int, int, int)`](../../java/awt/Graphics.md#drawOval(int,int,int,int))
  + ### drawArc

    public void drawArc(int x,
    int y,
    int width,
    int height,
    int startAngle,
    int arcAngle)

    Overrides `Graphics.drawArc`.

    Specified by:
    :   `drawArc` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the
        upper-left corner of the arc to be drawn.
    :   `y` - the *y* coordinate of the
        upper-left corner of the arc to be drawn.
    :   `width` - the width of the arc to be drawn.
    :   `height` - the height of the arc to be drawn.
    :   `startAngle` - the beginning angle.
    :   `arcAngle` - the angular extent of the arc,
        relative to the start angle.

    See Also:
    :   - [`Graphics.fillArc(int, int, int, int, int, int)`](../../java/awt/Graphics.md#fillArc(int,int,int,int,int,int))
  + ### fillArc

    public void fillArc(int x,
    int y,
    int width,
    int height,
    int startAngle,
    int arcAngle)

    Overrides `Graphics.fillArc`.

    Specified by:
    :   `fillArc` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the
        upper-left corner of the arc to be filled.
    :   `y` - the *y* coordinate of the
        upper-left corner of the arc to be filled.
    :   `width` - the width of the arc to be filled.
    :   `height` - the height of the arc to be filled.
    :   `startAngle` - the beginning angle.
    :   `arcAngle` - the angular extent of the arc,
        relative to the start angle.

    See Also:
    :   - [`Graphics.drawArc(int, int, int, int, int, int)`](../../java/awt/Graphics.md#drawArc(int,int,int,int,int,int))
  + ### drawPolyline

    public void drawPolyline(int[] xPoints,
    int[] yPoints,
    int nPoints)

    Overrides `Graphics.drawPolyline`.

    Specified by:
    :   `drawPolyline` in class `Graphics`

    Parameters:
    :   `xPoints` - an array of *x* points
    :   `yPoints` - an array of *y* points
    :   `nPoints` - the total number of points

    See Also:
    :   - [`Graphics.drawPolygon(int[], int[], int)`](../../java/awt/Graphics.md#drawPolygon(int%5B%5D,int%5B%5D,int))
  + ### drawPolygon

    public void drawPolygon(int[] xPoints,
    int[] yPoints,
    int nPoints)

    Overrides `Graphics.drawPolygon`.

    Specified by:
    :   `drawPolygon` in class `Graphics`

    Parameters:
    :   `xPoints` - an array of `x` coordinates.
    :   `yPoints` - an array of `y` coordinates.
    :   `nPoints` - the total number of points.

    See Also:
    :   - [`Graphics.fillPolygon(int[], int[], int)`](../../java/awt/Graphics.md#fillPolygon(int%5B%5D,int%5B%5D,int))
        - [`Graphics.drawPolyline(int[], int[], int)`](../../java/awt/Graphics.md#drawPolyline(int%5B%5D,int%5B%5D,int))
  + ### fillPolygon

    public void fillPolygon(int[] xPoints,
    int[] yPoints,
    int nPoints)

    Overrides `Graphics.fillPolygon`.

    Specified by:
    :   `fillPolygon` in class `Graphics`

    Parameters:
    :   `xPoints` - an array of `x` coordinates.
    :   `yPoints` - an array of `y` coordinates.
    :   `nPoints` - the total number of points.

    See Also:
    :   - [`Graphics.drawPolygon(int[], int[], int)`](../../java/awt/Graphics.md#drawPolygon(int%5B%5D,int%5B%5D,int))
  + ### drawString

    public void drawString([String](../../../java.base/java/lang/String.md "class in java.lang") aString,
    int x,
    int y)

    Overrides `Graphics.drawString`.

    Specified by:
    :   `drawString` in class `Graphics`

    Parameters:
    :   `aString` - the string to be drawn.
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.

    See Also:
    :   - [`Graphics.drawBytes(byte[], int, int, int, int)`](../../java/awt/Graphics.md#drawBytes(byte%5B%5D,int,int,int,int))
        - [`Graphics.drawChars(char[], int, int, int, int)`](../../java/awt/Graphics.md#drawChars(char%5B%5D,int,int,int,int))
  + ### drawString

    public void drawString([AttributedCharacterIterator](../../../java.base/java/text/AttributedCharacterIterator.md "interface in java.text") iterator,
    int x,
    int y)

    Overrides `Graphics.drawString`.

    Specified by:
    :   `drawString` in class `Graphics`

    Parameters:
    :   `iterator` - the iterator whose text is to be drawn
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.

    See Also:
    :   - [`Graphics.drawBytes(byte[], int, int, int, int)`](../../java/awt/Graphics.md#drawBytes(byte%5B%5D,int,int,int,int))
        - [`Graphics.drawChars(char[], int, int, int, int)`](../../java/awt/Graphics.md#drawChars(char%5B%5D,int,int,int,int))
  + ### drawBytes

    public void drawBytes(byte[] data,
    int offset,
    int length,
    int x,
    int y)

    Overrides `Graphics.drawBytes`.

    Overrides:
    :   `drawBytes` in class `Graphics`

    Parameters:
    :   `data` - the data to be drawn
    :   `offset` - the start offset in the data
    :   `length` - the number of bytes that are drawn
    :   `x` - the *x* coordinate of the baseline of the text
    :   `y` - the *y* coordinate of the baseline of the text

    See Also:
    :   - [`Graphics.drawChars(char[], int, int, int, int)`](../../java/awt/Graphics.md#drawChars(char%5B%5D,int,int,int,int))
        - [`Graphics.drawString(java.lang.String, int, int)`](../../java/awt/Graphics.md#drawString(java.lang.String,int,int))
  + ### drawChars

    public void drawChars(char[] data,
    int offset,
    int length,
    int x,
    int y)

    Overrides `Graphics.drawChars`.

    Overrides:
    :   `drawChars` in class `Graphics`

    Parameters:
    :   `data` - the array of characters to be drawn
    :   `offset` - the start offset in the data
    :   `length` - the number of characters to be drawn
    :   `x` - the *x* coordinate of the baseline of the text
    :   `y` - the *y* coordinate of the baseline of the text

    See Also:
    :   - [`Graphics.drawBytes(byte[], int, int, int, int)`](../../java/awt/Graphics.md#drawBytes(byte%5B%5D,int,int,int,int))
        - [`Graphics.drawString(java.lang.String, int, int)`](../../java/awt/Graphics.md#drawString(java.lang.String,int,int))
  + ### drawImage

    public boolean drawImage([Image](../../java/awt/Image.md "class in java.awt") img,
    int x,
    int y,
    [ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") observer)

    Overrides `Graphics.drawImage`.

    Specified by:
    :   `drawImage` in class `Graphics`

    Parameters:
    :   `img` - the specified image to be drawn. This method does
        nothing if `img` is null.
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
    :   `observer` - object to be notified as more of
        the image is converted.

    Returns:
    :   `false` if the image pixels are still changing;
        `true` otherwise.

    See Also:
    :   - [`Image`](../../java/awt/Image.md "class in java.awt")
        - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### drawImage

    public boolean drawImage([Image](../../java/awt/Image.md "class in java.awt") img,
    int x,
    int y,
    int width,
    int height,
    [ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") observer)

    Overrides `Graphics.drawImage`.

    Specified by:
    :   `drawImage` in class `Graphics`

    Parameters:
    :   `img` - the specified image to be drawn. This method does
        nothing if `img` is null.
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
    :   `width` - the width of the rectangle.
    :   `height` - the height of the rectangle.
    :   `observer` - object to be notified as more of
        the image is converted.

    Returns:
    :   `false` if the image pixels are still changing;
        `true` otherwise.

    See Also:
    :   - [`Image`](../../java/awt/Image.md "class in java.awt")
        - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### drawImage

    public boolean drawImage([Image](../../java/awt/Image.md "class in java.awt") img,
    int x,
    int y,
    [Color](../../java/awt/Color.md "class in java.awt") bgcolor,
    [ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") observer)

    Overrides `Graphics.drawImage`.

    Specified by:
    :   `drawImage` in class `Graphics`

    Parameters:
    :   `img` - the specified image to be drawn. This method does
        nothing if `img` is null.
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
    :   `bgcolor` - the background color to paint under the
        non-opaque portions of the image.
    :   `observer` - object to be notified as more of
        the image is converted.

    Returns:
    :   `false` if the image pixels are still changing;
        `true` otherwise.

    See Also:
    :   - [`Image`](../../java/awt/Image.md "class in java.awt")
        - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### drawImage

    public boolean drawImage([Image](../../java/awt/Image.md "class in java.awt") img,
    int x,
    int y,
    int width,
    int height,
    [Color](../../java/awt/Color.md "class in java.awt") bgcolor,
    [ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") observer)

    Overrides `Graphics.drawImage`.

    Specified by:
    :   `drawImage` in class `Graphics`

    Parameters:
    :   `img` - the specified image to be drawn. This method does
        nothing if `img` is null.
    :   `x` - the *x* coordinate.
    :   `y` - the *y* coordinate.
    :   `width` - the width of the rectangle.
    :   `height` - the height of the rectangle.
    :   `bgcolor` - the background color to paint under the
        non-opaque portions of the image.
    :   `observer` - object to be notified as more of
        the image is converted.

    Returns:
    :   `false` if the image pixels are still changing;
        `true` otherwise.

    See Also:
    :   - [`Image`](../../java/awt/Image.md "class in java.awt")
        - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### drawImage

    public boolean drawImage([Image](../../java/awt/Image.md "class in java.awt") img,
    int dx1,
    int dy1,
    int dx2,
    int dy2,
    int sx1,
    int sy1,
    int sx2,
    int sy2,
    [ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") observer)

    Overrides `Graphics.drawImage`.

    Specified by:
    :   `drawImage` in class `Graphics`

    Parameters:
    :   `img` - the specified image to be drawn. This method does
        nothing if `img` is null.
    :   `dx1` - the *x* coordinate of the first corner of the
        destination rectangle.
    :   `dy1` - the *y* coordinate of the first corner of the
        destination rectangle.
    :   `dx2` - the *x* coordinate of the second corner of the
        destination rectangle.
    :   `dy2` - the *y* coordinate of the second corner of the
        destination rectangle.
    :   `sx1` - the *x* coordinate of the first corner of the
        source rectangle.
    :   `sy1` - the *y* coordinate of the first corner of the
        source rectangle.
    :   `sx2` - the *x* coordinate of the second corner of the
        source rectangle.
    :   `sy2` - the *y* coordinate of the second corner of the
        source rectangle.
    :   `observer` - object to be notified as more of the image is
        scaled and converted.

    Returns:
    :   `false` if the image pixels are still changing;
        `true` otherwise.

    See Also:
    :   - [`Image`](../../java/awt/Image.md "class in java.awt")
        - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### drawImage

    public boolean drawImage([Image](../../java/awt/Image.md "class in java.awt") img,
    int dx1,
    int dy1,
    int dx2,
    int dy2,
    int sx1,
    int sy1,
    int sx2,
    int sy2,
    [Color](../../java/awt/Color.md "class in java.awt") bgcolor,
    [ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image") observer)

    Overrides `Graphics.drawImage`.

    Specified by:
    :   `drawImage` in class `Graphics`

    Parameters:
    :   `img` - the specified image to be drawn. This method does
        nothing if `img` is null.
    :   `dx1` - the *x* coordinate of the first corner of the
        destination rectangle.
    :   `dy1` - the *y* coordinate of the first corner of the
        destination rectangle.
    :   `dx2` - the *x* coordinate of the second corner of the
        destination rectangle.
    :   `dy2` - the *y* coordinate of the second corner of the
        destination rectangle.
    :   `sx1` - the *x* coordinate of the first corner of the
        source rectangle.
    :   `sy1` - the *y* coordinate of the first corner of the
        source rectangle.
    :   `sx2` - the *x* coordinate of the second corner of the
        source rectangle.
    :   `sy2` - the *y* coordinate of the second corner of the
        source rectangle.
    :   `bgcolor` - the background color to paint under the
        non-opaque portions of the image.
    :   `observer` - object to be notified as more of the image is
        scaled and converted.

    Returns:
    :   `false` if the image pixels are still changing;
        `true` otherwise.

    See Also:
    :   - [`Image`](../../java/awt/Image.md "class in java.awt")
        - [`ImageObserver`](../../java/awt/image/ImageObserver.md "interface in java.awt.image")
        - [`ImageObserver.imageUpdate(java.awt.Image, int, int, int, int, int)`](../../java/awt/image/ImageObserver.md#imageUpdate(java.awt.Image,int,int,int,int,int))
  + ### copyArea

    public void copyArea(int x,
    int y,
    int width,
    int height,
    int destX,
    int destY)

    Overrides `Graphics.copyArea`.

    Specified by:
    :   `copyArea` in class `Graphics`

    Parameters:
    :   `x` - the *x* coordinate of the source rectangle.
    :   `y` - the *y* coordinate of the source rectangle.
    :   `width` - the width of the source rectangle.
    :   `height` - the height of the source rectangle.
    :   `destX` - the horizontal distance to copy the pixels.
    :   `destY` - the vertical distance to copy the pixels.
  + ### dispose

    public void dispose()

    Overrides `Graphics.dispose`.

    Specified by:
    :   `dispose` in class `Graphics`

    See Also:
    :   - [`Graphics.finalize()`](../../java/awt/Graphics.md#finalize())
        - [`Component.paint(java.awt.Graphics)`](../../java/awt/Component.md#paint(java.awt.Graphics))
        - [`Component.update(java.awt.Graphics)`](../../java/awt/Component.md#update(java.awt.Graphics))
        - [`Component.getGraphics()`](../../java/awt/Component.md#getGraphics())
        - [`Graphics.create()`](../../java/awt/Graphics.md#create())
  + ### isDrawingBuffer

    public boolean isDrawingBuffer()

    Returns the drawingBuffer value.

    Returns:
    :   true if this object is drawing from a Buffer
  + ### setDebugOptions

    public void setDebugOptions(int options)

    Enables/disables diagnostic information about every graphics
    operation. The value of **options** indicates how this information
    should be displayed. LOG\_OPTION causes a text message to be printed.
    FLASH\_OPTION causes the drawing to flash several times. BUFFERED\_OPTION
    creates a new Frame that shows each operation on an
    offscreen buffer. The value of **options** is bitwise OR'd into
    the current value. To disable debugging use NONE\_OPTION.

    Parameters:
    :   `options` - indicates how diagnostic information should be displayed
  + ### getDebugOptions

    public int getDebugOptions()

    Returns the current debugging options for this DebugGraphics.

    Returns:
    :   the current debugging options for this DebugGraphics

    See Also:
    :   - [`setDebugOptions(int)`](#setDebugOptions(int))