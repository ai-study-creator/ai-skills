Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JList<E>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JList<E>

Type Parameters:
:   `E` - the type of the elements of this list

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`, `Scrollable`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A component which allows for the selection of one or more objects from a list.")
public class JList<E>
extends [JComponent](JComponent.md "class in javax.swing")
implements [Scrollable](Scrollable.md "interface in javax.swing"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A component that displays a list of objects and allows the user to select
one or more items. A separate model, `ListModel`, maintains the
contents of the list.

It's easy to display an array or Vector of objects, using the `JList`
constructor that automatically builds a read-only `ListModel` instance
for you:

```
 // Create a JList that displays strings from an array

 String[] data = {"one", "two", "three", "four"};
 JList<String> myList = new JList<String>(data);

 // Create a JList that displays the superclasses of JList.class, by
 // creating it with a Vector populated with this data

 Vector<Class<?>> superClasses = new Vector<Class<?>>();
 Class<JList> rootClass = javax.swing.JList.class;
 for(Class<?> cls = rootClass; cls != null; cls = cls.getSuperclass()) {
     superClasses.addElement(cls);
 }
 JList<Class<?>> myList = new JList<Class<?>>(superClasses);

 // The automatically created model is stored in JList's "model"
 // property, which you can retrieve

 ListModel<Class<?>> model = myList.getModel();
 for(int i = 0; i < model.getSize(); i++) {
     System.out.println(model.getElementAt(i));
 }
```

A `ListModel` can be supplied directly to a `JList` by way of a
constructor or the `setModel` method. The contents need not be static -
the number of items, and the values of items can change over time. A correct
`ListModel` implementation notifies the set of
`javax.swing.event.ListDataListener`s that have been added to it, each
time a change occurs. These changes are characterized by a
`javax.swing.event.ListDataEvent`, which identifies the range of list
indices that have been modified, added, or removed. `JList`'s
`ListUI` is responsible for keeping the visual representation up to
date with changes, by listening to the model.

Simple, dynamic-content, `JList` applications can use the
`DefaultListModel` class to maintain list elements. This class
implements the `ListModel` interface and also provides a
`java.util.Vector`-like API. Applications that need a more
custom `ListModel` implementation may instead wish to subclass
`AbstractListModel`, which provides basic support for managing and
notifying listeners. For example, a read-only implementation of
`AbstractListModel`:

```
 // This list model has about 2^16 elements.  Enjoy scrolling.

 ListModel<String> bigData = new AbstractListModel<String>() {
     public int getSize() { return Short.MAX_VALUE; }
     public String getElementAt(int index) { return "Index " + index; }
 };
```

The selection state of a `JList` is managed by another separate
model, an instance of `ListSelectionModel`. `JList` is
initialized with a selection model on construction, and also contains
methods to query or set this selection model. Additionally, `JList`
provides convenient methods for easily managing the selection. These methods,
such as `setSelectedIndex` and `getSelectedValue`, are cover
methods that take care of the details of interacting with the selection
model. By default, `JList`'s selection model is configured to allow any
combination of items to be selected at a time; selection mode
`MULTIPLE_INTERVAL_SELECTION`. The selection mode can be changed
on the selection model directly, or via `JList`'s cover method.
Responsibility for updating the selection model in response to user gestures
lies with the list's `ListUI`.

A correct `ListSelectionModel` implementation notifies the set of
`javax.swing.event.ListSelectionListener`s that have been added to it
each time a change to the selection occurs. These changes are characterized
by a `javax.swing.event.ListSelectionEvent`, which identifies the range
of the selection change.

The preferred way to listen for changes in list selection is to add
`ListSelectionListener`s directly to the `JList`. `JList`
then takes care of listening to the selection model and notifying your
listeners of change.

Responsibility for listening to selection changes in order to keep the list's
visual representation up to date lies with the list's `ListUI`.

Painting of cells in a `JList` is handled by a delegate called a
cell renderer, installed on the list as the `cellRenderer` property.
The renderer provides a `java.awt.Component` that is used
like a "rubber stamp" to paint the cells. Each time a cell needs to be
painted, the list's `ListUI` asks the cell renderer for the component,
moves it into place, and has it paint the contents of the cell by way of its
`paint` method. A default cell renderer, which uses a `JLabel`
component to render, is installed by the lists's `ListUI`. You can
substitute your own renderer using code like this:

```
  // Display an icon and a string for each object in the list.

 class MyCellRenderer extends JLabel implements ListCellRenderer<Object> {
     static final ImageIcon longIcon = new ImageIcon("long.gif");
     static final ImageIcon shortIcon = new ImageIcon("short.gif");

     // This is the only method defined by ListCellRenderer.
     // We just reconfigure the JLabel each time we're called.

     public Component getListCellRendererComponent(
       JList<?> list,           // the list
       Object value,            // value to display
       int index,               // cell index
       boolean isSelected,      // is the cell selected
       boolean cellHasFocus)    // does the cell have focus
     {
         String s = value.toString();
         setText(s);
         setIcon((s.length() > 10) ? longIcon : shortIcon);
         if (isSelected) {
             setBackground(list.getSelectionBackground());
             setForeground(list.getSelectionForeground());
         } else {
             setBackground(list.getBackground());
             setForeground(list.getForeground());
         }
         setEnabled(list.isEnabled());
         setFont(list.getFont());
         setOpaque(true);
         return this;
     }
 }

 myList.setCellRenderer(new MyCellRenderer());
```

Another job for the cell renderer is in helping to determine sizing
information for the list. By default, the list's `ListUI` determines
the size of cells by asking the cell renderer for its preferred
size for each list item. This can be expensive for large lists of items.
To avoid these calculations, you can set a `fixedCellWidth` and
`fixedCellHeight` on the list, or have these values calculated
automatically based on a single prototype value:

```
 JList<String> bigDataList = new JList<String>(bigData);

 // We don't want the JList implementation to compute the width
 // or height of all of the list cells, so we give it a string
 // that's as big as we'll need for any cell.  It uses this to
 // compute values for the fixedCellWidth and fixedCellHeight
 // properties.

 bigDataList.setPrototypeCellValue("Index 1234567890");
```

`JList` doesn't implement scrolling directly. To create a list that
scrolls, make it the viewport view of a `JScrollPane`. For example:

```
 JScrollPane scrollPane = new JScrollPane(myList);

 // Or in two steps:
 JScrollPane scrollPane = new JScrollPane();
 scrollPane.getViewport().setView(myList);
```

`JList` doesn't provide any special handling of double or triple
(or N) mouse clicks, but it's easy to add a `MouseListener` if you
wish to take action on these events. Use the `locationToIndex`
method to determine what cell was clicked. For example:

```
 MouseListener mouseListener = new MouseAdapter() {
     public void mouseClicked(MouseEvent e) {
         if (e.getClickCount() == 2) {
             int index = list.locationToIndex(e.getPoint());
             System.out.println("Double clicked on Item " + index);
          }
     }
 };
 list.addMouseListener(mouseListener);
