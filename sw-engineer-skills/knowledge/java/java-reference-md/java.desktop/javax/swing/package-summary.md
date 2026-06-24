Module [java.desktop](../../module-summary.md)

# Package javax.swing

---

package javax.swing

Provides a set of "lightweight" (all-Java language) components
that, to the maximum degree possible, work the same on all platforms. For a
programmer's guide to using these components, see
[Creating a GUI with JFC/Swing](https://docs.oracle.com/javase/tutorial/uiswing/index.html), a trail in
*The Java Tutorial*. For other resources, see
[Related Documentation](#related).

## Swing's Threading Policy

In general Swing is not thread safe. All Swing components and related
classes, unless otherwise documented, must be accessed on the event
dispatching thread.

Typical Swing applications do processing in response to an event generated
from a user gesture. For example, clicking on a `JButton` notifies all
`ActionListeners` added to the `JButton`. As all events generated
from a user gesture are dispatched on the event dispatching thread, most
developers are not impacted by the restriction.

Where the impact lies, however, is in constructing and showing a Swing
application. Calls to an application's `main` method, or methods in
`Applet`, are not invoked on the event dispatching thread. As such,
care must be taken to transfer control to the event dispatching thread when
constructing and showing an application or applet. The preferred way to
transfer control and begin working with Swing is to use `invokeLater`.
The `invokeLater` method schedules a `Runnable` to be processed
on the event dispatching thread. The following two examples work equally well
for transferring control and starting up a Swing application:

```
 import javax.swing.SwingUtilities;

 public class MyApp implements Runnable {
     public void run() {
         // Invoked on the event dispatching thread.
         // Construct and show GUI.
     }

     public static void main(String[] args) {
         SwingUtilities.invokeLater(new MyApp());
     }
 }
```

Or:

```
 import javax.swing.SwingUtilities;

 public class MyApp {
     MyApp(String[] args) {
         // Invoked on the event dispatching thread.
         // Do any initialization here.
     }

     public void show() {
         // Show the UI.
     }

     public static void main(final String[] args) {
         // Schedule a job for the event-dispatching thread:
         // creating and showing this application's GUI.
         SwingUtilities.invokeLater(new Runnable() {
             public void run() {
                 new MyApp(args).show();
             }
         });
     }
 }
```

This restriction also applies to models attached to Swing components. For
example, if a `TableModel` is attached to a `JTable`, the
`TableModel` should only be modified on the event dispatching thread.
If you modify the model on a separate thread you run the risk of exceptions
and possible display corruption.

Although it is generally safe to make updates to the UI immediately,
when executing on the event dispatch thread, there is an exception :
if a model listener tries to further change the UI before the UI has been
updated to reflect a pending change then the UI may render incorrectly.
This can happen if an application installed listener needs to update the UI
in response to an event which will cause a change in the model structure.
It is important to first allow component installed listeners to process this
change, since there is no guarantee of the order in which listeners may be
called.
The solution is for the application listener to make the change using
[`SwingUtilities.invokeLater(Runnable)`](SwingUtilities.md#invokeLater(java.lang.Runnable)) so that any changes
to UI rendering will be done post processing all the model listeners
installed by the component.

As all events are delivered on the event dispatching thread, care must be
taken in event processing. In particular, a long running task, such as
network io or computational intensive processing, executed on the event
dispatching thread blocks the event dispatching thread from dispatching any
other events. While the event dispatching thread is blocked the application
is completely unresponsive to user input. Refer to
[`SwingWorker`](SwingWorker.md "class in javax.swing") for the preferred way to do such processing
when working with Swing.

More information on this topic can be found in the
[Swing tutorial](https://docs.oracle.com/javase/tutorial/uiswing/),
in particular the section on
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html).

## Swing's Serialization policy

**Warning:**
Serialized objects of any Swing class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans has been added to the `java.beans` package.

## Related Documentation

For overviews, tutorials, examples, guides, and other documentation,
please see:

* [A Swing Architecture Overview](https://www.oracle.com/java/technologies/a-swing-architecture.html)
* [The Java Tutorial](https://docs.oracle.com/javase/tutorial/)
* [Java SE Training and Certification](https://www.oracle.com/java/technologies/javase/training-support.html)

* Related Packages

  Package

  Description

  [javax.swing.border](border/package-summary.md)

  Provides classes and interface for drawing specialized borders around a Swing
  component.

  [javax.swing.colorchooser](colorchooser/package-summary.md)

  Contains classes and interfaces used by the `JColorChooser` component.

  [javax.swing.event](event/package-summary.md)

  Provides for events fired by Swing components.

  [javax.swing.filechooser](filechooser/package-summary.md)

  Contains classes and interfaces used by the `JFileChooser` component.

  [javax.swing.plaf](plaf/package-summary.md)

  Provides one interface and many abstract classes that Swing uses to provide
  its pluggable look-and-feel capabilities.

  [javax.swing.table](table/package-summary.md)

  Provides classes and interfaces for dealing with `javax.swing.JTable`.

  [javax.swing.text](text/package-summary.md)

  Provides classes and interfaces that deal with editable and noneditable text
  components.

  [javax.swing.tree](tree/package-summary.md)

  Provides classes and interfaces for dealing with `javax.swing.JTree`.

  [javax.swing.undo](undo/package-summary.md)

  Allows developers to provide support for undo/redo in applications such as
  text editors.
* All Classes and InterfacesInterfacesClassesEnum ClassesException ClassesAnnotation Interfaces

  Class

  Description

  [AbstractAction](AbstractAction.md "class in javax.swing")

  This class provides default implementations for the JFC `Action`
  interface.

  [AbstractButton](AbstractButton.md "class in javax.swing")

  Defines common behaviors for buttons and menu items.

  [AbstractCellEditor](AbstractCellEditor.md "class in javax.swing")

  A base class for `CellEditors`, providing default
  implementations for the methods in the `CellEditor`
  interface except `getCellEditorValue()`.

  [AbstractListModel](AbstractListModel.md "class in javax.swing")<E>

  The abstract definition for the data model that provides
  a `List` with its contents.

  [AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

  This class provides the ChangeListener part of the
  SpinnerModel interface that should be suitable for most concrete SpinnerModel
  implementations.

  [Action](Action.md "interface in javax.swing")

  The `Action` interface provides a useful extension to the
  `ActionListener`
  interface in cases where the same functionality may be accessed by
  several controls.

  [ActionMap](ActionMap.md "class in javax.swing")

  `ActionMap` provides mappings from
  `Object`s
  (called *keys* or *`Action` names*)
  to `Action`s.

  [BorderFactory](BorderFactory.md "class in javax.swing")

  Factory class for vending standard `Border` objects.

  [BoundedRangeModel](BoundedRangeModel.md "interface in javax.swing")

  Defines the data model used by components like `Slider`s
  and `ProgressBar`s.

  [Box](Box.md "class in javax.swing")

  A lightweight container
  that uses a BoxLayout object as its layout manager.

  [Box.Filler](Box.Filler.md "class in javax.swing")

  An implementation of a lightweight component that participates in
  layout but has no view.

  [BoxLayout](BoxLayout.md "class in javax.swing")

  A layout manager that allows multiple components to be laid out either
  vertically or horizontally.

  [ButtonGroup](ButtonGroup.md "class in javax.swing")

  This class is used to create a multiple-exclusion scope for
  a set of buttons.

  [ButtonModel](ButtonModel.md "interface in javax.swing")

  State model for buttons.

  [CellEditor](CellEditor.md "interface in javax.swing")

  This interface defines the methods any general editor should be able
  to implement.

  [CellRendererPane](CellRendererPane.md "class in javax.swing")

  This class is inserted in between cell renderers and the components that
  use them.

  [ComboBoxEditor](ComboBoxEditor.md "interface in javax.swing")

  The editor component used for JComboBox components.

  [ComboBoxModel](ComboBoxModel.md "interface in javax.swing")<E>

  A data model for a combo box.

  [ComponentInputMap](ComponentInputMap.md "class in javax.swing")

  A `ComponentInputMap` is an `InputMap`
  associated with a particular `JComponent`.

  [DebugGraphics](DebugGraphics.md "class in javax.swing")

  Graphics subclass supporting graphics debugging.

  [DefaultBoundedRangeModel](DefaultBoundedRangeModel.md "class in javax.swing")

  A generic implementation of BoundedRangeModel.

  [DefaultButtonModel](DefaultButtonModel.md "class in javax.swing")

  The default implementation of a `Button` component's data model.

  [DefaultCellEditor](DefaultCellEditor.md "class in javax.swing")

  The default editor for table and tree cells.

  [DefaultComboBoxModel](DefaultComboBoxModel.md "class in javax.swing")<E>

  The default model for combo boxes.

  [DefaultDesktopManager](DefaultDesktopManager.md "class in javax.swing")

  This is an implementation of the `DesktopManager`.

  [DefaultFocusManager](DefaultFocusManager.md "class in javax.swing")

  This class has been obsoleted by the 1.4 focus APIs.

  [DefaultListCellRenderer](DefaultListCellRenderer.md "class in javax.swing")

  Renders an item in a list.

  [DefaultListCellRenderer.UIResource](DefaultListCellRenderer.UIResource.md "class in javax.swing")

  A subclass of DefaultListCellRenderer that implements UIResource.

  [DefaultListModel](DefaultListModel.md "class in javax.swing")<E>

  This class loosely implements the `java.util.Vector`
  API, in that it implements the 1.1.x version of
  `java.util.Vector`, has no collection class support,
  and notifies the `ListDataListener`s when changes occur.

  [DefaultListSelectionModel](DefaultListSelectionModel.md "class in javax.swing")

  Default data model for list selections.

  [DefaultRowSorter](DefaultRowSorter.md "class in javax.swing")<M,I>

  An implementation of `RowSorter` that provides sorting and
  filtering around a grid-based data model.

  [DefaultRowSorter.ModelWrapper](DefaultRowSorter.ModelWrapper.md "class in javax.swing")<M,I>

  `DefaultRowSorter.ModelWrapper` is responsible for providing
  the data that gets sorted by `DefaultRowSorter`.

  [DefaultSingleSelectionModel](DefaultSingleSelectionModel.md "class in javax.swing")

  A generic implementation of SingleSelectionModel.

  [DesktopManager](DesktopManager.md "interface in javax.swing")

  DesktopManager objects are owned by a JDesktopPane object.

  [DropMode](DropMode.md "enum class in javax.swing")

  Drop modes, used to determine the method by which a component
  tracks and indicates a drop location during drag and drop.

  [FocusManager](FocusManager.md "class in javax.swing")

  This class has been obsoleted by the 1.4 focus APIs.

  [GrayFilter](GrayFilter.md "class in javax.swing")

  An image filter that "disables" an image by turning
  it into a grayscale image, and brightening the pixels
  in the image.

  [GroupLayout](GroupLayout.md "class in javax.swing")

  `GroupLayout` is a `LayoutManager` that hierarchically
  groups components in order to position them in a `Container`.

  [GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing")

  Enumeration of the possible ways `ParallelGroup` can align
  its children.

  [Icon](Icon.md "interface in javax.swing")

  A small fixed size picture, typically used to decorate components.

  [ImageIcon](ImageIcon.md "class in javax.swing")

  An implementation of the Icon interface that paints Icons
  from Images.

  [InputMap](InputMap.md "class in javax.swing")

  `InputMap` provides a binding between an input event (currently only
  `KeyStroke`s are used) and an `Object`.

  [InputVerifier](InputVerifier.md "class in javax.swing")

  This class provides the validation mechanism for Swing components.

  [InternalFrameFocusTraversalPolicy](InternalFrameFocusTraversalPolicy.md "class in javax.swing")

  A FocusTraversalPolicy which can optionally provide an algorithm for
  determining a JInternalFrame's initial Component.

  [JApplet](JApplet.md "class in javax.swing")

  Deprecated, for removal: This API element is subject to removal in a future version.

  The Applet API is deprecated, no replacement.

  [JButton](JButton.md "class in javax.swing")

  An implementation of a "push" button.

  [JCheckBox](JCheckBox.md "class in javax.swing")

  An implementation of a check box -- an item that can be selected or
  deselected, and which displays its state to the user.

  [JCheckBoxMenuItem](JCheckBoxMenuItem.md "class in javax.swing")

  A menu item that can be selected or deselected.

  [JColorChooser](JColorChooser.md "class in javax.swing")

  `JColorChooser` provides a pane of controls designed to allow
  a user to manipulate and select a color.

  [JComboBox](JComboBox.md "class in javax.swing")<E>

  A component that combines a button or editable field and a drop-down list.

  [JComboBox.KeySelectionManager](JComboBox.KeySelectionManager.md "interface in javax.swing")

  The interface that defines a `KeySelectionManager`.

  [JComponent](JComponent.md "class in javax.swing")

  The base class for all Swing components except top-level containers.

  [JDesktopPane](JDesktopPane.md "class in javax.swing")

  A container used to create a multiple-document interface or a virtual desktop.

  [JDialog](JDialog.md "class in javax.swing")

  The main class for creating a dialog window.

  [JEditorPane](JEditorPane.md "class in javax.swing")

  A text component to edit various kinds of content.

  [JFileChooser](JFileChooser.md "class in javax.swing")

  `JFileChooser` provides a simple mechanism for the user to
  choose a file.

  [JFormattedTextField](JFormattedTextField.md "class in javax.swing")

  `JFormattedTextField` extends `JTextField` adding
  support for formatting arbitrary values, as well as retrieving a particular
  object once the user has edited the text.

  [JFormattedTextField.AbstractFormatter](JFormattedTextField.AbstractFormatter.md "class in javax.swing")

  Instances of `AbstractFormatter` are used by
  `JFormattedTextField` to handle the conversion both
  from an Object to a String, and back from a String to an Object.

  [JFormattedTextField.AbstractFormatterFactory](JFormattedTextField.AbstractFormatterFactory.md "class in javax.swing")

  Instances of `AbstractFormatterFactory` are used by
  `JFormattedTextField` to obtain instances of
  `AbstractFormatter` which in turn are used to format values.

  [JFrame](JFrame.md "class in javax.swing")

  An extended version of `java.awt.Frame` that adds support for
  the JFC/Swing component architecture.

  [JInternalFrame](JInternalFrame.md "class in javax.swing")

  A lightweight object that provides many of the features of
  a native frame, including dragging, closing, becoming an icon,
  resizing, title display, and support for a menu bar.

  [JInternalFrame.JDesktopIcon](JInternalFrame.JDesktopIcon.md "class in javax.swing")

  This component represents an iconified version of a
  `JInternalFrame`.

  [JLabel](JLabel.md "class in javax.swing")

  A display area for a short text string or an image,
  or both.

  [JLayer](JLayer.md "class in javax.swing")<V extends [Component](../../java/awt/Component.md "class in java.awt")>

  `JLayer` is a universal decorator for Swing components
  which enables you to implement various advanced painting effects as well as
  receive notifications of all `AWTEvent`s generated within its borders.

  [JLayeredPane](JLayeredPane.md "class in javax.swing")

  `JLayeredPane` adds depth to a JFC/Swing container,
  allowing components to overlap each other when needed.

  [JList](JList.md "class in javax.swing")<E>

  A component that displays a list of objects and allows the user to select
  one or more items.

  [JList.DropLocation](JList.DropLocation.md "class in javax.swing")

  A subclass of `TransferHandler.DropLocation` representing
  a drop location for a `JList`.

  [JMenu](JMenu.md "class in javax.swing")

  An implementation of a menu -- a popup window containing
  `JMenuItem`s that
  is displayed when the user selects an item on the `JMenuBar`.

  [JMenuBar](JMenuBar.md "class in javax.swing")

  An implementation of a menu bar.

  [JMenuItem](JMenuItem.md "class in javax.swing")

  An implementation of an item in a menu.

  [JOptionPane](JOptionPane.md "class in javax.swing")

  `JOptionPane` makes it easy to pop up a standard dialog box that
  prompts users for a value or informs them of something.

  [JPanel](JPanel.md "class in javax.swing")

  `JPanel` is a generic lightweight container.

  [JPasswordField](JPasswordField.md "class in javax.swing")

  `JPasswordField` is a lightweight component that allows
  the editing of a single line of text where the view indicates
  something was typed, but does not show the original characters.

  [JPopupMenu](JPopupMenu.md "class in javax.swing")

  An implementation of a popup menu -- a small window that pops up
  and displays a series of choices.

  [JPopupMenu.Separator](JPopupMenu.Separator.md "class in javax.swing")

  A popup menu-specific separator.

  [JProgressBar](JProgressBar.md "class in javax.swing")

  A component that visually displays the progress of some task.

  [JRadioButton](JRadioButton.md "class in javax.swing")

  An implementation of a radio button -- an item that can be selected or
  deselected, and which displays its state to the user.

  [JRadioButtonMenuItem](JRadioButtonMenuItem.md "class in javax.swing")

  An implementation of a radio button menu item.

  [JRootPane](JRootPane.md "class in javax.swing")

  A lightweight container used behind the scenes by
  `JFrame`, `JDialog`, `JWindow`,
  `JApplet`, and `JInternalFrame`.

  [JScrollBar](JScrollBar.md "class in javax.swing")

  An implementation of a scrollbar.

  [JScrollPane](JScrollPane.md "class in javax.swing")

  Provides a scrollable view of a lightweight component.

  [JSeparator](JSeparator.md "class in javax.swing")

  `JSeparator` provides a general purpose component for
  implementing divider lines - most commonly used as a divider
  between menu items that breaks them up into logical groupings.

  [JSlider](JSlider.md "class in javax.swing")

  A component that lets the user graphically select a value by sliding
  a knob within a bounded interval.

  [JSpinner](JSpinner.md "class in javax.swing")

  A single line input field that lets the user select a
  number or an object value from an ordered sequence.

  [JSpinner.DateEditor](JSpinner.DateEditor.md "class in javax.swing")

  An editor for a `JSpinner` whose model is a
  `SpinnerDateModel`.

  [JSpinner.DefaultEditor](JSpinner.DefaultEditor.md "class in javax.swing")

  A simple base class for more specialized editors
  that displays a read-only view of the model's current
  value with a `JFormattedTextField`.

  [JSpinner.ListEditor](JSpinner.ListEditor.md "class in javax.swing")

  An editor for a `JSpinner` whose model is a
  `SpinnerListModel`.

  [JSpinner.NumberEditor](JSpinner.NumberEditor.md "class in javax.swing")

  An editor for a `JSpinner` whose model is a
  `SpinnerNumberModel`.

  [JSplitPane](JSplitPane.md "class in javax.swing")

  `JSplitPane` is used to divide two (and only two)
  `Component`s.

  [JTabbedPane](JTabbedPane.md "class in javax.swing")

  A component that lets the user switch between a group of components by
  clicking on a tab with a given title and/or icon.

  [JTable](JTable.md "class in javax.swing")

  The `JTable` is used to display and edit regular two-dimensional tables
  of cells.

  [JTable.DropLocation](JTable.DropLocation.md "class in javax.swing")

  A subclass of `TransferHandler.DropLocation` representing
  a drop location for a `JTable`.

  [JTable.PrintMode](JTable.PrintMode.md "enum class in javax.swing")

  Printing modes, used in printing `JTable`s.

  [JTextArea](JTextArea.md "class in javax.swing")

  A `JTextArea` is a multi-line area that displays plain text.

  [JTextField](JTextField.md "class in javax.swing")

  `JTextField` is a lightweight component that allows the editing
  of a single line of text.

  [JTextPane](JTextPane.md "class in javax.swing")

  A text component that can be marked up with attributes that are
  represented graphically.

  [JToggleButton](JToggleButton.md "class in javax.swing")

  An implementation of a two-state button.

  [JToggleButton.ToggleButtonModel](JToggleButton.ToggleButtonModel.md "class in javax.swing")

  The ToggleButton model

  [JToolBar](JToolBar.md "class in javax.swing")

  `JToolBar` provides a component that is useful for
  displaying commonly used `Action`s or controls.

  [JToolBar.Separator](JToolBar.Separator.md "class in javax.swing")

  A toolbar-specific separator.

  [JToolTip](JToolTip.md "class in javax.swing")

  Used to display a "Tip" for a Component.

  [JTree](JTree.md "class in javax.swing")

  A control that displays a set of hierarchical data as an outline.

  [JTree.DropLocation](JTree.DropLocation.md "class in javax.swing")

  A subclass of `TransferHandler.DropLocation` representing
  a drop location for a `JTree`.

  [JTree.DynamicUtilTreeNode](JTree.DynamicUtilTreeNode.md "class in javax.swing")

  `DynamicUtilTreeNode` can wrap
  vectors/hashtables/arrays/strings and
  create the appropriate children tree nodes as necessary.

  [JTree.EmptySelectionModel](JTree.EmptySelectionModel.md "class in javax.swing")

  `EmptySelectionModel` is a `TreeSelectionModel`
  that does not allow anything to be selected.

  [JViewport](JViewport.md "class in javax.swing")

  The "viewport" or "porthole" through which you see the underlying
  information.

  [JWindow](JWindow.md "class in javax.swing")

  A `JWindow` is a container that can be displayed anywhere on the
  user's desktop.

  [KeyStroke](KeyStroke.md "class in javax.swing")

  A KeyStroke represents a key action on the keyboard, or equivalent input
  device.

  [LayoutFocusTraversalPolicy](LayoutFocusTraversalPolicy.md "class in javax.swing")

  A SortingFocusTraversalPolicy which sorts Components based on their size,
  position, and orientation.

  [LayoutStyle](LayoutStyle.md "class in javax.swing")

  `LayoutStyle` provides information about how to position
  components.

  [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing")

  `ComponentPlacement` is an enumeration of the
  possible ways two components can be placed relative to each
  other.

  [ListCellRenderer](ListCellRenderer.md "interface in javax.swing")<E>

  Identifies components that can be used as "rubber stamps" to paint
  the cells in a JList.

  [ListModel](ListModel.md "interface in javax.swing")<E>

  This interface defines the methods components like JList use
  to get the value of each cell in a list and the length of the list.

  [ListSelectionModel](ListSelectionModel.md "interface in javax.swing")

  This interface represents the current state of the
  selection for any of the components that display a
  list of values with stable indices.

  [LookAndFeel](LookAndFeel.md "class in javax.swing")

  `LookAndFeel`, as the name implies, encapsulates a look and
  feel.

  [MenuElement](MenuElement.md "interface in javax.swing")

  Any component that can be placed into a menu should implement this interface.

  [MenuSelectionManager](MenuSelectionManager.md "class in javax.swing")

  A MenuSelectionManager owns the selection in menu hierarchy.

  [MutableComboBoxModel](MutableComboBoxModel.md "interface in javax.swing")<E>

  A mutable version of `ComboBoxModel`.

  [OverlayLayout](OverlayLayout.md "class in javax.swing")

  A layout manager to arrange components over the top
  of each other.

  [Painter](Painter.md "interface in javax.swing")<T>

  A painting delegate.

  [Popup](Popup.md "class in javax.swing")

  Popups are used to display a `Component` to the user, typically
  on top of all the other `Component`s in a particular containment
  hierarchy.

  [PopupFactory](PopupFactory.md "class in javax.swing")

  `PopupFactory`, as the name implies, is used to obtain
  instances of `Popup`s.

  [ProgressMonitor](ProgressMonitor.md "class in javax.swing")

  A class to monitor the progress of some operation.

  [ProgressMonitorInputStream](ProgressMonitorInputStream.md "class in javax.swing")

  Monitors the progress of reading from some InputStream.

  [Renderer](Renderer.md "interface in javax.swing")

  Defines the requirements for an object responsible for
  "rendering" (displaying) a value.

  [RepaintManager](RepaintManager.md "class in javax.swing")

  This class manages repaint requests, allowing the number
  of repaints to be minimized, for example by collapsing multiple
  requests into a single repaint for members of a component tree.

  [RootPaneContainer](RootPaneContainer.md "interface in javax.swing")

  This interface is implemented by components that have a single
  JRootPane child: JDialog, JFrame, JWindow, JApplet, JInternalFrame.

  [RowFilter](RowFilter.md "class in javax.swing")<M,I>

  `RowFilter` is used to filter out entries from the
  model so that they are not shown in the view.

  [RowFilter.ComparisonType](RowFilter.ComparisonType.md "enum class in javax.swing")

  Enumeration of the possible comparison values supported by
  some of the default `RowFilter`s.

  [RowFilter.Entry](RowFilter.Entry.md "class in javax.swing")<M,I>

  An `Entry` object is passed to instances of
  `RowFilter`, allowing the filter to get the value of the
  entry's data, and thus to determine whether the entry should be shown.

  [RowSorter](RowSorter.md "class in javax.swing")<M>

  `RowSorter` provides the basis for sorting and filtering.

  [RowSorter.SortKey](RowSorter.SortKey.md "class in javax.swing")

  SortKey describes the sort order for a particular column.

  [Scrollable](Scrollable.md "interface in javax.swing")

  An interface that provides information to a scrolling container
  like JScrollPane.

  [ScrollPaneConstants](ScrollPaneConstants.md "interface in javax.swing")

  Constants used with the JScrollPane component.

  [ScrollPaneLayout](ScrollPaneLayout.md "class in javax.swing")

  The layout manager used by `JScrollPane`.

  [ScrollPaneLayout.UIResource](ScrollPaneLayout.UIResource.md "class in javax.swing")

  The UI resource version of `ScrollPaneLayout`.

  [SingleSelectionModel](SingleSelectionModel.md "interface in javax.swing")

  A model that supports at most one indexed selection.

  [SizeRequirements](SizeRequirements.md "class in javax.swing")

  For the convenience of layout managers,
  calculates information about the size and position of components.

  [SizeSequence](SizeSequence.md "class in javax.swing")

  A `SizeSequence` object
  efficiently maintains an ordered list
  of sizes and corresponding positions.

  [SortingFocusTraversalPolicy](SortingFocusTraversalPolicy.md "class in javax.swing")

  A FocusTraversalPolicy that determines traversal order by sorting the
  Components of a focus traversal cycle based on a given Comparator.

  [SortOrder](SortOrder.md "enum class in javax.swing")

  SortOrder is an enumeration of the possible sort orderings.

  [SpinnerDateModel](SpinnerDateModel.md "class in javax.swing")

  A `SpinnerModel` for sequences of `Date`s.

  [SpinnerListModel](SpinnerListModel.md "class in javax.swing")

  A simple implementation of `SpinnerModel` whose
  values are defined by an array or a `List`.

  [SpinnerModel](SpinnerModel.md "interface in javax.swing")

  A model for a potentially unbounded sequence of object values.

  [SpinnerNumberModel](SpinnerNumberModel.md "class in javax.swing")

  A `SpinnerModel` for sequences of numbers.

  [Spring](Spring.md "class in javax.swing")

  An instance of the `Spring` class holds three properties that
  characterize its behavior: the *minimum*, *preferred*, and
  *maximum* values.

  [SpringLayout](SpringLayout.md "class in javax.swing")

  A `SpringLayout` lays out the children of its associated container
  according to a set of constraints.

  [SpringLayout.Constraints](SpringLayout.Constraints.md "class in javax.swing")

  A `Constraints` object holds the
  constraints that govern the way a component's size and position
  change in a container controlled by a `SpringLayout`.

  [SwingConstants](SwingConstants.md "interface in javax.swing")

  A collection of constants generally used for positioning and orienting
  components on the screen.

  [SwingContainer](SwingContainer.md "annotation interface in javax.swing")

  An annotation used to specify some swing-related information
  for the automatically generated `BeanInfo` classes.

  [SwingUtilities](SwingUtilities.md "class in javax.swing")

  A collection of utility methods for Swing.

  [SwingWorker](SwingWorker.md "class in javax.swing")<T,V>

  An abstract class to perform lengthy GUI-interaction tasks in a
  background thread.

  [SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing")

  Values for the `state` bound property.

  [Timer](Timer.md "class in javax.swing")

  Fires one or more `ActionEvent`s at specified
  intervals.

  [ToolTipManager](ToolTipManager.md "class in javax.swing")

  Manages all the `ToolTips` in the system.

  [TransferHandler](TransferHandler.md "class in javax.swing")

  This class is used to handle the transfer of a `Transferable`
  to and from Swing components.

  [TransferHandler.DropLocation](TransferHandler.DropLocation.md "class in javax.swing")

  Represents a location where dropped data should be inserted.

  [TransferHandler.TransferSupport](TransferHandler.TransferSupport.md "class in javax.swing")

  This class encapsulates all relevant details of a clipboard
  or drag and drop transfer, and also allows for customizing
  aspects of the drag and drop experience.

  [UIClientPropertyKey](UIClientPropertyKey.md "interface in javax.swing")

  This interface is used only for tagging keys for client properties for
  `JComponent` set by UI which needs to be cleared on L&F
  change and serialization.

  [UIDefaults](UIDefaults.md "class in javax.swing")

  A table of defaults for Swing components.

  [UIDefaults.ActiveValue](UIDefaults.ActiveValue.md "interface in javax.swing")

  This class enables one to store an entry in the defaults
  table that's constructed each time it's looked up with one of
  the `getXXX(key)` methods.

  [UIDefaults.LazyInputMap](UIDefaults.LazyInputMap.md "class in javax.swing")

  `LazyInputMap` will create a `InputMap`
  in its `createValue`
  method.

  [UIDefaults.LazyValue](UIDefaults.LazyValue.md "interface in javax.swing")

  This class enables one to store an entry in the defaults
  table that isn't constructed until the first time it's
  looked up with one of the `getXXX(key)` methods.

  [UIDefaults.ProxyLazyValue](UIDefaults.ProxyLazyValue.md "class in javax.swing")

  This class provides an implementation of `LazyValue`
  which can be
  used to delay loading of the Class for the instance to be created.

  [UIManager](UIManager.md "class in javax.swing")

  `UIManager` manages the current look and feel, the set of
  available look and feels, `PropertyChangeListeners` that
  are notified when the look and feel changes, look and feel defaults, and
  convenience methods for obtaining various default values.

  [UIManager.LookAndFeelInfo](UIManager.LookAndFeelInfo.md "class in javax.swing")

  Provides a little information about an installed
  `LookAndFeel` for the sake of configuring a menu or
  for initial application set up.

  [UnsupportedLookAndFeelException](UnsupportedLookAndFeelException.md "class in javax.swing")

  An exception that indicates the requested look & feel
  management classes are not present on the user's system.

  [ViewportLayout](ViewportLayout.md "class in javax.swing")

  The default layout manager for `JViewport`.

  [WindowConstants](WindowConstants.md "interface in javax.swing")

  Constants used to control the window-closing operation.