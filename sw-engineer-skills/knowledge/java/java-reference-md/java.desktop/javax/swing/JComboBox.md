Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JComboBox<E>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JComboBox<E>

Type Parameters:
:   `E` - the type of the elements of this combo box

All Implemented Interfaces:
:   `ActionListener`, `ImageObserver`, `ItemSelectable`, `MenuContainer`, `Serializable`, `EventListener`, `Accessible`, `ListDataListener`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A combination of a text field and a drop-down list.")
public class JComboBox<E>
extends [JComponent](JComponent.md "class in javax.swing")
implements [ItemSelectable](../../java/awt/ItemSelectable.md "interface in java.awt"), [ListDataListener](event/ListDataListener.md "interface in javax.swing.event"), [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event"), [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

A component that combines a button or editable field and a drop-down list.
The user can select a value from the drop-down list, which appears at the
user's request. If you make the combo box editable, then the combo box
includes an editable field into which the user can type a value.

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

See [How to Use Combo Boxes](https://docs.oracle.com/javase/tutorial/uiswing/components/combobox.html)
in [*The Java Tutorial*](https://docs.oracle.com/javase/tutorial/)
for further information.

Since:
:   1.2

See Also:
:   * [`ComboBoxModel`](ComboBoxModel.md "interface in javax.swing")
    * [`DefaultComboBoxModel`](DefaultComboBoxModel.md "class in javax.swing")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JComboBox.AccessibleJComboBox`

  This class implements accessibility support for the
  `JComboBox` class.

  `static interface`

  `JComboBox.KeySelectionManager`

  The interface that defines a `KeySelectionManager`.

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

  `protected String`

  `actionCommand`

  This protected field is implementation specific.

  `protected ComboBoxModel<E>`

  `dataModel`

  This protected field is implementation specific.

  `protected ComboBoxEditor`

  `editor`

  This protected field is implementation specific.

  `protected boolean`

  `isEditable`

  This protected field is implementation specific.

  `protected JComboBox.KeySelectionManager`

  `keySelectionManager`

  This protected field is implementation specific.

  `protected boolean`

  `lightWeightPopupEnabled`

  This protected field is implementation specific.

  `protected int`

  `maximumRowCount`

  This protected field is implementation specific.

  `protected ListCellRenderer<? super E>`

  `renderer`

  This protected field is implementation specific.

  `protected Object`

  `selectedItemReminder`

  This protected field is implementation specific.

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

  `JComboBox()`

  Creates a `JComboBox` with a default data model.

  `JComboBox(E[] items)`

  Creates a `JComboBox` that contains the elements
  in the specified array.

  `JComboBox(Vector<E> items)`

  Creates a `JComboBox` that contains the elements
  in the specified Vector.

  `JComboBox(ComboBoxModel<E> aModel)`

  Creates a `JComboBox` that takes its items from an
  existing `ComboBoxModel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent e)`

  This method is public as an implementation side effect.

  `protected void`

  `actionPropertyChanged(Action action,
  String propertyName)`

  Updates the combobox's state in response to property changes in
  associated action.

  `void`

  `addActionListener(ActionListener l)`

  Adds an `ActionListener`.

  `void`

  `addItem(E item)`

  Adds an item to the item list.

  `void`

  `addItemListener(ItemListener aListener)`

  Adds an `ItemListener`.

  `void`

  `addPopupMenuListener(PopupMenuListener l)`

  Adds a `PopupMenu` listener which will listen to notification
  messages from the popup portion of the combo box.

  `void`

  `configureEditor(ComboBoxEditor anEditor,
  Object anItem)`

  Initializes the editor with the specified item.

  `protected void`

  `configurePropertiesFromAction(Action a)`

  Sets the properties on this combobox to match those in the specified
  `Action`.

  `void`

  `contentsChanged(ListDataEvent e)`

  This method is public as an implementation side effect.

  `protected PropertyChangeListener`

  `createActionPropertyChangeListener(Action a)`

  Creates and returns a `PropertyChangeListener` that is
  responsible for listening for changes from the specified
  `Action` and updating the appropriate properties.

  `protected JComboBox.KeySelectionManager`

  `createDefaultKeySelectionManager()`

  Returns an instance of the default key-selection manager.

  `protected void`

  `fireActionEvent()`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `protected void`

  `fireItemStateChanged(ItemEvent e)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `void`

  `firePopupMenuCanceled()`

  Notifies `PopupMenuListener`s that the popup portion of the
  combo box has been canceled.

  `void`

  `firePopupMenuWillBecomeInvisible()`

  Notifies `PopupMenuListener`s that the popup portion of the
  combo box has become invisible.

  `void`

  `firePopupMenuWillBecomeVisible()`

  Notifies `PopupMenuListener`s that the popup portion of the
  combo box will become visible.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JComboBox.

  `Action`

  `getAction()`

  Returns the currently set `Action` for this
  `ActionEvent` source, or `null` if no
  `Action` is set.

  `String`

  `getActionCommand()`

  Returns the action command that is included in the event sent to
  action listeners.

  `ActionListener[]`

  `getActionListeners()`

  Returns an array of all the `ActionListener`s added
  to this JComboBox with addActionListener().

  `ComboBoxEditor`

  `getEditor()`

  Returns the editor used to paint and edit the selected item in the
  `JComboBox` field.

  `E`

  `getItemAt(int index)`

  Returns the list item at the specified index.

  `int`

  `getItemCount()`

  Returns the number of items in the list.

  `ItemListener[]`

  `getItemListeners()`

  Returns an array of all the `ItemListener`s added
  to this JComboBox with addItemListener().

  `JComboBox.KeySelectionManager`

  `getKeySelectionManager()`

  Returns the list's key-selection manager.

  `int`

  `getMaximumRowCount()`

  Returns the maximum number of items the combo box can display
  without a scrollbar

  `ComboBoxModel<E>`

  `getModel()`

  Returns the data model currently used by the `JComboBox`.

  `PopupMenuListener[]`

  `getPopupMenuListeners()`

  Returns an array of all the `PopupMenuListener`s added
  to this JComboBox with addPopupMenuListener().

  `E`

  `getPrototypeDisplayValue()`

  Returns the "prototypical display" value - an Object used
  for the calculation of the display height and width.

  `ListCellRenderer<? super E>`

  `getRenderer()`

  Returns the renderer used to display the selected item in the
  `JComboBox` field.

  `int`

  `getSelectedIndex()`

  Returns the first item in the list that matches the given item.

  `Object`

  `getSelectedItem()`

  Returns the current selected item.

  `Object[]`

  `getSelectedObjects()`

  Returns an array containing the selected item.

  `ComboBoxUI`

  `getUI()`

  Returns the L&F object that renders this component.

  `String`

  `getUIClassID()`

  Returns the name of the L&F class that renders this component.

  `void`

  `hidePopup()`

  Causes the combo box to close its popup window.

  `void`

  `insertItemAt(E item,
  int index)`

  Inserts an item into the item list at a given index.

  `protected void`

  `installAncestorListener()`

  Registers ancestor listener so that it will receive
  `AncestorEvents` when it or any of its ancestors
  move or are made visible or invisible.

  `void`

  `intervalAdded(ListDataEvent e)`

  This method is public as an implementation side effect.

  `void`

  `intervalRemoved(ListDataEvent e)`

  This method is public as an implementation side effect.

  `boolean`

  `isEditable()`

  Returns true if the `JComboBox` is editable.

  `boolean`

  `isLightWeightPopupEnabled()`

  Gets the value of the `lightWeightPopupEnabled`
  property.

  `boolean`

  `isPopupVisible()`

  Determines the visibility of the popup.

  `protected String`

  `paramString()`

  Returns a string representation of this `JComboBox`.

  `protected boolean`

  `processKeyBinding(KeyStroke ks,
  KeyEvent e,
  int condition,
  boolean pressed)`

  Invoked to process the key bindings for `ks` as the result
  of the `KeyEvent` `e`.

  `void`

  `processKeyEvent(KeyEvent e)`

  Handles `KeyEvent`s, looking for the Tab key.

  `void`

  `removeActionListener(ActionListener l)`

  Removes an `ActionListener`.

  `void`

  `removeAllItems()`

  Removes all items from the item list.

  `void`

  `removeItem(Object anObject)`

  Removes an item from the item list.

  `void`

  `removeItemAt(int anIndex)`

  Removes the item at `anIndex`
  This method works only if the `JComboBox` uses a
  mutable data model.

  `void`

  `removeItemListener(ItemListener aListener)`

  Removes an `ItemListener`.

  `void`

  `removePopupMenuListener(PopupMenuListener l)`

  Removes a `PopupMenuListener`.

  `protected void`

  `selectedItemChanged()`

  This protected method is implementation specific.

  `boolean`

  `selectWithKeyChar(char keyChar)`

  Selects the list item that corresponds to the specified keyboard
  character and returns true, if there is an item corresponding
  to that character.

  `void`

  `setAction(Action a)`

  Sets the `Action` for the `ActionEvent` source.

  `void`

  `setActionCommand(String aCommand)`

  Sets the action command that should be included in the event
  sent to action listeners.

  `void`

  `setEditable(boolean aFlag)`

  Determines whether the `JComboBox` field is editable.

  `void`

  `setEditor(ComboBoxEditor anEditor)`

  Sets the editor used to paint and edit the selected item in the
  `JComboBox` field.

  `void`

  `setEnabled(boolean b)`

  Enables the combo box so that items can be selected.

  `void`

  `setKeySelectionManager(JComboBox.KeySelectionManager aManager)`

  Sets the object that translates a keyboard character into a list
  selection.

  `void`

  `setLightWeightPopupEnabled(boolean aFlag)`

  Sets the `lightWeightPopupEnabled` property, which
  provides a hint as to whether or not a lightweight
  `Component` should be used to contain the
  `JComboBox`, versus a heavyweight
  `Component` such as a `Panel`
  or a `Window`.

  `void`

  `setMaximumRowCount(int count)`

  Sets the maximum number of rows the `JComboBox` displays.

  `void`

  `setModel(ComboBoxModel<E> aModel)`

  Sets the data model that the `JComboBox` uses to obtain
  the list of items.

  `void`

  `setPopupVisible(boolean v)`

  Sets the visibility of the popup.

  `void`

  `setPrototypeDisplayValue(E prototypeDisplayValue)`

  Sets the prototype display value used to calculate the size of the display
  for the UI portion.

  `void`

  `setRenderer(ListCellRenderer<? super E> aRenderer)`

  Sets the renderer that paints the list items and the item selected from the list in
  the JComboBox field.

  `void`

  `setSelectedIndex(int anIndex)`

  Selects the item at index `anIndex`.

  `void`

  `setSelectedItem(Object anObject)`

  Sets the selected item in the combo box display area to the object in
  the argument.

  `void`

  `setUI(ComboBoxUI ui)`

  Sets the L&F object that renders this component.

  `void`

  `showPopup()`

  Causes the combo box to display its popup window.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### dataModel

    protected [ComboBoxModel](ComboBoxModel.md "interface in javax.swing")<[E](JComboBox.md "type parameter in JComboBox")> dataModel

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`getModel()`](#getModel())
        - [`setModel(javax.swing.ComboBoxModel<E>)`](#setModel(javax.swing.ComboBoxModel))
  + ### renderer

    protected [ListCellRenderer](ListCellRenderer.md "interface in javax.swing")<? super [E](JComboBox.md "type parameter in JComboBox")> renderer

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`getRenderer()`](#getRenderer())
        - [`setRenderer(javax.swing.ListCellRenderer<? super E>)`](#setRenderer(javax.swing.ListCellRenderer))
  + ### editor

    protected [ComboBoxEditor](ComboBoxEditor.md "interface in javax.swing") editor

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`getEditor()`](#getEditor())
        - [`setEditor(javax.swing.ComboBoxEditor)`](#setEditor(javax.swing.ComboBoxEditor))
  + ### maximumRowCount

    protected int maximumRowCount

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`getMaximumRowCount()`](#getMaximumRowCount())
        - [`setMaximumRowCount(int)`](#setMaximumRowCount(int))
  + ### isEditable

    protected boolean isEditable

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`isEditable()`](#isEditable())
        - [`setEditable(boolean)`](#setEditable(boolean))
  + ### keySelectionManager

    protected [JComboBox.KeySelectionManager](JComboBox.KeySelectionManager.md "interface in javax.swing") keySelectionManager

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`setKeySelectionManager(javax.swing.JComboBox.KeySelectionManager)`](#setKeySelectionManager(javax.swing.JComboBox.KeySelectionManager))
        - [`getKeySelectionManager()`](#getKeySelectionManager())
  + ### actionCommand

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") actionCommand

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`setActionCommand(java.lang.String)`](#setActionCommand(java.lang.String))
        - [`getActionCommand()`](#getActionCommand())
  + ### lightWeightPopupEnabled

    protected boolean lightWeightPopupEnabled

    This protected field is implementation specific. Do not access directly
    or override. Use the accessor methods instead.

    See Also:
    :   - [`setLightWeightPopupEnabled(boolean)`](#setLightWeightPopupEnabled(boolean))
        - [`isLightWeightPopupEnabled()`](#isLightWeightPopupEnabled())
  + ### selectedItemReminder

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") selectedItemReminder

    This protected field is implementation specific. Do not access directly
    or override.
* ## Constructor Details

  + ### JComboBox

    public JComboBox([ComboBoxModel](ComboBoxModel.md "interface in javax.swing")<[E](JComboBox.md "type parameter in JComboBox")> aModel)

    Creates a `JComboBox` that takes its items from an
    existing `ComboBoxModel`. Since the
    `ComboBoxModel` is provided, a combo box created using
    this constructor does not create a default combo box model and
    may impact how the insert, remove and add methods behave.

    Parameters:
    :   `aModel` - the `ComboBoxModel` that provides the
        displayed list of items

    See Also:
    :   - [`DefaultComboBoxModel`](DefaultComboBoxModel.md "class in javax.swing")
  + ### JComboBox

    public JComboBox([E](JComboBox.md "type parameter in JComboBox")[] items)

    Creates a `JComboBox` that contains the elements
    in the specified array. By default the first item in the array
    (and therefore the data model) becomes selected.

    Parameters:
    :   `items` - an array of objects to insert into the combo box

    See Also:
    :   - [`DefaultComboBoxModel`](DefaultComboBoxModel.md "class in javax.swing")
  + ### JComboBox

    public JComboBox([Vector](../../../java.base/java/util/Vector.md "class in java.util")<[E](JComboBox.md "type parameter in JComboBox")> items)

    Creates a `JComboBox` that contains the elements
    in the specified Vector. By default the first item in the vector
    (and therefore the data model) becomes selected.

    Parameters:
    :   `items` - an array of vectors to insert into the combo box

    See Also:
    :   - [`DefaultComboBoxModel`](DefaultComboBoxModel.md "class in javax.swing")
  + ### JComboBox

    public JComboBox()

    Creates a `JComboBox` with a default data model.
    The default data model is an empty list of objects.
    Use `addItem` to add items. By default the first item
    in the data model becomes selected.

    See Also:
    :   - [`DefaultComboBoxModel`](DefaultComboBoxModel.md "class in javax.swing")
* ## Method Details

  + ### installAncestorListener

    protected void installAncestorListener()

    Registers ancestor listener so that it will receive
    `AncestorEvents` when it or any of its ancestors
    move or are made visible or invisible.
    Events are also sent when the component or its ancestors are added
    or removed from the containment hierarchy.
  + ### setUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([hidden](../../java/beans/BeanProperty.md#hidden())=true,
    [visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The UI object that implements the Component\'s LookAndFeel.")
    public void setUI([ComboBoxUI](plaf/ComboBoxUI.md "class in javax.swing.plaf") ui)

    Sets the L&F object that renders this component.

    Parameters:
    :   `ui` - the `ComboBoxUI` L&F object

    See Also:
    :   - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns the name of the L&F class that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "ComboBoxUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getUI

    public [ComboBoxUI](plaf/ComboBoxUI.md "class in javax.swing.plaf") getUI()

    Returns the L&F object that renders this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the ComboBoxUI object that renders this component
  + ### setModel

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="Model that the combo box uses to get data to display.")
    public void setModel([ComboBoxModel](ComboBoxModel.md "interface in javax.swing")<[E](JComboBox.md "type parameter in JComboBox")> aModel)

    Sets the data model that the `JComboBox` uses to obtain
    the list of items.

    Parameters:
    :   `aModel` - the `ComboBoxModel` that provides the
        displayed list of items
  + ### getModel

    public [ComboBoxModel](ComboBoxModel.md "interface in javax.swing")<[E](JComboBox.md "type parameter in JComboBox")> getModel()

    Returns the data model currently used by the `JComboBox`.

    Returns:
    :   the `ComboBoxModel` that provides the displayed
        list of items
  + ### setLightWeightPopupEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="Set to <code>false</code> to require heavyweight popups.")
    public void setLightWeightPopupEnabled(boolean aFlag)

    Sets the `lightWeightPopupEnabled` property, which
    provides a hint as to whether or not a lightweight
    `Component` should be used to contain the
    `JComboBox`, versus a heavyweight
    `Component` such as a `Panel`
    or a `Window`. The decision of lightweight
    versus heavyweight is ultimately up to the
    `JComboBox`. Lightweight windows are more
    efficient than heavyweight windows, but lightweight
    and heavyweight components do not mix well in a GUI.
    If your application mixes lightweight and heavyweight
    components, you should disable lightweight popups.
    The default value for the `lightWeightPopupEnabled`
    property is `true`, unless otherwise specified
    by the look and feel. Some look and feels always use
    heavyweight popups, no matter what the value of this property.

    See the article [Mixing Heavy and Light Components](http://www.oracle.com/technetwork/articles/java/mixing-components-433992.html)
    This method fires a property changed event.

    Parameters:
    :   `aFlag` - if `true`, lightweight popups are desired
  + ### isLightWeightPopupEnabled

    public boolean isLightWeightPopupEnabled()

    Gets the value of the `lightWeightPopupEnabled`
    property.

    Returns:
    :   the value of the `lightWeightPopupEnabled`
        property

    See Also:
    :   - [`setLightWeightPopupEnabled(boolean)`](#setLightWeightPopupEnabled(boolean))
  + ### setEditable

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="If true, the user can type a new value in the combo box.")
    public void setEditable(boolean aFlag)

    Determines whether the `JComboBox` field is editable.
    An editable `JComboBox` allows the user to type into the
    field or selected an item from the list to initialize the field,
    after which it can be edited. (The editing affects only the field,
    the list item remains intact.) A non editable `JComboBox`
    displays the selected item in the field,
    but the selection cannot be modified.

    Parameters:
    :   `aFlag` - a boolean value, where true indicates that the
        field is editable
  + ### isEditable

    public boolean isEditable()

    Returns true if the `JComboBox` is editable.
    By default, a combo box is not editable.

    Returns:
    :   true if the `JComboBox` is editable, else false
  + ### setMaximumRowCount

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The maximum number of rows the popup should have")
    public void setMaximumRowCount(int count)

    Sets the maximum number of rows the `JComboBox` displays.
    If the number of objects in the model is greater than count,
    the combo box uses a scrollbar.

    Parameters:
    :   `count` - an integer specifying the maximum number of items to
        display in the list before using a scrollbar
  + ### getMaximumRowCount

    public int getMaximumRowCount()

    Returns the maximum number of items the combo box can display
    without a scrollbar

    Returns:
    :   an integer specifying the maximum number of items that are
        displayed in the list before using a scrollbar
  + ### setRenderer

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The renderer that paints the item selected in the list.")
    public void setRenderer([ListCellRenderer](ListCellRenderer.md "interface in javax.swing")<? super [E](JComboBox.md "type parameter in JComboBox")> aRenderer)

    Sets the renderer that paints the list items and the item selected from the list in
    the JComboBox field. The renderer is used if the JComboBox is not
    editable. If it is editable, the editor is used to render and edit
    the selected item.

    The default renderer displays a string or an icon.
    Other renderers can handle graphic images and composite items.

    To display the selected item,
    `aRenderer.getListCellRendererComponent`
    is called, passing the list object and an index of -1.

    Parameters:
    :   `aRenderer` - the `ListCellRenderer` that
        displays the selected item

    See Also:
    :   - [`setEditor(javax.swing.ComboBoxEditor)`](#setEditor(javax.swing.ComboBoxEditor))
  + ### getRenderer

    public [ListCellRenderer](ListCellRenderer.md "interface in javax.swing")<? super [E](JComboBox.md "type parameter in JComboBox")> getRenderer()

    Returns the renderer used to display the selected item in the
    `JComboBox` field.

    Returns:
    :   the `ListCellRenderer` that displays
        the selected item.
  + ### setEditor

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The editor that combo box uses to edit the current value")
    public void setEditor([ComboBoxEditor](ComboBoxEditor.md "interface in javax.swing") anEditor)

    Sets the editor used to paint and edit the selected item in the
    `JComboBox` field. The editor is used only if the
    receiving `JComboBox` is editable. If not editable,
    the combo box uses the renderer to paint the selected item.

    Parameters:
    :   `anEditor` - the `ComboBoxEditor` that
        displays the selected item

    See Also:
    :   - [`setRenderer(javax.swing.ListCellRenderer<? super E>)`](#setRenderer(javax.swing.ListCellRenderer))
  + ### getEditor

    public [ComboBoxEditor](ComboBoxEditor.md "interface in javax.swing") getEditor()

    Returns the editor used to paint and edit the selected item in the
    `JComboBox` field.

    Returns:
    :   the `ComboBoxEditor` that displays the selected item
  + ### setSelectedItem

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the selected item in the JComboBox.")
    public void setSelectedItem([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Sets the selected item in the combo box display area to the object in
    the argument.
    If `anObject` is in the list, the display area shows
    `anObject` selected.

    If `anObject` is *not* in the list and the combo box is
    uneditable, it will not change the current selection. For editable
    combo boxes, the selection will change to `anObject`.

    If this constitutes a change in the selected item,
    `ItemListener`s added to the combo box will be notified with
    one or two `ItemEvent`s.
    If there is a current selected item, an `ItemEvent` will be
    fired and the state change will be `ItemEvent.DESELECTED`.
    If `anObject` is in the list and is not currently selected
    then an `ItemEvent` will be fired and the state change will
    be `ItemEvent.SELECTED`.

    `ActionListener`s added to the combo box will be notified
    with an `ActionEvent` when this method is called.

    Parameters:
    :   `anObject` - the list object to select; use `null` to
        clear the selection
  + ### getSelectedItem

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getSelectedItem()

    Returns the current selected item.

    If the combo box is editable, then this value may not have been added
    to the combo box with `addItem`, `insertItemAt`
    or the data constructors.

    Returns:
    :   the current selected Object

    See Also:
    :   - [`setSelectedItem(java.lang.Object)`](#setSelectedItem(java.lang.Object))
  + ### setSelectedIndex

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The item at index is selected.")
    public void setSelectedIndex(int anIndex)

    Selects the item at index `anIndex`.

    Parameters:
    :   `anIndex` - an integer specifying the list item to select,
        where 0 specifies the first item in the list and -1 indicates no selection

    Throws:
    :   `IllegalArgumentException` - if `anIndex` < -1 or
        `anIndex` is greater than or equal to size
  + ### getSelectedIndex

    public int getSelectedIndex()

    Returns the first item in the list that matches the given item.
    The result is not always defined if the `JComboBox`
    allows selected items that are not in the list.
    Returns -1 if there is no selected item or if the user specified
    an item which is not in the list.

    Returns:
    :   an integer specifying the currently selected list item,
        where 0 specifies
        the first item in the list;
        or -1 if no item is selected or if
        the currently selected item is not in the list
  + ### getPrototypeDisplayValue

    public [E](JComboBox.md "type parameter in JComboBox") getPrototypeDisplayValue()

    Returns the "prototypical display" value - an Object used
    for the calculation of the display height and width.

    Returns:
    :   the value of the `prototypeDisplayValue` property

    Since:
    :   1.4

    See Also:
    :   - [`setPrototypeDisplayValue(E)`](#setPrototypeDisplayValue(E))
  + ### setPrototypeDisplayValue

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="The display prototype value, used to compute display width and height.")
    public void setPrototypeDisplayValue([E](JComboBox.md "type parameter in JComboBox") prototypeDisplayValue)

    Sets the prototype display value used to calculate the size of the display
    for the UI portion.

    If a prototype display value is specified, the preferred size of
    the combo box is calculated by configuring the renderer with the
    prototype display value and obtaining its preferred size. Specifying
    the preferred display value is often useful when the combo box will be
    displaying large amounts of data. If no prototype display value has
    been specified, the renderer must be configured for each value from
    the model and its preferred size obtained, which can be
    relatively expensive.

    Parameters:
    :   `prototypeDisplayValue` - the prototype display value

    Since:
    :   1.4

    See Also:
    :   - [`getPrototypeDisplayValue()`](#getPrototypeDisplayValue())
  + ### addItem

    public void addItem([E](JComboBox.md "type parameter in JComboBox") item)

    Adds an item to the item list.
    This method works only if the `JComboBox` uses a
    mutable data model.

    **Warning:**
    Focus and keyboard navigation problems may arise if you add duplicate
    String objects. A workaround is to add new objects instead of String
    objects and make sure that the toString() method is defined.
    For example:

    ```
       comboBox.addItem(makeObj("Item 1"));
       comboBox.addItem(makeObj("Item 1"));
       ...
       private Object makeObj(final String item)  {
         return new Object() { public String toString() { return item; } };
       }
    ```

    Parameters:
    :   `item` - the item to add to the list

    See Also:
    :   - [`MutableComboBoxModel`](MutableComboBoxModel.md "interface in javax.swing")
  + ### insertItemAt

    public void insertItemAt([E](JComboBox.md "type parameter in JComboBox") item,
    int index)

    Inserts an item into the item list at a given index.
    This method works only if the `JComboBox` uses a
    mutable data model.

    Parameters:
    :   `item` - the item to add to the list
    :   `index` - an integer specifying the position at which
        to add the item

    See Also:
    :   - [`MutableComboBoxModel`](MutableComboBoxModel.md "interface in javax.swing")
  + ### removeItem

    public void removeItem([Object](../../../java.base/java/lang/Object.md "class in java.lang") anObject)

    Removes an item from the item list.
    This method works only if the `JComboBox` uses a
    mutable data model.

    Parameters:
    :   `anObject` - the object to remove from the item list

    See Also:
    :   - [`MutableComboBoxModel`](MutableComboBoxModel.md "interface in javax.swing")
  + ### removeItemAt

    public void removeItemAt(int anIndex)

    Removes the item at `anIndex`
    This method works only if the `JComboBox` uses a
    mutable data model.

    Parameters:
    :   `anIndex` - an int specifying the index of the item to remove,
        where 0
        indicates the first item in the list

    See Also:
    :   - [`MutableComboBoxModel`](MutableComboBoxModel.md "interface in javax.swing")
  + ### removeAllItems

    public void removeAllItems()

    Removes all items from the item list.
  + ### showPopup

    public void showPopup()

    Causes the combo box to display its popup window.

    See Also:
    :   - [`setPopupVisible(boolean)`](#setPopupVisible(boolean))
  + ### hidePopup

    public void hidePopup()

    Causes the combo box to close its popup window.

    See Also:
    :   - [`setPopupVisible(boolean)`](#setPopupVisible(boolean))
  + ### setPopupVisible

    public void setPopupVisible(boolean v)

    Sets the visibility of the popup.

    Parameters:
    :   `v` - if `true` shows the popup, otherwise, hides the popup.
  + ### isPopupVisible

    public boolean isPopupVisible()

    Determines the visibility of the popup.

    Returns:
    :   true if the popup is visible, otherwise returns false
  + ### addItemListener

    public void addItemListener([ItemListener](../../java/awt/event/ItemListener.md "interface in java.awt.event") aListener)

    Adds an `ItemListener`.

    `aListener` will receive one or two `ItemEvent`s when
    the selected item changes.

    Specified by:
    :   `addItemListener` in interface `ItemSelectable`

    Parameters:
    :   `aListener` - the `ItemListener` that is to be notified

    See Also:
    :   - [`setSelectedItem(java.lang.Object)`](#setSelectedItem(java.lang.Object))
  + ### removeItemListener

    public void removeItemListener([ItemListener](../../java/awt/event/ItemListener.md "interface in java.awt.event") aListener)

    Removes an `ItemListener`.

    Specified by:
    :   `removeItemListener` in interface `ItemSelectable`

    Parameters:
    :   `aListener` - the `ItemListener` to remove

    See Also:
    :   - [`ItemEvent`](../../java/awt/event/ItemEvent.md "class in java.awt.event")
  + ### getItemListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ItemListener](../../java/awt/event/ItemListener.md "interface in java.awt.event")[] getItemListeners()

    Returns an array of all the `ItemListener`s added
    to this JComboBox with addItemListener().

    Returns:
    :   all of the `ItemListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### addActionListener

    public void addActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Adds an `ActionListener`.

    The `ActionListener` will receive an `ActionEvent`
    when a selection has been made. If the combo box is editable, then
    an `ActionEvent` will be fired when editing has stopped.

    Parameters:
    :   `l` - the `ActionListener` that is to be notified

    See Also:
    :   - [`setSelectedItem(java.lang.Object)`](#setSelectedItem(java.lang.Object))
  + ### removeActionListener

    public void removeActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Removes an `ActionListener`.

    Parameters:
    :   `l` - the `ActionListener` to remove
  + ### getActionListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event")[] getActionListeners()

    Returns an array of all the `ActionListener`s added
    to this JComboBox with addActionListener().

    Returns:
    :   all of the `ActionListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### addPopupMenuListener

    public void addPopupMenuListener([PopupMenuListener](event/PopupMenuListener.md "interface in javax.swing.event") l)

    Adds a `PopupMenu` listener which will listen to notification
    messages from the popup portion of the combo box.

    For all standard look and feels shipped with Java, the popup list
    portion of combo box is implemented as a `JPopupMenu`.
    A custom look and feel may not implement it this way and will
    therefore not receive the notification.

    Parameters:
    :   `l` - the `PopupMenuListener` to add

    Since:
    :   1.4
  + ### removePopupMenuListener

    public void removePopupMenuListener([PopupMenuListener](event/PopupMenuListener.md "interface in javax.swing.event") l)

    Removes a `PopupMenuListener`.

    Parameters:
    :   `l` - the `PopupMenuListener` to remove

    Since:
    :   1.4

    See Also:
    :   - [`addPopupMenuListener(javax.swing.event.PopupMenuListener)`](#addPopupMenuListener(javax.swing.event.PopupMenuListener))
  + ### getPopupMenuListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [PopupMenuListener](event/PopupMenuListener.md "interface in javax.swing.event")[] getPopupMenuListeners()

    Returns an array of all the `PopupMenuListener`s added
    to this JComboBox with addPopupMenuListener().

    Returns:
    :   all of the `PopupMenuListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### firePopupMenuWillBecomeVisible

    public void firePopupMenuWillBecomeVisible()

    Notifies `PopupMenuListener`s that the popup portion of the
    combo box will become visible.

    This method is public but should not be called by anything other than
    the UI delegate.

    Since:
    :   1.4

    See Also:
    :   - [`addPopupMenuListener(javax.swing.event.PopupMenuListener)`](#addPopupMenuListener(javax.swing.event.PopupMenuListener))
  + ### firePopupMenuWillBecomeInvisible

    public void firePopupMenuWillBecomeInvisible()

    Notifies `PopupMenuListener`s that the popup portion of the
    combo box has become invisible.

    This method is public but should not be called by anything other than
    the UI delegate.

    Since:
    :   1.4

    See Also:
    :   - [`addPopupMenuListener(javax.swing.event.PopupMenuListener)`](#addPopupMenuListener(javax.swing.event.PopupMenuListener))
  + ### firePopupMenuCanceled

    public void firePopupMenuCanceled()

    Notifies `PopupMenuListener`s that the popup portion of the
    combo box has been canceled.

    This method is public but should not be called by anything other than
    the UI delegate.

    Since:
    :   1.4

    See Also:
    :   - [`addPopupMenuListener(javax.swing.event.PopupMenuListener)`](#addPopupMenuListener(javax.swing.event.PopupMenuListener))
  + ### setActionCommand

    public void setActionCommand([String](../../../java.base/java/lang/String.md "class in java.lang") aCommand)

    Sets the action command that should be included in the event
    sent to action listeners.

    Parameters:
    :   `aCommand` - a string containing the "command" that is sent
        to action listeners; the same listener can then
        do different things depending on the command it
        receives
  + ### getActionCommand

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getActionCommand()

    Returns the action command that is included in the event sent to
    action listeners.

    Returns:
    :   the string containing the "command" that is sent
        to action listeners.
  + ### setAction

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([visualUpdate](../../java/beans/BeanProperty.md#visualUpdate())=true,
    [description](../../java/beans/BeanProperty.md#description())="the Action instance connected with this ActionEvent source")
    public void setAction([Action](Action.md "interface in javax.swing") a)

    Sets the `Action` for the `ActionEvent` source.
    The new `Action` replaces any previously set
    `Action` but does not affect `ActionListeners`
    independently added with `addActionListener`.
    If the `Action` is already a registered
    `ActionListener` for the `ActionEvent` source,
    it is not re-registered.

    Setting the `Action` results in immediately changing
    all the properties described in [Swing Components Supporting `Action`](Action.md#buttonActions).
    Subsequently, the combobox's properties are automatically updated
    as the `Action`'s properties change.

    This method uses three other methods to set
    and help track the `Action`'s property values.
    It uses the `configurePropertiesFromAction` method
    to immediately change the combobox's properties.
    To track changes in the `Action`'s property values,
    this method registers the `PropertyChangeListener`
    returned by `createActionPropertyChangeListener`. The
    default `PropertyChangeListener` invokes the
    `actionPropertyChanged` method when a property in the
    `Action` changes.

    Parameters:
    :   `a` - the `Action` for the `JComboBox`,
        or `null`.

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`getAction()`](#getAction())
        - [`configurePropertiesFromAction(javax.swing.Action)`](#configurePropertiesFromAction(javax.swing.Action))
        - [`createActionPropertyChangeListener(javax.swing.Action)`](#createActionPropertyChangeListener(javax.swing.Action))
        - [`actionPropertyChanged(javax.swing.Action, java.lang.String)`](#actionPropertyChanged(javax.swing.Action,java.lang.String))
  + ### getAction

    public [Action](Action.md "interface in javax.swing") getAction()

    Returns the currently set `Action` for this
    `ActionEvent` source, or `null` if no
    `Action` is set.

    Returns:
    :   the `Action` for this `ActionEvent`
        source; or `null`

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`setAction(javax.swing.Action)`](#setAction(javax.swing.Action))
  + ### configurePropertiesFromAction

    protected void configurePropertiesFromAction([Action](Action.md "interface in javax.swing") a)

    Sets the properties on this combobox to match those in the specified
    `Action`. Refer to [Swing Components Supporting `Action`](Action.md#buttonActions) for more
    details as to which properties this sets.

    Parameters:
    :   `a` - the `Action` from which to get the properties,
        or `null`

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`setAction(javax.swing.Action)`](#setAction(javax.swing.Action))
  + ### createActionPropertyChangeListener

    protected [PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") createActionPropertyChangeListener([Action](Action.md "interface in javax.swing") a)

    Creates and returns a `PropertyChangeListener` that is
    responsible for listening for changes from the specified
    `Action` and updating the appropriate properties.

    **Warning:** If you subclass this do not create an anonymous
    inner class. If you do the lifetime of the combobox will be tied to
    that of the `Action`.

    Parameters:
    :   `a` - the combobox's action

    Returns:
    :   the `PropertyChangeListener`

    Since:
    :   1.3

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`setAction(javax.swing.Action)`](#setAction(javax.swing.Action))
  + ### actionPropertyChanged

    protected void actionPropertyChanged([Action](Action.md "interface in javax.swing") action,
    [String](../../../java.base/java/lang/String.md "class in java.lang") propertyName)

    Updates the combobox's state in response to property changes in
    associated action. This method is invoked from the
    `PropertyChangeListener` returned from
    `createActionPropertyChangeListener`. Subclasses do not normally
    need to invoke this. Subclasses that support additional `Action`
    properties should override this and
    `configurePropertiesFromAction`.

    Refer to the table at [Swing Components Supporting `Action`](Action.md#buttonActions) for a list of
    the properties this method sets.

    Parameters:
    :   `action` - the `Action` associated with this combobox
    :   `propertyName` - the name of the property that changed

    Since:
    :   1.6

    See Also:
    :   - [`Action`](Action.md "interface in javax.swing")
        - [`configurePropertiesFromAction(javax.swing.Action)`](#configurePropertiesFromAction(javax.swing.Action))
  + ### fireItemStateChanged

    protected void fireItemStateChanged([ItemEvent](../../java/awt/event/ItemEvent.md "class in java.awt.event") e)

    Notifies all listeners that have registered interest for
    notification on this event type.

    Parameters:
    :   `e` - the event of interest

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### fireActionEvent

    protected void fireActionEvent()

    Notifies all listeners that have registered interest for
    notification on this event type.

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### selectedItemChanged

    protected void selectedItemChanged()

    This protected method is implementation specific. Do not access directly
    or override.
  + ### getSelectedObjects

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] getSelectedObjects()

    Returns an array containing the selected item.
    This method is implemented for compatibility with
    `ItemSelectable`.

    Specified by:
    :   `getSelectedObjects` in interface `ItemSelectable`

    Returns:
    :   an array of `Objects` containing one
        element -- the selected item
  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../java/awt/event/ActionEvent.md "class in java.awt.event") e)

    This method is public as an implementation side effect.
    do not call or override.

    Specified by:
    :   `actionPerformed` in interface `ActionListener`

    Parameters:
    :   `e` - the event to be processed
  + ### contentsChanged

    public void contentsChanged([ListDataEvent](event/ListDataEvent.md "class in javax.swing.event") e)

    This method is public as an implementation side effect.
    do not call or override.

    Specified by:
    :   `contentsChanged` in interface `ListDataListener`

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information
  + ### intervalAdded

    public void intervalAdded([ListDataEvent](event/ListDataEvent.md "class in javax.swing.event") e)

    This method is public as an implementation side effect.
    do not call or override.

    Specified by:
    :   `intervalAdded` in interface `ListDataListener`

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information
  + ### intervalRemoved

    public void intervalRemoved([ListDataEvent](event/ListDataEvent.md "class in javax.swing.event") e)

    This method is public as an implementation side effect.
    do not call or override.

    Specified by:
    :   `intervalRemoved` in interface `ListDataListener`

    Parameters:
    :   `e` - a `ListDataEvent` encapsulating the
        event information
  + ### selectWithKeyChar

    public boolean selectWithKeyChar(char keyChar)

    Selects the list item that corresponds to the specified keyboard
    character and returns true, if there is an item corresponding
    to that character. Otherwise, returns false.

    Parameters:
    :   `keyChar` - a char, typically this is a keyboard key
        typed by the user

    Returns:
    :   `true` if there is an item corresponding to that character.
        Otherwise, returns `false`.
  + ### setEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The enabled state of the component.")
    public void setEnabled(boolean b)

    Enables the combo box so that items can be selected. When the
    combo box is disabled, items cannot be selected and values
    cannot be typed into its field (if it is editable).

    Overrides:
    :   `setEnabled` in class `JComponent`

    Parameters:
    :   `b` - a boolean value, where true enables the component and
        false disables it

    See Also:
    :   - [`Component.isEnabled()`](../../java/awt/Component.md#isEnabled())
        - [`Component.isLightweight()`](../../java/awt/Component.md#isLightweight())
  + ### configureEditor

    public void configureEditor([ComboBoxEditor](ComboBoxEditor.md "interface in javax.swing") anEditor,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") anItem)

    Initializes the editor with the specified item.

    Parameters:
    :   `anEditor` - the `ComboBoxEditor` that displays
        the list item in the
        combo box field and allows it to be edited
    :   `anItem` - the object to display and edit in the field
  + ### processKeyEvent

    public void processKeyEvent([KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") e)

    Handles `KeyEvent`s, looking for the Tab key.
    If the Tab key is found, the popup window is closed.

    Overrides:
    :   `processKeyEvent` in class `JComponent`

    Parameters:
    :   `e` - the `KeyEvent` containing the keyboard
        key that was pressed

    See Also:
    :   - [`KeyEvent`](../../java/awt/event/KeyEvent.md "class in java.awt.event")
        - [`KeyListener`](../../java/awt/event/KeyListener.md "interface in java.awt.event")
        - [`KeyboardFocusManager`](../../java/awt/KeyboardFocusManager.md "class in java.awt")
        - [`DefaultKeyboardFocusManager`](../../java/awt/DefaultKeyboardFocusManager.md "class in java.awt")
        - [`Component.processEvent(java.awt.AWTEvent)`](../../java/awt/Component.md#processEvent(java.awt.AWTEvent))
        - [`Component.dispatchEvent(java.awt.AWTEvent)`](../../java/awt/Component.md#dispatchEvent(java.awt.AWTEvent))
        - [`Component.addKeyListener(java.awt.event.KeyListener)`](../../java/awt/Component.md#addKeyListener(java.awt.event.KeyListener))
        - [`Component.enableEvents(long)`](../../java/awt/Component.md#enableEvents(long))
        - [`Component.isShowing()`](../../java/awt/Component.md#isShowing())
  + ### processKeyBinding

    protected boolean processKeyBinding([KeyStroke](KeyStroke.md "class in javax.swing") ks,
    [KeyEvent](../../java/awt/event/KeyEvent.md "class in java.awt.event") e,
    int condition,
    boolean pressed)

    Invoked to process the key bindings for `ks` as the result
    of the `KeyEvent` `e`. This obtains
    the appropriate `InputMap`,
    gets the binding, gets the action from the `ActionMap`,
    and then (if the action is found and the component
    is enabled) invokes `notifyAction` to notify the action.

    Overrides:
    :   `processKeyBinding` in class `JComponent`

    Parameters:
    :   `ks` - the `KeyStroke` queried
    :   `e` - the `KeyEvent`
    :   `condition` - one of the following values:
        - JComponent.WHEN\_FOCUSED- JComponent.WHEN\_ANCESTOR\_OF\_FOCUSED\_COMPONENT- JComponent.WHEN\_IN\_FOCUSED\_WINDOW
    :   `pressed` - true if the key is pressed

    Returns:
    :   true if there was a binding to an action, and the action
        was enabled
  + ### setKeySelectionManager

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="The objects that changes the selection when a key is pressed.")
    public void setKeySelectionManager([JComboBox.KeySelectionManager](JComboBox.KeySelectionManager.md "interface in javax.swing") aManager)

    Sets the object that translates a keyboard character into a list
    selection. Typically, the first selection with a matching first
    character becomes the selected item.

    Parameters:
    :   `aManager` - a key selection manager
  + ### getKeySelectionManager

    public [JComboBox.KeySelectionManager](JComboBox.KeySelectionManager.md "interface in javax.swing") getKeySelectionManager()

    Returns the list's key-selection manager.

    Returns:
    :   the `KeySelectionManager` currently in use
  + ### getItemCount

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public int getItemCount()

    Returns the number of items in the list.

    Returns:
    :   an integer equal to the number of items in the list
  + ### getItemAt

    public [E](JComboBox.md "type parameter in JComboBox") getItemAt(int index)

    Returns the list item at the specified index. If `index`
    is out of range (less than zero or greater than or equal to size)
    it will return `null`.

    Parameters:
    :   `index` - an integer indicating the list position, where the first
        item starts at zero

    Returns:
    :   the item at that list position; or
        `null` if out of range
  + ### createDefaultKeySelectionManager

    protected [JComboBox.KeySelectionManager](JComboBox.KeySelectionManager.md "interface in javax.swing") createDefaultKeySelectionManager()

    Returns an instance of the default key-selection manager.

    Returns:
    :   the `KeySelectionManager` currently used by the list

    See Also:
    :   - [`setKeySelectionManager(javax.swing.JComboBox.KeySelectionManager)`](#setKeySelectionManager(javax.swing.JComboBox.KeySelectionManager))
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JComboBox`.
    This method is intended to be used only for debugging purposes,
    and the content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JComboBox`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JComboBox.
    For combo boxes, the AccessibleContext takes the form of an
    AccessibleJComboBox.
    A new AccessibleJComboBox instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJComboBox that serves as the
        AccessibleContext of this JComboBox