```

**Warning:** Swing is not thread safe. For more
information see [Swing's Threading
Policy](package-summary.md#threading).

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

See [How to Use Lists](https://docs.oracle.com/javase/tutorial/uiswing/components/list.html)
in [*The Java Tutorial*](https://docs.oracle.com/javase/tutorial/)
for further documentation.

Since:
:   1.2

See Also:
:   * [`ListModel`](ListModel.md "interface in javax.swing")
    * [`AbstractListModel`](AbstractListModel.md "class in javax.swing")
    * [`DefaultListModel`](DefaultListModel.md "class in javax.swing")
    * [`ListSelectionModel`](ListSelectionModel.md "interface in javax.swing")
    * [`DefaultListSelectionModel`](DefaultListSelectionModel.md "class in javax.swing")
    * [`ListCellRenderer`](ListCellRenderer.md "interface in javax.swing")
    * [`DefaultListCellRenderer`](DefaultListCellRenderer.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JList.AccessibleJList`

  This class implements accessibility support for the
  `JList` class.

  `static final class`

  `JList.DropLocation`

  A subclass of `TransferHandler.DropLocation` representing
  a drop location for a `JList`.

  ## Nested classes/interfaces inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `JComponent.AccessibleJComponent`

  ## Nested classes/interfaces inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `Container.AccessibleAWTContainer`

  ## Nested classes/interfaces inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `Component.AccessibleAWTComponent, Component.BaselineResizeBehavior, Component.BltBufferStrategy, Component.FlipBufferStrategy`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `HORIZONTAL_WRAP`

  Indicates a "newspaper style" layout with cells flowing horizontally
  then vertically.

  `static final int`

  `VERTICAL`

  Indicates a vertical layout of cells, in a single column;
  the default layout.

  `static final int`

  `VERTICAL_WRAP`

  Indicates a "newspaper style" layout with cells flowing vertically
  then horizontally.

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `accessibleContext, BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JList()`

  Constructs a `JList` with an empty, read-only, model.

  `JList(E[] listData)`

  Constructs a `JList` that displays the elements in
  the specified array.

  `JList(Vector<? extends E> listData)`

  Constructs a `JList` that displays the elements in
  the specified `Vector`.

  `JList(ListModel<E> dataModel)`

  Constructs a `JList` that displays elements from the specified,
  `non-null`, model.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addListSelectionListener(ListSelectionListener listener)`

  Adds a listener to the list, to be notified each time a change to the
  selection occurs; the preferred way of listening for selection state
  changes.

  `void`

  `addSelectionInterval(int anchor,
  int lead)`

  Sets the selection to be the union of the specified interval with current
  selection.

  `void`

  `clearSelection()`

  Clears the selection; after calling this method, `isSelectionEmpty`
  will return `true`.

  `protected ListSelectionModel`

  `createSelectionModel()`

  Returns an instance of `DefaultListSelectionModel`; called
  during construction to initialize the list's selection model
  property.

  `void`

  `ensureIndexIsVisible(int index)`

  Scrolls the list within an enclosing viewport to make the specified
  cell completely visible.

  `protected void`

  `fireSelectionValueChanged(int firstIndex,
  int lastIndex,
  boolean isAdjusting)`

  Notifies `ListSelectionListener`s added directly to the list
  of selection changes made to the selection model.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the `AccessibleContext` associated with this `JList`.

  `int`

  `getAnchorSelectionIndex()`

  Returns the anchor selection index.

  `Rectangle`

  `getCellBounds(int index0,
  int index1)`

  Returns the bounding rectangle, in the list's coordinate system,
  for the range of cells specified by the two indices.

  `ListCellRenderer<? super E>`

  `getCellRenderer()`

  Returns the object responsible for painting list items.

  `boolean`

  `getDragEnabled()`

  Returns whether or not automatic drag handling is enabled.

  `final JList.DropLocation`

  `getDropLocation()`

  Returns the location that this component should visually indicate
  as the drop location during a DnD operation over the component,
  or `null` if no location is to currently be shown.

  `final DropMode`

  `getDropMode()`

  Returns the drop mode for this component.

  `int`

  `getFirstVisibleIndex()`

  Returns the smallest list index that is currently visible.

  `int`

  `getFixedCellHeight()`

  Returns the value of the `fixedCellHeight` property.

  `int`

  `getFixedCellWidth()`

  Returns the value of the `fixedCellWidth` property.

  `int`

  `getLastVisibleIndex()`

  Returns the largest list index that is currently visible.

  `int`

  `getLayoutOrientation()`

  Returns the layout orientation property for the list: `VERTICAL`
  if the layout is a single column of cells, `VERTICAL_WRAP` if the
  layout is "newspaper style" with the content flowing vertically then
  horizontally, or `HORIZONTAL_WRAP` if the layout is "newspaper
  style" with the content flowing horizontally then vertically.

  `int`

  `getLeadSelectionIndex()`

  Returns the lead selection index.

  `ListSelectionListener[]`

  `getListSelectionListeners()`

  Returns an array of all the `ListSelectionListener`s added
  to this `JList` by way of `addListSelectionListener`.

  `int`

  `getMaxSelectionIndex()`

  Returns the largest selected cell index, or `-1` if the selection
  is empty.

  `int`

  `getMinSelectionIndex()`

  Returns the smallest selected cell index, or `-1` if the selection
  is empty.

  `ListModel<E>`

  `getModel()`

  Returns the data model that holds the list of items displayed
  by the `JList` component.

  `int`

  `getNextMatch(String prefix,
  int startIndex,
  Position.Bias bias)`

  Returns the next list element whose `toString` value
  starts with the given prefix.

  `Dimension`

  `getPreferredScrollableViewportSize()`

  Computes the size of viewport needed to display `visibleRowCount`
  rows.

  `E`

  `getPrototypeCellValue()`

  Returns the "prototypical" cell value -- a value used to calculate a
  fixed width and height for cells.

  `int`

  `getScrollableBlockIncrement(Rectangle visibleRect,
  int orientation,
  int direction)`

  Returns the distance to scroll to expose the next or previous block.

  `boolean`

  `getScrollableTracksViewportHeight()`

  Returns `true` if this `JList` is displayed in a
  `JViewport` and the viewport is taller than the list's
  preferred height, or if the layout orientation is `VERTICAL_WRAP`
  and `visibleRowCount <= 0`; otherwise returns `false`.

  `boolean`

  `getScrollableTracksViewportWidth()`

  Returns `true` if this `JList` is displayed in a
  `JViewport` and the viewport is wider than the list's
  preferred width, or if the layout orientation is `HORIZONTAL_WRAP`
  and `visibleRowCount <= 0`; otherwise returns `false`.

  `int`

  `getScrollableUnitIncrement(Rectangle visibleRect,
  int orientation,
  int direction)`

  Returns the distance to scroll to expose the next or previous
  row (for vertical scrolling) or column (for horizontal scrolling).

  `int`

  `getSelectedIndex()`

  Returns the smallest selected cell index; *the selection* when only
  a single item is selected in the list.

  `int[]`

  `getSelectedIndices()`

  Returns an array of all of the selected indices, in increasing
  order.

  `E`

  `getSelectedValue()`

  Returns the value for the smallest selected cell index;
  *the selected value* when only a single item is selected in the
  list.

  `Object[]`

  `getSelectedValues()`

  Deprecated.

  As of JDK 1.7, replaced by [`getSelectedValuesList()`](#getSelectedValuesList())

  `List<E>`

  `getSelectedValuesList()`

  Returns a list of all the selected items, in increasing order based
  on their indices in the list.

  `Color`

  `getSelectionBackground()`

  Returns the color used to draw the background of selected items.

  `Color`

  `getSelectionForeground()`

  Returns the color used to draw the foreground of selected items.

  `int`

  `getSelectionMode()`

  Returns the current selection mode for the list.

  `ListSelectionModel`

  `getSelectionModel()`

  Returns the current selection model.

  `String`

  `getToolTipText(MouseEvent event)`

  Returns the tooltip text to be used for the given event.

  `ListUI`

  `getUI()`

  Returns the `ListUI`, the look and feel object that
  renders this component.

  `String`

  `getUIClassID()`

  Returns `"ListUI"`, the `UIDefaults` key used to look
  up the name of the `javax.swing.plaf.ListUI` class that defines
  the look and feel for this component.

  `boolean`

  `getValueIsAdjusting()`

  Returns the value of the selection model's `isAdjusting` property.

  `int`

  `getVisibleRowCount()`

  Returns the value of the `visibleRowCount` property.

  `Point`

  `indexToLocation(int index)`

  Returns the origin of the specified item in the list's coordinate
  system.

  `boolean`

  `isSelectedIndex(int index)`

  Returns `true` if the specified index is selected,
  else `false`.

  `boolean`

  `isSelectionEmpty()`

  Returns `true` if nothing is selected, else `false`.

  `int`

  `locationToIndex(Point location)`

  Returns the cell index closest to the given location in the list's
  coordinate system.

  `protected String`

  `paramString()`

  Returns a `String` representation of this `JList`.

  `void`

  `removeListSelectionListener(ListSelectionListener listener)`

  Removes a selection listener from the list.

  `void`

  `removeSelectionInterval(int index0,
  int index1)`

  Sets the selection to be the set difference of the specified interval
  and the current selection.

  `void`

  `setCellRenderer(ListCellRenderer<? super E> cellRenderer)`

  Sets the delegate that is used to paint each cell in the list.

  `void`

  `setDragEnabled(boolean b)`

  Turns on or off automatic drag handling.

  `final void`

  `setDropMode(DropMode dropMode)`

  Sets the drop mode for this component.

  `void`

  `setFixedCellHeight(int height)`

  Sets a fixed value to be used for the height of every cell in the list.

  `void`

  `setFixedCellWidth(int width)`

  Sets a fixed value to be used for the width of every cell in the list.

  `void`

  `setLayoutOrientation(int layoutOrientation)`

  Defines the way list cells are laid out.

  `void`

  `setListData(E[] listData)`

  Constructs a read-only `ListModel` from an array of items,
  and calls `setModel` with this model.

  `void`

  `setListData(Vector<? extends E> listData)`

  Constructs a read-only `ListModel` from a `Vector`
  and calls `setModel` with this model.

  `void`

  `setModel(ListModel<E> model)`

  Sets the model that represents the contents or "value" of the
  list, notifies property change listeners, and then clears the
  list's selection.

  `void`

  `setPrototypeCellValue(E prototypeCellValue)`

  Sets the `prototypeCellValue` property, and then (if the new value
  is `non-null`), computes the `fixedCellWidth` and
  `fixedCellHeight` properties by requesting the cell renderer
  component for the given value (and index 0) from the cell renderer, and
  using that component's preferred size.

  `void`

  `setSelectedIndex(int index)`

  Selects a single cell.

  `void`

  `setSelectedIndices(int[] indices)`

  Changes the selection to be the set of indices specified by the given
  array.

  `void`

  `setSelectedValue(Object anObject,
  boolean shouldScroll)`

  Selects the specified object from the list.

  `void`

  `setSelectionBackground(Color selectionBackground)`

  Sets the color used to draw the background of selected items, which
  cell renderers can use fill selected cells.

  `void`

  `setSelectionForeground(Color selectionForeground)`

  Sets the color used to draw the foreground of selected items, which
  cell renderers can use to render text and graphics.

  `void`

  `setSelectionInterval(int anchor,
  int lead)`

  Selects the specified interval.

  `void`

  `setSelectionMode(int selectionMode)`

  Sets the selection mode for the list.

  `void`

  `setSelectionModel(ListSelectionModel selectionModel)`

  Sets the `selectionModel` for the list to a
  non-`null` `ListSelectionModel`
  implementation.

  `void`

  `setUI(ListUI ui)`

  Sets the `ListUI`, the look and feel object that
  renders this component.

  `void`

  `setValueIsAdjusting(boolean b)`

  Sets the selection model's `valueIsAdjusting` property.

  `void`

  `setVisibleRowCount(int visibleRowCount)`

  Sets the `visibleRowCount` property, which has different meanings
  depending on the layout orientation: For a `VERTICAL` layout
  orientation, this sets the preferred number of rows to display without
  requiring scrolling; for other orientations, it affects the wrapping of
  cells.

  `void`

  `updateUI()`

  Resets the `ListUI` property by setting it to the value provided
  by the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### VERTICAL

    public static final int VERTICAL

    Indicates a vertical layout of cells, in a single column;
    the default layout.

    Since:
    :   1.4

    See Also:
    :   - [`setLayoutOrientation(int)`](#setLayoutOrientation(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JList.VERTICAL)
  + ### VERTICAL\_WRAP

    public static final int VERTICAL\_WRAP

    Indicates a "newspaper style" layout with cells flowing vertically
    then horizontally.

    Since:
    :   1.4

    See Also:
    :   - [`setLayoutOrientation(int)`](#setLayoutOrientation(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JList.VERTICAL_WRAP)
  + ### HORIZONTAL\_WRAP

    public static final int HORIZONTAL\_WRAP

    Indicates a "newspaper style" layout with cells flowing horizontally
    then vertically.

    Since:
    :   1.4

    See Also:
    :   - [`setLayoutOrientation(int)`](#setLayoutOrientation(int))
        - [Constant Field Values](../../../constant-values.md#javax.swing.JList.HORIZONTAL_WRAP)
* ## Constructor Details

  + ### JList

    public JList([ListModel](ListModel.md "interface in javax.swing")<[E](JList.md "type parameter in JList")> dataModel)

    Constructs a `JList` that displays elements from the specified,
    `non-null`, model. All `JList` constructors delegate to
    this one.

    This constructor registers the list with the `ToolTipManager`,
    allowing for tooltips to be provided by the cell renderers.

    Parameters:
    :   `dataModel` - the model for the list

    Throws:
    :   `IllegalArgumentException` - if the model is `null`
  + ### JList

    public JList([E](JList.md "type parameter in JList")[] listData)

    Constructs a `JList` that displays the elements in
    the specified array. This constructor creates a read-only model
    for the given array, and then delegates to the constructor that
    takes a `ListModel`.

    Attempts to pass a `null` value to this method results in
    undefined behavior and, most likely, exceptions. The created model
    references the given array directly. Attempts to modify the array
    after constructing the list results in undefined behavior.

    Parameters:
    :   `listData` - the array of Objects to be loaded into the data model,
        `non-null`
  + ### JList

    public JList([Vector](../../../java.base/java/util/Vector.md "class in java.util")<? extends [E](JList.md "type parameter in JList")> listData)

    Constructs a `JList` that displays the elements in
    the specified `Vector`. This constructor creates a read-only
    model for the given `Vector`, and then delegates to the constructor
    that takes a `ListModel`.

    Attempts to pass a `null` value to this method results in
    undefined behavior and, most likely, exceptions. The created model
    references the given `Vector` directly. Attempts to modify the
    `Vector` after constructing the list results in undefined behavior.

    Parameters:
    :   `listData` - the `Vector` to be loaded into the
        data model, `non-null`
  + ### JList

    public JList()

    Constructs a `JList` with an empty, read-only, model.
* ## Method Details

  + ### getUI

    public [ListUI](plaf/ListUI.md "class in javax.swing.plaf") getUI()

    Returns the `ListUI`, the look and feel object that
    renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the `ListUI` object that renders this component
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([ListUI](plaf/ListUI.md "class in javax.swing.plaf") ui)

    Sets the `ListUI`, the look and feel object that
    renders this component.

    Parameters:
    :   `ui` - the `ListUI` object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the `ListUI` property by setting it to the value provided
    by the current look and feel. If the current cell renderer was installed
    by the developer (rather than the look and feel itself), this also causes
    the cell renderer and its children to be updated, by calling
    `SwingUtilities.updateComponentTreeUI` on it.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`UIManager.getUI(javax.swing.JComponent)`](UIManager.md#getUI(javax.swing.JComponent))
        - [`SwingUtilities.updateComponentTreeUI(java.awt.Component)`](SwingUtilities.md#updateComponentTreeUI(java.awt.Component))
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns `"ListUI"`, the `UIDefaults` key used to look
    up the name of the `javax.swing.plaf.ListUI` class that defines
    the look and feel for this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ListUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getPrototypeCellValue

    public [E](JList.md "type parameter in JList") getPrototypeCellValue()

    Returns the "prototypical" cell value -- a value used to calculate a
    fixed width and height for cells. This can be `null` if there
    is no such value.

    Returns:
    :   the value of the `prototypeCellValue` property

    See Also:
    :   - [`setPrototypeCellValue(E)`](#setPrototypeCellValue(E))
  + ### setPrototypeCellValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The cell prototype value, used to compute cell width and height.")
    public void setPrototypeCellValue([E](JList.md "type parameter in JList") prototypeCellValue)

    Sets the `prototypeCellValue` property, and then (if the new value
    is `non-null`), computes the `fixedCellWidth` and
    `fixedCellHeight` properties by requesting the cell renderer
    component for the given value (and index 0) from the cell renderer, and
    using that component's preferred size.

    This method is useful when the list is too long to allow the
    `ListUI` to compute the width/height of each cell, and there is a
    single cell value that is known to occupy as much space as any of the
    others, a so-called prototype.

    While all three of the `prototypeCellValue`,
    `fixedCellHeight`, and `fixedCellWidth` properties may be
    modified by this method, `PropertyChangeEvent` notifications are
    only sent when the `prototypeCellValue` property changes.

    To see an example which sets this property, see the
    [class description](#prototype_example) above.

    The default value of this property is `null`.

    This is a JavaBeans bound property.

    Parameters:
    :   `prototypeCellValue` - the value on which to base
        `fixedCellWidth` and
        `fixedCellHeight`

    See Also:
    :   - [`getPrototypeCellValue()`](#getPrototypeCellValue())
        - [`setFixedCellWidth(int)`](#setFixedCellWidth(int))
        - [`setFixedCellHeight(int)`](#setFixedCellHeight(int))
        - [`Container.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../java/awt/Container.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getFixedCellWidth

    public int getFixedCellWidth()

    Returns the value of the `fixedCellWidth` property.

    Returns:
    :   the fixed cell width

    See Also:
    :   - [`setFixedCellWidth(int)`](#setFixedCellWidth(int))
  + ### setFixedCellWidth

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Defines a fixed cell width when greater than zero.")
    public void setFixedCellWidth(int width)

    Sets a fixed value to be used for the width of every cell in the list.
    If `width` is -1, cell widths are computed in the `ListUI`
    by applying `getPreferredSize` to the cell renderer component
    for each list element.

    The default value of this property is `-1`.

    This is a JavaBeans bound property.

    Parameters:
    :   `width` - the width to be used for all cells in the list

    See Also:
    :   - [`setPrototypeCellValue(E)`](#setPrototypeCellValue(E))
        - [`getFixedCellWidth()`](#getFixedCellWidth())
        - [`Container.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../java/awt/Container.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getFixedCellHeight

    public int getFixedCellHeight()

    Returns the value of the `fixedCellHeight` property.

    Returns:
    :   the fixed cell height

    See Also:
    :   - [`setFixedCellHeight(int)`](#setFixedCellHeight(int))
  + ### setFixedCellHeight

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="Defines a fixed cell height when greater than zero.")
    public void setFixedCellHeight(int height)

    Sets a fixed value to be used for the height of every cell in the list.
    If `height` is -1, cell heights are computed in the `ListUI`
    by applying `getPreferredSize` to the cell renderer component
    for each list element.

    The default value of this property is `-1`.

    This is a JavaBeans bound property.

    Parameters:
    :   `height` - the height to be used for all cells in the list

    See Also:
    :   - [`setPrototypeCellValue(E)`](#setPrototypeCellValue(E))
        - [`setFixedCellWidth(int)`](#setFixedCellWidth(int))
        - [`Container.addPropertyChangeListener(java.beans.PropertyChangeListener)`](../../java/awt/Container.md#addPropertyChangeListener(java.beans.PropertyChangeListener))
  + ### getCellRenderer

    public [ListCellRenderer](ListCellRenderer.md "interface in javax.swing")<? super [E](JList.md "type parameter in JList")> getCellRenderer()

    Returns the object responsible for painting list items.

    Returns:
    :   the value of the `cellRenderer` property

    See Also:
    :   - [`setCellRenderer(javax.swing.ListCellRenderer<? super E>)`](#setCellRenderer(javax.swing.ListCellRenderer))
  + ### setCellRenderer

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The component used to draw the cells.")
    public void setCellRenderer([ListCellRenderer](ListCellRenderer.md "interface in javax.swing")<? super [E](JList.md "type parameter in JList")> cellRenderer)

    Sets the delegate that is used to paint each cell in the list.
    The job of a cell renderer is discussed in detail in the
    [class level documentation](#renderer).

    If the `prototypeCellValue` property is `non-null`,
    setting the cell renderer also causes the `fixedCellWidth` and
    `fixedCellHeight` properties to be re-calculated. Only one
    `PropertyChangeEvent` is generated however -
    for the `cellRenderer` property.

    The default value of this property is provided by the `ListUI`
    delegate, i.e. by the look and feel implementation.

    This is a JavaBeans bound property.

    Parameters:
    :   `cellRenderer` - the `ListCellRenderer`
        that paints list cells

    See Also:
    :   - [`getCellRenderer()`](#getCellRenderer())
  + ### getSelectionForeground

    public [Color](../../java/awt/Color.md "class in java.awt") getSelectionForeground()

    Returns the color used to draw the foreground of selected items.
    `DefaultListCellRenderer` uses this color to draw the foreground
    of items in the selected state, as do the renderers installed by most
    `ListUI` implementations.

    Returns:
    :   the color to draw the foreground of selected items

    See Also:
    :   - [`setSelectionForeground(java.awt.Color)`](#setSelectionForeground(java.awt.Color))
        - [`DefaultListCellRenderer`](DefaultListCellRenderer.md "class in javax.swing")
  + ### setSelectionForeground

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The foreground color of selected cells.")
    public void setSelectionForeground([Color](../../java/awt/Color.md "class in java.awt") selectionForeground)

    Sets the color used to draw the foreground of selected items, which
    cell renderers can use to render text and graphics.
    `DefaultListCellRenderer` uses this color to draw the foreground
    of items in the selected state, as do the renderers installed by most
    `ListUI` implementations.

    The default value of this property is defined by the look and feel
    implementation.

    This is a JavaBeans bound property.

    Parameters:
    :   `selectionForeground` - the `Color` to use in the foreground
        for selected list items

    See Also:
    :   - [`getSelectionForeground()`](#getSelectionForeground())
        - [`setSelectionBackground(java.awt.Color)`](#setSelectionBackground(java.awt.Color))
        - [`JComponent.setForeground(java.awt.Color)`](JComponent.md#setForeground(java.awt.Color))
        - [`JComponent.setBackground(java.awt.Color)`](JComponent.md#setBackground(java.awt.Color))
        - [`JComponent.setFont(java.awt.Font)`](JComponent.md#setFont(java.awt.Font))
        - [`DefaultListCellRenderer`](DefaultListCellRenderer.md "class in javax.swing")
  + ### getSelectionBackground

    public [Color](../../java/awt/Color.md "class in java.awt") getSelectionBackground()

    Returns the color used to draw the background of selected items.
    `DefaultListCellRenderer` uses this color to draw the background
    of items in the selected state, as do the renderers installed by most
    `ListUI` implementations.

    Returns:
    :   the color to draw the background of selected items

    See Also:
    :   - [`setSelectionBackground(java.awt.Color)`](#setSelectionBackground(java.awt.Color))
        - [`DefaultListCellRenderer`](DefaultListCellRenderer.md "class in javax.swing")
  + ### setSelectionBackground

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The background color of selected cells.")
    public void setSelectionBackground([Color](../../java/awt/Color.md "class in java.awt") selectionBackground)

    Sets the color used to draw the background of selected items, which
    cell renderers can use fill selected cells.
    `DefaultListCellRenderer` uses this color to fill the background
    of items in the selected state, as do the renderers installed by most
    `ListUI` implementations.

    The default value of this property is defined by the look
    and feel implementation.

    This is a JavaBeans bound property.

    Parameters:
    :   `selectionBackground` - the `Color` to use for the
        background of selected cells

    See Also:
    :   - [`getSelectionBackground()`](#getSelectionBackground())
        - [`setSelectionForeground(java.awt.Color)`](#setSelectionForeground(java.awt.Color))
        - [`JComponent.setForeground(java.awt.Color)`](JComponent.md#setForeground(java.awt.Color))
        - [`JComponent.setBackground(java.awt.Color)`](JComponent.md#setBackground(java.awt.Color))
        - [`JComponent.setFont(java.awt.Font)`](JComponent.md#setFont(java.awt.Font))
        - [`DefaultListCellRenderer`](DefaultListCellRenderer.md "class in javax.swing")
  + ### getVisibleRowCount

    public int getVisibleRowCount()

    Returns the value of the `visibleRowCount` property. See the
    documentation for [`setVisibleRowCount(int)`](#setVisibleRowCount(int)) for details on how to
    interpret this value.

    Returns:
    :   the value of the `visibleRowCount` property.

    See Also:
    :   - [`setVisibleRowCount(int)`](#setVisibleRowCount(int))
  + ### setVisibleRowCount

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The preferred number of rows to display without requiring scrolling")
    public void setVisibleRowCount(int visibleRowCount)

    Sets the `visibleRowCount` property, which has different meanings
    depending on the layout orientation: For a `VERTICAL` layout
    orientation, this sets the preferred number of rows to display without
    requiring scrolling; for other orientations, it affects the wrapping of
    cells.

    In `VERTICAL` orientation:  
    Setting this property affects the return value of the
    [`getPreferredScrollableViewportSize()`](#getPreferredScrollableViewportSize()) method, which is used to
    calculate the preferred size of an enclosing viewport. See that method's
    documentation for more details.

    In `HORIZONTAL_WRAP` and `VERTICAL_WRAP` orientations:  
    This affects how cells are wrapped. See the documentation of
    [`setLayoutOrientation(int)`](#setLayoutOrientation(int)) for more details.

    The default value of this property is `8`.

    Calling this method with a negative value results in the property
    being set to `0`.

    This is a JavaBeans bound property.

    Parameters:
    :   `visibleRowCount` - an integer specifying the preferred number of
        rows to display without requiring scrolling

    See Also:
    :   - [`getVisibleRowCount()`](#getVisibleRowCount())
        - [`getPreferredScrollableViewportSize()`](#getPreferredScrollableViewportSize())
        - [`setLayoutOrientation(int)`](#setLayoutOrientation(int))
        - [`JComponent.getVisibleRect()`](JComponent.md#getVisibleRect())
        - [`JViewport`](JViewport.md "class in javax.swing")
  + ### getLayoutOrientation

    public int getLayoutOrientation()

    Returns the layout orientation property for the list: `VERTICAL`
    if the layout is a single column of cells, `VERTICAL_WRAP` if the
    layout is "newspaper style" with the content flowing vertically then
    horizontally, or `HORIZONTAL_WRAP` if the layout is "newspaper
    style" with the content flowing horizontally then vertically.

    Returns:
    :   the value of the `layoutOrientation` property

    Since:
    :   1.4

    See Also:
    :   - [`setLayoutOrientation(int)`](#setLayoutOrientation(int))
  + ### setLayoutOrientation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JList.VERTICAL","JList.HORIZONTAL\_WRAP","JList.VERTICAL\_WRAP"},
    [description](../../java/beans/BeanProperty.md#description())="Defines the way list cells are laid out.")
    public void setLayoutOrientation(int layoutOrientation)

    Defines the way list cells are laid out. Consider a `JList`
    with five cells. Cells can be laid out in one of the following ways:

    ```
     VERTICAL:          0
                        1
                        2
                        3
                        4

     HORIZONTAL_WRAP:   0  1  2
                        3  4

     VERTICAL_WRAP:     0  3
                        1  4
                        2
    ```

    A description of these layouts follows:

    Describes layouts VERTICAL,HORIZONTAL\_WRAP, and VERTICAL\_WRAP

    | Value Description | |
    | --- | --- |
    | `VERTICAL` Cells are laid out vertically in a single column.|  |  |  |  | | --- | --- | --- | --- | | `HORIZONTAL_WRAP` Cells are laid out horizontally, wrapping to a new row as necessary. If the `visibleRowCount` property is less than or equal to zero, wrapping is determined by the width of the list; otherwise wrapping is done in such a way as to ensure `visibleRowCount` rows in the list.| `VERTICAL_WRAP` Cells are laid out vertically, wrapping to a new column as necessary. If the `visibleRowCount` property is less than or equal to zero, wrapping is determined by the height of the list; otherwise wrapping is done at `visibleRowCount` rows. | | | | | |

    The default value of this property is `VERTICAL`.

    Parameters:
    :   `layoutOrientation` - the new layout orientation, one of:
        `VERTICAL`, `HORIZONTAL_WRAP` or `VERTICAL_WRAP`

    Throws:
    :   `IllegalArgumentException` - if `layoutOrientation` isn't one of the
        allowable values

    Since:
    :   1.4

    See Also:
    :   - [`getLayoutOrientation()`](#getLayoutOrientation())
        - [`setVisibleRowCount(int)`](#setVisibleRowCount(int))
        - [`getScrollableTracksViewportHeight()`](#getScrollableTracksViewportHeight())
        - [`getScrollableTracksViewportWidth()`](#getScrollableTracksViewportWidth())
  + ### getFirstVisibleIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public int getFirstVisibleIndex()

    Returns the smallest list index that is currently visible.
    In a left-to-right `componentOrientation`, the first visible
    cell is found closest to the list's upper-left corner. In right-to-left
    orientation, it is found closest to the upper-right corner.
    If nothing is visible or the list is empty, `-1` is returned.
    Note that the returned cell may only be partially visible.

    Returns:
    :   the index of the first visible cell

    See Also:
    :   - [`getLastVisibleIndex()`](#getLastVisibleIndex())
        - [`JComponent.getVisibleRect()`](JComponent.md#getVisibleRect())
  + ### getLastVisibleIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public int getLastVisibleIndex()

    Returns the largest list index that is currently visible.
    If nothing is visible or the list is empty, `-1` is returned.
    Note that the returned cell may only be partially visible.

    Returns:
    :   the index of the last visible cell

    See Also:
    :   - [`getFirstVisibleIndex()`](#getFirstVisibleIndex())
        - [`JComponent.getVisibleRect()`](JComponent.md#getVisibleRect())
  + ### ensureIndexIsVisible

    public void ensureIndexIsVisible(int index)

    Scrolls the list within an enclosing viewport to make the specified
    cell completely visible. This calls `scrollRectToVisible` with
    the bounds of the specified cell. For this method to work, the
    `JList` must be within a `JViewport`.

    If the given index is outside the list's range of cells, this method
    results in nothing.

    Parameters:
    :   `index` - the index of the cell to make visible

    See Also:
    :   - [`JComponent.scrollRectToVisible(java.awt.Rectangle)`](JComponent.md#scrollRectToVisible(java.awt.Rectangle))
        - [`JComponent.getVisibleRect()`](JComponent.md#getVisibleRect())
  + ### setDragEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="determines whether automatic drag handling is enabled")
    public void setDragEnabled(boolean b)

    Turns on or off automatic drag handling. In order to enable automatic
    drag handling, this property should be set to `true`, and the
    list's `TransferHandler` needs to be `non-null`.
    The default value of the `dragEnabled` property is `false`.

    The job of honoring this property, and recognizing a user drag gesture,
    lies with the look and feel implementation, and in particular, the list's
    `ListUI`. When automatic drag handling is enabled, most look and
    feels (including those that subclass `BasicLookAndFeel`) begin a
    drag and drop operation whenever the user presses the mouse button over
    an item and then moves the mouse a few pixels. Setting this property to
    `true` can therefore have a subtle effect on how selections behave.

    If a look and feel is used that ignores this property, you can still
    begin a drag and drop operation by calling `exportAsDrag` on the
    list's `TransferHandler`.

    Parameters:
    :   `b` - whether or not to enable automatic drag handling

    Throws:
    :   `HeadlessException` - if
        `b` is `true` and
        `GraphicsEnvironment.isHeadless()`
        returns `true`

    Since:
    :   1.4

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`getDragEnabled()`](#getDragEnabled())
        - [`JComponent.setTransferHandler(javax.swing.TransferHandler)`](JComponent.md#setTransferHandler(javax.swing.TransferHandler))
        - [`TransferHandler`](TransferHandler.md "class in javax.swing")
  + ### getDragEnabled

    public boolean getDragEnabled()

    Returns whether or not automatic drag handling is enabled.

    Returns:
    :   the value of the `dragEnabled` property

    Since:
    :   1.4

    See Also:
    :   - [`setDragEnabled(boolean)`](#setDragEnabled(boolean))
  + ### setDropMode

    public final void setDropMode([DropMode](DropMode.md "enum class in javax.swing") dropMode)

    Sets the drop mode for this component. For backward compatibility,
    the default for this property is `DropMode.USE_SELECTION`.
    Usage of one of the other modes is recommended, however, for an
    improved user experience. `DropMode.ON`, for instance,
    offers similar behavior of showing items as selected, but does so without
    affecting the actual selection in the list.

    `JList` supports the following drop modes:
    - `DropMode.USE_SELECTION`
    - `DropMode.ON`
    - `DropMode.INSERT`
    - `DropMode.ON_OR_INSERT`The drop mode is only meaningful if this component has a
    `TransferHandler` that accepts drops.

    Parameters:
    :   `dropMode` - the drop mode to use

    Throws:
    :   `IllegalArgumentException` - if the drop mode is unsupported
        or `null`

    Since:
    :   1.6

    See Also:
    :   - [`getDropMode()`](#getDropMode())
        - [`getDropLocation()`](#getDropLocation())
        - [`JComponent.setTransferHandler(javax.swing.TransferHandler)`](JComponent.md#setTransferHandler(javax.swing.TransferHandler))
        - [`TransferHandler`](TransferHandler.md "class in javax.swing")
  + ### getDropMode

    public final [DropMode](DropMode.md "enum class in javax.swing") getDropMode()

    Returns the drop mode for this component.

    Returns:
    :   the drop mode for this component

    Since:
    :   1.6

    See Also:
    :   - [`setDropMode(javax.swing.DropMode)`](#setDropMode(javax.swing.DropMode))
  + ### getDropLocation

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public final [JList.DropLocation](JList.DropLocation.md "class in javax.swing") getDropLocation()

    Returns the location that this component should visually indicate
    as the drop location during a DnD operation over the component,
    or `null` if no location is to currently be shown.

    This method is not meant for querying the drop location
    from a `TransferHandler`, as the drop location is only
    set after the `TransferHandler`'s `canImport`
    has returned and has allowed for the location to be shown.

    When this property changes, a property change event with
    name "dropLocation" is fired by the component.

    By default, responsibility for listening for changes to this property
    and indicating the drop location visually lies with the list's
    `ListUI`, which may paint it directly and/or install a cell
    renderer to do so. Developers wishing to implement custom drop location
    painting and/or replace the default cell renderer, may need to honor
    this property.

    Returns:
    :   the drop location

    Since:
    :   1.6

    See Also:
    :   - [`setDropMode(javax.swing.DropMode)`](#setDropMode(javax.swing.DropMode))
        - [`TransferHandler.canImport(TransferHandler.TransferSupport)`](TransferHandler.md#canImport(javax.swing.TransferHandler.TransferSupport))
  + ### getNextMatch

    public int getNextMatch([String](../../../java.base/java/lang/String.md "class in java.lang") prefix,
    int startIndex,
    [Position.Bias](text/Position.Bias.md "class in javax.swing.text") bias)

    Returns the next list element whose `toString` value
    starts with the given prefix.

    Parameters:
    :   `prefix` - the string to test for a match
    :   `startIndex` - the index for starting the search
    :   `bias` - the search direction, either
        Position.Bias.Forward or Position.Bias.Backward.

    Returns:
    :   the index of the next list element that
        starts with the prefix; otherwise `-1`

    Throws:
    :   `IllegalArgumentException` - if prefix is `null`
        or startIndex is out of bounds

    Since:
    :   1.4
  + ### getToolTipText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getToolTipText([MouseEvent](../../java/awt/event/MouseEvent.md "class in java.awt.event") event)

    Returns the tooltip text to be used for the given event. This overrides
    `JComponent`'s `getToolTipText` to first check the cell
    renderer component for the cell over which the event occurred, returning
    its tooltip text, if any. This implementation allows you to specify
    tooltip text on the cell level, by using `setToolTipText` on your
    cell renderer component.

    **Note:** For `JList` to properly display the
    tooltips of its renderers in this manner, `JList` must be a
    registered component with the `ToolTipManager`. This registration
    is done automatically in the constructor. However, if at a later point
    `JList` is unregistered, by way of a call to
    `setToolTipText(null)`, tips from the renderers will no longer display.

    Overrides:
    :   `getToolTipText` in class `JComponent`

    Parameters:
    :   `event` - the `MouseEvent` to fetch the tooltip text for

    Returns:
    :   a string containing the tooltip

    See Also:
    :   - [`JComponent.setToolTipText(java.lang.String)`](JComponent.md#setToolTipText(java.lang.String))
        - [`JComponent.getToolTipText()`](JComponent.md#getToolTipText())
  + ### locationToIndex

    public int locationToIndex([Point](../../java/awt/Point.md "class in java.awt") location)

    Returns the cell index closest to the given location in the list's
    coordinate system. To determine if the cell actually contains the
    specified location, compare the point against the cell's bounds,
    as provided by `getCellBounds`. This method returns `-1`
    if the model is empty

    This is a cover method that delegates to the method of the same name
    in the list's `ListUI`. It returns `-1` if the list has
    no `ListUI`.

    Parameters:
    :   `location` - the coordinates of the point

    Returns:
    :   the cell index closest to the given location, or `-1`
  + ### indexToLocation

    public [Point](../../java/awt/Point.md "class in java.awt") indexToLocation(int index)

    Returns the origin of the specified item in the list's coordinate
    system. This method returns `null` if the index isn't valid.

    This is a cover method that delegates to the method of the same name
    in the list's `ListUI`. It returns `null` if the list has
    no `ListUI`.

    Parameters:
    :   `index` - the cell index

    Returns:
    :   the origin of the cell, or `null`
  + ### getCellBounds

    public [Rectangle](../../java/awt/Rectangle.md "class in java.awt") getCellBounds(int index0,
    int index1)

    Returns the bounding rectangle, in the list's coordinate system,
    for the range of cells specified by the two indices.
    These indices can be supplied in any order.

    If the smaller index is outside the list's range of cells, this method
    returns `null`. If the smaller index is valid, but the larger
    index is outside the list's range, the bounds of just the first index
    is returned. Otherwise, the bounds of the valid range is returned.

    This is a cover method that delegates to the method of the same name
    in the list's `ListUI`. It returns `null` if the list has
    no `ListUI`.

    Parameters:
    :   `index0` - the first index in the range
    :   `index1` - the second index in the range

    Returns:
    :   the bounding rectangle for the range of cells, or `null`
  + ### getModel

    public [ListModel](ListModel.md "interface in javax.swing")<[E](JList.md "type parameter in JList")> getModel()

    Returns the data model that holds the list of items displayed
    by the `JList` component.

    Returns:
    :   the `ListModel` that provides the displayed
        list of items

    See Also:
    :   - [`setModel(javax.swing.ListModel<E>)`](#setModel(javax.swing.ListModel))
  + ### setModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The object that contains the data to be drawn by this JList.")
    public void setModel([ListModel](ListModel.md "interface in javax.swing")<[E](JList.md "type parameter in JList")> model)

    Sets the model that represents the contents or "value" of the
    list, notifies property change listeners, and then clears the
    list's selection.

    This is a JavaBeans bound property.

    Parameters:
    :   `model` - the `ListModel` that provides the
        list of items for display

    Throws:
    :   `IllegalArgumentException` - if `model` is
        `null`

    See Also:
    :   - [`getModel()`](#getModel())
        - [`clearSelection()`](#clearSelection())
  + ### setListData

    public void setListData([E](JList.md "type parameter in JList")[] listData)

    Constructs a read-only `ListModel` from an array of items,
    and calls `setModel` with this model.

    Attempts to pass a `null` value to this method results in
    undefined behavior and, most likely, exceptions. The created model
    references the given array directly. Attempts to modify the array
    after invoking this method results in undefined behavior.

    Parameters:
    :   `listData` - an array of `E` containing the items to
        display in the list

    See Also:
    :   - [`setModel(javax.swing.ListModel<E>)`](#setModel(javax.swing.ListModel))
  + ### setListData

    public void setListData([Vector](../../../java.base/java/util/Vector.md "class in java.util")<? extends [E](JList.md "type parameter in JList")> listData)

    Constructs a read-only `ListModel` from a `Vector`
    and calls `setModel` with this model.

    Attempts to pass a `null` value to this method results in
    undefined behavior and, most likely, exceptions. The created model
    references the given `Vector` directly. Attempts to modify the
    `Vector` after invoking this method results in undefined behavior.

    Parameters:
    :   `listData` - a `Vector` containing the items to
        display in the list

    See Also:
    :   - [`setModel(javax.swing.ListModel<E>)`](#setModel(javax.swing.ListModel))
  + ### createSelectionModel

    protected [ListSelectionModel](ListSelectionModel.md "interface in javax.swing") createSelectionModel()

    Returns an instance of `DefaultListSelectionModel`; called
    during construction to initialize the list's selection model
    property.

    Returns:
    :   a `DefaultListSelecitonModel`, used to initialize
        the list's selection model property during construction

    See Also:
    :   - [`setSelectionModel(javax.swing.ListSelectionModel)`](#setSelectionModel(javax.swing.ListSelectionModel))
        - [`DefaultListSelectionModel`](DefaultListSelectionModel.md "class in javax.swing")
  + ### getSelectionModel

    public [ListSelectionModel](ListSelectionModel.md "interface in javax.swing") getSelectionModel()

    Returns the current selection model. The selection model maintains the
    selection state of the list. See the class level documentation for more
    details.

    Returns:
    :   the `ListSelectionModel` that maintains the
        list's selections

    See Also:
    :   - [`setSelectionModel(javax.swing.ListSelectionModel)`](#setSelectionModel(javax.swing.ListSelectionModel))
        - [`ListSelectionModel`](ListSelectionModel.md "interface in javax.swing")
  + ### fireSelectionValueChanged

    protected void fireSelectionValueChanged(int firstIndex,
    int lastIndex,
    boolean isAdjusting)

    Notifies `ListSelectionListener`s added directly to the list
    of selection changes made to the selection model. `JList`
    listens for changes made to the selection in the selection model,
    and forwards notification to listeners added to the list directly,
    by calling this method.

    This method constructs a `ListSelectionEvent` with this list
    as the source, and the specified arguments, and sends it to the
    registered `ListSelectionListeners`.

    Parameters:
    :   `firstIndex` - the first index in the range, `<= lastIndex`
    :   `lastIndex` - the last index in the range, `>= firstIndex`
    :   `isAdjusting` - whether or not this is one in a series of
        multiple events, where changes are still being made

    See Also:
    :   - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
        - [`removeListSelectionListener(javax.swing.event.ListSelectionListener)`](#removeListSelectionListener(javax.swing.event.ListSelectionListener))
        - [`ListSelectionEvent`](event/ListSelectionEvent.md "class in javax.swing.event")
        - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### addListSelectionListener

    public void addListSelectionListener([ListSelectionListener](event/ListSelectionListener.md "interface in javax.swing.event") listener)

    Adds a listener to the list, to be notified each time a change to the
    selection occurs; the preferred way of listening for selection state
    changes. `JList` takes care of listening for selection state
    changes in the selection model, and notifies the given listener of
    each change. `ListSelectionEvent`s sent to the listener have a
    `source` property set to this list.

    Parameters:
    :   `listener` - the `ListSelectionListener` to add

    See Also:
    :   - [`getSelectionModel()`](#getSelectionModel())
        - [`getListSelectionListeners()`](#getListSelectionListeners())
  + ### removeListSelectionListener

    public void removeListSelectionListener([ListSelectionListener](event/ListSelectionListener.md "interface in javax.swing.event") listener)

    Removes a selection listener from the list.

    Parameters:
    :   `listener` - the `ListSelectionListener` to remove

    See Also:
    :   - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
        - [`getSelectionModel()`](#getSelectionModel())
  + ### getListSelectionListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ListSelectionListener](event/ListSelectionListener.md "interface in javax.swing.event")[] getListSelectionListeners()

    Returns an array of all the `ListSelectionListener`s added
    to this `JList` by way of `addListSelectionListener`.

    Returns:
    :   all of the `ListSelectionListener`s on this list, or
        an empty array if no listeners have been added

    Since:
    :   1.4

    See Also:
    :   - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### setSelectionModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The selection model, recording which cells are selected.")
    public void setSelectionModel([ListSelectionModel](ListSelectionModel.md "interface in javax.swing") selectionModel)

    Sets the `selectionModel` for the list to a
    non-`null` `ListSelectionModel`
    implementation. The selection model handles the task of making single
    selections, selections of contiguous ranges, and non-contiguous
    selections.

    This is a JavaBeans bound property.

    Parameters:
    :   `selectionModel` - the `ListSelectionModel` that
        implements the selections

    Throws:
    :   `IllegalArgumentException` - if `selectionModel`
        is `null`

    See Also:
    :   - [`getSelectionModel()`](#getSelectionModel())
  + ### setSelectionMode

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"ListSelectionModel.SINGLE\_SELECTION","ListSelectionModel.SINGLE\_INTERVAL\_SELECTION","ListSelectionModel.MULTIPLE\_INTERVAL\_SELECTION"},
    [description](../../java/beans/BeanProperty.md#description())="The selection mode.")
    public void setSelectionMode(int selectionMode)

    Sets the selection mode for the list. This is a cover method that sets
    the selection mode directly on the selection model.

    The following list describes the accepted selection modes:
    - `ListSelectionModel.SINGLE_SELECTION` -
      Only one list index can be selected at a time. In this mode,
      `setSelectionInterval` and `addSelectionInterval` are
      equivalent, both replacing the current selection with the index
      represented by the second argument (the "lead").- `ListSelectionModel.SINGLE_INTERVAL_SELECTION` -
        Only one contiguous interval can be selected at a time.
        In this mode, `addSelectionInterval` behaves like
        `setSelectionInterval` (replacing the current selection},
        unless the given interval is immediately adjacent to or overlaps
        the existing selection, and can be used to grow the selection.- `ListSelectionModel.MULTIPLE_INTERVAL_SELECTION` -
          In this mode, there's no restriction on what can be selected.
          This mode is the default.

    Parameters:
    :   `selectionMode` - the selection mode

    Throws:
    :   `IllegalArgumentException` - if the selection mode isn't
        one of those allowed

    See Also:
    :   - [`getSelectionMode()`](#getSelectionMode())
  + ### getSelectionMode

    public int getSelectionMode()

    Returns the current selection mode for the list. This is a cover
    method that delegates to the method of the same name on the
    list's selection model.

    Returns:
    :   the current selection mode

    See Also:
    :   - [`setSelectionMode(int)`](#setSelectionMode(int))
  + ### getAnchorSelectionIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public int getAnchorSelectionIndex()

    Returns the anchor selection index. This is a cover method that
    delegates to the method of the same name on the list's selection model.

    Returns:
    :   the anchor selection index

    See Also:
    :   - [`ListSelectionModel.getAnchorSelectionIndex()`](ListSelectionModel.md#getAnchorSelectionIndex())
  + ### getLeadSelectionIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="The lead selection index.")
    public int getLeadSelectionIndex()

    Returns the lead selection index. This is a cover method that
    delegates to the method of the same name on the list's selection model.

    Returns:
    :   the lead selection index

    See Also:
    :   - [`ListSelectionModel.getLeadSelectionIndex()`](ListSelectionModel.md#getLeadSelectionIndex())
  + ### getMinSelectionIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public int getMinSelectionIndex()

    Returns the smallest selected cell index, or `-1` if the selection
    is empty. This is a cover method that delegates to the method of the same
    name on the list's selection model.

    Returns:
    :   the smallest selected cell index, or `-1`

    See Also:
    :   - [`ListSelectionModel.getMinSelectionIndex()`](ListSelectionModel.md#getMinSelectionIndex())
  + ### getMaxSelectionIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public int getMaxSelectionIndex()

    Returns the largest selected cell index, or `-1` if the selection
    is empty. This is a cover method that delegates to the method of the same
    name on the list's selection model.

    Returns:
    :   the largest selected cell index

    See Also:
    :   - [`ListSelectionModel.getMaxSelectionIndex()`](ListSelectionModel.md#getMaxSelectionIndex())
  + ### isSelectedIndex

    public boolean isSelectedIndex(int index)

    Returns `true` if the specified index is selected,
    else `false`. This is a cover method that delegates to the method
    of the same name on the list's selection model.

    Parameters:
    :   `index` - index to be queried for selection state

    Returns:
    :   `true` if the specified index is selected,
        else `false`

    See Also:
    :   - [`ListSelectionModel.isSelectedIndex(int)`](ListSelectionModel.md#isSelectedIndex(int))
        - [`setSelectedIndex(int)`](#setSelectedIndex(int))
  + ### isSelectionEmpty

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean isSelectionEmpty()

    Returns `true` if nothing is selected, else `false`.
    This is a cover method that delegates to the method of the same
    name on the list's selection model.

    Returns:
    :   `true` if nothing is selected, else `false`

    See Also:
    :   - [`ListSelectionModel.isSelectionEmpty()`](ListSelectionModel.md#isSelectionEmpty())
        - [`clearSelection()`](#clearSelection())
  + ### clearSelection

    public void clearSelection()

    Clears the selection; after calling this method, `isSelectionEmpty`
    will return `true`. This is a cover method that delegates to the
    method of the same name on the list's selection model.

    See Also:
    :   - [`ListSelectionModel.clearSelection()`](ListSelectionModel.md#clearSelection())
        - [`isSelectionEmpty()`](#isSelectionEmpty())
  + ### setSelectionInterval

    public void setSelectionInterval(int anchor,
    int lead)

    Selects the specified interval. Both `anchor` and `lead`
    indices are included. `anchor` doesn't have to be less than or
    equal to `lead`. This is a cover method that delegates to the
    method of the same name on the list's selection model.

    Refer to the documentation of the selection model class being used
    for details on how values less than `0` are handled.

    Parameters:
    :   `anchor` - the first index to select
    :   `lead` - the last index to select

    See Also:
    :   - [`ListSelectionModel.setSelectionInterval(int, int)`](ListSelectionModel.md#setSelectionInterval(int,int))
        - [`DefaultListSelectionModel.setSelectionInterval(int, int)`](DefaultListSelectionModel.md#setSelectionInterval(int,int))
        - [`createSelectionModel()`](#createSelectionModel())
        - [`addSelectionInterval(int, int)`](#addSelectionInterval(int,int))
        - [`removeSelectionInterval(int, int)`](#removeSelectionInterval(int,int))
  + ### addSelectionInterval

    public void addSelectionInterval(int anchor,
    int lead)

    Sets the selection to be the union of the specified interval with current
    selection. Both the `anchor` and `lead` indices are
    included. `anchor` doesn't have to be less than or
    equal to `lead`. This is a cover method that delegates to the
    method of the same name on the list's selection model.

    Refer to the documentation of the selection model class being used
    for details on how values less than `0` are handled.

    Parameters:
    :   `anchor` - the first index to add to the selection
    :   `lead` - the last index to add to the selection

    See Also:
    :   - [`ListSelectionModel.addSelectionInterval(int, int)`](ListSelectionModel.md#addSelectionInterval(int,int))
        - [`DefaultListSelectionModel.addSelectionInterval(int, int)`](DefaultListSelectionModel.md#addSelectionInterval(int,int))
        - [`createSelectionModel()`](#createSelectionModel())
        - [`setSelectionInterval(int, int)`](#setSelectionInterval(int,int))
        - [`removeSelectionInterval(int, int)`](#removeSelectionInterval(int,int))
  + ### removeSelectionInterval

    public void removeSelectionInterval(int index0,
    int index1)

    Sets the selection to be the set difference of the specified interval
    and the current selection. Both the `index0` and `index1`
    indices are removed. `index0` doesn't have to be less than or
    equal to `index1`. This is a cover method that delegates to the
    method of the same name on the list's selection model.

    Refer to the documentation of the selection model class being used
    for details on how values less than `0` are handled.

    Parameters:
    :   `index0` - the first index to remove from the selection
    :   `index1` - the last index to remove from the selection

    See Also:
    :   - [`ListSelectionModel.removeSelectionInterval(int, int)`](ListSelectionModel.md#removeSelectionInterval(int,int))
        - [`DefaultListSelectionModel.removeSelectionInterval(int, int)`](DefaultListSelectionModel.md#removeSelectionInterval(int,int))
        - [`createSelectionModel()`](#createSelectionModel())
        - [`setSelectionInterval(int, int)`](#setSelectionInterval(int,int))
        - [`addSelectionInterval(int, int)`](#addSelectionInterval(int,int))
  + ### setValueIsAdjusting

    public void setValueIsAdjusting(boolean b)

    Sets the selection model's `valueIsAdjusting` property. When
    `true`, upcoming changes to selection should be considered part
    of a single change. This property is used internally and developers
    typically need not call this method. For example, when the model is being
    updated in response to a user drag, the value of the property is set
    to `true` when the drag is initiated and set to `false`
    when the drag is finished. This allows listeners to update only
    when a change has been finalized, rather than handling all of the
    intermediate values.

    You may want to use this directly if making a series of changes
    that should be considered part of a single change.

    This is a cover method that delegates to the method of the same name on
    the list's selection model. See the documentation for
    [`ListSelectionModel.setValueIsAdjusting(boolean)`](ListSelectionModel.md#setValueIsAdjusting(boolean)) for
    more details.

    Parameters:
    :   `b` - the new value for the property

    See Also:
    :   - [`ListSelectionModel.setValueIsAdjusting(boolean)`](ListSelectionModel.md#setValueIsAdjusting(boolean))
        - [`ListSelectionEvent.getValueIsAdjusting()`](event/ListSelectionEvent.md#getValueIsAdjusting())
        - [`getValueIsAdjusting()`](#getValueIsAdjusting())
  + ### getValueIsAdjusting

    public boolean getValueIsAdjusting()

    Returns the value of the selection model's `isAdjusting` property.

    This is a cover method that delegates to the method of the same name on
    the list's selection model.

    Returns:
    :   the value of the selection model's `isAdjusting` property.

    See Also:
    :   - [`setValueIsAdjusting(boolean)`](#setValueIsAdjusting(boolean))
        - [`ListSelectionModel.getValueIsAdjusting()`](ListSelectionModel.md#getValueIsAdjusting())
  + ### getSelectedIndices

    public int[] getSelectedIndices()

    Returns an array of all of the selected indices, in increasing
    order.

    Returns:
    :   all of the selected indices, in increasing order,
        or an empty array if nothing is selected

    See Also:
    :   - [`removeSelectionInterval(int, int)`](#removeSelectionInterval(int,int))
        - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### setSelectedIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="The index of the selected cell.")
    public void setSelectedIndex(int index)

    Selects a single cell. Does nothing if the given index is greater
    than or equal to the model size. This is a convenience method that uses
    `setSelectionInterval` on the selection model. Refer to the
    documentation for the selection model class being used for details on
    how values less than `0` are handled.

    Parameters:
    :   `index` - the index of the cell to select

    See Also:
    :   - [`ListSelectionModel.setSelectionInterval(int, int)`](ListSelectionModel.md#setSelectionInterval(int,int))
        - [`isSelectedIndex(int)`](#isSelectedIndex(int))
        - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### setSelectedIndices

    public void setSelectedIndices(int[] indices)

    Changes the selection to be the set of indices specified by the given
    array. Indices greater than or equal to the model size are ignored.
    This is a convenience method that clears the selection and then uses
    `addSelectionInterval` on the selection model to add the indices.
    Refer to the documentation of the selection model class being used for
    details on how values less than `0` are handled.

    Parameters:
    :   `indices` - an array of the indices of the cells to select,
        `non-null`

    Throws:
    :   `NullPointerException` - if the given array is `null`

    See Also:
    :   - [`ListSelectionModel.addSelectionInterval(int, int)`](ListSelectionModel.md#addSelectionInterval(int,int))
        - [`isSelectedIndex(int)`](#isSelectedIndex(int))
        - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### getSelectedValues

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getSelectedValues()

    Deprecated.

    As of JDK 1.7, replaced by [`getSelectedValuesList()`](#getSelectedValuesList())

    Returns an array of all the selected values, in increasing order based
    on their indices in the list.

    Returns:
    :   the selected values, or an empty array if nothing is selected

    See Also:
    :   - [`isSelectedIndex(int)`](#isSelectedIndex(int))
        - [`getModel()`](#getModel())
        - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### getSelectedValuesList

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [List](../../../java.base/java/util/List.md "interface in java.util")<[E](JList.md "type parameter in JList")> getSelectedValuesList()

    Returns a list of all the selected items, in increasing order based
    on their indices in the list.

    Returns:
    :   the selected items, or an empty list if nothing is selected

    Since:
    :   1.7

    See Also:
    :   - [`isSelectedIndex(int)`](#isSelectedIndex(int))
        - [`getModel()`](#getModel())
        - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### getSelectedIndex

    public int getSelectedIndex()

    Returns the smallest selected cell index; *the selection* when only
    a single item is selected in the list. When multiple items are selected,
    it is simply the smallest selected index. Returns `-1` if there is
    no selection.

    This method is a cover that delegates to `getMinSelectionIndex`.

    Returns:
    :   the smallest selected cell index

    See Also:
    :   - [`getMinSelectionIndex()`](#getMinSelectionIndex())
        - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### getSelectedValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [E](JList.md "type parameter in JList") getSelectedValue()

    Returns the value for the smallest selected cell index;
    *the selected value* when only a single item is selected in the
    list. When multiple items are selected, it is simply the value for the
    smallest selected index. Returns `null` if there is no selection.

    This is a convenience method that simply returns the model value for
    `getMinSelectionIndex`.

    Returns:
    :   the first selected value

    See Also:
    :   - [`getMinSelectionIndex()`](#getMinSelectionIndex())
        - [`getModel()`](#getModel())
        - [`addListSelectionListener(javax.swing.event.ListSelectionListener)`](#addListSelectionListener(javax.swing.event.ListSelectionListener))
  + ### setSelectedValue

    public void setSelectedValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject,
    boolean shouldScroll)

    Selects the specified object from the list.
    If the object passed is `null`, the selection is cleared.

    Parameters:
    :   `anObject` - the object to select
    :   `shouldScroll` - `true` if the list should scroll to display
        the selected object, if one exists; otherwise `false`
  + ### getPreferredScrollableViewportSize

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Dimension](../../java/awt/Dimension.md "class in java.awt") getPreferredScrollableViewportSize()

    Computes the size of viewport needed to display `visibleRowCount`
    rows. The value returned by this method depends on the layout
    orientation:

    **`VERTICAL`:**
      
    This is trivial if both `fixedCellWidth` and `fixedCellHeight`
    have been set (either explicitly or by specifying a prototype cell value).
    The width is simply the `fixedCellWidth` plus the list's horizontal
    insets. The height is the `fixedCellHeight` multiplied by the
    `visibleRowCount`, plus the list's vertical insets.

    If either `fixedCellWidth` or `fixedCellHeight` haven't been
    specified, heuristics are used. If the model is empty, the width is
    the `fixedCellWidth`, if greater than `0`, or a hard-coded
    value of `256`. The height is the `fixedCellHeight` multiplied
    by `visibleRowCount`, if `fixedCellHeight` is greater than
    `0`, otherwise it is a hard-coded value of `16` multiplied by
    `visibleRowCount`.

    If the model isn't empty, the width is the preferred size's width,
    typically the width of the widest list element. The height is the
    height of the cell with index 0 multiplied by the `visibleRowCount`,
    plus the list's vertical insets.

    **`VERTICAL_WRAP` or `HORIZONTAL_WRAP`:**
      
    This method simply returns the value from `getPreferredSize`.
    The list's `ListUI` is expected to override `getPreferredSize`
    to return an appropriate value.

    Specified by:
    :   `getPreferredScrollableViewportSize` in interface `Scrollable`

    Returns:
    :   a dimension containing the size of the viewport needed
        to display `visibleRowCount` rows

    See Also:
    :   - [`getPreferredScrollableViewportSize()`](#getPreferredScrollableViewportSize())
        - [`setPrototypeCellValue(E)`](#setPrototypeCellValue(E))
  + ### getScrollableUnitIncrement

    public int getScrollableUnitIncrement([Rectangle](../../java/awt/Rectangle.md "class in java.awt") visibleRect,
    int orientation,
    int direction)

    Returns the distance to scroll to expose the next or previous
    row (for vertical scrolling) or column (for horizontal scrolling).

    For horizontal scrolling, if the layout orientation is `VERTICAL`,
    then the list's font size is returned (or `1` if the font is
    `null`).

    Specified by:
    :   `getScrollableUnitIncrement` in interface `Scrollable`

    Parameters:
    :   `visibleRect` - the view area visible within the viewport
    :   `orientation` - `SwingConstants.HORIZONTAL` or
        `SwingConstants.VERTICAL`
    :   `direction` - less or equal to zero to scroll up/back,
        greater than zero for down/forward

    Returns:
    :   the "unit" increment for scrolling in the specified direction;
        always positive

    Throws:
    :   `IllegalArgumentException` - if `visibleRect` is `null`, or
        `orientation` isn't one of `SwingConstants.VERTICAL` or
        `SwingConstants.HORIZONTAL`

    See Also:
    :   - [`getScrollableBlockIncrement(java.awt.Rectangle, int, int)`](#getScrollableBlockIncrement(java.awt.Rectangle,int,int))
        - [`Scrollable.getScrollableUnitIncrement(java.awt.Rectangle, int, int)`](Scrollable.md#getScrollableUnitIncrement(java.awt.Rectangle,int,int))
  + ### getScrollableBlockIncrement

    public int getScrollableBlockIncrement([Rectangle](../../java/awt/Rectangle.md "class in java.awt") visibleRect,
    int orientation,
    int direction)

    Returns the distance to scroll to expose the next or previous block.

    For vertical scrolling, the following rules are used:
    - if scrolling down, returns the distance to scroll so that the last
      visible element becomes the first completely visible element- if scrolling up, returns the distance to scroll so that the first
        visible element becomes the last completely visible element- returns `visibleRect.height` if the list is empty

    For horizontal scrolling, when the layout orientation is either
    `VERTICAL_WRAP` or `HORIZONTAL_WRAP`:
    - if scrolling right, returns the distance to scroll so that the
      last visible element becomes
      the first completely visible element- if scrolling left, returns the distance to scroll so that the first
        visible element becomes the last completely visible element- returns `visibleRect.width` if the list is empty

    For horizontal scrolling and `VERTICAL` orientation,
    returns `visibleRect.width`.

    Note that the value of `visibleRect` must be the equal to
    `this.getVisibleRect()`.

    Specified by:
    :   `getScrollableBlockIncrement` in interface `Scrollable`

    Parameters:
    :   `visibleRect` - the view area visible within the viewport
    :   `orientation` - `SwingConstants.HORIZONTAL` or
        `SwingConstants.VERTICAL`
    :   `direction` - less or equal to zero to scroll up/back,
        greater than zero for down/forward

    Returns:
    :   the "block" increment for scrolling in the specified direction;
        always positive

    Throws:
    :   `IllegalArgumentException` - if `visibleRect` is `null`, or
        `orientation` isn't one of `SwingConstants.VERTICAL` or
        `SwingConstants.HORIZONTAL`

    See Also:
    :   - [`getScrollableUnitIncrement(java.awt.Rectangle, int, int)`](#getScrollableUnitIncrement(java.awt.Rectangle,int,int))
        - [`Scrollable.getScrollableBlockIncrement(java.awt.Rectangle, int, int)`](Scrollable.md#getScrollableBlockIncrement(java.awt.Rectangle,int,int))
  + ### getScrollableTracksViewportWidth

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean getScrollableTracksViewportWidth()

    Returns `true` if this `JList` is displayed in a
    `JViewport` and the viewport is wider than the list's
    preferred width, or if the layout orientation is `HORIZONTAL_WRAP`
    and `visibleRowCount <= 0`; otherwise returns `false`.

    If `false`, then don't track the viewport's width. This allows
    horizontal scrolling if the `JViewport` is itself embedded in a
    `JScrollPane`.

    Specified by:
    :   `getScrollableTracksViewportWidth` in interface `Scrollable`

    Returns:
    :   whether or not an enclosing viewport should force the list's
        width to match its own

    See Also:
    :   - [`Scrollable.getScrollableTracksViewportWidth()`](Scrollable.md#getScrollableTracksViewportWidth())
  + ### getScrollableTracksViewportHeight

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean getScrollableTracksViewportHeight()

    Returns `true` if this `JList` is displayed in a
    `JViewport` and the viewport is taller than the list's
    preferred height, or if the layout orientation is `VERTICAL_WRAP`
    and `visibleRowCount <= 0`; otherwise returns `false`.

    If `false`, then don't track the viewport's height. This allows
    vertical scrolling if the `JViewport` is itself embedded in a
    `JScrollPane`.

    Specified by:
    :   `getScrollableTracksViewportHeight` in interface `Scrollable`

    Returns:
    :   whether or not an enclosing viewport should force the list's
        height to match its own

    See Also:
    :   - [`Scrollable.getScrollableTracksViewportHeight()`](Scrollable.md#getScrollableTracksViewportHeight())
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a `String` representation of this `JList`.
    This method is intended to be used only for debugging purposes,
    and the content and format of the returned `String` may vary
    between implementations. The returned `String` may be empty,
    but may not be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a `String` representation of this `JList`.
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the `AccessibleContext` associated with this `JList`.
    For `JList`, the `AccessibleContext` takes the form of an
    `AccessibleJList`.

    A new `AccessibleJList` instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an `AccessibleJList` that serves as the
        `AccessibleContext` of this `JList`