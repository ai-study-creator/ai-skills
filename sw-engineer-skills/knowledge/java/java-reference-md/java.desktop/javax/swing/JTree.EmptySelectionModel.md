Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JTree.EmptySelectionModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.tree.DefaultTreeSelectionModel](tree/DefaultTreeSelectionModel.md "class in javax.swing.tree")

javax.swing.JTree.EmptySelectionModel

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `TreeSelectionModel`

Enclosing class:
:   `JTree`

---

protected static class JTree.EmptySelectionModel
extends [DefaultTreeSelectionModel](tree/DefaultTreeSelectionModel.md "class in javax.swing.tree")

`EmptySelectionModel` is a `TreeSelectionModel`
that does not allow anything to be selected.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static final JTree.EmptySelectionModel`

  `sharedInstance`

  The single instance of `EmptySelectionModel`.

  ### Fields inherited from class javax.swing.tree.[DefaultTreeSelectionModel](tree/DefaultTreeSelectionModel.md "class in javax.swing.tree")

  `changeSupport, leadIndex, leadPath, leadRow, listenerList, listSelectionModel, rowMapper, selection, SELECTION_MODE_PROPERTY, selectionMode`

  ### Fields inherited from interface javax.swing.tree.[TreeSelectionModel](tree/TreeSelectionModel.md "interface in javax.swing.tree")

  `CONTIGUOUS_TREE_SELECTION, DISCONTIGUOUS_TREE_SELECTION, SINGLE_TREE_SELECTION`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `EmptySelectionModel()`

  Constructs an `EmptySelectionModel`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `addSelectionPaths(TreePath[] paths)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `addTreeSelectionListener(TreeSelectionListener listener)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `removeSelectionPaths(TreePath[] paths)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `removeTreeSelectionListener(TreeSelectionListener listener)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `setRowMapper(RowMapper mapper)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `setSelectionMode(int mode)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `void`

  `setSelectionPaths(TreePath[] paths)`

  This is overridden to do nothing; `EmptySelectionModel`
  does not allow a selection.

  `static JTree.EmptySelectionModel`

  `sharedInstance()`

  Returns the single instance of `EmptySelectionModel`.

  ### Methods inherited from class javax.swing.tree.[DefaultTreeSelectionModel](tree/DefaultTreeSelectionModel.md "class in javax.swing.tree")

  `addSelectionPath, arePathsContiguous, canPathsBeAdded, canPathsBeRemoved, clearSelection, clone, fireValueChanged, getLeadSelectionPath, getLeadSelectionRow, getListeners, getMaxSelectionRow, getMinSelectionRow, getPropertyChangeListeners, getRowMapper, getSelectionCount, getSelectionMode, getSelectionPath, getSelectionPaths, getSelectionRows, getTreeSelectionListeners, insureRowContinuity, insureUniqueness, isPathSelected, isRowSelected, isSelectionEmpty, notifyPathChange, removeSelectionPath, resetRowSelection, setSelectionPath, toString, updateLeadIndex`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### sharedInstance

    protected static final [JTree.EmptySelectionModel](JTree.EmptySelectionModel.md "class in javax.swing") sharedInstance

    The single instance of `EmptySelectionModel`.
* ## Constructor Details

  + ### EmptySelectionModel

    protected EmptySelectionModel()

    Constructs an `EmptySelectionModel`.
* ## Method Details

  + ### sharedInstance

    public static [JTree.EmptySelectionModel](JTree.EmptySelectionModel.md "class in javax.swing") sharedInstance()

    Returns the single instance of `EmptySelectionModel`.

    Returns:
    :   single instance of `EmptySelectionModel`
  + ### setSelectionPaths

    public void setSelectionPaths([TreePath](tree/TreePath.md "class in javax.swing.tree")[] paths)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `setSelectionPaths` in interface `TreeSelectionModel`

    Overrides:
    :   `setSelectionPaths` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `paths` - the paths to select; this is ignored
  + ### addSelectionPaths

    public void addSelectionPaths([TreePath](tree/TreePath.md "class in javax.swing.tree")[] paths)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `addSelectionPaths` in interface `TreeSelectionModel`

    Overrides:
    :   `addSelectionPaths` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `paths` - the paths to add to the selection; this is ignored
  + ### removeSelectionPaths

    public void removeSelectionPaths([TreePath](tree/TreePath.md "class in javax.swing.tree")[] paths)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `removeSelectionPaths` in interface `TreeSelectionModel`

    Overrides:
    :   `removeSelectionPaths` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `paths` - the paths to remove; this is ignored
  + ### setSelectionMode

    public void setSelectionMode(int mode)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `setSelectionMode` in interface `TreeSelectionModel`

    Overrides:
    :   `setSelectionMode` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `mode` - the selection mode; this is ignored

    Since:
    :   1.7
  + ### setRowMapper

    public void setRowMapper([RowMapper](tree/RowMapper.md "interface in javax.swing.tree") mapper)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `setRowMapper` in interface `TreeSelectionModel`

    Overrides:
    :   `setRowMapper` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `mapper` - the `RowMapper` instance; this is ignored

    Since:
    :   1.7
  + ### addTreeSelectionListener

    public void addTreeSelectionListener([TreeSelectionListener](event/TreeSelectionListener.md "interface in javax.swing.event") listener)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `addTreeSelectionListener` in interface `TreeSelectionModel`

    Overrides:
    :   `addTreeSelectionListener` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `listener` - the listener to add; this is ignored

    Since:
    :   1.7
  + ### removeTreeSelectionListener

    public void removeTreeSelectionListener([TreeSelectionListener](event/TreeSelectionListener.md "interface in javax.swing.event") listener)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `removeTreeSelectionListener` in interface `TreeSelectionModel`

    Overrides:
    :   `removeTreeSelectionListener` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `listener` - the listener to remove; this is ignored

    Since:
    :   1.7
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `addPropertyChangeListener` in interface `TreeSelectionModel`

    Overrides:
    :   `addPropertyChangeListener` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `listener` - the listener to add; this is ignored

    Since:
    :   1.7
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    This is overridden to do nothing; `EmptySelectionModel`
    does not allow a selection.

    Specified by:
    :   `removePropertyChangeListener` in interface `TreeSelectionModel`

    Overrides:
    :   `removePropertyChangeListener` in class `DefaultTreeSelectionModel`

    Parameters:
    :   `listener` - the listener to remove; this is ignored

    Since:
    :   1.7