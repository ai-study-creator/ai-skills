Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalFileChooserUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.FileChooserUI](../FileChooserUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicFileChooserUI](../basic/BasicFileChooserUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalFileChooserUI

---

public class MetalFileChooserUI
extends [BasicFileChooserUI](../basic/BasicFileChooserUI.md "class in javax.swing.plaf.basic")

Metal L&F implementation of a FileChooser.

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected class`

  `MetalFileChooserUI.DirectoryComboBoxAction`

  Acts when DirectoryComboBox has changed the selected item.

  `protected class`

  `MetalFileChooserUI.DirectoryComboBoxModel`

  Data model for a type-face selection combo-box.

  `protected class`

  `MetalFileChooserUI.FileRenderer`

  Deprecated.

  As of JDK version 9.

  `protected class`

  `MetalFileChooserUI.FilterComboBoxModel`

  Data model for a type-face selection combo-box.

  `class`

  `MetalFileChooserUI.FilterComboBoxRenderer`

  Render different type sizes and styles.

  `protected class`

  `MetalFileChooserUI.SingleClickListener`

  Deprecated.

  As of JDK version 9.

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicFileChooserUI](../basic/BasicFileChooserUI.md "class in javax.swing.plaf.basic")

  `BasicFileChooserUI.AcceptAllFileFilter, BasicFileChooserUI.ApproveSelectionAction, BasicFileChooserUI.BasicFileView, BasicFileChooserUI.CancelSelectionAction, BasicFileChooserUI.ChangeToParentDirectoryAction, BasicFileChooserUI.DoubleClickListener, BasicFileChooserUI.GoHomeAction, BasicFileChooserUI.NewFolderAction, BasicFileChooserUI.SelectionListener, BasicFileChooserUI.UpdateAction`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicFileChooserUI](../basic/BasicFileChooserUI.md "class in javax.swing.plaf.basic")

  `cancelButtonMnemonic, cancelButtonText, cancelButtonToolTipText, computerIcon, detailsViewIcon, directoryIcon, directoryOpenButtonMnemonic, directoryOpenButtonText, directoryOpenButtonToolTipText, fileIcon, floppyDriveIcon, hardDriveIcon, helpButtonMnemonic, helpButtonText, helpButtonToolTipText, homeFolderIcon, listViewIcon, newFolderIcon, openButtonMnemonic, openButtonText, openButtonToolTipText, saveButtonMnemonic, saveButtonText, saveButtonToolTipText, updateButtonMnemonic, updateButtonText, updateButtonToolTipText, upFolderIcon, viewMenuIcon`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalFileChooserUI(JFileChooser filechooser)`

  Constructs a new instance of `MetalFileChooserUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `addControlButtons()`

  Adds control buttons to bottom panel.

  `protected ActionMap`

  `createActionMap()`

  Constructs an instance of `ActionMap`.

  `protected JPanel`

  `createDetailsView(JFileChooser fc)`

  Constructs a details view.

  `protected MetalFileChooserUI.DirectoryComboBoxModel`

  `createDirectoryComboBoxModel(JFileChooser fc)`

  Constructs a new instance of `DataModel` for `DirectoryComboBox`.

  `protected MetalFileChooserUI.FilterComboBoxModel`

  `createFilterComboBoxModel()`

  Constructs a `DataModel` for types `ComboBox`.

  `protected MetalFileChooserUI.FilterComboBoxRenderer`

  `createFilterComboBoxRenderer()`

  Constructs a `Renderer` for types `ComboBox`.

  `protected JPanel`

  `createList(JFileChooser fc)`

  Constructs a details view.

  `ListSelectionListener`

  `createListSelectionListener(JFileChooser fc)`

  Creates a selection listener for the list of files and directories.

  `PropertyChangeListener`

  `createPropertyChangeListener(JFileChooser fc)`

  Creates the property change listener.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new instance of `MetalFileChooserUI`.

  `void`

  `ensureFileIsVisible(JFileChooser fc,
  File f)`

  Ensure the file in question is visible.

  `protected ActionMap`

  `getActionMap()`

  Returns an instance of `ActionMap`.

  `protected JButton`

  `getApproveButton(JFileChooser fc)`

  Returns the approve button.

  `protected JPanel`

  `getBottomPanel()`

  Returns the bottom panel.

  `protected JPanel`

  `getButtonPanel()`

  Returns the button panel.

  `String`

  `getDirectoryName()`

  Returns the directory name.

  `String`

  `getFileName()`

  Returns the file name.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Returns the maximum size of the `JFileChooser`.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the minimum size of the `JFileChooser`.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the preferred size of the specified
  `JFileChooser`.

  `void`

  `installComponents(JFileChooser fc)`

  Installs the components.

  `protected void`

  `installListeners(JFileChooser fc)`

  Installs the listeners.

  `protected void`

  `installStrings(JFileChooser fc)`

  Installs the strings.

  `void`

  `installUI(JComponent c)`

  Installs the UI.

  `protected void`

  `removeControlButtons()`

  Removes control buttons from bottom panel.

  `void`

  `rescanCurrentDirectory(JFileChooser fc)`

  Rescan the current directory.

  `void`

  `setDirectoryName(String dirname)`

  Sets the directory name.

  `protected void`

  `setDirectorySelected(boolean directorySelected)`

  Property to remember whether a directory is currently selected in the UI.

  `void`

  `setFileName(String filename)`

  Sets the file name.

  `void`

  `uninstallComponents(JFileChooser fc)`

  Uninstalls the components.

  `void`

  `uninstallUI(JComponent c)`

  Uninstalls the UI.

  `void`

  `valueChanged(ListSelectionEvent e)`

  Invokes when `ListSelectionEvent` occurs.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicFileChooserUI](../basic/BasicFileChooserUI.md "class in javax.swing.plaf.basic")

  `clearIconCache, createDoubleClickListener, createModel, getAcceptAllFileFilter, getAccessoryPanel, getApproveButtonMnemonic, getApproveButtonText, getApproveButtonToolTipText, getApproveSelectionAction, getCancelSelectionAction, getChangeToParentDirectoryAction, getDefaultButton, getDialogTitle, getDirectory, getFileChooser, getFileView, getGoHomeAction, getModel, getNewFolderAction, getUpdateAction, installDefaults, installIcons, isDirectorySelected, setDirectory, uninstallDefaults, uninstallIcons, uninstallListeners, uninstallStrings`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalFileChooserUI

    public MetalFileChooserUI([JFileChooser](../../JFileChooser.md "class in javax.swing") filechooser)

    Constructs a new instance of `MetalFileChooserUI`.

    Parameters:
    :   `filechooser` - a `JFileChooser`
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new instance of `MetalFileChooserUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `MetalFileChooserUI`
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicFileChooserUI`

    Installs the UI.

    Overrides:
    :   `installUI` in class `BasicFileChooserUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallComponents

    public void uninstallComponents([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Description copied from class: `BasicFileChooserUI`

    Uninstalls the components.

    Overrides:
    :   `uninstallComponents` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser
  + ### installComponents

    public void installComponents([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Description copied from class: `BasicFileChooserUI`

    Installs the components.

    Overrides:
    :   `installComponents` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser
  + ### getButtonPanel

    protected [JPanel](../../JPanel.md "class in javax.swing") getButtonPanel()

    Returns the button panel.

    Returns:
    :   the button panel
  + ### getBottomPanel

    protected [JPanel](../../JPanel.md "class in javax.swing") getBottomPanel()

    Returns the bottom panel.

    Returns:
    :   the bottom panel
  + ### installStrings

    protected void installStrings([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Description copied from class: `BasicFileChooserUI`

    Installs the strings.

    Overrides:
    :   `installStrings` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser
  + ### installListeners

    protected void installListeners([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Description copied from class: `BasicFileChooserUI`

    Installs the listeners.

    Overrides:
    :   `installListeners` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser
  + ### getActionMap

    protected [ActionMap](../../ActionMap.md "class in javax.swing") getActionMap()

    Returns an instance of `ActionMap`.

    Returns:
    :   an instance of `ActionMap`
  + ### createActionMap

    protected [ActionMap](../../ActionMap.md "class in javax.swing") createActionMap()

    Constructs an instance of `ActionMap`.

    Returns:
    :   an instance of `ActionMap`
  + ### createList

    protected [JPanel](../../JPanel.md "class in javax.swing") createList([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Constructs a details view.

    Parameters:
    :   `fc` - a `JFileChooser`

    Returns:
    :   the list
  + ### createDetailsView

    protected [JPanel](../../JPanel.md "class in javax.swing") createDetailsView([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Constructs a details view.

    Parameters:
    :   `fc` - a `JFileChooser`

    Returns:
    :   the details view
  + ### createListSelectionListener

    public [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event") createListSelectionListener([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Creates a selection listener for the list of files and directories.

    Overrides:
    :   `createListSelectionListener` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - a `JFileChooser`

    Returns:
    :   a `ListSelectionListener`
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicFileChooserUI`

    Uninstalls the UI.

    Overrides:
    :   `uninstallUI` in class `BasicFileChooserUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the preferred size of the specified
    `JFileChooser`.
    The preferred size is at least as large,
    in both height and width,
    as the preferred size recommended
    by the file chooser's layout manager.

    Overrides:
    :   `getPreferredSize` in class `ComponentUI`

    Parameters:
    :   `c` - a `JFileChooser`

    Returns:
    :   a `Dimension` specifying the preferred
        width and height of the file chooser

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the minimum size of the `JFileChooser`.

    Overrides:
    :   `getMinimumSize` in class `ComponentUI`

    Parameters:
    :   `c` - a `JFileChooser`

    Returns:
    :   a `Dimension` specifying the minimum
        width and height of the file chooser

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the maximum size of the `JFileChooser`.

    Overrides:
    :   `getMaximumSize` in class `ComponentUI`

    Parameters:
    :   `c` - a `JFileChooser`

    Returns:
    :   a `Dimension` specifying the maximum
        width and height of the file chooser

    See Also:
    :   - [`JComponent.getMaximumSize()`](../../JComponent.md#getMaximumSize())
        - [`LayoutManager2.maximumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager2.md#maximumLayoutSize(java.awt.Container))
  + ### createPropertyChangeListener

    public [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") createPropertyChangeListener([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Description copied from class: `BasicFileChooserUI`

    Creates the property change listener.

    Overrides:
    :   `createPropertyChangeListener` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser

    Returns:
    :   the property change listener
  + ### removeControlButtons

    protected void removeControlButtons()

    Removes control buttons from bottom panel.
  + ### addControlButtons

    protected void addControlButtons()

    Adds control buttons to bottom panel.
  + ### ensureFileIsVisible

    public void ensureFileIsVisible([JFileChooser](../../JFileChooser.md "class in javax.swing") fc,
    [File](../../../../../java.base/java/io/File.md "class in java.io") f)

    Description copied from class: `BasicFileChooserUI`

    Ensure the file in question is visible.

    Overrides:
    :   `ensureFileIsVisible` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser
    :   `f` - the file
  + ### rescanCurrentDirectory

    public void rescanCurrentDirectory([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Description copied from class: `BasicFileChooserUI`

    Rescan the current directory.

    Overrides:
    :   `rescanCurrentDirectory` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser
  + ### getFileName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getFileName()

    Description copied from class: `BasicFileChooserUI`

    Returns the file name.

    Overrides:
    :   `getFileName` in class `BasicFileChooserUI`

    Returns:
    :   the file name
  + ### setFileName

    public void setFileName([String](../../../../../java.base/java/lang/String.md "class in java.lang") filename)

    Description copied from class: `BasicFileChooserUI`

    Sets the file name.

    Overrides:
    :   `setFileName` in class `BasicFileChooserUI`

    Parameters:
    :   `filename` - the file name
  + ### setDirectorySelected

    protected void setDirectorySelected(boolean directorySelected)

    Property to remember whether a directory is currently selected in the UI.
    This is normally called by the UI on a selection event.

    Overrides:
    :   `setDirectorySelected` in class `BasicFileChooserUI`

    Parameters:
    :   `directorySelected` - if a directory is currently selected.

    Since:
    :   1.4
  + ### getDirectoryName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDirectoryName()

    Returns the directory name.

    Overrides:
    :   `getDirectoryName` in class `BasicFileChooserUI`

    Returns:
    :   the directory name
  + ### setDirectoryName

    public void setDirectoryName([String](../../../../../java.base/java/lang/String.md "class in java.lang") dirname)

    Sets the directory name.

    Overrides:
    :   `setDirectoryName` in class `BasicFileChooserUI`

    Parameters:
    :   `dirname` - the directory name
  + ### createDirectoryComboBoxModel

    protected [MetalFileChooserUI.DirectoryComboBoxModel](MetalFileChooserUI.DirectoryComboBoxModel.md "class in javax.swing.plaf.metal") createDirectoryComboBoxModel([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Constructs a new instance of `DataModel` for `DirectoryComboBox`.

    Parameters:
    :   `fc` - a `JFileChooser`

    Returns:
    :   a new instance of `DataModel` for `DirectoryComboBox`
  + ### createFilterComboBoxRenderer

    protected [MetalFileChooserUI.FilterComboBoxRenderer](MetalFileChooserUI.FilterComboBoxRenderer.md "class in javax.swing.plaf.metal") createFilterComboBoxRenderer()

    Constructs a `Renderer` for types `ComboBox`.

    Returns:
    :   a `Renderer` for types `ComboBox`
  + ### createFilterComboBoxModel

    protected [MetalFileChooserUI.FilterComboBoxModel](MetalFileChooserUI.FilterComboBoxModel.md "class in javax.swing.plaf.metal") createFilterComboBoxModel()

    Constructs a `DataModel` for types `ComboBox`.

    Returns:
    :   a `DataModel` for types `ComboBox`
  + ### valueChanged

    public void valueChanged([ListSelectionEvent](../../event/ListSelectionEvent.md "class in javax.swing.event") e)

    Invokes when `ListSelectionEvent` occurs.

    Parameters:
    :   `e` - an instance of `ListSelectionEvent`
  + ### getApproveButton

    protected [JButton](../../JButton.md "class in javax.swing") getApproveButton([JFileChooser](../../JFileChooser.md "class in javax.swing") fc)

    Description copied from class: `BasicFileChooserUI`

    Returns the approve button.

    Overrides:
    :   `getApproveButton` in class `BasicFileChooserUI`

    Parameters:
    :   `fc` - the file chooser

    Returns:
    :   the approve button