Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JFileChooser

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.Component](../../java/awt/Component.md "class in java.awt")

[java.awt.Container](../../java/awt/Container.md "class in java.awt")

[javax.swing.JComponent](JComponent.md "class in javax.swing")

javax.swing.JFileChooser

All Implemented Interfaces:
:   `ImageObserver`, `MenuContainer`, `Serializable`, `Accessible`

---

[@JavaBean](../../java/beans/JavaBean.md "annotation interface in java.beans")([defaultProperty](../../java/beans/JavaBean.md#defaultProperty())="UI",
[description](../../java/beans/JavaBean.md#description())="A component which allows for the interactive selection of a file.")
public class JFileChooser
extends [JComponent](JComponent.md "class in javax.swing")
implements [Accessible](../accessibility/Accessible.md "interface in javax.accessibility")

`JFileChooser` provides a simple mechanism for the user to
choose a file.
For information about using `JFileChooser`, see
[How to Use File Choosers](https://docs.oracle.com/javase/tutorial/uiswing/components/filechooser.html),
a section in *The Java Tutorial*.

The following code pops up a file chooser for the user's home directory that
sees only .jpg and .gif images:

```
    JFileChooser chooser = new JFileChooser();
    FileNameExtensionFilter filter = new FileNameExtensionFilter(
        "JPG & GIF Images", "jpg", "gif");
    chooser.setFileFilter(filter);
    int returnVal = chooser.showOpenDialog(parent);
    if(returnVal == JFileChooser.APPROVE_OPTION) {
       System.out.println("You chose to open this file: " +
            chooser.getSelectedFile().getName());
    }
```

**Warning:** Swing is not thread safe. For more
information see [Swing's Threading
Policy](package-summary.md#threading).

Since:
:   1.2

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `JFileChooser.AccessibleJFileChooser`

  This class implements accessibility support for the
  `JFileChooser` class.

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

  `static final String`

  `ACCEPT_ALL_FILE_FILTER_USED_CHANGED_PROPERTY`

  Identifies whether the AcceptAllFileFilter is used or not.

  `protected AccessibleContext`

  `accessibleContext`

  `AccessibleContext` associated with this `JFileChooser`

  `static final String`

  `ACCESSORY_CHANGED_PROPERTY`

  Says that a different accessory component is in use
  (for example, to preview files).

  `static final String`

  `APPROVE_BUTTON_MNEMONIC_CHANGED_PROPERTY`

  Identifies change in the mnemonic for the approve (yes, ok) button.

  `static final String`

  `APPROVE_BUTTON_TEXT_CHANGED_PROPERTY`

  Identifies change in the text on the approve (yes, ok) button.

  `static final String`

  `APPROVE_BUTTON_TOOL_TIP_TEXT_CHANGED_PROPERTY`

  Identifies change in the tooltip text for the approve (yes, ok)
  button.

  `static final int`

  `APPROVE_OPTION`

  Return value if approve (yes, ok) is chosen.

  `static final String`

  `APPROVE_SELECTION`

  Instruction to approve the current selection
  (same as pressing yes or ok).

  `static final int`

  `CANCEL_OPTION`

  Return value if cancel is chosen.

  `static final String`

  `CANCEL_SELECTION`

  Instruction to cancel the current selection.

  `static final String`

  `CHOOSABLE_FILE_FILTER_CHANGED_PROPERTY`

  Identifies a change in the list of predefined file filters
  the user can choose from.

  `static final String`

  `CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY`

  Instruction to display the control buttons.

  `static final int`

  `CUSTOM_DIALOG`

  Type value indicating that the `JFileChooser` supports a
  developer-specified file operation.

  `static final String`

  `DIALOG_TITLE_CHANGED_PROPERTY`

  Identifies a change in the dialog title.

  `static final String`

  `DIALOG_TYPE_CHANGED_PROPERTY`

  Identifies a change in the type of files displayed (files only,
  directories only, or both files and directories).

  `static final int`

  `DIRECTORIES_ONLY`

  Instruction to display only directories.

  `static final String`

  `DIRECTORY_CHANGED_PROPERTY`

  Identifies user's directory change.

  `static final int`

  `ERROR_OPTION`

  Return value if an error occurred.

  `static final String`

  `FILE_FILTER_CHANGED_PROPERTY`

  User changed the kind of files to display.

  `static final String`

  `FILE_HIDING_CHANGED_PROPERTY`

  Identifies a change in the display-hidden-files property.

  `static final String`

  `FILE_SELECTION_MODE_CHANGED_PROPERTY`

  Identifies a change in the kind of selection (single,
  multiple, etc.).

  `static final String`

  `FILE_SYSTEM_VIEW_CHANGED_PROPERTY`

  Says that a different object is being used to find available drives
  on the system.

  `static final String`

  `FILE_VIEW_CHANGED_PROPERTY`

  Says that a different object is being used to retrieve file
  information.

  `static final int`

  `FILES_AND_DIRECTORIES`

  Instruction to display both files and directories.

  `static final int`

  `FILES_ONLY`

  Instruction to display only files.

  `static final String`

  `MULTI_SELECTION_ENABLED_CHANGED_PROPERTY`

  Enables multiple-file selections.

  `static final int`

  `OPEN_DIALOG`

  Type value indicating that the `JFileChooser` supports an
  "Open" file operation.

  `static final int`

  `SAVE_DIALOG`

  Type value indicating that the `JFileChooser` supports a
  "Save" file operation.

  `static final String`

  `SELECTED_FILE_CHANGED_PROPERTY`

  Identifies change in user's single-file selection.

  `static final String`

  `SELECTED_FILES_CHANGED_PROPERTY`

  Identifies change in user's multiple-file selection.

  ### Fields inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `listenerList, TOOL_TIP_TEXT_KEY, ui, UNDEFINED_CONDITION, WHEN_ANCESTOR_OF_FOCUSED_COMPONENT, WHEN_FOCUSED, WHEN_IN_FOCUSED_WINDOW`

  ### Fields inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `BOTTOM_ALIGNMENT, CENTER_ALIGNMENT, LEFT_ALIGNMENT, RIGHT_ALIGNMENT, TOP_ALIGNMENT`

  ### Fields inherited from interface java.awt.image.[ImageObserver](../../java/awt/image/ImageObserver.md "interface in java.awt.image")

  `ABORT, ALLBITS, ERROR, FRAMEBITS, HEIGHT, PROPERTIES, SOMEBITS, WIDTH`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JFileChooser()`

  Constructs a `JFileChooser` pointing to the user's
  default directory.

  `JFileChooser(File currentDirectory)`

  Constructs a `JFileChooser` using the given `File`
  as the path.

  `JFileChooser(File currentDirectory,
  FileSystemView fsv)`

  Constructs a `JFileChooser` using the given current directory
  and `FileSystemView`.

  `JFileChooser(String currentDirectoryPath)`

  Constructs a `JFileChooser` using the given path.

  `JFileChooser(String currentDirectoryPath,
  FileSystemView fsv)`

  Constructs a `JFileChooser` using the given current directory
  path and `FileSystemView`.

  `JFileChooser(FileSystemView fsv)`

  Constructs a `JFileChooser` using the given
  `FileSystemView`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `accept(File f)`

  Returns true if the file should be displayed.

  `void`

  `addActionListener(ActionListener l)`

  Adds an `ActionListener` to the file chooser.

  `void`

  `addChoosableFileFilter(FileFilter filter)`

  Adds a filter to the list of user choosable file filters.

  `void`

  `approveSelection()`

  Called by the UI when the user hits the Approve button
  (labeled "Open" or "Save", by default).

  `void`

  `cancelSelection()`

  Called by the UI when the user chooses the Cancel button.

  `void`

  `changeToParentDirectory()`

  Changes the directory to be set to the parent of the
  current directory.

  `protected JDialog`

  `createDialog(Component parent)`

  Creates and returns a new `JDialog` wrapping
  `this` centered on the `parent`
  in the `parent`'s frame.

  `void`

  `ensureFileIsVisible(File f)`

  Makes sure that the specified file is viewable, and
  not hidden.

  `protected void`

  `fireActionPerformed(String command)`

  Notifies all listeners that have registered interest for
  notification on this event type.

  `FileFilter`

  `getAcceptAllFileFilter()`

  Returns the `AcceptAll` file filter.

  `AccessibleContext`

  `getAccessibleContext()`

  Gets the AccessibleContext associated with this JFileChooser.

  `JComponent`

  `getAccessory()`

  Returns the accessory component.

  `ActionListener[]`

  `getActionListeners()`

  Returns an array of all the action listeners
  registered on this file chooser.

  `int`

  `getApproveButtonMnemonic()`

  Returns the approve button's mnemonic.

  `String`

  `getApproveButtonText()`

  Returns the text used in the `ApproveButton` in the
  `FileChooserUI`.

  `String`

  `getApproveButtonToolTipText()`

  Returns the tooltip text used in the `ApproveButton`.

  `FileFilter[]`

  `getChoosableFileFilters()`

  Gets the list of user choosable file filters.

  `boolean`

  `getControlButtonsAreShown()`

  Returns the value of the `controlButtonsAreShown`
  property.

  `File`

  `getCurrentDirectory()`

  Returns the current directory.

  `String`

  `getDescription(File f)`

  Returns the file description.

  `String`

  `getDialogTitle()`

  Gets the string that goes in the `JFileChooser`'s titlebar.

  `int`

  `getDialogType()`

  Returns the type of this dialog.

  `boolean`

  `getDragEnabled()`

  Gets the value of the `dragEnabled` property.

  `FileFilter`

  `getFileFilter()`

  Returns the currently selected file filter.

  `int`

  `getFileSelectionMode()`

  Returns the current file-selection mode.

  `FileSystemView`

  `getFileSystemView()`

  Returns the file system view.

  `FileView`

  `getFileView()`

  Returns the current file view.

  `Icon`

  `getIcon(File f)`

  Returns the icon for this file or type of file, depending
  on the system.

  `String`

  `getName(File f)`

  Returns the filename.

  `File`

  `getSelectedFile()`

  Returns the selected file.

  `File[]`

  `getSelectedFiles()`

  Returns a list of selected files if the file chooser is
  set to allow multiple selection.

  `String`

  `getTypeDescription(File f)`

  Returns the file type.

  `FileChooserUI`

  `getUI()`

  Gets the UI object which implements the L&F for this component.

  `String`

  `getUIClassID()`

  Returns a string that specifies the name of the L&F class
  that renders this component.

  `boolean`

  `isAcceptAllFileFilterUsed()`

  Returns whether the `AcceptAll FileFilter` is used.

  `boolean`

  `isDirectorySelectionEnabled()`

  Convenience call that determines if directories are selectable based
  on the current file selection mode.

  `boolean`

  `isFileHidingEnabled()`

  Returns true if hidden files are not shown in the file chooser;
  otherwise, returns false.

  `boolean`

  `isFileSelectionEnabled()`

  Convenience call that determines if files are selectable based on the
  current file selection mode.

  `boolean`

  `isMultiSelectionEnabled()`

  Returns true if multiple files can be selected.

  `boolean`

  `isTraversable(File f)`

  Returns true if the file (directory) can be visited.

  `protected String`

  `paramString()`

  Returns a string representation of this `JFileChooser`.

  `void`

  `removeActionListener(ActionListener l)`

  Removes an `ActionListener` from the file chooser.

  `boolean`

  `removeChoosableFileFilter(FileFilter f)`

  Removes a filter from the list of user choosable file filters.

  `void`

  `rescanCurrentDirectory()`

  Tells the UI to rescan its files list from the current directory.

  `void`

  `resetChoosableFileFilters()`

  Resets the choosable file filter list to its starting state.

  `void`

  `setAcceptAllFileFilterUsed(boolean b)`

  Determines whether the `AcceptAll FileFilter` is used
  as an available choice in the choosable filter list.

  `void`

  `setAccessory(JComponent newAccessory)`

  Sets the accessory component.

  `void`

  `setApproveButtonMnemonic(char mnemonic)`

  Sets the approve button's mnemonic using a character.

  `void`

  `setApproveButtonMnemonic(int mnemonic)`

  Sets the approve button's mnemonic using a numeric keycode.

  `void`

  `setApproveButtonText(String approveButtonText)`

  Sets the text used in the `ApproveButton` in the
  `FileChooserUI`.

  `void`

  `setApproveButtonToolTipText(String toolTipText)`

  Sets the tooltip text used in the `ApproveButton`.

  `void`

  `setControlButtonsAreShown(boolean b)`

  Sets the property
  that indicates whether the *approve* and *cancel*
  buttons are shown in the file chooser.

  `void`

  `setCurrentDirectory(File dir)`

  Sets the current directory.

  `void`

  `setDialogTitle(String dialogTitle)`

  Sets the string that goes in the `JFileChooser` window's
  title bar.

  `void`

  `setDialogType(int dialogType)`

  Sets the type of this dialog.

  `void`

  `setDragEnabled(boolean b)`

  Sets the `dragEnabled` property,
  which must be `true` to enable
  automatic drag handling (the first part of drag and drop)
  on this component.

  `void`

  `setFileFilter(FileFilter filter)`

  Sets the current file filter.

  `void`

  `setFileHidingEnabled(boolean b)`

  Sets file hiding on or off.

  `void`

  `setFileSelectionMode(int mode)`

  Sets the `JFileChooser` to allow the user to just
  select files, just select
  directories, or select both files and directories.

  `void`

  `setFileSystemView(FileSystemView fsv)`

  Sets the file system view that the `JFileChooser` uses for
  accessing and creating file system resources, such as finding
  the floppy drive and getting a list of root drives.

  `void`

  `setFileView(FileView fileView)`

  Sets the file view to be used to retrieve UI information, such as
  the icon that represents a file or the type description of a file.

  `void`

  `setMultiSelectionEnabled(boolean b)`

  Sets the file chooser to allow multiple file selections.

  `void`

  `setSelectedFile(File file)`

  Sets the selected file.

  `void`

  `setSelectedFiles(File[] selectedFiles)`

  Sets the list of selected files if the file chooser is
  set to allow multiple selection.

  `protected void`

  `setup(FileSystemView view)`

  Performs common constructor initialization and setup.

  `int`

  `showDialog(Component parent,
  String approveButtonText)`

  Pops a custom file chooser dialog with a custom approve button.

  `int`

  `showOpenDialog(Component parent)`

  Pops up an "Open File" file chooser dialog.

  `int`

  `showSaveDialog(Component parent)`

  Pops up a "Save File" file chooser dialog.

  `void`

  `updateUI()`

  Resets the UI property to a value from the current look and feel.

  ### Methods inherited from class javax.swing.[JComponent](JComponent.md "class in javax.swing")

  `addAncestorListener, addNotify, addVetoableChangeListener, computeVisibleRect, contains, createToolTip, disable, enable, firePropertyChange, firePropertyChange, firePropertyChange, fireVetoableChange, getActionForKeyStroke, getActionMap, getAlignmentX, getAlignmentY, getAncestorListeners, getAutoscrolls, getBaseline, getBaselineResizeBehavior, getBorder, getBounds, getClientProperty, getComponentGraphics, getComponentPopupMenu, getConditionForKeyStroke, getDebugGraphicsOptions, getDefaultLocale, getFontMetrics, getGraphics, getHeight, getInheritsPopupMenu, getInputMap, getInputMap, getInputVerifier, getInsets, getInsets, getListeners, getLocation, getMaximumSize, getMinimumSize, getNextFocusableComponent, getPopupLocation, getPreferredSize, getRegisteredKeyStrokes, getRootPane, getSize, getToolTipLocation, getToolTipText, getToolTipText, getTopLevelAncestor, getTransferHandler, getVerifyInputWhenFocusTarget, getVetoableChangeListeners, getVisibleRect, getWidth, getX, getY, grabFocus, hide, isDoubleBuffered, isLightweightComponent, isManagingFocus, isOpaque, isOptimizedDrawingEnabled, isPaintingForPrint, isPaintingOrigin, isPaintingTile, isRequestFocusEnabled, isValidateRoot, paint, paintBorder, paintChildren, paintComponent, paintImmediately, paintImmediately, print, printAll, printBorder, printChildren, printComponent, processComponentKeyEvent, processKeyBinding, processKeyEvent, processMouseEvent, processMouseMotionEvent, putClientProperty, registerKeyboardAction, registerKeyboardAction, removeAncestorListener, removeNotify, removeVetoableChangeListener, repaint, repaint, requestDefaultFocus, requestFocus, requestFocus, requestFocusInWindow, requestFocusInWindow, resetKeyboardActions, reshape, revalidate, scrollRectToVisible, setActionMap, setAlignmentX, setAlignmentY, setAutoscrolls, setBackground, setBorder, setComponentPopupMenu, setDebugGraphicsOptions, setDefaultLocale, setDoubleBuffered, setEnabled, setFocusTraversalKeys, setFont, setForeground, setInheritsPopupMenu, setInputMap, setInputVerifier, setMaximumSize, setMinimumSize, setNextFocusableComponent, setOpaque, setPreferredSize, setRequestFocusEnabled, setToolTipText, setTransferHandler, setUI, setVerifyInputWhenFocusTarget, setVisible, unregisterKeyboardAction, update`

  ### Methods inherited from class java.awt.[Container](../../java/awt/Container.md "class in java.awt")

  `add, add, add, add, add, addContainerListener, addImpl, addPropertyChangeListener, addPropertyChangeListener, applyComponentOrientation, areFocusTraversalKeysSet, countComponents, deliverEvent, doLayout, findComponentAt, findComponentAt, getComponent, getComponentAt, getComponentAt, getComponentCount, getComponents, getComponentZOrder, getContainerListeners, getFocusTraversalKeys, getFocusTraversalPolicy, getLayout, getMousePosition, insets, invalidate, isAncestorOf, isFocusCycleRoot, isFocusCycleRoot, isFocusTraversalPolicyProvider, isFocusTraversalPolicySet, layout, list, list, locate, minimumSize, paintComponents, preferredSize, printComponents, processContainerEvent, processEvent, remove, remove, removeAll, removeContainerListener, setComponentZOrder, setFocusCycleRoot, setFocusTraversalPolicy, setFocusTraversalPolicyProvider, setLayout, transferFocusDownCycle, validate, validateTree`

  ### Methods inherited from class java.awt.[Component](../../java/awt/Component.md "class in java.awt")

  `action, add, addComponentListener, addFocusListener, addHierarchyBoundsListener, addHierarchyListener, addInputMethodListener, addKeyListener, addMouseListener, addMouseMotionListener, addMouseWheelListener, bounds, checkImage, checkImage, coalesceEvents, contains, createImage, createImage, createVolatileImage, createVolatileImage, disableEvents, dispatchEvent, enable, enableEvents, enableInputMethods, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, firePropertyChange, getBackground, getBounds, getColorModel, getComponentListeners, getComponentOrientation, getCursor, getDropTarget, getFocusCycleRootAncestor, getFocusListeners, getFocusTraversalKeysEnabled, getFont, getForeground, getGraphicsConfiguration, getHierarchyBoundsListeners, getHierarchyListeners, getIgnoreRepaint, getInputContext, getInputMethodListeners, getInputMethodRequests, getKeyListeners, getLocale, getLocation, getLocationOnScreen, getMouseListeners, getMouseMotionListeners, getMousePosition, getMouseWheelListeners, getName, getParent, getPropertyChangeListeners, getPropertyChangeListeners, getSize, getToolkit, getTreeLock, gotFocus, handleEvent, hasFocus, imageUpdate, inside, isBackgroundSet, isCursorSet, isDisplayable, isEnabled, isFocusable, isFocusOwner, isFocusTraversable, isFontSet, isForegroundSet, isLightweight, isMaximumSizeSet, isMinimumSizeSet, isPreferredSizeSet, isShowing, isValid, isVisible, keyDown, keyUp, list, list, list, location, lostFocus, mouseDown, mouseDrag, mouseEnter, mouseExit, mouseMove, mouseUp, move, nextFocus, paintAll, postEvent, prepareImage, prepareImage, processComponentEvent, processFocusEvent, processHierarchyBoundsEvent, processHierarchyEvent, processInputMethodEvent, processMouseWheelEvent, remove, removeComponentListener, removeFocusListener, removeHierarchyBoundsListener, removeHierarchyListener, removeInputMethodListener, removeKeyListener, removeMouseListener, removeMouseMotionListener, removeMouseWheelListener, removePropertyChangeListener, removePropertyChangeListener, repaint, repaint, repaint, requestFocus, requestFocus, requestFocusInWindow, resize, resize, setBounds, setBounds, setComponentOrientation, setCursor, setDropTarget, setFocusable, setFocusTraversalKeysEnabled, setIgnoreRepaint, setLocale, setLocation, setLocation, setMixingCutoutShape, setName, setSize, setSize, show, show, size, toString, transferFocus, transferFocusBackward, transferFocusUpCycle`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### OPEN\_DIALOG

    public static final int OPEN\_DIALOG

    Type value indicating that the `JFileChooser` supports an
    "Open" file operation.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.OPEN_DIALOG)
  + ### SAVE\_DIALOG

    public static final int SAVE\_DIALOG

    Type value indicating that the `JFileChooser` supports a
    "Save" file operation.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.SAVE_DIALOG)
  + ### CUSTOM\_DIALOG

    public static final int CUSTOM\_DIALOG

    Type value indicating that the `JFileChooser` supports a
    developer-specified file operation.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.CUSTOM_DIALOG)
  + ### CANCEL\_OPTION

    public static final int CANCEL\_OPTION

    Return value if cancel is chosen.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.CANCEL_OPTION)
  + ### APPROVE\_OPTION

    public static final int APPROVE\_OPTION

    Return value if approve (yes, ok) is chosen.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.APPROVE_OPTION)
  + ### ERROR\_OPTION

    public static final int ERROR\_OPTION

    Return value if an error occurred.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.ERROR_OPTION)
  + ### FILES\_ONLY

    public static final int FILES\_ONLY

    Instruction to display only files.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.FILES_ONLY)
  + ### DIRECTORIES\_ONLY

    public static final int DIRECTORIES\_ONLY

    Instruction to display only directories.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.DIRECTORIES_ONLY)
  + ### FILES\_AND\_DIRECTORIES

    public static final int FILES\_AND\_DIRECTORIES

    Instruction to display both files and directories.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.FILES_AND_DIRECTORIES)
  + ### CANCEL\_SELECTION

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CANCEL\_SELECTION

    Instruction to cancel the current selection.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.CANCEL_SELECTION)
  + ### APPROVE\_SELECTION

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") APPROVE\_SELECTION

    Instruction to approve the current selection
    (same as pressing yes or ok).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.APPROVE_SELECTION)
  + ### APPROVE\_BUTTON\_TEXT\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") APPROVE\_BUTTON\_TEXT\_CHANGED\_PROPERTY

    Identifies change in the text on the approve (yes, ok) button.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.APPROVE_BUTTON_TEXT_CHANGED_PROPERTY)
  + ### APPROVE\_BUTTON\_TOOL\_TIP\_TEXT\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") APPROVE\_BUTTON\_TOOL\_TIP\_TEXT\_CHANGED\_PROPERTY

    Identifies change in the tooltip text for the approve (yes, ok)
    button.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.APPROVE_BUTTON_TOOL_TIP_TEXT_CHANGED_PROPERTY)
  + ### APPROVE\_BUTTON\_MNEMONIC\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") APPROVE\_BUTTON\_MNEMONIC\_CHANGED\_PROPERTY

    Identifies change in the mnemonic for the approve (yes, ok) button.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.APPROVE_BUTTON_MNEMONIC_CHANGED_PROPERTY)
  + ### CONTROL\_BUTTONS\_ARE\_SHOWN\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CONTROL\_BUTTONS\_ARE\_SHOWN\_CHANGED\_PROPERTY

    Instruction to display the control buttons.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY)
  + ### DIRECTORY\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") DIRECTORY\_CHANGED\_PROPERTY

    Identifies user's directory change.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.DIRECTORY_CHANGED_PROPERTY)
  + ### SELECTED\_FILE\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") SELECTED\_FILE\_CHANGED\_PROPERTY

    Identifies change in user's single-file selection.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.SELECTED_FILE_CHANGED_PROPERTY)
  + ### SELECTED\_FILES\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") SELECTED\_FILES\_CHANGED\_PROPERTY

    Identifies change in user's multiple-file selection.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.SELECTED_FILES_CHANGED_PROPERTY)
  + ### MULTI\_SELECTION\_ENABLED\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") MULTI\_SELECTION\_ENABLED\_CHANGED\_PROPERTY

    Enables multiple-file selections.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.MULTI_SELECTION_ENABLED_CHANGED_PROPERTY)
  + ### FILE\_SYSTEM\_VIEW\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FILE\_SYSTEM\_VIEW\_CHANGED\_PROPERTY

    Says that a different object is being used to find available drives
    on the system.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.FILE_SYSTEM_VIEW_CHANGED_PROPERTY)
  + ### FILE\_VIEW\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FILE\_VIEW\_CHANGED\_PROPERTY

    Says that a different object is being used to retrieve file
    information.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.FILE_VIEW_CHANGED_PROPERTY)
  + ### FILE\_HIDING\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FILE\_HIDING\_CHANGED\_PROPERTY

    Identifies a change in the display-hidden-files property.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.FILE_HIDING_CHANGED_PROPERTY)
  + ### FILE\_FILTER\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FILE\_FILTER\_CHANGED\_PROPERTY

    User changed the kind of files to display.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.FILE_FILTER_CHANGED_PROPERTY)
  + ### FILE\_SELECTION\_MODE\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FILE\_SELECTION\_MODE\_CHANGED\_PROPERTY

    Identifies a change in the kind of selection (single,
    multiple, etc.).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.FILE_SELECTION_MODE_CHANGED_PROPERTY)
  + ### ACCESSORY\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESSORY\_CHANGED\_PROPERTY

    Says that a different accessory component is in use
    (for example, to preview files).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.ACCESSORY_CHANGED_PROPERTY)
  + ### ACCEPT\_ALL\_FILE\_FILTER\_USED\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCEPT\_ALL\_FILE\_FILTER\_USED\_CHANGED\_PROPERTY

    Identifies whether the AcceptAllFileFilter is used or not.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.ACCEPT_ALL_FILE_FILTER_USED_CHANGED_PROPERTY)
  + ### DIALOG\_TITLE\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") DIALOG\_TITLE\_CHANGED\_PROPERTY

    Identifies a change in the dialog title.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.DIALOG_TITLE_CHANGED_PROPERTY)
  + ### DIALOG\_TYPE\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") DIALOG\_TYPE\_CHANGED\_PROPERTY

    Identifies a change in the type of files displayed (files only,
    directories only, or both files and directories).

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.DIALOG_TYPE_CHANGED_PROPERTY)
  + ### CHOOSABLE\_FILE\_FILTER\_CHANGED\_PROPERTY

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") CHOOSABLE\_FILE\_FILTER\_CHANGED\_PROPERTY

    Identifies a change in the list of predefined file filters
    the user can choose from.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.swing.JFileChooser.CHOOSABLE_FILE_FILTER_CHANGED_PROPERTY)
  + ### accessibleContext

    protected [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") accessibleContext

    `AccessibleContext` associated with this `JFileChooser`
* ## Constructor Details

  + ### JFileChooser

    public JFileChooser()

    Constructs a `JFileChooser` pointing to the user's
    default directory. This default depends on the operating system.
    It is typically the "Documents" folder on Windows, and the
    user's home directory on Unix.
  + ### JFileChooser

    public JFileChooser([String](../../../java.base/java/lang/String.md "class in java.lang") currentDirectoryPath)

    Constructs a `JFileChooser` using the given path.
    Passing in a `null`
    string causes the file chooser to point to the user's default directory.
    This default depends on the operating system. It is
    typically the "Documents" folder on Windows, and the user's
    home directory on Unix.

    Parameters:
    :   `currentDirectoryPath` - a `String` giving the path
        to a file or directory
  + ### JFileChooser

    public JFileChooser([File](../../../java.base/java/io/File.md "class in java.io") currentDirectory)

    Constructs a `JFileChooser` using the given `File`
    as the path. Passing in a `null` file
    causes the file chooser to point to the user's default directory.
    This default depends on the operating system. It is
    typically the "Documents" folder on Windows, and the user's
    home directory on Unix.

    Parameters:
    :   `currentDirectory` - a `File` object specifying
        the path to a file or directory
  + ### JFileChooser

    public JFileChooser([FileSystemView](filechooser/FileSystemView.md "class in javax.swing.filechooser") fsv)

    Constructs a `JFileChooser` using the given
    `FileSystemView`.

    Parameters:
    :   `fsv` - a `FileSystemView`
  + ### JFileChooser

    public JFileChooser([File](../../../java.base/java/io/File.md "class in java.io") currentDirectory,
    [FileSystemView](filechooser/FileSystemView.md "class in javax.swing.filechooser") fsv)

    Constructs a `JFileChooser` using the given current directory
    and `FileSystemView`.

    Parameters:
    :   `currentDirectory` - a `File` object specifying the path to a
        file or directory
    :   `fsv` - a `FileSystemView`
  + ### JFileChooser

    public JFileChooser([String](../../../java.base/java/lang/String.md "class in java.lang") currentDirectoryPath,
    [FileSystemView](filechooser/FileSystemView.md "class in javax.swing.filechooser") fsv)

    Constructs a `JFileChooser` using the given current directory
    path and `FileSystemView`.

    Parameters:
    :   `currentDirectoryPath` - a `String` specifying the path to a file
        or directory
    :   `fsv` - a `FileSystemView`
* ## Method Details

  + ### setup

    protected void setup([FileSystemView](filechooser/FileSystemView.md "class in javax.swing.filechooser") view)

    Performs common constructor initialization and setup.

    Parameters:
    :   `view` - the `FileSystemView` used for setup
  + ### setDragEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [description](../../java/beans/BeanProperty.md#description())="determines whether automatic drag handling is enabled")
    public void setDragEnabled(boolean b)

    Sets the `dragEnabled` property,
    which must be `true` to enable
    automatic drag handling (the first part of drag and drop)
    on this component.
    The `transferHandler` property needs to be set
    to a non-`null` value for the drag to do
    anything. The default value of the `dragEnabled`
    property
    is `false`.

    When automatic drag handling is enabled,
    most look and feels begin a drag-and-drop operation
    whenever the user presses the mouse button over an item
    and then moves the mouse a few pixels.
    Setting this property to `true`
    can therefore have a subtle effect on
    how selections behave.

    Some look and feels might not support automatic drag and drop;
    they will ignore this property. You can work around such
    look and feels by modifying the component
    to directly call the `exportAsDrag` method of a
    `TransferHandler`.

    Parameters:
    :   `b` - the value to set the `dragEnabled` property to

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

    Gets the value of the `dragEnabled` property.

    Returns:
    :   the value of the `dragEnabled` property

    Since:
    :   1.4

    See Also:
    :   - [`setDragEnabled(boolean)`](#setDragEnabled(boolean))
  + ### getSelectedFile

    public [File](../../../java.base/java/io/File.md "class in java.io") getSelectedFile()

    Returns the selected file. This can be set either by the
    programmer via `setSelectedFile` or by a user action, such as
    either typing the filename into the UI or selecting the
    file from a list in the UI.

    Returns:
    :   the selected file

    See Also:
    :   - [`setSelectedFile(java.io.File)`](#setSelectedFile(java.io.File))
  + ### setSelectedFile

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true)
    public void setSelectedFile([File](../../../java.base/java/io/File.md "class in java.io") file)

    Sets the selected file. If the file's parent directory is
    not the current directory, changes the current directory
    to be the file's parent directory.

    Parameters:
    :   `file` - the selected file

    See Also:
    :   - [`getSelectedFile()`](#getSelectedFile())
  + ### getSelectedFiles

    public [File](../../../java.base/java/io/File.md "class in java.io")[] getSelectedFiles()

    Returns a list of selected files if the file chooser is
    set to allow multiple selection.

    Returns:
    :   an array of selected `File`s
  + ### setSelectedFiles

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="The list of selected files if the chooser is in multiple selection mode.")
    public void setSelectedFiles([File](../../../java.base/java/io/File.md "class in java.io")[] selectedFiles)

    Sets the list of selected files if the file chooser is
    set to allow multiple selection.

    Parameters:
    :   `selectedFiles` - an array `File`s to be selected
  + ### getCurrentDirectory

    public [File](../../../java.base/java/io/File.md "class in java.io") getCurrentDirectory()

    Returns the current directory.

    Returns:
    :   the current directory

    See Also:
    :   - [`setCurrentDirectory(java.io.File)`](#setCurrentDirectory(java.io.File))
  + ### setCurrentDirectory

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The directory that the JFileChooser is showing files of.")
    public void setCurrentDirectory([File](../../../java.base/java/io/File.md "class in java.io") dir)

    Sets the current directory. Passing in `null` sets the
    file chooser to point to the user's default directory.
    This default depends on the operating system. It is
    typically the "Documents" folder on Windows, and the user's
    home directory on Unix.
    If the file passed in as `currentDirectory` is not a
    directory, the parent of the file will be used as the currentDirectory.
    If the parent is not traversable, then it will walk up the parent tree
    until it finds a traversable directory, or hits the root of the
    file system.

    Parameters:
    :   `dir` - the current directory to point to

    See Also:
    :   - [`getCurrentDirectory()`](#getCurrentDirectory())
  + ### changeToParentDirectory

    public void changeToParentDirectory()

    Changes the directory to be set to the parent of the
    current directory.

    See Also:
    :   - [`getCurrentDirectory()`](#getCurrentDirectory())
  + ### rescanCurrentDirectory

    public void rescanCurrentDirectory()

    Tells the UI to rescan its files list from the current directory.
  + ### ensureFileIsVisible

    public void ensureFileIsVisible([File](../../../java.base/java/io/File.md "class in java.io") f)

    Makes sure that the specified file is viewable, and
    not hidden.

    Parameters:
    :   `f` - a File object
  + ### showOpenDialog

    public int showOpenDialog([Component](../../java/awt/Component.md "class in java.awt") parent)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Pops up an "Open File" file chooser dialog. Note that the
    text that appears in the approve button is determined by
    the L&F.

    Parameters:
    :   `parent` - the parent component of the dialog,
        can be `null`;
        see `showDialog` for details

    Returns:
    :   the return state of the file chooser on popdown:
        - JFileChooser.CANCEL\_OPTION- JFileChooser.APPROVE\_OPTION- JFileChooser.ERROR\_OPTION if an error occurs or the
              dialog is dismissed

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`showDialog(java.awt.Component, java.lang.String)`](#showDialog(java.awt.Component,java.lang.String))
  + ### showSaveDialog

    public int showSaveDialog([Component](../../java/awt/Component.md "class in java.awt") parent)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Pops up a "Save File" file chooser dialog. Note that the
    text that appears in the approve button is determined by
    the L&F.

    Parameters:
    :   `parent` - the parent component of the dialog,
        can be `null`;
        see `showDialog` for details

    Returns:
    :   the return state of the file chooser on popdown:
        - JFileChooser.CANCEL\_OPTION- JFileChooser.APPROVE\_OPTION- JFileChooser.ERROR\_OPTION if an error occurs or the
              dialog is dismissed

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
        - [`showDialog(java.awt.Component, java.lang.String)`](#showDialog(java.awt.Component,java.lang.String))
  + ### showDialog

    public int showDialog([Component](../../java/awt/Component.md "class in java.awt") parent,
    [String](../../../java.base/java/lang/String.md "class in java.lang") approveButtonText)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Pops a custom file chooser dialog with a custom approve button.
    For example, the following code
    pops up a file chooser with a "Run Application" button
    (instead of the normal "Save" or "Open" button):

    ```
     filechooser.showDialog(parentFrame, "Run Application");
    ```

    Alternatively, the following code does the same thing:

    ```
        JFileChooser chooser = new JFileChooser(null);
        chooser.setApproveButtonText("Run Application");
        chooser.showDialog(parentFrame, null);
    ```



    The `parent` argument determines two things:
    the frame on which the open dialog depends and
    the component whose position the look and feel
    should consider when placing the dialog. If the parent
    is a `Frame` object (such as a `JFrame`)
    then the dialog depends on the frame and
    the look and feel positions the dialog
    relative to the frame (for example, centered over the frame).
    If the parent is a component, then the dialog
    depends on the frame containing the component,
    and is positioned relative to the component
    (for example, centered over the component).
    If the parent is `null`, then the dialog depends on
    no visible window, and it's placed in a
    look-and-feel-dependent position
    such as the center of the screen.

    Parameters:
    :   `parent` - the parent component of the dialog;
        can be `null`
    :   `approveButtonText` - the text of the `ApproveButton`

    Returns:
    :   the return state of the file chooser on popdown:
        - JFileChooser.CANCEL\_OPTION- JFileChooser.APPROVE\_OPTION- JFileChooser.ERROR\_OPTION if an error occurs or the
              dialog is dismissed

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
  + ### createDialog

    protected [JDialog](JDialog.md "class in javax.swing") createDialog([Component](../../java/awt/Component.md "class in java.awt") parent)
    throws [HeadlessException](../../java/awt/HeadlessException.md "class in java.awt")

    Creates and returns a new `JDialog` wrapping
    `this` centered on the `parent`
    in the `parent`'s frame.
    This method can be overridden to further manipulate the dialog,
    to disable resizing, set the location, etc. Example:

    ```
         class MyFileChooser extends JFileChooser {
             protected JDialog createDialog(Component parent) throws HeadlessException {
                 JDialog dialog = super.createDialog(parent);
                 dialog.setLocation(300, 200);
                 dialog.setResizable(false);
                 return dialog;
             }
         }
    ```

    Parameters:
    :   `parent` - the parent component of the dialog;
        can be `null`

    Returns:
    :   a new `JDialog` containing this instance

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true.

    Since:
    :   1.4

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../../java/awt/GraphicsEnvironment.md#isHeadless())
  + ### getControlButtonsAreShown

    public boolean getControlButtonsAreShown()

    Returns the value of the `controlButtonsAreShown`
    property.

    Returns:
    :   the value of the `controlButtonsAreShown`
        property

    Since:
    :   1.3

    See Also:
    :   - [`setControlButtonsAreShown(boolean)`](#setControlButtonsAreShown(boolean))
  + ### setControlButtonsAreShown

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets whether the approve & cancel buttons are shown.")
    public void setControlButtonsAreShown(boolean b)

    Sets the property
    that indicates whether the *approve* and *cancel*
    buttons are shown in the file chooser. This property
    is `true` by default. Look and feels
    that always show these buttons will ignore the value
    of this property.
    This method fires a property-changed event,
    using the string value of
    `CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY`
    as the name of the property.

    Parameters:
    :   `b` - `false` if control buttons should not be
        shown; otherwise, `true`

    Since:
    :   1.3

    See Also:
    :   - [`getControlButtonsAreShown()`](#getControlButtonsAreShown())
        - [`CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY`](#CONTROL_BUTTONS_ARE_SHOWN_CHANGED_PROPERTY)
  + ### getDialogType

    public int getDialogType()

    Returns the type of this dialog. The default is
    `JFileChooser.OPEN_DIALOG`.

    Returns:
    :   the type of dialog to be displayed:
        - JFileChooser.OPEN\_DIALOG- JFileChooser.SAVE\_DIALOG- JFileChooser.CUSTOM\_DIALOG

    See Also:
    :   - [`setDialogType(int)`](#setDialogType(int))
  + ### setDialogType

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JFileChooser.OPEN\_DIALOG","JFileChooser.SAVE\_DIALOG","JFileChooser.CUSTOM\_DIALOG"},
    [description](../../java/beans/BeanProperty.md#description())="The type (open, save, custom) of the JFileChooser.")
    public void setDialogType(int dialogType)

    Sets the type of this dialog. Use `OPEN_DIALOG` when you
    want to bring up a file chooser that the user can use to open a file.
    Likewise, use `SAVE_DIALOG` for letting the user choose
    a file for saving.
    Use `CUSTOM_DIALOG` when you want to use the file
    chooser in a context other than "Open" or "Save".
    For instance, you might want to bring up a file chooser that allows
    the user to choose a file to execute. Note that you normally would not
    need to set the `JFileChooser` to use
    `CUSTOM_DIALOG`
    since a call to `setApproveButtonText` does this for you.
    The default dialog type is `JFileChooser.OPEN_DIALOG`.

    Parameters:
    :   `dialogType` - the type of dialog to be displayed:
        - JFileChooser.OPEN\_DIALOG- JFileChooser.SAVE\_DIALOG- JFileChooser.CUSTOM\_DIALOG

    Throws:
    :   `IllegalArgumentException` - if `dialogType` is
        not legal

    See Also:
    :   - [`getDialogType()`](#getDialogType())
        - [`setApproveButtonText(java.lang.String)`](#setApproveButtonText(java.lang.String))
  + ### setDialogTitle

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The title of the JFileChooser dialog window.")
    public void setDialogTitle([String](../../../java.base/java/lang/String.md "class in java.lang") dialogTitle)

    Sets the string that goes in the `JFileChooser` window's
    title bar.

    Parameters:
    :   `dialogTitle` - the new `String` for the title bar

    See Also:
    :   - [`getDialogTitle()`](#getDialogTitle())
  + ### getDialogTitle

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getDialogTitle()

    Gets the string that goes in the `JFileChooser`'s titlebar.

    Returns:
    :   the string from the `JFileChooser` window's title bar

    See Also:
    :   - [`setDialogTitle(java.lang.String)`](#setDialogTitle(java.lang.String))
  + ### setApproveButtonToolTipText

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The tooltip text for the ApproveButton.")
    public void setApproveButtonToolTipText([String](../../../java.base/java/lang/String.md "class in java.lang") toolTipText)

    Sets the tooltip text used in the `ApproveButton`.
    If `null`, the UI object will determine the button's text.

    Parameters:
    :   `toolTipText` - the tooltip text for the approve button

    See Also:
    :   - [`setApproveButtonText(java.lang.String)`](#setApproveButtonText(java.lang.String))
        - [`setDialogType(int)`](#setDialogType(int))
        - [`showDialog(java.awt.Component, java.lang.String)`](#showDialog(java.awt.Component,java.lang.String))
  + ### getApproveButtonToolTipText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getApproveButtonToolTipText()

    Returns the tooltip text used in the `ApproveButton`.
    If `null`, the UI object will determine the button's text.

    Returns:
    :   the tooltip text used for the approve button

    See Also:
    :   - [`setApproveButtonText(java.lang.String)`](#setApproveButtonText(java.lang.String))
        - [`setDialogType(int)`](#setDialogType(int))
        - [`showDialog(java.awt.Component, java.lang.String)`](#showDialog(java.awt.Component,java.lang.String))
  + ### getApproveButtonMnemonic

    public int getApproveButtonMnemonic()

    Returns the approve button's mnemonic.

    Returns:
    :   an integer value for the mnemonic key

    See Also:
    :   - [`setApproveButtonMnemonic(int)`](#setApproveButtonMnemonic(int))
  + ### setApproveButtonMnemonic

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The mnemonic key accelerator for the ApproveButton.")
    public void setApproveButtonMnemonic(int mnemonic)

    Sets the approve button's mnemonic using a numeric keycode.

    Parameters:
    :   `mnemonic` - an integer value for the mnemonic key

    See Also:
    :   - [`getApproveButtonMnemonic()`](#getApproveButtonMnemonic())
  + ### setApproveButtonMnemonic

    public void setApproveButtonMnemonic(char mnemonic)

    Sets the approve button's mnemonic using a character.

    Parameters:
    :   `mnemonic` - a character value for the mnemonic key

    See Also:
    :   - [`getApproveButtonMnemonic()`](#getApproveButtonMnemonic())
  + ### setApproveButtonText

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="The text that goes in the ApproveButton.")
    public void setApproveButtonText([String](../../../java.base/java/lang/String.md "class in java.lang") approveButtonText)

    Sets the text used in the `ApproveButton` in the
    `FileChooserUI`.

    Parameters:
    :   `approveButtonText` - the text used in the `ApproveButton`

    See Also:
    :   - [`getApproveButtonText()`](#getApproveButtonText())
        - [`setDialogType(int)`](#setDialogType(int))
        - [`showDialog(java.awt.Component, java.lang.String)`](#showDialog(java.awt.Component,java.lang.String))
  + ### getApproveButtonText

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getApproveButtonText()

    Returns the text used in the `ApproveButton` in the
    `FileChooserUI`.
    If `null`, the UI object will determine the button's text.
    Typically, this would be "Open" or "Save".

    Returns:
    :   the text used in the `ApproveButton`

    See Also:
    :   - [`setApproveButtonText(java.lang.String)`](#setApproveButtonText(java.lang.String))
        - [`setDialogType(int)`](#setDialogType(int))
        - [`showDialog(java.awt.Component, java.lang.String)`](#showDialog(java.awt.Component,java.lang.String))
  + ### getChoosableFileFilters

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [FileFilter](filechooser/FileFilter.md "class in javax.swing.filechooser")[] getChoosableFileFilters()

    Gets the list of user choosable file filters.

    Returns:
    :   a `FileFilter` array containing all the choosable
        file filters

    See Also:
    :   - [`addChoosableFileFilter(javax.swing.filechooser.FileFilter)`](#addChoosableFileFilter(javax.swing.filechooser.FileFilter))
        - [`removeChoosableFileFilter(javax.swing.filechooser.FileFilter)`](#removeChoosableFileFilter(javax.swing.filechooser.FileFilter))
        - [`resetChoosableFileFilters()`](#resetChoosableFileFilters())
  + ### addChoosableFileFilter

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Adds a filter to the list of user choosable file filters.")
    public void addChoosableFileFilter([FileFilter](filechooser/FileFilter.md "class in javax.swing.filechooser") filter)

    Adds a filter to the list of user choosable file filters.
    For information on setting the file selection mode, see
    [`setFileSelectionMode`](#setFileSelectionMode(int)).

    Parameters:
    :   `filter` - the `FileFilter` to add to the choosable file
        filter list

    See Also:
    :   - [`getChoosableFileFilters()`](#getChoosableFileFilters())
        - [`removeChoosableFileFilter(javax.swing.filechooser.FileFilter)`](#removeChoosableFileFilter(javax.swing.filechooser.FileFilter))
        - [`resetChoosableFileFilters()`](#resetChoosableFileFilters())
        - [`setFileSelectionMode(int)`](#setFileSelectionMode(int))
  + ### removeChoosableFileFilter

    public boolean removeChoosableFileFilter([FileFilter](filechooser/FileFilter.md "class in javax.swing.filechooser") f)

    Removes a filter from the list of user choosable file filters. Returns
    true if the file filter was removed.

    Parameters:
    :   `f` - the file filter to be removed

    Returns:
    :   true if the file filter was removed, false otherwise

    See Also:
    :   - [`addChoosableFileFilter(javax.swing.filechooser.FileFilter)`](#addChoosableFileFilter(javax.swing.filechooser.FileFilter))
        - [`getChoosableFileFilters()`](#getChoosableFileFilters())
        - [`resetChoosableFileFilters()`](#resetChoosableFileFilters())
  + ### resetChoosableFileFilters

    public void resetChoosableFileFilters()

    Resets the choosable file filter list to its starting state. Normally,
    this removes all added file filters while leaving the
    `AcceptAll` file filter.

    See Also:
    :   - [`addChoosableFileFilter(javax.swing.filechooser.FileFilter)`](#addChoosableFileFilter(javax.swing.filechooser.FileFilter))
        - [`getChoosableFileFilters()`](#getChoosableFileFilters())
        - [`removeChoosableFileFilter(javax.swing.filechooser.FileFilter)`](#removeChoosableFileFilter(javax.swing.filechooser.FileFilter))
  + ### getAcceptAllFileFilter

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [FileFilter](filechooser/FileFilter.md "class in javax.swing.filechooser") getAcceptAllFileFilter()

    Returns the `AcceptAll` file filter.
    For example, on Microsoft Windows this would be All Files (\*.\*).

    Returns:
    :   the `AcceptAll` file filter
  + ### isAcceptAllFileFilterUsed

    public boolean isAcceptAllFileFilterUsed()

    Returns whether the `AcceptAll FileFilter` is used.

    Returns:
    :   true if the `AcceptAll FileFilter` is used

    Since:
    :   1.3

    See Also:
    :   - [`setAcceptAllFileFilterUsed(boolean)`](#setAcceptAllFileFilterUsed(boolean))
  + ### setAcceptAllFileFilterUsed

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets whether the AcceptAll FileFilter is used as an available choice in the choosable filter list.")
    public void setAcceptAllFileFilterUsed(boolean b)

    Determines whether the `AcceptAll FileFilter` is used
    as an available choice in the choosable filter list.
    If false, the `AcceptAll` file filter is removed from
    the list of available file filters.
    If true, the `AcceptAll` file filter will become the
    actively used file filter.

    Parameters:
    :   `b` - a `boolean` which determines whether the `AcceptAll`
        file filter is an available choice in the choosable filter list

    Since:
    :   1.3

    See Also:
    :   - [`isAcceptAllFileFilterUsed()`](#isAcceptAllFileFilterUsed())
        - [`getAcceptAllFileFilter()`](#getAcceptAllFileFilter())
        - [`setFileFilter(javax.swing.filechooser.FileFilter)`](#setFileFilter(javax.swing.filechooser.FileFilter))
  + ### getAccessory

    public [JComponent](JComponent.md "class in javax.swing") getAccessory()

    Returns the accessory component.

    Returns:
    :   this JFileChooser's accessory component, or null

    See Also:
    :   - [`setAccessory(javax.swing.JComponent)`](#setAccessory(javax.swing.JComponent))
  + ### setAccessory

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the accessory component on the JFileChooser.")
    public void setAccessory([JComponent](JComponent.md "class in javax.swing") newAccessory)

    Sets the accessory component. An accessory is often used to show a
    preview image of the selected file; however, it can be used for anything
    that the programmer wishes, such as extra custom file chooser controls.

    Note: if there was a previous accessory, you should unregister
    any listeners that the accessory might have registered with the
    file chooser.

    Parameters:
    :   `newAccessory` - the accessory component to be set
  + ### setFileSelectionMode

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [enumerationValues](../../java/beans/BeanProperty.md#enumerationValues())={"JFileChooser.FILES\_ONLY","JFileChooser.DIRECTORIES\_ONLY","JFileChooser.FILES\_AND\_DIRECTORIES"},
    [description](../../java/beans/BeanProperty.md#description())="Sets the types of files that the JFileChooser can choose.")
    public void setFileSelectionMode(int mode)

    Sets the `JFileChooser` to allow the user to just
    select files, just select
    directories, or select both files and directories. The default is
    `JFilesChooser.FILES_ONLY`.

    Parameters:
    :   `mode` - the type of files to be displayed:
        - JFileChooser.FILES\_ONLY- JFileChooser.DIRECTORIES\_ONLY- JFileChooser.FILES\_AND\_DIRECTORIES

    Throws:
    :   `IllegalArgumentException` - if `mode` is an
        illegal file selection mode

    See Also:
    :   - [`getFileSelectionMode()`](#getFileSelectionMode())
  + ### getFileSelectionMode

    public int getFileSelectionMode()

    Returns the current file-selection mode. The default is
    `JFilesChooser.FILES_ONLY`.

    Returns:
    :   the type of files to be displayed, one of the following:
        - JFileChooser.FILES\_ONLY- JFileChooser.DIRECTORIES\_ONLY- JFileChooser.FILES\_AND\_DIRECTORIES

    See Also:
    :   - [`setFileSelectionMode(int)`](#setFileSelectionMode(int))
  + ### isFileSelectionEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean isFileSelectionEnabled()

    Convenience call that determines if files are selectable based on the
    current file selection mode.

    Returns:
    :   true if files are selectable, false otherwise

    See Also:
    :   - [`setFileSelectionMode(int)`](#setFileSelectionMode(int))
        - [`getFileSelectionMode()`](#getFileSelectionMode())
  + ### isDirectorySelectionEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public boolean isDirectorySelectionEnabled()

    Convenience call that determines if directories are selectable based
    on the current file selection mode.

    Returns:
    :   true if directories are selectable, false otherwise

    See Also:
    :   - [`setFileSelectionMode(int)`](#setFileSelectionMode(int))
        - [`getFileSelectionMode()`](#getFileSelectionMode())
  + ### setMultiSelectionEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([description](../../java/beans/BeanProperty.md#description())="Sets multiple file selection mode.")
    public void setMultiSelectionEnabled(boolean b)

    Sets the file chooser to allow multiple file selections.

    Parameters:
    :   `b` - true if multiple files may be selected

    See Also:
    :   - [`isMultiSelectionEnabled()`](#isMultiSelectionEnabled())
  + ### isMultiSelectionEnabled

    public boolean isMultiSelectionEnabled()

    Returns true if multiple files can be selected.

    Returns:
    :   true if multiple files can be selected

    See Also:
    :   - [`setMultiSelectionEnabled(boolean)`](#setMultiSelectionEnabled(boolean))
  + ### isFileHidingEnabled

    public boolean isFileHidingEnabled()

    Returns true if hidden files are not shown in the file chooser;
    otherwise, returns false. The default value of this property may be
    derived from the underlying Operating System.

    Returns:
    :   the status of the file hiding property

    See Also:
    :   - [`setFileHidingEnabled(boolean)`](#setFileHidingEnabled(boolean))
  + ### setFileHidingEnabled

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets file hiding on or off.")
    public void setFileHidingEnabled(boolean b)

    Sets file hiding on or off. If true, hidden files are not shown
    in the file chooser. The job of determining which files are
    shown is done by the `FileView`.

    Parameters:
    :   `b` - the boolean value that determines whether file hiding is
        turned on

    See Also:
    :   - [`isFileHidingEnabled()`](#isFileHidingEnabled())
  + ### setFileFilter

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the File Filter used to filter out files of type.")
    public void setFileFilter([FileFilter](filechooser/FileFilter.md "class in javax.swing.filechooser") filter)

    Sets the current file filter. The file filter is used by the
    file chooser to filter out files from the user's view.

    Parameters:
    :   `filter` - the new current file filter to use

    See Also:
    :   - [`getFileFilter()`](#getFileFilter())
  + ### getFileFilter

    public [FileFilter](filechooser/FileFilter.md "class in javax.swing.filechooser") getFileFilter()

    Returns the currently selected file filter.

    Returns:
    :   the current file filter

    See Also:
    :   - [`setFileFilter(javax.swing.filechooser.FileFilter)`](#setFileFilter(javax.swing.filechooser.FileFilter))
        - [`addChoosableFileFilter(javax.swing.filechooser.FileFilter)`](#addChoosableFileFilter(javax.swing.filechooser.FileFilter))
  + ### setFileView

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([preferred](../../java/beans/BeanProperty.md#preferred())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the File View used to get file type information.")
    public void setFileView([FileView](filechooser/FileView.md "class in javax.swing.filechooser") fileView)

    Sets the file view to be used to retrieve UI information, such as
    the icon that represents a file or the type description of a file.

    Parameters:
    :   `fileView` - a `FileView` to be used to retrieve UI information

    See Also:
    :   - [`getFileView()`](#getFileView())
  + ### getFileView

    public [FileView](filechooser/FileView.md "class in javax.swing.filechooser") getFileView()

    Returns the current file view.

    Returns:
    :   the current file view

    See Also:
    :   - [`setFileView(javax.swing.filechooser.FileView)`](#setFileView(javax.swing.filechooser.FileView))
  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName([File](../../../java.base/java/io/File.md "class in java.io") f)

    Returns the filename.

    Parameters:
    :   `f` - the `File`

    Returns:
    :   the `String` containing the filename for
        `f`

    See Also:
    :   - [`FileView.getName(java.io.File)`](filechooser/FileView.md#getName(java.io.File))
  + ### getDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([File](../../../java.base/java/io/File.md "class in java.io") f)

    Returns the file description.

    Parameters:
    :   `f` - the `File`

    Returns:
    :   the `String` containing the file description for
        `f`

    See Also:
    :   - [`FileView.getDescription(java.io.File)`](filechooser/FileView.md#getDescription(java.io.File))
  + ### getTypeDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getTypeDescription([File](../../../java.base/java/io/File.md "class in java.io") f)

    Returns the file type.

    Parameters:
    :   `f` - the `File`

    Returns:
    :   the `String` containing the file type description for
        `f`

    See Also:
    :   - [`FileView.getTypeDescription(java.io.File)`](filechooser/FileView.md#getTypeDescription(java.io.File))
  + ### getIcon

    public [Icon](Icon.md "interface in javax.swing") getIcon([File](../../../java.base/java/io/File.md "class in java.io") f)

    Returns the icon for this file or type of file, depending
    on the system.

    Parameters:
    :   `f` - the `File`

    Returns:
    :   the `Icon` for this file, or type of file

    See Also:
    :   - [`FileView.getIcon(java.io.File)`](filechooser/FileView.md#getIcon(java.io.File))
  + ### isTraversable

    public boolean isTraversable([File](../../../java.base/java/io/File.md "class in java.io") f)

    Returns true if the file (directory) can be visited.
    Returns false if the directory cannot be traversed.

    Parameters:
    :   `f` - the `File`

    Returns:
    :   true if the file/directory can be traversed, otherwise false

    See Also:
    :   - [`FileView.isTraversable(java.io.File)`](filechooser/FileView.md#isTraversable(java.io.File))
  + ### accept

    public boolean accept([File](../../../java.base/java/io/File.md "class in java.io") f)

    Returns true if the file should be displayed.

    Parameters:
    :   `f` - the `File`

    Returns:
    :   true if the file should be displayed, otherwise false

    See Also:
    :   - [`FileFilter.accept(java.io.File)`](filechooser/FileFilter.md#accept(java.io.File))
  + ### setFileSystemView

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="Sets the FileSytemView used to get filesystem information.")
    public void setFileSystemView([FileSystemView](filechooser/FileSystemView.md "class in javax.swing.filechooser") fsv)

    Sets the file system view that the `JFileChooser` uses for
    accessing and creating file system resources, such as finding
    the floppy drive and getting a list of root drives.

    Parameters:
    :   `fsv` - the new `FileSystemView`

    See Also:
    :   - [`FileSystemView`](filechooser/FileSystemView.md "class in javax.swing.filechooser")
  + ### getFileSystemView

    public [FileSystemView](filechooser/FileSystemView.md "class in javax.swing.filechooser") getFileSystemView()

    Returns the file system view.

    Returns:
    :   the `FileSystemView` object

    See Also:
    :   - [`setFileSystemView(javax.swing.filechooser.FileSystemView)`](#setFileSystemView(javax.swing.filechooser.FileSystemView))
  + ### approveSelection

    public void approveSelection()

    Called by the UI when the user hits the Approve button
    (labeled "Open" or "Save", by default). This can also be
    called by the programmer.
    This method causes an action event to fire
    with the command string equal to
    `APPROVE_SELECTION`.

    See Also:
    :   - [`APPROVE_SELECTION`](#APPROVE_SELECTION)
  + ### cancelSelection

    public void cancelSelection()

    Called by the UI when the user chooses the Cancel button.
    This can also be called by the programmer.
    This method causes an action event to fire
    with the command string equal to
    `CANCEL_SELECTION`.

    See Also:
    :   - [`CANCEL_SELECTION`](#CANCEL_SELECTION)
  + ### addActionListener

    public void addActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Adds an `ActionListener` to the file chooser.

    Parameters:
    :   `l` - the listener to be added

    See Also:
    :   - [`approveSelection()`](#approveSelection())
        - [`cancelSelection()`](#cancelSelection())
  + ### removeActionListener

    public void removeActionListener([ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event") l)

    Removes an `ActionListener` from the file chooser.

    Parameters:
    :   `l` - the listener to be removed

    See Also:
    :   - [`addActionListener(java.awt.event.ActionListener)`](#addActionListener(java.awt.event.ActionListener))
  + ### getActionListeners

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [ActionListener](../../java/awt/event/ActionListener.md "interface in java.awt.event")[] getActionListeners()

    Returns an array of all the action listeners
    registered on this file chooser.

    Returns:
    :   all of this file chooser's `ActionListener`s
        or an empty
        array if no action listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addActionListener(java.awt.event.ActionListener)`](#addActionListener(java.awt.event.ActionListener))
        - [`removeActionListener(java.awt.event.ActionListener)`](#removeActionListener(java.awt.event.ActionListener))
  + ### fireActionPerformed

    protected void fireActionPerformed([String](../../../java.base/java/lang/String.md "class in java.lang") command)

    Notifies all listeners that have registered interest for
    notification on this event type. The event instance
    is lazily created using the `command` parameter.

    Parameters:
    :   `command` - a string that may specify a command associated with
        the event

    See Also:
    :   - [`EventListenerList`](event/EventListenerList.md "class in javax.swing.event")
  + ### updateUI

    public void updateUI()

    Resets the UI property to a value from the current look and feel.

    Overrides:
    :   `updateUI` in class `JComponent`

    See Also:
    :   - [`JComponent.updateUI()`](JComponent.md#updateUI())
  + ### getUIClassID

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false,
    [expert](../../java/beans/BeanProperty.md#expert())=true,
    [description](../../java/beans/BeanProperty.md#description())="A string that specifies the name of the L&F class.")
    public [String](../../../java.base/java/lang/String.md "class in java.lang") getUIClassID()

    Returns a string that specifies the name of the L&F class
    that renders this component.

    Overrides:
    :   `getUIClassID` in class `JComponent`

    Returns:
    :   the string "FileChooserUI"

    See Also:
    :   - [`JComponent.getUIClassID()`](JComponent.md#getUIClassID())
        - [`UIDefaults.getUI(javax.swing.JComponent)`](UIDefaults.md#getUI(javax.swing.JComponent))
  + ### getUI

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [FileChooserUI](plaf/FileChooserUI.md "class in javax.swing.plaf") getUI()

    Gets the UI object which implements the L&F for this component.

    Overrides:
    :   `getUI` in class `JComponent`

    Returns:
    :   the FileChooserUI object that implements the FileChooserUI L&F
  + ### paramString

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a string representation of this `JFileChooser`.
    This method
    is intended to be used only for debugging purposes, and the
    content and format of the returned string may vary between
    implementations. The returned string may be empty but may not
    be `null`.

    Overrides:
    :   `paramString` in class `JComponent`

    Returns:
    :   a string representation of this `JFileChooser`
  + ### getAccessibleContext

    [@BeanProperty](../../java/beans/BeanProperty.md "annotation interface in java.beans")([bound](../../java/beans/BeanProperty.md#bound())=false)
    public [AccessibleContext](../accessibility/AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Gets the AccessibleContext associated with this JFileChooser.
    For file choosers, the AccessibleContext takes the form of an
    AccessibleJFileChooser.
    A new AccessibleJFileChooser instance is created if necessary.

    Specified by:
    :   `getAccessibleContext` in interface `Accessible`

    Overrides:
    :   `getAccessibleContext` in class `Component`

    Returns:
    :   an AccessibleJFileChooser that serves as the
        AccessibleContext of this JFileChooser