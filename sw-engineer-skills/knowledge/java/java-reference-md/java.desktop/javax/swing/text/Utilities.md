Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class Utilities

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.Utilities

---

public class Utilities
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A collection of methods to deal with various text
related activities.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Utilities()`

  Constructs a `Utilities`.
* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static final float`

  `drawTabbedText(Segment s,
  float x,
  float y,
  Graphics2D g,
  TabExpander e,
  int startOffset)`

  Draws the given text, expanding any tabs that are contained
  using the given tab expansion technique.

  `static final int`

  `drawTabbedText(Segment s,
  int x,
  int y,
  Graphics g,
  TabExpander e,
  int startOffset)`

  Deprecated.

  replaced by
  [`drawTabbedText(Segment, float, float, Graphics2D, TabExpander, int)`](#drawTabbedText(javax.swing.text.Segment,float,float,java.awt.Graphics2D,javax.swing.text.TabExpander,int))

  `static final int`

  `getBreakLocation(Segment s,
  FontMetrics metrics,
  float x0,
  float x,
  TabExpander e,
  int startOffset)`

  Determine where to break the given text to fit
  within the given span.

  `static final int`

  `getBreakLocation(Segment s,
  FontMetrics metrics,
  int x0,
  int x,
  TabExpander e,
  int startOffset)`

  Deprecated.

  replaced by
  [`getBreakLocation(Segment, FontMetrics, float, float, TabExpander, int)`](#getBreakLocation(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int))

  `static final int`

  `getNextWord(JTextComponent c,
  int offs)`

  Determines the start of the next word for the given location.

  `static final Element`

  `getParagraphElement(JTextComponent c,
  int offs)`

  Determines the element to use for a paragraph/line.

  `static final int`

  `getPositionAbove(JTextComponent c,
  int offs,
  float x)`

  Determines the position in the model that is closest to the given
  view location in the row above.

  `static final int`

  `getPositionAbove(JTextComponent c,
  int offs,
  int x)`

  Deprecated.

  replaced by
  [`getPositionAbove(JTextComponent, int, float)`](#getPositionAbove(javax.swing.text.JTextComponent,int,float))

  `static final int`

  `getPositionBelow(JTextComponent c,
  int offs,
  float x)`

  Determines the position in the model that is closest to the given
  view location in the row below.

  `static final int`

  `getPositionBelow(JTextComponent c,
  int offs,
  int x)`

  Deprecated.

  replaced by
  [`getPositionBelow(JTextComponent, int, float)`](#getPositionBelow(javax.swing.text.JTextComponent,int,float))

  `static final int`

  `getPreviousWord(JTextComponent c,
  int offs)`

  Determine the start of the prev word for the given location.

  `static final int`

  `getRowEnd(JTextComponent c,
  int offs)`

  Determines the ending row model position of the row that contains
  the specified model position.

  `static final int`

  `getRowStart(JTextComponent c,
  int offs)`

  Determines the starting row model position of the row that contains
  the specified model position.

  `static final int`

  `getTabbedTextOffset(Segment s,
  FontMetrics metrics,
  float x0,
  float x,
  TabExpander e,
  int startOffset,
  boolean round)`

  Determines the relative offset into the given text that
  best represents the given span in the view coordinate
  system.

  `static final int`

  `getTabbedTextOffset(Segment s,
  FontMetrics metrics,
  int x0,
  int x,
  TabExpander e,
  int startOffset)`

  Deprecated.

  replaced by
  [`getTabbedTextOffset(Segment, FontMetrics, float, float, TabExpander, int, boolean)`](#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int,boolean))

  `static final int`

  `getTabbedTextOffset(Segment s,
  FontMetrics metrics,
  int x0,
  int x,
  TabExpander e,
  int startOffset,
  boolean round)`

  Deprecated.

  replaced by
  [`getTabbedTextOffset(Segment, FontMetrics, float, float, TabExpander, int, boolean)`](#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int,boolean))

  `static final float`

  `getTabbedTextWidth(Segment s,
  FontMetrics metrics,
  float x,
  TabExpander e,
  int startOffset)`

  Determines the width of the given segment of text taking tabs
  into consideration.

  `static final int`

  `getTabbedTextWidth(Segment s,
  FontMetrics metrics,
  int x,
  TabExpander e,
  int startOffset)`

  Deprecated.

  replaced by
  [`getTabbedTextWidth(Segment, FontMetrics, float, TabExpander, int)`](#getTabbedTextWidth(javax.swing.text.Segment,java.awt.FontMetrics,float,javax.swing.text.TabExpander,int))

  `static final int`

  `getWordEnd(JTextComponent c,
  int offs)`

  Determines the end of a word for the given location.

  `static final int`

  `getWordStart(JTextComponent c,
  int offs)`

  Determines the start of a word for the given model location.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Utilities

    public Utilities()

    Constructs a `Utilities`.
* ## Method Details

  + ### drawTabbedText

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int drawTabbedText([Segment](Segment.md "class in javax.swing.text") s,
    int x,
    int y,
    [Graphics](../../../java/awt/Graphics.md "class in java.awt") g,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset)

    Deprecated.

    replaced by
    [`drawTabbedText(Segment, float, float, Graphics2D, TabExpander, int)`](#drawTabbedText(javax.swing.text.Segment,float,float,java.awt.Graphics2D,javax.swing.text.TabExpander,int))

    Draws the given text, expanding any tabs that are contained
    using the given tab expansion technique. This particular
    implementation renders in a 1.1 style coordinate system
    where ints are used and 72dpi is assumed.

    Parameters:
    :   `s` - the source of the text
    :   `x` - the X origin >= 0
    :   `y` - the Y origin >= 0
    :   `g` - the graphics context
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset of the text in the document >= 0

    Returns:
    :   the X location at the end of the rendered text
  + ### drawTabbedText

    public static final float drawTabbedText([Segment](Segment.md "class in javax.swing.text") s,
    float x,
    float y,
    [Graphics2D](../../../java/awt/Graphics2D.md "class in java.awt") g,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset)

    Draws the given text, expanding any tabs that are contained
    using the given tab expansion technique.

    Parameters:
    :   `s` - the source of the text
    :   `x` - the X origin `>= 0`
    :   `y` - the Y origin `>= 0`
    :   `g` - the graphics context
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset of the text in the document `>= 0`

    Returns:
    :   the X location at the end of the rendered text

    Since:
    :   9
  + ### getTabbedTextWidth

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int getTabbedTextWidth([Segment](Segment.md "class in javax.swing.text") s,
    [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    int x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset)

    Deprecated.

    replaced by
    [`getTabbedTextWidth(Segment, FontMetrics, float, TabExpander, int)`](#getTabbedTextWidth(javax.swing.text.Segment,java.awt.FontMetrics,float,javax.swing.text.TabExpander,int))

    Determines the width of the given segment of text taking tabs
    into consideration. This is implemented in a 1.1 style coordinate
    system where ints are used and 72dpi is assumed.

    Parameters:
    :   `s` - the source of the text
    :   `metrics` - the font metrics to use for the calculation
    :   `x` - the X origin >= 0
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset of the text in the document >= 0

    Returns:
    :   the width of the text
  + ### getTabbedTextWidth

    public static final float getTabbedTextWidth([Segment](Segment.md "class in javax.swing.text") s,
    [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    float x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset)

    Determines the width of the given segment of text taking tabs
    into consideration.

    Parameters:
    :   `s` - the source of the text
    :   `metrics` - the font metrics to use for the calculation
    :   `x` - the X origin `>= 0`
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset of the text in the document `>= 0`

    Returns:
    :   the width of the text

    Since:
    :   9
  + ### getTabbedTextOffset

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int getTabbedTextOffset([Segment](Segment.md "class in javax.swing.text") s,
    [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    int x0,
    int x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset)

    Deprecated.

    replaced by
    [`getTabbedTextOffset(Segment, FontMetrics, float, float, TabExpander, int, boolean)`](#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int,boolean))

    Determines the relative offset into the given text that
    best represents the given span in the view coordinate
    system. This is implemented in a 1.1 style coordinate
    system where ints are used and 72dpi is assumed.

    Parameters:
    :   `s` - the source of the text
    :   `metrics` - the font metrics to use for the calculation
    :   `x0` - the starting view location representing the start
        of the given text >= 0.
    :   `x` - the target view location to translate to an
        offset into the text >= 0.
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset of the text in the document >= 0

    Returns:
    :   the offset into the text >= 0
  + ### getTabbedTextOffset

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int getTabbedTextOffset([Segment](Segment.md "class in javax.swing.text") s,
    [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    int x0,
    int x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset,
    boolean round)

    Deprecated.

    replaced by
    [`getTabbedTextOffset(Segment, FontMetrics, float, float, TabExpander, int, boolean)`](#getTabbedTextOffset(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int,boolean))

    Determines the relative offset into the given text that
    best represents the given span in the view coordinate
    system.

    Parameters:
    :   `s` - the source of the text
    :   `metrics` - the font metrics to use for the calculation
    :   `x0` - the starting view location representing the start
        of the given text >= 0.
    :   `x` - the target view location to translate to an
        offset into the text >= 0.
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset of the text in the document >= 0
    :   `round` - whether or not to round

    Returns:
    :   the offset into the text >= 0
  + ### getTabbedTextOffset

    public static final int getTabbedTextOffset([Segment](Segment.md "class in javax.swing.text") s,
    [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    float x0,
    float x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset,
    boolean round)

    Determines the relative offset into the given text that
    best represents the given span in the view coordinate
    system.

    Parameters:
    :   `s` - the source of the text
    :   `metrics` - the font metrics to use for the calculation
    :   `x0` - the starting view location representing the start
        of the given text `>= 0`.
    :   `x` - the target view location to translate to an
        offset into the text `>= 0`.
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset of the text in the document `>= 0`
    :   `round` - whether or not to round

    Returns:
    :   the offset into the text `>= 0`

    Since:
    :   9
  + ### getBreakLocation

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int getBreakLocation([Segment](Segment.md "class in javax.swing.text") s,
    [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    int x0,
    int x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset)

    Deprecated.

    replaced by
    [`getBreakLocation(Segment, FontMetrics, float, float, TabExpander, int)`](#getBreakLocation(javax.swing.text.Segment,java.awt.FontMetrics,float,float,javax.swing.text.TabExpander,int))

    Determine where to break the given text to fit
    within the given span. This tries to find a word boundary.

    Parameters:
    :   `s` - the source of the text
    :   `metrics` - the font metrics to use for the calculation
    :   `x0` - the starting view location representing the start
        of the given text.
    :   `x` - the target view location to translate to an
        offset into the text.
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset in the document of the text

    Returns:
    :   the offset into the given text
  + ### getBreakLocation

    public static final int getBreakLocation([Segment](Segment.md "class in javax.swing.text") s,
    [FontMetrics](../../../java/awt/FontMetrics.md "class in java.awt") metrics,
    float x0,
    float x,
    [TabExpander](TabExpander.md "interface in javax.swing.text") e,
    int startOffset)

    Determine where to break the given text to fit
    within the given span. This tries to find a word boundary.

    Parameters:
    :   `s` - the source of the text
    :   `metrics` - the font metrics to use for the calculation
    :   `x0` - the starting view location representing the start
        of the given text.
    :   `x` - the target view location to translate to an
        offset into the text.
    :   `e` - how to expand the tabs. If this value is null,
        tabs will be expanded as a space character.
    :   `startOffset` - starting offset in the document of the text

    Returns:
    :   the offset into the given text

    Since:
    :   9
  + ### getRowStart

    public static final int getRowStart([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determines the starting row model position of the row that contains
    the specified model position. The component given must have a
    size to compute the result. If the component doesn't have a size
    a value of -1 will be returned.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0

    Returns:
    :   the position >= 0 if the request can be computed, otherwise
        a value of -1 will be returned.

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getRowEnd

    public static final int getRowEnd([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determines the ending row model position of the row that contains
    the specified model position. The component given must have a
    size to compute the result. If the component doesn't have a size
    a value of -1 will be returned.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0

    Returns:
    :   the position >= 0 if the request can be computed, otherwise
        a value of -1 will be returned.

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getPositionAbove

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int getPositionAbove([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs,
    int x)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Deprecated.

    replaced by
    [`getPositionAbove(JTextComponent, int, float)`](#getPositionAbove(javax.swing.text.JTextComponent,int,float))

    Determines the position in the model that is closest to the given
    view location in the row above. The component given must have a
    size to compute the result. If the component doesn't have a size
    a value of -1 will be returned.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0
    :   `x` - the X coordinate >= 0

    Returns:
    :   the position >= 0 if the request can be computed, otherwise
        a value of -1 will be returned.

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getPositionAbove

    public static final int getPositionAbove([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs,
    float x)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determines the position in the model that is closest to the given
    view location in the row above. The component given must have a
    size to compute the result. If the component doesn't have a size
    a value of -1 will be returned.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document `>= 0`
    :   `x` - the X coordinate `>= 0`

    Returns:
    :   the position `>= 0` if the request can be computed, otherwise
        a value of -1 will be returned.

    Throws:
    :   `BadLocationException` - if the offset is out of range

    Since:
    :   9
  + ### getPositionBelow

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="9")
    public static final int getPositionBelow([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs,
    int x)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Deprecated.

    replaced by
    [`getPositionBelow(JTextComponent, int, float)`](#getPositionBelow(javax.swing.text.JTextComponent,int,float))

    Determines the position in the model that is closest to the given
    view location in the row below. The component given must have a
    size to compute the result. If the component doesn't have a size
    a value of -1 will be returned.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0
    :   `x` - the X coordinate >= 0

    Returns:
    :   the position >= 0 if the request can be computed, otherwise
        a value of -1 will be returned.

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getPositionBelow

    public static final int getPositionBelow([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs,
    float x)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determines the position in the model that is closest to the given
    view location in the row below. The component given must have a
    size to compute the result. If the component doesn't have a size
    a value of -1 will be returned.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document `>= 0`
    :   `x` - the X coordinate `>= 0`

    Returns:
    :   the position `>= 0` if the request can be computed, otherwise
        a value of -1 will be returned.

    Throws:
    :   `BadLocationException` - if the offset is out of range

    Since:
    :   9
  + ### getWordStart

    public static final int getWordStart([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determines the start of a word for the given model location.
    Uses BreakIterator.getWordInstance() to actually get the words.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0

    Returns:
    :   the location in the model of the word start >= 0

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getWordEnd

    public static final int getWordEnd([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determines the end of a word for the given location.
    Uses BreakIterator.getWordInstance() to actually get the words.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0

    Returns:
    :   the location in the model of the word end >= 0

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getNextWord

    public static final int getNextWord([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determines the start of the next word for the given location.
    Uses BreakIterator.getWordInstance() to actually get the words.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0

    Returns:
    :   the location in the model of the word start >= 0

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getPreviousWord

    public static final int getPreviousWord([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Determine the start of the prev word for the given location.
    Uses BreakIterator.getWordInstance() to actually get the words.

    Parameters:
    :   `c` - the editor
    :   `offs` - the offset in the document >= 0

    Returns:
    :   the location in the model of the word start >= 0

    Throws:
    :   `BadLocationException` - if the offset is out of range
  + ### getParagraphElement

    public static final [Element](Element.md "interface in javax.swing.text") getParagraphElement([JTextComponent](JTextComponent.md "class in javax.swing.text") c,
    int offs)

    Determines the element to use for a paragraph/line.

    Parameters:
    :   `c` - the editor
    :   `offs` - the starting offset in the document >= 0

    Returns:
    :   the element