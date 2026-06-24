Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class TreeSelectionEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.swing.event.TreeSelectionEvent

All Implemented Interfaces:
:   `Serializable`

---

public class TreeSelectionEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

An event that characterizes a change in the current
selection. The change is based on any number of paths.
TreeSelectionListeners will generally query the source of
the event for the new selected status of each potentially
changed row.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`TreeSelectionListener`](TreeSelectionListener.md "interface in javax.swing.event")
    * [`TreeSelectionModel`](../tree/TreeSelectionModel.md "interface in javax.swing.tree")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean[]`

  `areNew`

  For each path identifies if that path is in fact new.

  `protected TreePath`

  `newLeadSelectionPath`

  leadSelectionPath after the paths changed, may be null.

  `protected TreePath`

  `oldLeadSelectionPath`

  leadSelectionPath before the paths changed, may be null.

  `protected TreePath[]`

  `paths`

  Paths this event represents.

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TreeSelectionEvent(Object source,
  TreePath[] paths,
  boolean[] areNew,
  TreePath oldLeadSelectionPath,
  TreePath newLeadSelectionPath)`

  Represents a change in the selection of a `TreeSelectionModel`.

  `TreeSelectionEvent(Object source,
  TreePath path,
  boolean isNew,
  TreePath oldLeadSelectionPath,
  TreePath newLeadSelectionPath)`

  Represents a change in the selection of a `TreeSelectionModel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `cloneWithSource(Object newSource)`

  Returns a copy of the receiver, but with the source being newSource.

  `TreePath`

  `getNewLeadSelectionPath()`

  Returns the current lead path.

  `TreePath`

  `getOldLeadSelectionPath()`

  Returns the path that was previously the lead path.

  `TreePath`

  `getPath()`

  Returns the first path element.

  `TreePath[]`

  `getPaths()`

  Returns the paths that have been added or removed from the selection.

  `boolean`

  `isAddedPath()`

  Returns whether the path identified by `getPath` was
  added to the selection.

  `boolean`

  `isAddedPath(int index)`

  Returns whether the path at `getPaths()[index]` was added
  to the selection.

  `boolean`

  `isAddedPath(TreePath path)`

  Returns whether the specified path was added to the selection.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### paths

    protected [TreePath](../tree/TreePath.md "class in javax.swing.tree")[] paths

    Paths this event represents.
  + ### areNew

    protected boolean[] areNew

    For each path identifies if that path is in fact new.
  + ### oldLeadSelectionPath

    protected [TreePath](../tree/TreePath.md "class in javax.swing.tree") oldLeadSelectionPath

    leadSelectionPath before the paths changed, may be null.
  + ### newLeadSelectionPath

    protected [TreePath](../tree/TreePath.md "class in javax.swing.tree") newLeadSelectionPath

    leadSelectionPath after the paths changed, may be null.
* ## Constructor Details

  + ### TreeSelectionEvent

    public TreeSelectionEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree")[] paths,
    boolean[] areNew,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") oldLeadSelectionPath,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") newLeadSelectionPath)

    Represents a change in the selection of a `TreeSelectionModel`.
    `paths` identifies the paths that have been either added or
    removed from the selection.

    Parameters:
    :   `source` - source of event
    :   `paths` - the paths that have changed in the selection
    :   `areNew` - a `boolean` array indicating whether the paths in
        `paths` are new to the selection
    :   `oldLeadSelectionPath` - the previous lead selection path
    :   `newLeadSelectionPath` - the new lead selection path
  + ### TreeSelectionEvent

    public TreeSelectionEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") path,
    boolean isNew,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") oldLeadSelectionPath,
    [TreePath](../tree/TreePath.md "class in javax.swing.tree") newLeadSelectionPath)

    Represents a change in the selection of a `TreeSelectionModel`.
    `path` identifies the path that has been either added or
    removed from the selection.

    Parameters:
    :   `source` - source of event
    :   `path` - the path that has changed in the selection
    :   `isNew` - whether or not the path is new to the selection, false
        means path was removed from the selection.
    :   `oldLeadSelectionPath` - the previous lead selection path
    :   `newLeadSelectionPath` - the new lead selection path
* ## Method Details

  + ### getPaths

    public [TreePath](../tree/TreePath.md "class in javax.swing.tree")[] getPaths()

    Returns the paths that have been added or removed from the selection.

    Returns:
    :   copy of the array of `TreePath` obects for this event.
  + ### getPath

    public [TreePath](../tree/TreePath.md "class in javax.swing.tree") getPath()

    Returns the first path element.

    Returns:
    :   the first `TreePath` element represented by this event
  + ### isAddedPath

    public boolean isAddedPath()

    Returns whether the path identified by `getPath` was
    added to the selection. A return value of `true`
    indicates the path identified by `getPath` was added to
    the selection. A return value of `false` indicates `getPath` was selected, but is no longer selected.

    Returns:
    :   `true` if `getPath` was added to the selection,
        `false` otherwise
  + ### isAddedPath

    public boolean isAddedPath([TreePath](../tree/TreePath.md "class in javax.swing.tree") path)

    Returns whether the specified path was added to the selection.
    A return value of `true` indicates the path identified by
    `path` was added to the selection. A return value of
    `false` indicates `path` is no longer selected. This method
    is only valid for the paths returned from `getPaths()`; invoking
    with a path not included in `getPaths()` throws an
    `IllegalArgumentException`.

    Parameters:
    :   `path` - the path to test

    Returns:
    :   `true` if `path` was added to the selection,
        `false` otherwise

    Throws:
    :   `IllegalArgumentException` - if `path` is not contained
        in `getPaths`

    See Also:
    :   - [`getPaths()`](#getPaths())
  + ### isAddedPath

    public boolean isAddedPath(int index)

    Returns whether the path at `getPaths()[index]` was added
    to the selection. A return value of `true` indicates the
    path was added to the selection. A return value of `false`
    indicates the path is no longer selected.

    Parameters:
    :   `index` - the index of the path to test

    Returns:
    :   `true` if the path was added to the selection,
        `false` otherwise

    Throws:
    :   `IllegalArgumentException` - if index is outside the range of
        `getPaths`

    Since:
    :   1.3

    See Also:
    :   - [`getPaths()`](#getPaths())
  + ### getOldLeadSelectionPath

    public [TreePath](../tree/TreePath.md "class in javax.swing.tree") getOldLeadSelectionPath()

    Returns the path that was previously the lead path.

    Returns:
    :   a `TreePath` containing the old lead selection path
  + ### getNewLeadSelectionPath

    public [TreePath](../tree/TreePath.md "class in javax.swing.tree") getNewLeadSelectionPath()

    Returns the current lead path.

    Returns:
    :   a `TreePath` containing the new lead selection path
  + ### cloneWithSource

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") cloneWithSource([Object](../../../../java.base/java/lang/Object.md "class in java.lang") newSource)

    Returns a copy of the receiver, but with the source being newSource.

    Parameters:
    :   `newSource` - source of event

    Returns:
    :   an `Object` which is a copy of this event with the source
        being the `newSource` provided