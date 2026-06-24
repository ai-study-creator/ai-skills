Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Interface PropertyChangeListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `BasicButtonListener`, `BasicColorChooserUI.PropertyHandler`, `BasicComboBoxUI.PropertyChangeHandler`, `BasicComboPopup.PropertyChangeHandler`, `BasicDirectoryModel`, `BasicInternalFrameTitlePane.PropertyChangeHandler`, `BasicInternalFrameUI.InternalFramePropertyChangeListener`, `BasicLabelUI`, `BasicListUI.PropertyChangeHandler`, `BasicOptionPaneUI.PropertyChangeHandler`, `BasicRootPaneUI`, `BasicScrollBarUI.PropertyChangeHandler`, `BasicScrollPaneUI.PropertyChangeHandler`, `BasicSliderUI.PropertyChangeHandler`, `BasicSplitPaneDivider`, `BasicSplitPaneUI.PropertyHandler`, `BasicTabbedPaneUI.PropertyChangeHandler`, `BasicToolBarUI.PropertyListener`, `BasicTreeUI.PropertyChangeHandler`, `BasicTreeUI.SelectionModelPropertyChangeHandler`, `BeanContextServicesSupport`, `BeanContextSupport`, `DefaultTableColumnModel`, `JLayer`, `JList.AccessibleJList`, `JPopupMenu.AccessibleJPopupMenu`, `JScrollPane.AccessibleJScrollPane`, `JSpinner.DateEditor`, `JSpinner.DefaultEditor`, `JSpinner.ListEditor`, `JSpinner.NumberEditor`, `JTable.AccessibleJTable`, `MetalComboBoxUI.MetalPropertyChangeListener`, `MetalFileChooserUI.FilterComboBoxModel`, `MetalLabelUI`, `MetalRootPaneUI`, `MetalSliderUI.MetalPropertyListener`, `MetalToolBarUI.MetalRolloverListener`, `ProgressMonitor.AccessibleProgressMonitor`, `PropertyChangeListenerProxy`, `SynthButtonUI`, `SynthCheckBoxMenuItemUI`, `SynthCheckBoxUI`, `SynthColorChooserUI`, `SynthComboBoxUI`, `SynthDesktopIconUI`, `SynthDesktopPaneUI`, `SynthInternalFrameUI`, `SynthLabelUI`, `SynthListUI`, `SynthMenuBarUI`, `SynthMenuItemUI`, `SynthMenuUI`, `SynthOptionPaneUI`, `SynthPanelUI`, `SynthPopupMenuUI`, `SynthProgressBarUI`, `SynthRadioButtonMenuItemUI`, `SynthRadioButtonUI`, `SynthRootPaneUI`, `SynthScrollBarUI`, `SynthScrollPaneUI`, `SynthSeparatorUI`, `SynthSliderUI`, `SynthSpinnerUI`, `SynthSplitPaneUI`, `SynthTabbedPaneUI`, `SynthTableHeaderUI`, `SynthTableUI`, `SynthToggleButtonUI`, `SynthToolBarUI`, `SynthToolTipUI`, `SynthTreeUI`, `SynthViewportUI`

---

public interface PropertyChangeListener
extends [EventListener](../../../java.base/java/util/EventListener.md "interface in java.util")

A "PropertyChange" event gets fired whenever a bean changes a "bound"
property. You can register a PropertyChangeListener with a source
bean so as to be notified of any bound property updates.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed.

* ## Method Details

  + ### propertyChange

    void propertyChange([PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") evt)

    This method gets called when a bound property is changed.

    Parameters:
    :   `evt` - A PropertyChangeEvent object describing the event source
        and the property that has changed.