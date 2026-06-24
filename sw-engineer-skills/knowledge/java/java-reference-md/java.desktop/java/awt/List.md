Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class List

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](Component.md "class in java.awt")

java.awt.List

All Implemented Interfaces:
:   `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `Accessible`

---

public class List
extends [Component](Component.md "class in java.awt")
implements [ItemSelectable](ItemSelectable.md "interface in java.awt"), [Accessible](../../javax/accessibility/Accessible.md "interface in javax.accessibility")

The `List` component presents the user with a
scrolling list of text items. The list can be set up so that
the user can choose either one item or multiple items.

For example, the code . . .

---

> ```
>  List lst = new List(4, false);
>  lst.add("Mercury");
>  lst.add("Venus");
>  lst.add("Earth");
>  lst.add("JavaSoft");
>  lst.add("Mars");
>  lst.add("Jupiter");
>  lst.add("Saturn");
>  lst.add("Uranus");
>  lst.add("Neptune");
>  lst.add("Pluto");
>  cnt.add(lst);
> ```

---

where `cnt` is a container, produces the following
scrolling list:

![Shows a list containing: Venus, Earth, JavaSoft, and Mars. Javasoft is
 selected.](doc-files/List-1.gif)

If the List allows multiple selections, then clicking on
an item that is already selected deselects it. In the preceding
example, only one item from the scrolling list can be selected
at a time, since the second argument when creating the new scrolling
list is `false`. If the List does not allow multiple
selections, selecting an item causes any other selected item
to be deselected.

Note that the list in the example shown was created with four visible
rows. Once the list has been created, the number of visible rows
cannot be changed. A default `List` is created with
four rows, so that `lst = new List()` is equivalent to
`list = new List(4, false)`.

Beginning with Java 1.1, the Abstract Window Toolkit
sends the `List` object all mouse, keyboard, and focus events
that occur over it. (The old AWT event model is being maintained
only for backwards compatibility, and its use is discouraged.)

When an item is selected or deselected by the user, AWT sends an instance
of `ItemEvent` to the list.
When the user double-clicks on an item in a scrolling list,
AWT sends an instance of `ActionEvent` to the
list following the item event. AWT also generates an action event
when the user presses the return key while an item in the
list is selected.

If an application wants to perform some action based on an item
in this list being selected or activated by the user, it should implement
`ItemListener` or `ActionListener`
as appropriate and register the new listener to receive
events from this list.

For multiple-selection scrolling lists, it is considered a better
user interface to use an external gesture (such as clicking on a
button) to trigger the action.

Since:
:   1.0

See Also:
:   * [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
    * [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
    * [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
    * [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
    * [Serialized Form](../../../serialized-form.md#java.awt.List)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `List.AccessibleAWTList`

  This class implements accessibility support for the
  `List` class.

  ## Nested classes/interfaces inherited from class java.awt.[Component](Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  ### Fields inherited from class java.awt.[Component](Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `List()`

  Creates a new scrolling list.

  `List(int rows)`

  Creates a new scrolling list initialized with the specified
  number of visible lines.

  `List(int rows,
  boolean multipleMode)`

  Creates a new scrolling list initialized to display the specified
  number of rows.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(String item)`

  Adds the specified item to the end of scrolling list.

  `void`

  `add(String item,
  int index)`

  Adds the specified item to the scrolling list
  at the position indicated by the index.

  `void`

  `addActionListener(ActionListener l)`

  Adds the specified action listener to receive action events from
  this list.

  `void`

  `addItem(String item)`

  Deprecated.

  replaced by `add(String)`.

  `void`

  `addItem(String item,
  int index)`

  Deprecated.

  replaced by `add(String, int)`.

  `void`

  `addItemListener(ItemListener l)`

  Adds the specified item listener to receive item events from
  this list.

  `void`

  `addNotify()`

  Creates the peer for the list.

  `boolean`

  `allowsMultipleSelections()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `isMultipleMode()`.

  `void`

  `clear()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `removeAll()`.

  `int`

  `countItems()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getItemCount()`.

  `void`

  `delItem(int position)`

  Deprecated.

  replaced by `remove(String)`
  and `remove(int)`.

  `void`

  `delItems(int start,
  int end)`

  Deprecated.

  As of JDK version 1.1,
  Not for public use in the future.

  `void`

  `deselect(int index)`

  Deselects the item at the specified index.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this
  `List`.

  `ActionListener[]`

  `getActionListeners()`

  Returns an array of all the action listeners
  registered on this list.

  `String`

  `getItem(int index)`

  Gets the item associated with the specified index.

  `int`

  `getItemCount()`

  Gets the number of items in the list.

  `ItemListener[]`

  `getItemListeners()`

  Returns an array of all the item listeners
  registered on this list.

  `String[]`

  `getItems()`

  Gets the items in the list.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Returns an array of all the objects currently registered
  as `FooListener`s
  upon this `List`.

  `Dimension`

  `getMinimumSize()`

  Determines the minimum size of this scrolling list.

  `Dimension`

  `getMinimumSize(int rows)`

  Gets the minimum dimensions for a list with the specified
  number of rows.

  `Dimension`

  `getPreferredSize()`

  Gets the preferred size of this scrolling list.

  `Dimension`

  `getPreferredSize(int rows)`

  Gets the preferred dimensions for a list with the specified
  number of rows.

  `int`

  `getRows()`

  Gets the number of visible lines in this list.

  `int`

  `getSelectedIndex()`

  Gets the index of the selected item on the list,

  `int[]`

  `getSelectedIndexes()`

  Gets the selected indexes on the list.

  `String`

  `getSelectedItem()`

  Gets the selected item on this scrolling list.

  `String[]`

  `getSelectedItems()`

  Gets the selected items on this scrolling list.

  `Object[]`

  `getSelectedObjects()`

  Gets the selected items on this scrolling list in an array of Objects.

  `int`

  `getVisibleIndex()`

  Gets the index of the item that was last made visible by
  the method `makeVisible`.

  `boolean`

  `isIndexSelected(int index)`

  Determines if the specified item in this scrolling list is
  selected.

  `boolean`

  `isMultipleMode()`

  Determines whether this list allows multiple selections.

  `boolean`

  `isSelected(int index)`

  Deprecated.

  As of JDK version 1.1,
  replaced by `isIndexSelected(int)`.

  `void`

  `makeVisible(int index)`

  Makes the item at the specified index visible.

  `Dimension`

  `minimumSize()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getMinimumSize()`.

  `Dimension`

  `minimumSize(int rows)`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getMinimumSize(int)`.

  `protected String`

  `paramString()`

  Returns the parameter string representing the state of this
  scrolling list.

  `Dimension`

  `preferredSize()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getPreferredSize()`.

  `Dimension`

  `preferredSize(int rows)`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getPreferredSize(int)`.

  `protected void`

  `processActionEvent(ActionEvent e)`

  Processes action events occurring on this component
  by dispatching them to any registered
  `ActionListener` objects.

  `protected void`

  `processEvent(AWTEvent e)`

  Processes events on this scrolling list.

  `protected void`

  `processItemEvent(ItemEvent e)`

  Processes item events occurring on this list by
  dispatching them to any registered
  `ItemListener` objects.

  `void`

  `remove(int position)`

  Removes the item at the specified position
  from this scrolling list.

  `void`

  `remove(String item)`

  Removes the first occurrence of an item from the list.

  `void`

  `removeActionListener(ActionListener l)`

  Removes the specified action listener so that it no longer
  receives action events from this list.

  `void`

  `removeAll()`

  Removes all items from this list.

  `void`

  `removeItemListener(ItemListener l)`

  Removes the specified item listener so that it no longer
  receives item events from this list.

  `void`

  `removeNotify()`

  Removes the peer for this list.

  `void`

  `replaceItem(String newValue,
  int index)`

  Replaces the item at the specified index in the scrolling list
  with the new string.

  `void`

  `select(int index)`

  Selects the item at the specified index in the scrolling list.

  `void`

  `setMultipleMode(boolean b)`

  Sets the flag that determines whether this list
  allows multiple selections.

  `void`

  `setMultipleSelections(boolean b)`

  Deprecated.

  As of JDK version 1.1,
  replaced by `setMultipleMode(boolean)`.

  ### Methods inherited from class java.awt.[Component](Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, bounds, checkImage, checkImage, coalesceEvents, contains, contains, createImage, createImage, createVolatileImage, createVolatileImage, deliverEvent, disable, disableEvents, dispatchEvent, doLayout, enable, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getAlignmentX, getAlignmentY, getBackground, getBaseline, getBaselineResizeBehavior, getBounds, getBounds, getColorModel, getComponentAt, getComponentAt, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeys, getFocusTraversalKeysEnabled, getFont, getFontMetrics, getForeground, getGraphics, getGraphicsConfiguration, getHeight, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocation, getLocationOnScreen, getMaximumSize, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getSize, getToolkit, getTreeLock, getWidth, getX, getY, gotFocus, handleEvent, hasFocus, hide, imageUpdate, inside, invalidate, isBackgroundSet, isCursorSet, isDisplayable, isDoubleBuffered, isEnabled, isFocusable, isFocusCycleRoot, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isOpaque, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, layout, list, list, list, list, list, locate, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paint, paintAll, postEvent, prepareImage, prepareImage, print, printAll, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processKeyEvent, processMouseEvent, processMouseMotionEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, repaint, requestFocus, requestFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, requestFocusInWindow, reshape, resize, resize, revalidate, setBackground, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setEnabled, setFocusable, setFocusTraversalKeys, setFocusTraversalKeysEnabled, setFont, setForeground, setIgnoreRepaint, setLocale, setLocation, setLocation, setMaximumSize, setMinimumSize, setMixingCutoutShape, setName, setPreferredSize, setSize, setSize, setVisible, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle, update, validate`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### List

    public List()
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a new scrolling list.
    By default, there are four visible lines and multiple selections are
    not allowed. Note that this is a convenience method for
    `List(0, false)`. Also note that the number of visible
    lines in the list cannot be changed after it has been created.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### List

    public List(int rows)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a new scrolling list initialized with the specified
    number of visible lines. By default, multiple selections are
    not allowed. Note that this is a convenience method for
    `List(rows, false)`. Also note that the number
    of visible rows in the list cannot be changed after it has
    been created.

    Parameters:
    :   `rows` - the number of items to show.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    Since:
    :   1.1

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
  + ### List

    public List(int rows,
    boolean multipleMode)
    throws [HeadlessException](HeadlessException.md "class in java.awt")

    Creates a new scrolling list initialized to display the specified
    number of rows. Note that if zero rows are specified, then
    the list will be created with a default of four rows.
    Also note that the number of visible rows in the list cannot
    be changed after it has been created.
    If the value of `multipleMode` is
    `true`, then the user can select multiple items from
    the list. If it is `false`, only one item at a time
    can be selected.

    Parameters:
    :   `rows` - the number of items to show.
    :   `multipleMode` - if `true`,
        then multiple selections are allowed;
        otherwise, only one item can be selected at a time.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### addNotify

    public void addNotify()

    Creates the peer for the list. The peer allows us to modify the
    list's appearance without changing its functionality.

    Overrides:
    :   `addNotify` in class `Component`

    See Also:
    :   - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Component.removeNotify()`](Component.md#removeNotify())
        - [`Component.invalidate()`](Component.md#invalidate())
  + ### removeNotify

    public void removeNotify()

    Removes the peer for this list. The peer allows us to modify the
    list's appearance without changing its functionality.

    Overrides:
    :   `removeNotify` in class `Component`

    See Also:
    :   - [`Component.isDisplayable()`](Component.md#isDisplayable())
        - [`Component.addNotify()`](Component.md#addNotify())
  + ### getItemCount

    public int getItemCount()

    Gets the number of items in the list.

    Returns:
    :   the number of items in the list

    Since:
    :   1.1

    See Also:
    :   - [`getItem(int)`](#getItem(int))
  + ### countItems

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public int countItems()

    Deprecated.

    As of JDK version 1.1,
    replaced by `getItemCount()`.

    Returns the number of items in the list.

    Returns:
    :   the number of items in the list
  + ### getItem

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getItem(int index)

    Gets the item associated with the specified index.

    Parameters:
    :   `index` - the position of the item

    Returns:
    :   an item that is associated with
        the specified index

    See Also:
    :   - [`getItemCount()`](#getItemCount())
  + ### getItems

    public [String](../../../java.base/java/lang/String.md "class in java.lang")[] getItems()

    Gets the items in the list.

    Returns:
    :   a string array containing items of the list

    Since:
    :   1.1

    See Also:
    :   - [`select(int)`](#select(int))
        - [`deselect(int)`](#deselect(int))
        - [`isIndexSelected(int)`](#isIndexSelected(int))
  + ### add

    public void add([String](../../../java.base/java/lang/String.md "class in java.lang") item)

    Adds the specified item to the end of scrolling list.

    Parameters:
    :   `item` - the item to be added

    Since:
    :   1.1
  + ### addItem

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void addItem([String](../../../java.base/java/lang/String.md "class in java.lang") item)

    Deprecated.

    replaced by `add(String)`.

    Adds the specified item to the end of the list.

    Parameters:
    :   `item` - the item to be added
  + ### add

    public void add([String](../../../java.base/java/lang/String.md "class in java.lang") item,
    int index)

    Adds the specified item to the scrolling list
    at the position indicated by the index. The index is
    zero-based. If the value of the index is less than zero,
    or if the value of the index is greater than or equal to
    the number of items in the list, then the item is added
    to the end of the list.

    Parameters:
    :   `item` - the item to be added;
        if this parameter is `null` then the item is
        treated as an empty string, `""`
    :   `index` - the position at which to add the item

    Since:
    :   1.1
  + ### addItem

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void addItem([String](../../../java.base/java/lang/String.md "class in java.lang") item,
    int index)

    Deprecated.

    replaced by `add(String, int)`.

    Adds the specified item to the list
    at the position indicated by the index.

    Parameters:
    :   `item` - the item to be added
    :   `index` - the position at which to add the item
  + ### replaceItem

    public void replaceItem([String](../../../java.base/java/lang/String.md "class in java.lang") newValue,
    int index)

    Replaces the item at the specified index in the scrolling list
    with the new string.

    Parameters:
    :   `newValue` - a new string to replace an existing item
    :   `index` - the position of the item to replace

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if `index`
        is out of range
  + ### removeAll

    public void removeAll()

    Removes all items from this list.

    Since:
    :   1.1

    See Also:
    :   - [`remove(java.lang.String)`](#remove(java.lang.String))
        - [`delItems(int, int)`](#delItems(int,int))
  + ### clear

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void clear()

    Deprecated.

    As of JDK version 1.1,
    replaced by `removeAll()`.
  + ### remove

    public void remove([String](../../../java.base/java/lang/String.md "class in java.lang") item)

    Removes the first occurrence of an item from the list.
    If the specified item is selected, and is the only selected
    item in the list, the list is set to have no selection.

    Parameters:
    :   `item` - the item to remove from the list

    Throws:
    :   `IllegalArgumentException` - if the item doesn't exist in the list

    Since:
    :   1.1
  + ### remove

    public void remove(int position)

    Removes the item at the specified position
    from this scrolling list.
    If the item with the specified position is selected, and is the
    only selected item in the list, the list is set to have no selection.

    Parameters:
    :   `position` - the index of the item to delete

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if the `position` is less than 0 or
        greater than `getItemCount()-1`

    Since:
    :   1.1

    See Also:
    :   - [`add(String, int)`](#add(java.lang.String,int))
  + ### delItem

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void delItem(int position)

    Deprecated.

    replaced by `remove(String)`
    and `remove(int)`.

    Removes the item at the specified position.

    Parameters:
    :   `position` - the index of the item to delete
  + ### getSelectedIndex

    public int getSelectedIndex()

    Gets the index of the selected item on the list,

    Returns:
    :   the index of the selected item;
        if no item is selected, or if multiple items are
        selected, `-1` is returned.

    See Also:
    :   - [`select(int)`](#select(int))
        - [`deselect(int)`](#deselect(int))
        - [`isIndexSelected(int)`](#isIndexSelected(int))
  + ### getSelectedIndexes

    public int[] getSelectedIndexes()

    Gets the selected indexes on the list.

    Returns:
    :   an array of the selected indexes on this scrolling list;
        if no item is selected, a zero-length array is returned.

    See Also:
    :   - [`select(int)`](#select(int))
        - [`deselect(int)`](#deselect(int))
        - [`isIndexSelected(int)`](#isIndexSelected(int))
  + ### getSelectedItem

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getSelectedItem()

    Gets the selected item on this scrolling list.

    Returns:
    :   the selected item on the list;
        if no item is selected, or if multiple items are
        selected, `null` is returned.

    See Also:
    :   - [`select(int)`](#select(int))
        - [`deselect(int)`](#deselect(int))
        - [`isIndexSelected(int)`](#isIndexSelected(int))
  + ### getSelectedItems

    public [String](../../../java.base/java/lang/String.md "class in java.lang")[] getSelectedItems()

    Gets the selected items on this scrolling list.

    Returns:
    :   an array of the selected items on this scrolling list;
        if no item is selected, a zero-length array is returned.

    See Also:
    :   - [`select(int)`](#select(int))
        - [`deselect(int)`](#deselect(int))
        - [`isIndexSelected(int)`](#isIndexSelected(int))
  + ### getSelectedObjects

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getSelectedObjects()

    Gets the selected items on this scrolling list in an array of Objects.

    Specified by:
    :   `getSelectedObjects` in interface `ItemSelectable`

    Returns:
    :   an array of `Object`s representing the
        selected items on this scrolling list;
        if no item is selected, a zero-length array is returned.

    See Also:
    :   - [`getSelectedItems()`](#getSelectedItems())
        - [`ItemSelectable`](ItemSelectable.md "interface in java.awt")
  + ### select

    public void select(int index)

    Selects the item at the specified index in the scrolling list.

    Note that passing out of range parameters is invalid,
    and will result in unspecified behavior.

    Note that this method should be primarily used to
    initially select an item in this component.
    Programmatically calling this method will *not* trigger
    an `ItemEvent`. The only way to trigger an
    `ItemEvent` is by user interaction.

    Parameters:
    :   `index` - the position of the item to select

    See Also:
    :   - [`getSelectedItem()`](#getSelectedItem())
        - [`deselect(int)`](#deselect(int))
        - [`isIndexSelected(int)`](#isIndexSelected(int))
  + ### deselect

    public void deselect(int index)

    Deselects the item at the specified index.

    Note that passing out of range parameters is invalid,
    and will result in unspecified behavior.

    If the item at the specified index is not selected,
    then the operation is ignored.

    Parameters:
    :   `index` - the position of the item to deselect

    See Also:
    :   - [`select(int)`](#select(int))
        - [`getSelectedItem()`](#getSelectedItem())
        - [`isIndexSelected(int)`](#isIndexSelected(int))
  + ### isIndexSelected

    public boolean isIndexSelected(int index)

    Determines if the specified item in this scrolling list is
    selected.

    Parameters:
    :   `index` - the item to be checked

    Returns:
    :   `true` if the specified item has been
        selected; `false` otherwise

    Since:
    :   1.1

    See Also:
    :   - [`select(int)`](#select(int))
        - [`deselect(int)`](#deselect(int))
  + ### isSelected

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public boolean isSelected(int index)

    Deprecated.

    As of JDK version 1.1,
    replaced by `isIndexSelected(int)`.

    Determines if the specified item in the list is selected.

    Parameters:
    :   `index` - specifies the item to be checked

    Returns:
    :   `true` if the item is selected; otherwise `false`
  + ### getRows

    public int getRows()

    Gets the number of visible lines in this list. Note that
    once the `List` has been created, this number
    will never change.

    Returns:
    :   the number of visible lines in this scrolling list
  + ### isMultipleMode

    public boolean isMultipleMode()

    Determines whether this list allows multiple selections.

    Returns:
    :   `true` if this list allows multiple
        selections; otherwise, `false`

    Since:
    :   1.1

    See Also:
    :   - [`setMultipleMode(boolean)`](#setMultipleMode(boolean))
  + ### allowsMultipleSelections

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public boolean allowsMultipleSelections()

    Deprecated.

    As of JDK version 1.1,
    replaced by `isMultipleMode()`.

    Determines whether this list allows multiple selections.

    Returns:
    :   `true` if this list allows multiple
        selections; otherwise `false`
  + ### setMultipleMode

    public void setMultipleMode(boolean b)

    Sets the flag that determines whether this list
    allows multiple selections.
    When the selection mode is changed from multiple-selection to
    single-selection, the selected items change as follows:
    If a selected item has the location cursor, only that
    item will remain selected. If no selected item has the
    location cursor, all items will be deselected.

    Parameters:
    :   `b` - if `true` then multiple selections
        are allowed; otherwise, only one item from
        the list can be selected at once

    Since:
    :   1.1

    See Also:
    :   - [`isMultipleMode()`](#isMultipleMode())
  + ### setMultipleSelections

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setMultipleSelections(boolean b)

    Deprecated.

    As of JDK version 1.1,
    replaced by `setMultipleMode(boolean)`.

    Enables or disables multiple selection mode for this list.

    Parameters:
    :   `b` - `true` to enable multiple mode, `false` otherwise
  + ### getVisibleIndex

    public int getVisibleIndex()

    Gets the index of the item that was last made visible by
    the method `makeVisible`.

    Returns:
    :   the index of the item that was last made visible

    See Also:
    :   - [`makeVisible(int)`](#makeVisible(int))
  + ### makeVisible

    public void makeVisible(int index)

    Makes the item at the specified index visible.

    Parameters:
    :   `index` - the position of the item

    See Also:
    :   - [`getVisibleIndex()`](#getVisibleIndex())
  + ### getPreferredSize

    public [Dimension](Dimension.md "class in java.awt") getPreferredSize(int rows)

    Gets the preferred dimensions for a list with the specified
    number of rows.

    Parameters:
    :   `rows` - number of rows in the list

    Returns:
    :   the preferred dimensions for displaying this scrolling list
        given that the specified number of rows must be visible

    Since:
    :   1.1

    See Also:
    :   - [`Component.getPreferredSize()`](Component.md#getPreferredSize())
  + ### preferredSize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Dimension](Dimension.md "class in java.awt") preferredSize(int rows)

    Deprecated.

    As of JDK version 1.1,
    replaced by `getPreferredSize(int)`.

    Returns the preferred size of this component
    assuming it has the specified number of rows.

    Parameters:
    :   `rows` - the number of rows

    Returns:
    :   the preferred dimensions for displaying this list
  + ### getPreferredSize

    public [Dimension](Dimension.md "class in java.awt") getPreferredSize()

    Gets the preferred size of this scrolling list.

    Overrides:
    :   `getPreferredSize` in class `Component`

    Returns:
    :   the preferred dimensions for displaying this scrolling list

    Since:
    :   1.1

    See Also:
    :   - [`Component.getPreferredSize()`](Component.md#getPreferredSize())
  + ### preferredSize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Dimension](Dimension.md "class in java.awt") preferredSize()

    Deprecated.

    As of JDK version 1.1,
    replaced by `getPreferredSize()`.

    Description copied from class: `Component`

    Returns the component's preferred size.

    Overrides:
    :   `preferredSize` in class `Component`

    Returns:
    :   the component's preferred size
  + ### getMinimumSize

    public [Dimension](Dimension.md "class in java.awt") getMinimumSize(int rows)

    Gets the minimum dimensions for a list with the specified
    number of rows.

    Parameters:
    :   `rows` - number of rows in the list

    Returns:
    :   the minimum dimensions for displaying this scrolling list
        given that the specified number of rows must be visible

    Since:
    :   1.1

    See Also:
    :   - [`Component.getMinimumSize()`](Component.md#getMinimumSize())
  + ### minimumSize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Dimension](Dimension.md "class in java.awt") minimumSize(int rows)

    Deprecated.

    As of JDK version 1.1,
    replaced by `getMinimumSize(int)`.

    Returns the minimum dimensions for the list
    with the specified number of rows.

    Parameters:
    :   `rows` - the number of rows in the list

    Returns:
    :   the minimum dimensions for displaying this list
  + ### getMinimumSize

    public [Dimension](Dimension.md "class in java.awt") getMinimumSize()

    Determines the minimum size of this scrolling list.

    Overrides:
    :   `getMinimumSize` in class `Component`

    Returns:
    :   the minimum dimensions needed
        to display this scrolling list

    Since:
    :   1.1

    See Also:
    :   - [`Component.getMinimumSize()`](Component.md#getMinimumSize())
  + ### minimumSize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Dimension](Dimension.md "class in java.awt") minimumSize()

    Deprecated.

    As of JDK version 1.1,
    replaced by `getMinimumSize()`.

    Description copied from class: `Component`

    Returns the minimum size of this component.

    Overrides:
    :   `minimumSize` in class `Component`

    Returns:
    :   the minimum size of this component
  + ### addItemListener

    public void addItemListener([ItemListener](event/ItemListener.md "interface in java.awt.event") l)

    Adds the specified item listener to receive item events from
    this list. Item events are sent in response to user input, but not
    in response to calls to `select` or `deselect`.
    If listener `l` is `null`,
    no exception is thrown and no action is performed.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Specified by:
    :   `addItemListener` in interface `ItemSelectable`

    Parameters:
    :   `l` - the item listener

    Since:
    :   1.1

    See Also:
    :   - [`removeItemListener(java.awt.event.ItemListener)`](#removeItemListener(java.awt.event.ItemListener))
        - [`getItemListeners()`](#getItemListeners())
        - [`select(int)`](#select(int))
        - [`deselect(int)`](#deselect(int))
        - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
  + ### removeItemListener

    public void removeItemListener([ItemListener](event/ItemListener.md "interface in java.awt.event") l)

    Removes the specified item listener so that it no longer
    receives item events from this list.
    If listener `l` is `null`,
    no exception is thrown and no action is performed.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Specified by:
    :   `removeItemListener` in interface `ItemSelectable`

    Parameters:
    :   `l` - the item listener

    Since:
    :   1.1

    See Also:
    :   - [`addItemListener(java.awt.event.ItemListener)`](#addItemListener(java.awt.event.ItemListener))
        - [`getItemListeners()`](#getItemListeners())
        - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
  + ### getItemListeners

    public [ItemListener](event/ItemListener.md "interface in java.awt.event")[] getItemListeners()

    Returns an array of all the item listeners
    registered on this list.

    Returns:
    :   all of this list's `ItemListener`s
        or an empty array if no item
        listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addItemListener(java.awt.event.ItemListener)`](#addItemListener(java.awt.event.ItemListener))
        - [`removeItemListener(java.awt.event.ItemListener)`](#removeItemListener(java.awt.event.ItemListener))
        - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
  + ### addActionListener

    public void addActionListener([ActionListener](event/ActionListener.md "interface in java.awt.event") l)

    Adds the specified action listener to receive action events from
    this list. Action events occur when a user double-clicks
    on a list item or types Enter when the list has the keyboard
    focus.

    If listener `l` is `null`,
    no exception is thrown and no action is performed.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `l` - the action listener

    Since:
    :   1.1

    See Also:
    :   - [`removeActionListener(java.awt.event.ActionListener)`](#removeActionListener(java.awt.event.ActionListener))
        - [`getActionListeners()`](#getActionListeners())
        - [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
        - [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
  + ### removeActionListener

    public void removeActionListener([ActionListener](event/ActionListener.md "interface in java.awt.event") l)

    Removes the specified action listener so that it no longer
    receives action events from this list. Action events
    occur when a user double-clicks on a list item.
    If listener `l` is `null`,
    no exception is thrown and no action is performed.

    Refer to [AWT Threading Issues](doc-files/AWTThreadIssues.md#ListenersThreads) for details on AWT's threading model.

    Parameters:
    :   `l` - the action listener

    Since:
    :   1.1

    See Also:
    :   - [`addActionListener(java.awt.event.ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`getActionListeners()`](#getActionListeners())
        - [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
        - [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
  + ### getActionListeners

    public [ActionListener](event/ActionListener.md "interface in java.awt.event")[] getActionListeners()

    Returns an array of all the action listeners
    registered on this list.

    Returns:
    :   all of this list's `ActionListener`s
        or an empty array if no action
        listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addActionListener(java.awt.event.ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`removeActionListener(java.awt.event.ActionListener)`](#removeActionListener(java.awt.event.ActionListener))
        - [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
        - [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
  + ### getListeners

    public <T extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Returns an array of all the objects currently registered
    as `FooListener`s
    upon this `List`.
    `FooListener`s are registered using the
    `addFooListener` method.

    You can specify the `listenerType` argument
    with a class literal, such as
    `FooListener.class`.
    For example, you can query a
    `List l`
    for its item listeners with the following code:

    ```
    ItemListener[] ils = (ItemListener[])(l.getListeners(ItemListener.class));
    ```

    If no such listeners exist, this method returns an empty array.

    Overrides:
    :   `getListeners` in class `Component`

    Type Parameters:
    :   `T` - the type of the listeners

    Parameters:
    :   `listenerType` - the type of listeners requested; this parameter
        should specify an interface that descends from
        `java.util.EventListener`

    Returns:
    :   an array of all objects registered as
        `FooListener`s on this list,
        or an empty array if no such
        listeners have been added

    Throws:
    :   `ClassCastException` - if `listenerType`
        doesn't specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.3

    See Also:
    :   - [`getItemListeners()`](#getItemListeners())
  + ### processEvent

    protected void processEvent([AWTEvent](AWTEvent.md "class in java.awt") e)

    Processes events on this scrolling list. If an event is
    an instance of `ItemEvent`, it invokes the
    `processItemEvent` method. Else, if the
    event is an instance of `ActionEvent`,
    it invokes `processActionEvent`.
    If the event is not an item event or an action event,
    it invokes `processEvent` on the superclass.

    Note that if the event parameter is `null`
    the behavior is unspecified and may result in an
    exception.

    Overrides:
    :   `processEvent` in class `Component`

    Parameters:
    :   `e` - the event

    Since:
    :   1.1

    See Also:
    :   - [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
        - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`processActionEvent(java.awt.event.ActionEvent)`](#processActionEvent(java.awt.event.ActionEvent))
        - [`processItemEvent(java.awt.event.ItemEvent)`](#processItemEvent(java.awt.event.ItemEvent))
  + ### processItemEvent

    protected void processItemEvent([ItemEvent](event/ItemEvent.md "class in java.awt.event") e)

    Processes item events occurring on this list by
    dispatching them to any registered
    `ItemListener` objects.

    This method is not called unless item events are
    enabled for this component. Item events are enabled
    when one of the following occurs:
    - An `ItemListener` object is registered
      via `addItemListener`.- Item events are enabled via `enableEvents`.

    Note that if the event parameter is `null`
    the behavior is unspecified and may result in an
    exception.

    Parameters:
    :   `e` - the item event

    Since:
    :   1.1

    See Also:
    :   - [`ItemEvent`](event/ItemEvent.md "class in java.awt.event")
        - [`ItemListener`](event/ItemListener.md "interface in java.awt.event")
        - [`addItemListener(java.awt.event.ItemListener)`](#addItemListener(java.awt.event.ItemListener))
        - [`Component.enableEvents(long)`](Component.md#enableEvents(long))
  + ### processActionEvent

    protected void processActionEvent([ActionEvent](event/ActionEvent.md "class in java.awt.event") e)

    Processes action events occurring on this component
    by dispatching them to any registered
    `ActionListener` objects.

    This method is not called unless action events are
    enabled for this component. Action events are enabled
    when one of the following occurs:
    - An `ActionListener` object is registered
      via `addActionListener`.- Action events are enabled via `enableEvents`.

    Note that if the event parameter is `null`
    the behavior is unspecified and may result in an
    exception.

    Parameters:
    :   `e` - the action event

    Since:
    :   1.1

    See Also:
    :   - [`ActionEvent`](event/ActionEvent.md "class in java.awt.event")
        - [`ActionListener`](event/ActionListener.md "interface in java.awt.event")
        - [`addActionListener(java.awt.event.ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`Component.enableEvents(long)`](Component.md#enableEvents(long))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns the parameter string representing the state of this
    scrolling list. This string is useful for debugging.

    Overrides:
    :   `paramString` in class `Component`

    Returns:
    :   the parameter string of this scrolling list
  + ### delItems

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void delItems(int start,
    int end)

    Deprecated.

    As of JDK version 1.1,
    Not for public use in the future.
    This method is expected to be retained only as a package
    private method.

    Deletes the list items in the specified index range.

    Parameters:
    :   `start` - the beginning index of the range to delete
    :   `end` - the ending index of the range to delete
  + ### getAccessibleContext

    public [AccessibleContext](../../javax/accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this
    `List`. For lists, the `AccessibleContext`
    takes the form of an `AccessibleAWTList`.
    A new `AccessibleAWTList` instance is created, if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an `AccessibleAWTList` that serves as the
        `AccessibleContext` of this `List`

    Since:
    :   1.3