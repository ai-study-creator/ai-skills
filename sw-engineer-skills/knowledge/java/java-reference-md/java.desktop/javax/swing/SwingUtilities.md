Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SwingUtilities

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.SwingUtilities

All Implemented Interfaces:
:   `SwingConstants`

---

public class SwingUtilities
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [SwingConstants](SwingConstants.md "interface in javax.swing")

A collection of utility methods for Swing.

Since:
:   1.2

* ## Field Summary

  ### Fields inherited from interface javax.swing.[SwingConstants](SwingConstants.md "interface in javax.swing")

  `BOTTOM, CENTER, EAST, HORIZONTAL, LEADING, LEFT, NEXT, NORTH, NORTH_EAST, NORTH_WEST, PREVIOUS, RIGHT, SOUTH, SOUTH_EAST, SOUTH_WEST, TOP, TRAILING, VERTICAL, WEST`
* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static Rectangle`

  `calculateInnerArea(JComponent c,
  Rectangle r)`

  Stores the position and size of
  the inner painting area of the specified component
  in `r` and returns `r`.

  `static Rectangle[]`

  `computeDifference(Rectangle rectA,
  Rectangle rectB)`

  Convenience returning an array of rect representing the regions within
  `rectA` that do not overlap with `rectB`.

  `static Rectangle`

  `computeIntersection(int x,
  int y,
  int width,
  int height,
  Rectangle dest)`

  Convenience to calculate the intersection of two rectangles
  without allocating a new rectangle.

  `static int`

  `computeStringWidth(FontMetrics fm,
  String str)`

  Compute the width of the string using a font with the specified
  "metrics" (sizes).

  `static Rectangle`

  `computeUnion(int x,
  int y,
  int width,
  int height,
  Rectangle dest)`

  Convenience method that calculates the union of two rectangles
  without allocating a new rectangle.

  `static MouseEvent`

  `convertMouseEvent(Component source,
  MouseEvent sourceEvent,
  Component destination)`

  Returns a MouseEvent similar to `sourceEvent` except that its x
  and y members have been converted to `destination`'s coordinate
  system.

  `static Point`

  `convertPoint(Component source,
  int x,
  int y,
  Component destination)`

  Convert the point `(x,y)` in `source` coordinate system to
  `destination` coordinate system.

  `static Point`

  `convertPoint(Component source,
  Point aPoint,
  Component destination)`

  Convert a `aPoint` in `source` coordinate system to
  `destination` coordinate system.

  `static void`

  `convertPointFromScreen(Point p,
  Component c)`

  Convert a point from a screen coordinates to a component's
  coordinate system

  `static void`

  `convertPointToScreen(Point p,
  Component c)`

  Convert a point from a component's coordinate system to
  screen coordinates.

  `static Rectangle`

  `convertRectangle(Component source,
  Rectangle aRectangle,
  Component destination)`

  Convert the rectangle `aRectangle` in `source` coordinate system to
  `destination` coordinate system.

  `static Component`

  `findFocusOwner(Component c)`

  Deprecated.

  As of 1.4, replaced by
  `KeyboardFocusManager.getFocusOwner()`.

  `static Accessible`

  `getAccessibleAt(Component c,
  Point p)`

  Returns the `Accessible` child contained at the
  local coordinate `Point`, if one exists.

  `static Accessible`

  `getAccessibleChild(Component c,
  int i)`

  Return the nth Accessible child of the object.

  `static int`

  `getAccessibleChildrenCount(Component c)`

  Returns the number of accessible children in the object.

  `static int`

  `getAccessibleIndexInParent(Component c)`

  Get the index of this object in its accessible parent.

  `static AccessibleStateSet`

  `getAccessibleStateSet(Component c)`

  Get the state of this object.

  `static Container`

  `getAncestorNamed(String name,
  Component comp)`

  Convenience method for searching above `comp` in the
  component hierarchy and returns the first object of `name` it
  finds.

  `static Container`

  `getAncestorOfClass(Class<?> c,
  Component comp)`

  Convenience method for searching above `comp` in the
  component hierarchy and returns the first object of class `c` it
  finds.

  `static Component`

  `getDeepestComponentAt(Component parent,
  int x,
  int y)`

  Returns the deepest visible descendent Component of `parent`
  that contains the location `x`, `y`.

  `static Rectangle`

  `getLocalBounds(Component aComponent)`

  Return the rectangle (0,0,bounds.width,bounds.height) for the component `aComponent`

  `static Component`

  `getRoot(Component c)`

  Returns the root component for the current component tree.

  `static JRootPane`

  `getRootPane(Component c)`

  If c is a JRootPane descendant return its JRootPane ancestor.

  `static ActionMap`

  `getUIActionMap(JComponent component)`

  Returns the ActionMap provided by the UI
  in component `component`.

  `static InputMap`

  `getUIInputMap(JComponent component,
  int condition)`

  Returns the InputMap provided by the UI for condition
  `condition` in component `component`.

  `static Container`

  `getUnwrappedParent(Component component)`

  Returns the first ancestor of the `component`
  which is not an instance of [`JLayer`](JLayer.md "class in javax.swing").

  `static Component`

  `getUnwrappedView(JViewport viewport)`

  Returns the first `JViewport`'s descendant
  which is not an instance of `JLayer`.

  `static Window`

  `getWindowAncestor(Component c)`

  Returns the first `Window`  ancestor of `c`, or
  `null` if `c` is not contained inside a `Window`.

  `static void`

  `invokeAndWait(Runnable doRun)`

  Causes `doRun.run()` to be executed synchronously on the
  AWT event dispatching thread.

  `static void`

  `invokeLater(Runnable doRun)`

  Causes *doRun.run()* to be executed asynchronously on the
  AWT event dispatching thread.

  `static boolean`

  `isDescendingFrom(Component a,
  Component b)`

  Return `true` if a component `a` descends from a component `b`

  `static boolean`

  `isEventDispatchThread()`

  Returns true if the current thread is an AWT event dispatching thread.

  `static boolean`

  `isLeftMouseButton(MouseEvent anEvent)`

  Returns true if the mouse event specifies the left mouse button.

  `static boolean`

  `isMiddleMouseButton(MouseEvent anEvent)`

  Returns true if the mouse event specifies the middle mouse button.

  `static final boolean`

  `isRectangleContainingRectangle(Rectangle a,
  Rectangle b)`

  Return `true` if `a` contains `b`

  `static boolean`

  `isRightMouseButton(MouseEvent anEvent)`

  Returns true if the mouse event specifies the right mouse button.

  `static String`

  `layoutCompoundLabel(FontMetrics fm,
  String text,
  Icon icon,
  int verticalAlignment,
  int horizontalAlignment,
  int verticalTextPosition,
  int horizontalTextPosition,
  Rectangle viewR,
  Rectangle iconR,
  Rectangle textR,
  int textIconGap)`

  Compute and return the location of the icons origin, the
  location of origin of the text baseline, and a possibly clipped
  version of the compound labels string.

  `static String`

  `layoutCompoundLabel(JComponent c,
  FontMetrics fm,
  String text,
  Icon icon,
  int verticalAlignment,
  int horizontalAlignment,
  int verticalTextPosition,
  int horizontalTextPosition,
  Rectangle viewR,
  Rectangle iconR,
  Rectangle textR,
  int textIconGap)`

  Compute and return the location of the icons origin, the
  location of origin of the text baseline, and a possibly clipped
  version of the compound labels string.

  `static boolean`

  `notifyAction(Action action,
  KeyStroke ks,
  KeyEvent event,
  Object sender,
  int modifiers)`

  Invokes `actionPerformed` on `action` if `action`
  is non-`null` and accepts the sender object.

  `static void`

  `paintComponent(Graphics g,
  Component c,
  Container p,
  int x,
  int y,
  int w,
  int h)`

  Paints a component to the specified `Graphics`.

  `static void`

  `paintComponent(Graphics g,
  Component c,
  Container p,
  Rectangle r)`

  Paints a component to the specified `Graphics`.

  `static boolean`

  `processKeyBindings(KeyEvent event)`

  Process the key bindings for the `Component` associated with
  `event`.

  `static void`

  `replaceUIActionMap(JComponent component,
  ActionMap uiActionMap)`

  Convenience method to change the UI ActionMap for `component`
  to `uiActionMap`.

  `static void`

  `replaceUIInputMap(JComponent component,
  int type,
  InputMap uiInputMap)`

  Convenience method to change the UI InputMap for `component`
  to `uiInputMap`.

  `static void`

  `updateComponentTreeUI(Component c)`

  A simple minded look and feel change: ask each node in the tree
  to `updateUI()` -- that is, to initialize its UI property
  with the current look and feel.

  `static Window`

  `windowForComponent(Component c)`

  Returns the first `Window`  ancestor of `c`, or
  `null` if `c` is not contained inside a `Window`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### isRectangleContainingRectangle

    public static final boolean isRectangleContainingRectangle([Rectangle](../../java/awt/Rectangle.md "class in java.awt") a,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") b)

    Return `true` if `a` contains `b`

    Parameters:
    :   `a` - the first rectangle
    :   `b` - the second rectangle

    Returns:
    :   `true` if `a` contains `b`
  + ### getLocalBounds

    public static [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getLocalBounds([Component](../../java/awt/Component.md "class in java.awt") aComponent)

    Return the rectangle (0,0,bounds.width,bounds.height) for the component `aComponent`

    Parameters:
    :   `aComponent` - a component

    Returns:
    :   the local bounds for the component `aComponent`
  + ### getWindowAncestor

    public static [Window](../../java/awt/Window.md "class in java.awt") getWindowAncestor([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the first `Window`  ancestor of `c`, or
    `null` if `c` is not contained inside a `Window`.

    Parameters:
    :   `c` - `Component` to get `Window` ancestor
        of.

    Returns:
    :   the first `Window`  ancestor of `c`, or
        `null` if `c` is not contained inside a
        `Window`.

    Since:
    :   1.3
  + ### convertPoint

    public static [Point](../../java/awt/Point.md "class in java.awt") convertPoint([Component](../../java/awt/Component.md "class in java.awt") source,
    [Point](../../java/awt/Point.md "class in java.awt") aPoint,
    [Component](../../java/awt/Component.md "class in java.awt") destination)

    Convert a `aPoint` in `source` coordinate system to
    `destination` coordinate system.
    If `source` is `null`, `aPoint` is assumed to be in `destination`'s
    root component coordinate system.
    If `destination` is `null`, `aPoint` will be converted to `source`'s
    root component coordinate system.
    If both `source` and `destination` are `null`, return `aPoint`
    without any conversion.

    Parameters:
    :   `source` - the source component
    :   `aPoint` - the point
    :   `destination` - the destination component

    Returns:
    :   the converted coordinate
  + ### convertPoint

    public static [Point](../../java/awt/Point.md "class in java.awt") convertPoint([Component](../../java/awt/Component.md "class in java.awt") source,
    int x,
    int y,
    [Component](../../java/awt/Component.md "class in java.awt") destination)

    Convert the point `(x,y)` in `source` coordinate system to
    `destination` coordinate system.
    If `source` is `null`, `(x,y)` is assumed to be in `destination`'s
    root component coordinate system.
    If `destination` is `null`, `(x,y)` will be converted to `source`'s
    root component coordinate system.
    If both `source` and `destination` are `null`, return `(x,y)`
    without any conversion.

    Parameters:
    :   `source` - the source component
    :   `x` - the x-coordinate of the point
    :   `y` - the y-coordinate of the point
    :   `destination` - the destination component

    Returns:
    :   the converted coordinate
  + ### convertRectangle

    public static [Rectangle](../../java/awt/Rectangle.md "class in java.awt") convertRectangle([Component](../../java/awt/Component.md "class in java.awt") source,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") aRectangle,
    [Component](../../java/awt/Component.md "class in java.awt") destination)

    Convert the rectangle `aRectangle` in `source` coordinate system to
    `destination` coordinate system.
    If `source` is `null`, `aRectangle` is assumed to be in `destination`'s
    root component coordinate system.
    If `destination` is `null`, `aRectangle` will be converted to `source`'s
    root component coordinate system.
    If both `source` and `destination` are `null`, return `aRectangle`
    without any conversion.

    Parameters:
    :   `source` - the source component
    :   `aRectangle` - a rectangle
    :   `destination` - the destination component

    Returns:
    :   the converted rectangle
  + ### getAncestorOfClass

    public static [Container](../../java/awt/Container.md "class in java.awt") getAncestorOfClass([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> c,
    [Component](../../java/awt/Component.md "class in java.awt") comp)

    Convenience method for searching above `comp` in the
    component hierarchy and returns the first object of class `c` it
    finds. Can return `null`, if a class `c` cannot be found.

    Parameters:
    :   `c` - the class of a component
    :   `comp` - the component

    Returns:
    :   the ancestor of the `comp`,
        or `null` if `c` cannot be found.
  + ### getAncestorNamed

    public static [Container](../../java/awt/Container.md "class in java.awt") getAncestorNamed([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Component](../../java/awt/Component.md "class in java.awt") comp)

    Convenience method for searching above `comp` in the
    component hierarchy and returns the first object of `name` it
    finds. Can return `null`, if `name` cannot be found.

    Parameters:
    :   `name` - the name of a component
    :   `comp` - the component

    Returns:
    :   the ancestor of the `comp`,
        or `null` if `name` cannot be found.
  + ### getDeepestComponentAt

    public static [Component](../../java/awt/Component.md "class in java.awt") getDeepestComponentAt([Component](../../java/awt/Component.md "class in java.awt") parent,
    int x,
    int y)

    Returns the deepest visible descendent Component of `parent`
    that contains the location `x`, `y`.
    If `parent` does not contain the specified location,
    then `null` is returned. If `parent` is not a
    container, or none of `parent`'s visible descendents
    contain the specified location, `parent` is returned.

    Parameters:
    :   `parent` - the root component to begin the search
    :   `x` - the x target location
    :   `y` - the y target location

    Returns:
    :   the deepest component
  + ### convertMouseEvent

    public static [MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") convertMouseEvent([Component](../../java/awt/Component.md "class in java.awt") source,
    [MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") sourceEvent,
    [Component](../../java/awt/Component.md "class in java.awt") destination)

    Returns a MouseEvent similar to `sourceEvent` except that its x
    and y members have been converted to `destination`'s coordinate
    system. If `source` is `null`, `sourceEvent` x and y members
    are assumed to be into `destination`'s root component coordinate system.
    If `destination` is `null`, the
    returned MouseEvent will be in `source`'s coordinate system.
    `sourceEvent` will not be changed. A new event is returned.
    the `source` field of the returned event will be set
    to `destination` if destination is non-`null`
    use the translateMouseEvent() method to translate a mouse event from
    one component to another without changing the source.

    Parameters:
    :   `source` - the source component
    :   `sourceEvent` - the source mouse event
    :   `destination` - the destination component

    Returns:
    :   the new mouse event
  + ### convertPointToScreen

    public static void convertPointToScreen([Point](../../java/awt/Point.md "class in java.awt") p,
    [Component](../../java/awt/Component.md "class in java.awt") c)

    Convert a point from a component's coordinate system to
    screen coordinates.

    Parameters:
    :   `p` - a Point object (converted to the new coordinate system)
    :   `c` - a Component object
  + ### convertPointFromScreen

    public static void convertPointFromScreen([Point](../../java/awt/Point.md "class in java.awt") p,
    [Component](../../java/awt/Component.md "class in java.awt") c)

    Convert a point from a screen coordinates to a component's
    coordinate system

    Parameters:
    :   `p` - a Point object (converted to the new coordinate system)
    :   `c` - a Component object
  + ### windowForComponent

    public static [Window](../../java/awt/Window.md "class in java.awt") windowForComponent([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the first `Window`  ancestor of `c`, or
    `null` if `c` is not contained inside a `Window`.

    Note: This method provides the same functionality as
    `getWindowAncestor`.

    Parameters:
    :   `c` - `Component` to get `Window` ancestor
        of.

    Returns:
    :   the first `Window`  ancestor of `c`, or
        `null` if `c` is not contained inside a
        `Window`.
  + ### isDescendingFrom

    public static boolean isDescendingFrom([Component](../../java/awt/Component.md "class in java.awt") a,
    [Component](../../java/awt/Component.md "class in java.awt") b)

    Return `true` if a component `a` descends from a component `b`

    Parameters:
    :   `a` - the first component
    :   `b` - the second component

    Returns:
    :   `true` if a component `a` descends from a component `b`
  + ### computeIntersection

    public static [Rectangle](../../java/awt/Rectangle.md "class in java.awt") computeIntersection(int x,
    int y,
    int width,
    int height,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") dest)

    Convenience to calculate the intersection of two rectangles
    without allocating a new rectangle.
    If the two rectangles don't intersect,
    then the returned rectangle begins at (0,0)
    and has zero width and height.

    Parameters:
    :   `x` - the X coordinate of the first rectangle's top-left point
    :   `y` - the Y coordinate of the first rectangle's top-left point
    :   `width` - the width of the first rectangle
    :   `height` - the height of the first rectangle
    :   `dest` - the second rectangle

    Returns:
    :   `dest`, modified to specify the intersection
  + ### computeUnion

    public static [Rectangle](../../java/awt/Rectangle.md "class in java.awt") computeUnion(int x,
    int y,
    int width,
    int height,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") dest)

    Convenience method that calculates the union of two rectangles
    without allocating a new rectangle.

    Parameters:
    :   `x` - the x-coordinate of the first rectangle
    :   `y` - the y-coordinate of the first rectangle
    :   `width` - the width of the first rectangle
    :   `height` - the height of the first rectangle
    :   `dest` - the coordinates of the second rectangle; the union
        of the two rectangles is returned in this rectangle

    Returns:
    :   the `dest` `Rectangle`
  + ### computeDifference

    public static [Rectangle](../../java/awt/Rectangle.md "class in java.awt")[] computeDifference([Rectangle](../../java/awt/Rectangle.md "class in java.awt") rectA,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") rectB)

    Convenience returning an array of rect representing the regions within
    `rectA` that do not overlap with `rectB`. If the
    two Rects do not overlap, returns an empty array

    Parameters:
    :   `rectA` - the first rectangle
    :   `rectB` - the second rectangle

    Returns:
    :   an array of rectangles representing the regions within `rectA`
        that do not overlap with `rectB`.
  + ### isLeftMouseButton

    public static boolean isLeftMouseButton([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") anEvent)

    Returns true if the mouse event specifies the left mouse button.

    Parameters:
    :   `anEvent` - a MouseEvent object

    Returns:
    :   true if the left mouse button was active
  + ### isMiddleMouseButton

    public static boolean isMiddleMouseButton([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") anEvent)

    Returns true if the mouse event specifies the middle mouse button.

    Parameters:
    :   `anEvent` - a MouseEvent object

    Returns:
    :   true if the middle mouse button was active
  + ### isRightMouseButton

    public static boolean isRightMouseButton([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") anEvent)

    Returns true if the mouse event specifies the right mouse button.

    Parameters:
    :   `anEvent` - a MouseEvent object

    Returns:
    :   true if the right mouse button was active
  + ### computeStringWidth

    public static int computeStringWidth([FontMetrics](../../java/awt/FontMetrics.md "class in java.awt") fm,
    [String](../../../java.base/java/lang/String.md "class in java.lang") str)

    Compute the width of the string using a font with the specified
    "metrics" (sizes).

    Parameters:
    :   `fm` - a FontMetrics object to compute with
    :   `str` - the String to compute

    Returns:
    :   an int containing the string width
  + ### layoutCompoundLabel

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") layoutCompoundLabel([JComponent](JComponent.md "class in javax.swing") c,
    [FontMetrics](../../java/awt/FontMetrics.md "class in java.awt") fm,
    [String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon,
    int verticalAlignment,
    int horizontalAlignment,
    int verticalTextPosition,
    int horizontalTextPosition,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") viewR,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") iconR,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") textR,
    int textIconGap)

    Compute and return the location of the icons origin, the
    location of origin of the text baseline, and a possibly clipped
    version of the compound labels string. Locations are computed
    relative to the viewR rectangle.
    The JComponents orientation (LEADING/TRAILING) will also be taken
    into account and translated into LEFT/RIGHT values accordingly.

    Parameters:
    :   `c` - the component
    :   `fm` - the instance of `FontMetrics`
    :   `text` - the text
    :   `icon` - the icon
    :   `verticalAlignment` - the vertical alignment
    :   `horizontalAlignment` - the horizontal alignment
    :   `verticalTextPosition` - the vertical text position
    :   `horizontalTextPosition` - the horizontal text position
    :   `viewR` - the available rectangle
    :   `iconR` - the rectangle for the icon
    :   `textR` - the rectangle for the text
    :   `textIconGap` - the gap between text and icon

    Returns:
    :   the possibly clipped version of the compound labels string
  + ### layoutCompoundLabel

    public static [String](../../../java.base/java/lang/String.md "class in java.lang") layoutCompoundLabel([FontMetrics](../../java/awt/FontMetrics.md "class in java.awt") fm,
    [String](../../../java.base/java/lang/String.md "class in java.lang") text,
    [Icon](Icon.md "interface in javax.swing") icon,
    int verticalAlignment,
    int horizontalAlignment,
    int verticalTextPosition,
    int horizontalTextPosition,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") viewR,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") iconR,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") textR,
    int textIconGap)

    Compute and return the location of the icons origin, the
    location of origin of the text baseline, and a possibly clipped
    version of the compound labels string. Locations are computed
    relative to the viewR rectangle.
    This layoutCompoundLabel() does not know how to handle LEADING/TRAILING
    values in horizontalTextPosition (they will default to RIGHT) and in
    horizontalAlignment (they will default to CENTER).
    Use the other version of layoutCompoundLabel() instead.

    Parameters:
    :   `fm` - the instance of `FontMetrics`
    :   `text` - the text
    :   `icon` - the icon
    :   `verticalAlignment` - the vertical alignment
    :   `horizontalAlignment` - the horizontal alignment
    :   `verticalTextPosition` - the vertical text position
    :   `horizontalTextPosition` - the horizontal text position
    :   `viewR` - the available rectangle
    :   `iconR` - the rectangle for the icon
    :   `textR` - the rectangle for the text
    :   `textIconGap` - the gap between text and icon

    Returns:
    :   the possibly clipped version of the compound labels string
  + ### paintComponent

    public static void paintComponent([Graphics](../../java/awt/Graphics.md "class in java.awt") g,
    [Component](../../java/awt/Component.md "class in java.awt") c,
    [Container](../../java/awt/Container.md "class in java.awt") p,
    int x,
    int y,
    int w,
    int h)

    Paints a component to the specified `Graphics`.
    This method is primarily useful to render
    `Component`s that don't exist as part of the visible
    containment hierarchy, but are used for rendering. For
    example, if you are doing your own rendering and want to render
    some text (or even HTML), you could make use of
    `JLabel`'s text rendering support and have it paint
    directly by way of this method, without adding the label to the
    visible containment hierarchy.

    This method makes use of `CellRendererPane` to handle
    the actual painting, and is only recommended if you use one
    component for rendering. If you make use of multiple components
    to handle the rendering, as `JTable` does, use
    `CellRendererPane` directly. Otherwise, as described
    below, you could end up with a `CellRendererPane`
    per `Component`.

    If `c`'s parent is not a `CellRendererPane`,
    a new `CellRendererPane` is created, `c` is
    added to it, and the `CellRendererPane` is added to
    `p`. If `c`'s parent is a
    `CellRendererPane` and the `CellRendererPane`s
    parent is not `p`, it is added to `p`.

    The component should either descend from `JComponent`
    or be another kind of lightweight component.
    A lightweight component is one whose "lightweight" property
    (returned by the `Component`
    `isLightweight` method)
    is true. If the Component is not lightweight, bad things map happen:
    crashes, exceptions, painting problems...

    Parameters:
    :   `g` - the `Graphics` object to draw on
    :   `c` - the `Component` to draw
    :   `p` - the intermediate `Container`
    :   `x` - an int specifying the left side of the area draw in, in pixels,
        measured from the left edge of the graphics context
    :   `y` - an int specifying the top of the area to draw in, in pixels
        measured down from the top edge of the graphics context
    :   `w` - an int specifying the width of the area draw in, in pixels
    :   `h` - an int specifying the height of the area draw in, in pixels

    See Also:
    :   - [`CellRendererPane`](CellRendererPane.md "class in javax.swing")
        - [`Component.isLightweight()`](../../java/awt/Component.md#isLightweight())
  + ### paintComponent

    public static void paintComponent([Graphics](../../java/awt/Graphics.md "class in java.awt") g,
    [Component](../../java/awt/Component.md "class in java.awt") c,
    [Container](../../java/awt/Container.md "class in java.awt") p,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") r)

    Paints a component to the specified `Graphics`. This
    is a cover method for
    [`paintComponent(Graphics,Component,Container,int,int,int,int)`](#paintComponent(java.awt.Graphics,java.awt.Component,java.awt.Container,int,int,int,int)).
    Refer to it for more information.

    Parameters:
    :   `g` - the `Graphics` object to draw on
    :   `c` - the `Component` to draw
    :   `p` - the intermediate `Container`
    :   `r` - the `Rectangle` to draw in

    See Also:
    :   - [`paintComponent(Graphics,Component,Container,int,int,int,int)`](#paintComponent(java.awt.Graphics,java.awt.Component,java.awt.Container,int,int,int,int))
        - [`CellRendererPane`](CellRendererPane.md "class in javax.swing")
  + ### updateComponentTreeUI

    public static void updateComponentTreeUI([Component](../../java/awt/Component.md "class in java.awt") c)

    A simple minded look and feel change: ask each node in the tree
    to `updateUI()` -- that is, to initialize its UI property
    with the current look and feel.

    Parameters:
    :   `c` - the component
  + ### invokeLater

    public static void invokeLater([Runnable](../../../java.base/java/lang/Runnable.md "interface in java.lang") doRun)

    Causes *doRun.run()* to be executed asynchronously on the
    AWT event dispatching thread. This will happen after all
    pending AWT events have been processed. This method should
    be used when an application thread needs to update the GUI.
    In the following example the `invokeLater` call queues
    the `Runnable` object `doHelloWorld`
    on the event dispatching thread and
    then prints a message.

    ```
     Runnable doHelloWorld = new Runnable() {
         public void run() {
             System.out.println("Hello World on " + Thread.currentThread());
         }
     };

     SwingUtilities.invokeLater(doHelloWorld);
     System.out.println("This might well be displayed before the other message.");
    ```

    If invokeLater is called from the event dispatching thread --
    for example, from a JButton's ActionListener -- the *doRun.run()* will
    still be deferred until all pending events have been processed.
    Note that if the *doRun.run()* throws an uncaught exception
    the event dispatching thread will unwind (not the current thread).

    Additional documentation and examples for this method can be
    found in
    [Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html).

    As of 1.3 this method is just a cover for `java.awt.EventQueue.invokeLater()`.

    Unlike the rest of Swing, this method can be invoked from any thread.

    Parameters:
    :   `doRun` - the instance of `Runnable`

    See Also:
    :   - [`invokeAndWait(java.lang.Runnable)`](#invokeAndWait(java.lang.Runnable))
  + ### invokeAndWait

    public static void invokeAndWait([Runnable](../../../java.base/java/lang/Runnable.md "interface in java.lang") doRun)
    throws [InterruptedException](../../../java.base/java/lang/InterruptedException.md "class in java.lang"),
    [InvocationTargetException](../../../java.base/java/lang/reflect/InvocationTargetException.md "class in java.lang.reflect")

    Causes `doRun.run()` to be executed synchronously on the
    AWT event dispatching thread. This call blocks until
    all pending AWT events have been processed and (then)
    `doRun.run()` returns. This method should
    be used when an application thread needs to update the GUI.
    It shouldn't be called from the event dispatching thread.
    Here's an example that creates a new application thread
    that uses `invokeAndWait` to print a string from the event
    dispatching thread and then, when that's finished, print
    a string from the application thread.

    ```
     final Runnable doHelloWorld = new Runnable() {
         public void run() {
             System.out.println("Hello World on " + Thread.currentThread());
         }
     };

     Thread appThread = new Thread() {
         public void run() {
             try {
                 SwingUtilities.invokeAndWait(doHelloWorld);
             }
             catch (Exception e) {
                 e.printStackTrace();
             }
             System.out.println("Finished on " + Thread.currentThread());
         }
     };
     appThread.start();
    ```

    Note that if the `Runnable.run` method throws an
    uncaught exception
    (on the event dispatching thread) it's caught and rethrown, as
    an `InvocationTargetException`, on the caller's thread.

    Additional documentation and examples for this method can be
    found in
    [Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html).

    As of 1.3 this method is just a cover for
    `java.awt.EventQueue.invokeAndWait()`.

    Parameters:
    :   `doRun` - the instance of `Runnable`

    Throws:
    :   `InterruptedException` - if we're interrupted while waiting for
        the event dispatching thread to finish executing
        `doRun.run()`
    :   `InvocationTargetException` - if an exception is thrown
        while running `doRun`

    See Also:
    :   - [`invokeLater(java.lang.Runnable)`](#invokeLater(java.lang.Runnable))
  + ### isEventDispatchThread

    public static boolean isEventDispatchThread()

    Returns true if the current thread is an AWT event dispatching thread.

    As of 1.3 this method is just a cover for
    `java.awt.EventQueue.isDispatchThread()`.

    Returns:
    :   true if the current thread is an AWT event dispatching thread
  + ### getAccessibleIndexInParent

    public static int getAccessibleIndexInParent([Component](../../java/awt/Component.md "class in java.awt") c)

    Get the index of this object in its accessible parent.

    Note: as of the Java 2 platform v1.3, it is recommended that developers call
    Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
    of using this method.

    Parameters:
    :   `c` - the component

    Returns:
    :   -1 of this object does not have an accessible parent.
        Otherwise, the index of the child in its accessible parent.
  + ### getAccessibleAt

    public static [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleAt([Component](../../java/awt/Component.md "class in java.awt") c,
    [Point](../../java/awt/Point.md "class in java.awt") p)

    Returns the `Accessible` child contained at the
    local coordinate `Point`, if one exists.
    Otherwise returns `null`.

    Parameters:
    :   `c` - the component
    :   `p` - the local coordinate

    Returns:
    :   the `Accessible` at the specified location,
        if it exists; otherwise `null`
  + ### getAccessibleStateSet

    public static [AccessibleStateSet](../accessibility/AccessibleStateSet.md "class in javax.accessibility") getAccessibleStateSet([Component](../../java/awt/Component.md "class in java.awt") c)

    Get the state of this object.

    Note: as of the Java 2 platform v1.3, it is recommended that developers call
    Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
    of using this method.

    Parameters:
    :   `c` - the component

    Returns:
    :   an instance of AccessibleStateSet containing the current state
        set of the object

    See Also:
    :   - [`AccessibleState`](../accessibility/AccessibleState.md "class in javax.accessibility")
  + ### getAccessibleChildrenCount

    public static int getAccessibleChildrenCount([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the number of accessible children in the object. If all
    of the children of this object implement Accessible, than this
    method should return the number of children of this object.

    Note: as of the Java 2 platform v1.3, it is recommended that developers call
    Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
    of using this method.

    Parameters:
    :   `c` - the component

    Returns:
    :   the number of accessible children in the object.
  + ### getAccessibleChild

    public static [Accessible](../accessibility/Accessible.md "interface in javax.accessibility") getAccessibleChild([Component](../../java/awt/Component.md "class in java.awt") c,
    int i)

    Return the nth Accessible child of the object.

    Note: as of the Java 2 platform v1.3, it is recommended that developers call
    Component.AccessibleAWTComponent.getAccessibleIndexInParent() instead
    of using this method.

    Parameters:
    :   `c` - the component
    :   `i` - zero-based index of child

    Returns:
    :   the nth Accessible child of the object
  + ### findFocusOwner

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static [Component](../../java/awt/Component.md "class in java.awt") findFocusOwner([Component](../../java/awt/Component.md "class in java.awt") c)

    Deprecated.

    As of 1.4, replaced by
    `KeyboardFocusManager.getFocusOwner()`.

    Return the child `Component` of the specified
    `Component` that is the focus owner, if any.

    Parameters:
    :   `c` - the root of the `Component` hierarchy to
        search for the focus owner

    Returns:
    :   the focus owner, or `null` if there is no focus
        owner, or if the focus owner is not `comp`, or a
        descendant of `comp`

    See Also:
    :   - [`KeyboardFocusManager.getFocusOwner()`](../../java/awt/KeyboardFocusManager.md#getFocusOwner())
  + ### getRootPane

    public static [JRootPane](JRootPane.md "class in javax.swing") getRootPane([Component](../../java/awt/Component.md "class in java.awt") c)

    If c is a JRootPane descendant return its JRootPane ancestor.
    If c is a RootPaneContainer then return its JRootPane.

    Parameters:
    :   `c` - the component

    Returns:
    :   the JRootPane for Component c or `null`.
  + ### getRoot

    public static [Component](../../java/awt/Component.md "class in java.awt") getRoot([Component](../../java/awt/Component.md "class in java.awt") c)

    Returns the root component for the current component tree.

    Parameters:
    :   `c` - the component

    Returns:
    :   the first ancestor of c that's a Window or the last Applet ancestor
  + ### processKeyBindings

    public static boolean processKeyBindings([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") event)

    Process the key bindings for the `Component` associated with
    `event`. This method is only useful if
    `event.getComponent()` does not descend from
    `JComponent`, or your are not invoking
    `super.processKeyEvent` from within your
    `JComponent` subclass. `JComponent`
    automatically processes bindings from within its
    `processKeyEvent` method, hence you rarely need
    to directly invoke this method.

    Parameters:
    :   `event` - KeyEvent used to identify which bindings to process, as
        well as which Component has focus.

    Returns:
    :   true if a binding has found and processed

    Since:
    :   1.4
  + ### notifyAction

    public static boolean notifyAction([Action](Action.md "interface in javax.swing") action,
    [KeyStroke](KeyStroke.md "class in javax.swing") ks,
    [KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") event,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") sender,
    int modifiers)

    Invokes `actionPerformed` on `action` if `action`
    is non-`null` and accepts the sender object.
    The command for the ActionEvent is determined by:
    1. If the action was registered via
       `registerKeyboardAction`, then the command string
       passed in (`null` will be used if `null` was passed in).+ Action value with name Action.ACTION\_COMMAND\_KEY, unless `null`.+ String value of the KeyEvent, unless `getKeyChar`
           returns KeyEvent.CHAR\_UNDEFINED..This will return true if `action` is non-`null` and
    actionPerformed is invoked on it.

    Parameters:
    :   `action` - an action
    :   `ks` - a key stroke
    :   `event` - a key event
    :   `sender` - a sender
    :   `modifiers` - action modifiers

    Returns:
    :   `true` if `action` is non-`null` and
        actionPerformed is invoked on it.

    Since:
    :   1.3

    See Also:
    :   - [`Action.accept(java.lang.Object)`](Action.md#accept(java.lang.Object))
  + ### replaceUIInputMap

    public static void replaceUIInputMap([JComponent](JComponent.md "class in javax.swing") component,
    int type,
    [InputMap](InputMap.md "class in javax.swing") uiInputMap)

    Convenience method to change the UI InputMap for `component`
    to `uiInputMap`. If `uiInputMap` is `null`,
    this removes any previously installed UI InputMap.

    Parameters:
    :   `component` - a component
    :   `type` - a type
    :   `uiInputMap` - an `InputMap`

    Since:
    :   1.3
  + ### replaceUIActionMap

    public static void replaceUIActionMap([JComponent](JComponent.md "class in javax.swing") component,
    [ActionMap](ActionMap.md "class in javax.swing") uiActionMap)

    Convenience method to change the UI ActionMap for `component`
    to `uiActionMap`. If `uiActionMap` is `null`,
    this removes any previously installed UI ActionMap.

    Parameters:
    :   `component` - a component
    :   `uiActionMap` - an `ActionMap`

    Since:
    :   1.3
  + ### getUIInputMap

    public static [InputMap](InputMap.md "class in javax.swing") getUIInputMap([JComponent](JComponent.md "class in javax.swing") component,
    int condition)

    Returns the InputMap provided by the UI for condition
    `condition` in component `component`.

    This will return `null` if the UI has not installed an InputMap
    of the specified type.

    Parameters:
    :   `component` - a component
    :   `condition` - a condition

    Returns:
    :   the `ActionMap` provided by the UI for `condition`
        in the component, or `null` if the UI has not installed
        an InputMap of the specified type.

    Since:
    :   1.3
  + ### getUIActionMap

    public static [ActionMap](ActionMap.md "class in javax.swing") getUIActionMap([JComponent](JComponent.md "class in javax.swing") component)

    Returns the ActionMap provided by the UI
    in component `component`.

    This will return `null` if the UI has not installed an ActionMap.

    Parameters:
    :   `component` - a component

    Returns:
    :   the `ActionMap` provided by the UI in the component,
        or `null` if the UI has not installed an ActionMap.

    Since:
    :   1.3
  + ### calculateInnerArea

    public static [Rectangle](../../java/awt/Rectangle.md "class in java.awt") calculateInnerArea([JComponent](JComponent.md "class in javax.swing") c,
    [Rectangle](../../java/awt/Rectangle.md "class in java.awt") r)

    Stores the position and size of
    the inner painting area of the specified component
    in `r` and returns `r`.
    The position and size specify the bounds of the component,
    adjusted so as not to include the border area (the insets).
    This method is useful for classes
    that implement painting code.

    Parameters:
    :   `c` - the JComponent in question; if `null`, this method returns `null`
    :   `r` - the Rectangle instance to be modified;
        may be `null`

    Returns:
    :   `null` if the Component is `null`;
        otherwise, returns the passed-in rectangle (if non-`null`)
        or a new rectangle specifying position and size information

    Since:
    :   1.4
  + ### getUnwrappedParent

    public static [Container](../../java/awt/Container.md "class in java.awt") getUnwrappedParent([Component](../../java/awt/Component.md "class in java.awt") component)

    Returns the first ancestor of the `component`
    which is not an instance of [`JLayer`](JLayer.md "class in javax.swing").

    Parameters:
    :   `component` - `Component` to get
        the first ancestor of, which is not a [`JLayer`](JLayer.md "class in javax.swing") instance.

    Returns:
    :   the first ancestor of the `component`
        which is not an instance of [`JLayer`](JLayer.md "class in javax.swing").
        If such an ancestor can not be found, `null` is returned.

    Throws:
    :   `NullPointerException` - if `component` is `null`

    Since:
    :   1.7

    See Also:
    :   - [`JLayer`](JLayer.md "class in javax.swing")
  + ### getUnwrappedView

    public static [Component](../../java/awt/Component.md "class in java.awt") getUnwrappedView([JViewport](JViewport.md "class in javax.swing") viewport)

    Returns the first `JViewport`'s descendant
    which is not an instance of `JLayer`.
    If such a descendant can not be found, `null` is returned.
    If the `viewport`'s view component is not a `JLayer`,
    this method is equivalent to [`JViewport.getView()`](JViewport.md#getView())
    otherwise [`JLayer.getView()`](JLayer.md#getView()) will be recursively
    called on all descending `JLayer`s.

    Parameters:
    :   `viewport` - `JViewport` to get the first descendant of,
        which in not a `JLayer` instance.

    Returns:
    :   the first `JViewport`'s descendant
        which is not an instance of `JLayer`.
        If such a descendant can not be found, `null` is returned.

    Throws:
    :   `NullPointerException` - if `viewport` is `null`

    Since:
    :   1.7

    See Also:
    :   - [`JViewport.getView()`](JViewport.md#getView())
        - [`JLayer`](JLayer.md "class in javax.swing")