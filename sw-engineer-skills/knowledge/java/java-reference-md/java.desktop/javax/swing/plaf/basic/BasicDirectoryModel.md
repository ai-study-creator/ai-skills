Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicDirectoryModel

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractListModel](../../AbstractListModel.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>

javax.swing.plaf.basic.BasicDirectoryModel

All Implemented Interfaces:
:   `PropertyChangeListener`, `Serializable`, `EventListener`, `ListModel<Object>`

---

public class BasicDirectoryModel
extends [AbstractListModel](../../AbstractListModel.md "class in javax.swing")<[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")>
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Basic implementation of a file list.

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractListModel](../../AbstractListModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicDirectoryModel(JFileChooser filechooser)`

  Constructs a new instance of `BasicDirectoryModel`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addPropertyChangeListener(PropertyChangeListener listener)`

  Adds a PropertyChangeListener to the listener list.

  `boolean`

  `contains(Object o)`

  Returns `true` if an element `o` is in file cache,
  otherwise, returns `false`.

  `void`

  `fireContentsChanged()`

  Invoked when a content is changed.

  `protected void`

  `firePropertyChange(String propertyName,
  Object oldValue,
  Object newValue)`

  Support for reporting bound property changes for boolean properties.

  `Vector<File>`

  `getDirectories()`

  Returns a list of directories.

  `Object`

  `getElementAt(int index)`

  Returns the value at the specified index.

  `Vector<File>`

  `getFiles()`

  Returns a list of files.

  `PropertyChangeListener[]`

  `getPropertyChangeListeners()`

  Returns an array of all the property change listeners
  registered on this component.

  `int`

  `getSize()`

  Returns the length of the list.

  `int`

  `indexOf(Object o)`

  Returns an index of element `o` in file cache.

  `void`

  `intervalAdded(ListDataEvent e)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Obsolete method, not used anymore.

  `void`

  `intervalRemoved(ListDataEvent e)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Obsolete method, not used anymore.

  `void`

  `invalidateFileCache()`

  This method is used to interrupt file loading thread.

  `protected boolean`

  `lt(File a,
  File b)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Obsolete method, not used anymore.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  `void`

  `removePropertyChangeListener(PropertyChangeListener listener)`

  Removes a PropertyChangeListener from the listener list.

  `boolean`

  `renameFile(File oldFile,
  File newFile)`

  Renames a file in the underlying file system.

  `protected void`

  `sort(Vector<? extends File> v)`

  Sorts a list of files.

  `void`

  `validateFileCache()`

  Validates content of file cache.

  ### Methods inherited from class javax.swing.[AbstractListModel](../../AbstractListModel.md "class in javax.swing")

  `addListDataListener, fireContentsChanged, fireIntervalAdded, fireIntervalRemoved, getListDataListeners, getListeners, removeListDataListener`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicDirectoryModel

    public BasicDirectoryModel([JFileChooser](../../JFileChooser.md "class in javax.swing") filechooser)

    Constructs a new instance of `BasicDirectoryModel`.

    Parameters:
    :   `filechooser` - an instance of {JFileChooser}
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.
  + ### invalidateFileCache

    public void invalidateFileCache()

    This method is used to interrupt file loading thread.
  + ### getDirectories

    public [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[File](../../../../../java.base/java/io/File.md "class in java.io")> getDirectories()

    Returns a list of directories.

    Returns:
    :   a list of directories
  + ### getFiles

    public [Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<[File](../../../../../java.base/java/io/File.md "class in java.io")> getFiles()

    Returns a list of files.

    Returns:
    :   a list of files
  + ### validateFileCache

    public void validateFileCache()

    Validates content of file cache.
  + ### renameFile

    public boolean renameFile([File](../../../../../java.base/java/io/File.md "class in java.io") oldFile,
    [File](../../../../../java.base/java/io/File.md "class in java.io") newFile)

    Renames a file in the underlying file system.

    Parameters:
    :   `oldFile` - a `File` object representing
        the existing file
    :   `newFile` - a `File` object representing
        the desired new file name

    Returns:
    :   `true` if rename succeeded,
        otherwise `false`

    Since:
    :   1.4
  + ### fireContentsChanged

    public void fireContentsChanged()

    Invoked when a content is changed.
  + ### getSize

    public int getSize()

    Description copied from interface: `ListModel`

    Returns the length of the list.

    Specified by:
    :   `getSize` in interface `ListModel<Object>`

    Returns:
    :   the length of the list
  + ### contains

    public boolean contains([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Returns `true` if an element `o` is in file cache,
    otherwise, returns `false`.

    Parameters:
    :   `o` - an element

    Returns:
    :   `true` if an element `o` is in file cache
  + ### indexOf

    public int indexOf([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") o)

    Returns an index of element `o` in file cache.

    Parameters:
    :   `o` - an element

    Returns:
    :   an index of element `o` in file cache
  + ### getElementAt

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getElementAt(int index)

    Description copied from interface: `ListModel`

    Returns the value at the specified index.

    Specified by:
    :   `getElementAt` in interface `ListModel<Object>`

    Parameters:
    :   `index` - the requested index

    Returns:
    :   the value at `index`
  + ### intervalAdded

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="17",
    [forRemoval](../../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    public void intervalAdded([ListDataEvent](../../event/ListDataEvent.md "class in javax.swing.event") e)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Obsolete method, not used anymore.

    Obsolete - not used. This method is a no-op.

    Parameters:
    :   `e` - list data event
  + ### intervalRemoved

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="17",
    [forRemoval](../../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    public void intervalRemoved([ListDataEvent](../../event/ListDataEvent.md "class in javax.swing.event") e)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Obsolete method, not used anymore.

    Obsolete - not used. This method is a no-op.

    Parameters:
    :   `e` - list data event
  + ### sort

    protected void sort([Vector](../../../../../java.base/java/util/Vector.md "class in java.util")<? extends [File](../../../../../java.base/java/io/File.md "class in java.io")> v)

    Sorts a list of files.

    Parameters:
    :   `v` - a list of files
  + ### lt

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="17",
    [forRemoval](../../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    protected boolean lt([File](../../../../../java.base/java/io/File.md "class in java.io") a,
    [File](../../../../../java.base/java/io/File.md "class in java.io") b)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Obsolete method, not used anymore.

    Obsolete - not used

    Parameters:
    :   `a` - a file
    :   `b` - another file

    Returns:
    :   a comparison of the file names
  + ### addPropertyChangeListener

    public void addPropertyChangeListener([PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Adds a PropertyChangeListener to the listener list. The listener is
    registered for all bound properties of this class.

    If `listener` is `null`,
    no exception is thrown and no action is performed.

    Parameters:
    :   `listener` - the property change listener to be added

    Since:
    :   1.6

    See Also:
    :   - [`removePropertyChangeListener(java.beans.PropertyChangeListener)`](#removePropertyChangeListener(java.beans.PropertyChangeListener))
        - [`getPropertyChangeListeners()`](#getPropertyChangeListeners())
  + ### removePropertyChangeListener

    public void removePropertyChangeListener([PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans") listener)

    Removes a PropertyChangeListener from the listener list.

    If listener is null, no exception is thrown and no action is performed.

    Parameters:
    :   `listener` - the PropertyChangeListener to be removed

    Since:
    :   1.6

    See Also:
    :   - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [`getPropertyChangeListeners()`](#getPropertyChangeListeners())
  + ### getPropertyChangeListeners

    public [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")[] getPropertyChangeListeners()

    Returns an array of all the property change listeners
    registered on this component.

    Returns:
    :   all of this component's `PropertyChangeListener`s
        or an empty array if no property change
        listeners are currently registered

    Since:
    :   1.6

    See Also:
    :   - [`addPropertyChangeListener(java.beans.PropertyChangeListener)`](#addPropertyChangeListener(java.beans.PropertyChangeListener))
        - [`removePropertyChangeListener(java.beans.PropertyChangeListener)`](#removePropertyChangeListener(java.beans.PropertyChangeListener))
        - [`PropertyChangeSupport.getPropertyChangeListeners()`](../../../../java/beans/PropertyChangeSupport.md#getPropertyChangeListeners())
  + ### firePropertyChange

    protected void firePropertyChange([String](../../../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Support for reporting bound property changes for boolean properties.
    This method can be called when a bound property has changed and it will
    send the appropriate PropertyChangeEvent to any registered
    PropertyChangeListeners.

    Parameters:
    :   `propertyName` - the property whose value has changed
    :   `oldValue` - the property's previous value
    :   `newValue` - the property's new value

    Since:
    :   1.6