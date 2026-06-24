Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Label

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](Component.md "class in java.awt")

java.awt.Label

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

public class Label
extends [Component](Component.md "class in java.awt")
implements [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility")

A `Label` object is a component for placing text in a
container. A label displays a single line of read-only text.
The text can be changed by the application, but a user cannot edit it
directly.

For example, the code . . .

---

> ```
>  setLayout(new FlowLayout(FlowLayout.CENTER, 10, 10));
>  add(new Label("Hi There!"));
>  add(new Label("Another Label"));
> ```

---

produces the following labels:

![Two labels: 'Hi There!' and
 'Another label'](doc-files/Label-1.gif)

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Label)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `Label.AccessibleAWTLabel`

  This class implements accessibility support for the
  `Label` class.

  ## Nested classes/interfaces inherited from class java.awt.[Component](Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `CENTER`

  Indicates that the label should be centered.

  `static final int`

  `LEFT`

  Indicates that the label should be left justified.

  `static final int`

  `RIGHT`

  Indicates that the label should be right justified.

  ### Fields inherited from class java.awt.[Component](Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Label()`

  Constructs an empty label.

  `Label(String text)`

  Constructs a new label with the specified string of text,
  left justified.

  `Label(String text,
  int alignment)`

  Constructs a new label that presents the specified string of
  text with the specified alignment.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotify()`

  Creates the peer for this label.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this Label.

  `int`

  `getAlignment()`

  Gets the current alignment of this label.

  `String`

  `getText()`

  Gets the text of this label.

  `protected String`

  `paramString()`

  Returns a string representing the state of this `Label`.

  `void`

  `setAlignment(int alignment)`

  Sets the alignment for this label to the specified alignment.

  `void`

  `setText(String text)`

  Sets the text for this label to the specified text.

  ### Methods inherited from class java.awt.[Component](Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, deliverEvent, disable, disableEvents, dispatchEvent, doLayout, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getAlignmentX, getAlignmentY, getBackground, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentAt, getComponentAt, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeys, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getListeners, getLocale, getLocation, getLocation, getLocationOnScreen, getMaximumSize, getMinimumSize, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPreferredSize, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getToolkit, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, hide, imageUpdate, inside, invalidate, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusCycleRoot, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isOpaque, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, layout, list, list, list, list, list, locate, location, lostFocus, minimumSize, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paint, paintAll, postEvent, preferredSize, prepareImage, prepareImage, print, printAll, processComponentEvent, processEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removeNotify, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, reshape, resize, resize, revalidate, setBackground, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeys, setFocusTraversalKeysEnabled, setFont, setForeground, setIgnoreRepaint, setLocale, setLocation, setLocation, setMaximumSize, setMinimumSize, setMixingCutoutShape, setName, setPreferredSize, setSize, setSize, setVisible, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle, update, validate`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### LEFT

    public static final int LEFT

    Indicates that the label should be left justified.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Label.LEFT)
  + ### CENTER

    public static final int CENTER

    Indicates that the label should be centered.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Label.CENTER)
  + ### RIGHT

    public static final int RIGHT

    Indicates that the label should be right justified.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.awt.Label.RIGHT)
* ## Constructor Details

  + ### Label

    public Label()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs an empty label.
    The text of the label is the empty string `""`.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Label

    public Label([String](../../../java.base/java/lang/String.md "class in java.lang") text)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a new label with the specified string of text,
    left justified.

    Parameters:
    :   `text` - the string that the label presents.
        A `null` value
        will be accepted without causing a NullPointerException
        to be thrown.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### Label

    public Label([String](../../../java.base/java/lang/String.md "class in java.lang") text,
    int alignment)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Constructs a new label that presents the specified string of
    text with the specified alignment.
    Possible values for `alignment` are `Label.LEFT`,
    `Label.RIGHT`, and `Label.CENTER`.

    Parameters:
    :   `text` - the string that the label presents.
        A `null` value
        will be accepted without causing a NullPointerException
        to be thrown.
    :   `alignment` - the alignment value.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### addNotify

    public void addNotify()

    Creates the peer for this label. The peer allows us to
    modify the appearance of the label without changing its
    functionality.

    Overrides:
    :   `addNotify` in class `Component`

    See Also:
    :   - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Component.removeNotify()`](Component.md#removeNotify())
        - [`Component.invalidate()`](Component.md#invalidate())
  + ### getAlignment

    public int getAlignment()

    Gets the current alignment of this label. Possible values are
    `Label.LEFT`, `Label.RIGHT`, and
    `Label.CENTER`.

    Returns:
    :   the alignment of this label

    See Also:
    :   - [`setAlignment(int)`](#setAlignment(int))
  + ### setAlignment

    public void setAlignment(int alignment)

    Sets the alignment for this label to the specified alignment.
    Possible values are `Label.LEFT`,
    `Label.RIGHT`, and `Label.CENTER`.

    Parameters:
    :   `alignment` - the alignment to be set.

    Throws:
    :   `IllegalArgumentException` - if an improper value for
        `alignment` is given.

    See Also:
    :   - [`getAlignment()`](#getAlignment())
  + ### getText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getText()

    Gets the text of this label.

    Returns:
    :   the text of this label, or `null` if
        the text has been set to `null`.

    See Also:
    :   - [`setText(java.lang.String)`](#setText(java.lang.String))
  + ### setText

    public void setText([String](../../../java.base/java/lang/String.md "class in java.lang") text)

    Sets the text for this label to the specified text.

    Parameters:
    :   `text` - the text that this label displays. If
        `text` is `null`, it is
        treated for display purposes like an empty
        string `""`.

    See Also:
    :   - [`getText()`](#getText())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representing the state of this `Label`.
    This method is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not be
    `null`.

    Overrides:
    :   `paramString` in class `Component`

    Returns:
    :   the parameter string of this label
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this Label.
    For labels, the AccessibleContext takes the form of an
    AccessibleAWTLabel.
    A new AccessibleAWTLabel instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleAWTLabel that serves as the
        AccessibleContext of this Label

    Since:
    :   1.3