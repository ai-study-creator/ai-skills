Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicListUI.ListSelectionHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicListUI.ListSelectionHandler

All Implemented Interfaces:
:   `EventListener`, `ListSelectionListener`

Enclosing class:
:   `BasicListUI`

---

public class BasicListUI.ListSelectionHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ListSelectionListener](../../event/ListSelectionListener.md "interface in javax.swing.event")

The ListSelectionListener that's added to the JLists selection
model at installUI time, and whenever the JList.selectionModel property
changes. When the selection changes we repaint the affected rows.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`BasicListUI.createListSelectionListener()`](BasicListUI.md#createListSelectionListener())
    * [`BasicListUI.getCellBounds(javax.swing.JList<?>, int, int)`](BasicListUI.md#getCellBounds(javax.swing.JList,int,int))
    * [`BasicListUI.installUI(javax.swing.JComponent)`](BasicListUI.md#installUI(javax.swing.JComponent))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ListSelectionHandler()`

  Constructs a `ListSelectionHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `valueChanged(ListSelectionEvent e)`

  Called whenever the value of the selection changes.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ListSelectionHandler

    public ListSelectionHandler()

    Constructs a `ListSelectionHandler`.
* ## Method Details

  + ### valueChanged

    public void valueChanged([ListSelectionEvent](../../event/ListSelectionEvent.md "class in javax.swing.event") e)

    Description copied from interface: `ListSelectionListener`

    Called whenever the value of the selection changes.

    Specified by:
    :   `valueChanged` in interface `ListSelectionListener`

    Parameters:
    :   `e` - the event that characterizes the change.