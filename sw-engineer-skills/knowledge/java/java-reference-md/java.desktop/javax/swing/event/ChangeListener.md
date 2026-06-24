Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface ChangeListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AbstractButton.ButtonChangeListener`, `BasicButtonListener`, `BasicMenuUI.ChangeHandler`, `BasicProgressBarUI.ChangeHandler`, `BasicScrollBarUI.ModelListener`, `BasicScrollPaneUI.HSBChangeListener`, `BasicScrollPaneUI.ViewportChangeHandler`, `BasicScrollPaneUI.VSBChangeListener`, `BasicSliderUI.ChangeHandler`, `BasicTabbedPaneUI.TabSelectionHandler`, `JCheckBoxMenuItem.AccessibleJCheckBoxMenuItem`, `JMenu.AccessibleJMenu`, `JMenuItem.AccessibleJMenuItem`, `JRadioButtonMenuItem.AccessibleJRadioButtonMenuItem`, `JScrollPane.AccessibleJScrollPane`, `JSlider.AccessibleJSlider`, `JSpinner.AccessibleJSpinner`, `JSpinner.DateEditor`, `JSpinner.DefaultEditor`, `JSpinner.ListEditor`, `JSpinner.NumberEditor`, `JTabbedPane.AccessibleJTabbedPane`, `JTabbedPane.ModelListener`, `ProgressMonitor.AccessibleProgressMonitor`

---

public interface ChangeListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Defines an object which listens for ChangeEvents.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `stateChanged(ChangeEvent e)`

  Invoked when the target of the listener has changed its state.

* ## Method Details

  + ### stateChanged

    void stateChanged([ChangeEvent](ChangeEvent.md "class in javax.swing.event") e)

    Invoked when the target of the listener has changed its state.

    Parameters:
    :   `e` - a ChangeEvent object