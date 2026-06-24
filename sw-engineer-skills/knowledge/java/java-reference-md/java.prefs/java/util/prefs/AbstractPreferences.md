Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Class AbstractPreferences

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.prefs.Preferences](Preferences.md "class in java.util.prefs")

java.util.prefs.AbstractPreferences

---

public abstract class AbstractPreferences
extends [Preferences](Preferences.md "class in java.util.prefs")

This class provides a skeletal implementation of the [`Preferences`](Preferences.md "class in java.util.prefs")
class, greatly easing the task of implementing it.

**This class is for `Preferences` implementers only.
Normal users of the `Preferences` facility should have no need to
consult this documentation. The [`Preferences`](Preferences.md "class in java.util.prefs") documentation
should suffice.**

Implementors must override the nine abstract service-provider interface
(SPI) methods: [`getSpi(String)`](#getSpi(java.lang.String)), [`putSpi(String,String)`](#putSpi(java.lang.String,java.lang.String)),
[`removeSpi(String)`](#removeSpi(java.lang.String)), [`childSpi(String)`](#childSpi(java.lang.String)), [`removeNodeSpi()`](#removeNodeSpi()), [`keysSpi()`](#keysSpi()), [`childrenNamesSpi()`](#childrenNamesSpi()), [`syncSpi()`](#syncSpi()) and [`flushSpi()`](#flushSpi()). All of the concrete methods specify
precisely how they are implemented atop these SPI methods. The implementor
may, at his discretion, override one or more of the concrete methods if the
default implementation is unsatisfactory for any reason, such as
performance.

The SPI methods fall into three groups concerning exception
behavior. The `getSpi` method should never throw exceptions, but it
doesn't really matter, as any exception thrown by this method will be
intercepted by [`get(String,String)`](#get(java.lang.String,java.lang.String)), which will return the specified
default value to the caller. The `removeNodeSpi, keysSpi,
childrenNamesSpi, syncSpi` and `flushSpi` methods are specified
to throw [`BackingStoreException`](BackingStoreException.md "class in java.util.prefs"), and the implementation is required
to throw this checked exception if it is unable to perform the operation.
The exception propagates outward, causing the corresponding API method
to fail.

The remaining SPI methods [`putSpi(String,String)`](#putSpi(java.lang.String,java.lang.String)), [`removeSpi(String)`](#removeSpi(java.lang.String)) and [`childSpi(String)`](#childSpi(java.lang.String)) have more complicated
exception behavior. They are not specified to throw
`BackingStoreException`, as they can generally obey their contracts
even if the backing store is unavailable. This is true because they return
no information and their effects are not required to become permanent until
a subsequent call to [`Preferences.flush()`](Preferences.md#flush()) or
[`Preferences.sync()`](Preferences.md#sync()). Generally speaking, these SPI methods should not
throw exceptions. In some implementations, there may be circumstances
under which these calls cannot even enqueue the requested operation for
later processing. Even under these circumstances it is generally better to
simply ignore the invocation and return, rather than throwing an
exception. Under these circumstances, however, subsequently invoking
`flush()` or `sync` would not imply that all previous
operations had successfully been made permanent.

There is one circumstance under which `putSpi, removeSpi and
childSpi` *should* throw an exception: if the caller lacks
sufficient privileges on the underlying operating system to perform the
requested operation. This will, for instance, occur on most systems
if a non-privileged user attempts to modify system preferences.
(The required privileges will vary from implementation to
implementation. On some implementations, they are the right to modify the
contents of some directory in the file system; on others they are the right
to modify contents of some key in a registry.) Under any of these
circumstances, it would generally be undesirable to let the program
continue executing as if these operations would become permanent at a later
time. While implementations are not required to throw an exception under
these circumstances, they are encouraged to do so. A [`SecurityException`](../../../../java.base/java/lang/SecurityException.md "class in java.lang") would be appropriate.

Most of the SPI methods require the implementation to read or write
information at a preferences node. The implementor should beware of the
fact that another VM may have concurrently deleted this node from the
backing store. It is the implementation's responsibility to recreate the
node if it has been deleted.

Implementation note: In Sun's default `Preferences`
implementations, the user's identity is inherited from the underlying
operating system and does not change for the lifetime of the virtual
machine. It is recognized that server-side `Preferences`
implementations may have the user identity change from request to request,
implicitly passed to `Preferences` methods via the use of a
static [`ThreadLocal`](../../../../java.base/java/lang/ThreadLocal.md "class in java.lang") instance. Authors of such implementations are
*strongly* encouraged to determine the user at the time preferences
are accessed (for example by the [`get(String,String)`](#get(java.lang.String,java.lang.String)) or [`put(String,String)`](#put(java.lang.String,java.lang.String)) method) rather than permanently associating a user
with each `Preferences` instance. The latter behavior conflicts
with normal `Preferences` usage and would lead to great confusion.

Since:
:   1.4

See Also:
:   * [`Preferences`](Preferences.md "class in java.util.prefs")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final Object`

  `lock`

  An object whose monitor is used to lock this node.

  `protected boolean`

  `newNode`

  This field should be `true` if this node did not exist in the
  backing store prior to the creation of this object.

  ### Fields inherited from class java.util.prefs.[Preferences](Preferences.md "class in java.util.prefs")

  `MAX_KEY_LENGTH, MAX_NAME_LENGTH, MAX_VALUE_LENGTH`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractPreferences(AbstractPreferences parent,
  String name)`

  Creates a preference node with the specified parent and the specified
  name relative to its parent.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `absolutePath()`

  Implements the `absolutePath` method as per the specification in
  [`Preferences.absolutePath()`](Preferences.md#absolutePath()).

  `void`

  `addNodeChangeListener(NodeChangeListener ncl)`

  Registers the specified listener to receive *node change events*
  for this node.

  `void`

  `addPreferenceChangeListener(PreferenceChangeListener pcl)`

  Registers the specified listener to receive *preference change
  events* for this preference node.

  `protected final AbstractPreferences[]`

  `cachedChildren()`

  Returns all known unremoved children of this node.

  `String[]`

  `childrenNames()`

  Implements the `children` method as per the specification in
  [`Preferences.childrenNames()`](Preferences.md#childrenNames()).

  `protected abstract String[]`

  `childrenNamesSpi()`

  Returns the names of the children of this preference node.

  `protected abstract AbstractPreferences`

  `childSpi(String name)`

  Returns the named child of this preference node, creating it if it does
  not already exist.

  `void`

  `clear()`

  Implements the `clear` method as per the specification in
  [`Preferences.clear()`](Preferences.md#clear()).

  `void`

  `exportNode(OutputStream os)`

  Implements the `exportNode` method as per the specification in
  [`Preferences.exportNode(OutputStream)`](Preferences.md#exportNode(java.io.OutputStream)).

  `void`

  `exportSubtree(OutputStream os)`

  Implements the `exportSubtree` method as per the specification in
  [`Preferences.exportSubtree(OutputStream)`](Preferences.md#exportSubtree(java.io.OutputStream)).

  `void`

  `flush()`

  Implements the `flush` method as per the specification in
  [`Preferences.flush()`](Preferences.md#flush()).

  `protected abstract void`

  `flushSpi()`

  This method is invoked with this node locked.

  `String`

  `get(String key,
  String def)`

  Implements the `get` method as per the specification in
  [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String)).

  `boolean`

  `getBoolean(String key,
  boolean def)`

  Implements the `getBoolean` method as per the specification in
  [`Preferences.getBoolean(String,boolean)`](Preferences.md#getBoolean(java.lang.String,boolean)).

  `byte[]`

  `getByteArray(String key,
  byte[] def)`

  Implements the `getByteArray` method as per the specification in
  [`Preferences.getByteArray(String,byte[])`](Preferences.md#getByteArray(java.lang.String,byte%5B%5D)).

  `protected AbstractPreferences`

  `getChild(String nodeName)`

  Returns the named child if it exists, or `null` if it does not.

  `double`

  `getDouble(String key,
  double def)`

  Implements the `getDouble` method as per the specification in
  [`Preferences.getDouble(String,double)`](Preferences.md#getDouble(java.lang.String,double)).

  `float`

  `getFloat(String key,
  float def)`

  Implements the `getFloat` method as per the specification in
  [`Preferences.getFloat(String,float)`](Preferences.md#getFloat(java.lang.String,float)).

  `int`

  `getInt(String key,
  int def)`

  Implements the `getInt` method as per the specification in
  [`Preferences.getInt(String,int)`](Preferences.md#getInt(java.lang.String,int)).

  `long`

  `getLong(String key,
  long def)`

  Implements the `getLong` method as per the specification in
  [`Preferences.getLong(String,long)`](Preferences.md#getLong(java.lang.String,long)).

  `protected abstract String`

  `getSpi(String key)`

  Return the value associated with the specified key at this preference
  node, or `null` if there is no association for this key, or the
  association cannot be determined at this time.

  `protected boolean`

  `isRemoved()`

  Returns `true` iff this node (or an ancestor) has been
  removed with the [`removeNode()`](#removeNode()) method.

  `boolean`

  `isUserNode()`

  Implements the `isUserNode` method as per the specification in
  [`Preferences.isUserNode()`](Preferences.md#isUserNode()).

  `String[]`

  `keys()`

  Implements the `keys` method as per the specification in
  [`Preferences.keys()`](Preferences.md#keys()).

  `protected abstract String[]`

  `keysSpi()`

  Returns all of the keys that have an associated value in this
  preference node.

  `String`

  `name()`

  Implements the `name` method as per the specification in
  [`Preferences.name()`](Preferences.md#name()).

  `Preferences`

  `node(String path)`

  Implements the `node` method as per the specification in
  [`Preferences.node(String)`](Preferences.md#node(java.lang.String)).

  `boolean`

  `nodeExists(String path)`

  Implements the `nodeExists` method as per the specification in
  [`Preferences.nodeExists(String)`](Preferences.md#nodeExists(java.lang.String)).

  `Preferences`

  `parent()`

  Implements the `parent` method as per the specification in
  [`Preferences.parent()`](Preferences.md#parent()).

  `void`

  `put(String key,
  String value)`

  Implements the `put` method as per the specification in
  [`Preferences.put(String,String)`](Preferences.md#put(java.lang.String,java.lang.String)).

  `void`

  `putBoolean(String key,
  boolean value)`

  Implements the `putBoolean` method as per the specification in
  [`Preferences.putBoolean(String,boolean)`](Preferences.md#putBoolean(java.lang.String,boolean)).

  `void`

  `putByteArray(String key,
  byte[] value)`

  Implements the `putByteArray` method as per the specification in
  [`Preferences.putByteArray(String,byte[])`](Preferences.md#putByteArray(java.lang.String,byte%5B%5D)).

  `void`

  `putDouble(String key,
  double value)`

  Implements the `putDouble` method as per the specification in
  [`Preferences.putDouble(String,double)`](Preferences.md#putDouble(java.lang.String,double)).

  `void`

  `putFloat(String key,
  float value)`

  Implements the `putFloat` method as per the specification in
  [`Preferences.putFloat(String,float)`](Preferences.md#putFloat(java.lang.String,float)).

  `void`

  `putInt(String key,
  int value)`

  Implements the `putInt` method as per the specification in
  [`Preferences.putInt(String,int)`](Preferences.md#putInt(java.lang.String,int)).

  `void`

  `putLong(String key,
  long value)`

  Implements the `putLong` method as per the specification in
  [`Preferences.putLong(String,long)`](Preferences.md#putLong(java.lang.String,long)).

  `protected abstract void`

  `putSpi(String key,
  String value)`

  Put the given key-value association into this preference node.

  `void`

  `remove(String key)`

  Implements the `remove(String)` method as per the specification
  in [`Preferences.remove(String)`](Preferences.md#remove(java.lang.String)).

  `void`

  `removeNode()`

  Implements the `removeNode()` method as per the specification in
  [`Preferences.removeNode()`](Preferences.md#removeNode()).

  `void`

  `removeNodeChangeListener(NodeChangeListener ncl)`

  Removes the specified `NodeChangeListener`, so it no longer
  receives change events.

  `protected abstract void`

  `removeNodeSpi()`

  Removes this preference node, invalidating it and any preferences that
  it contains.

  `void`

  `removePreferenceChangeListener(PreferenceChangeListener pcl)`

  Removes the specified preference change listener, so it no longer
  receives preference change events.

  `protected abstract void`

  `removeSpi(String key)`

  Remove the association (if any) for the specified key at this
  preference node.

  `void`

  `sync()`

  Implements the `sync` method as per the specification in
  [`Preferences.sync()`](Preferences.md#sync()).

  `protected abstract void`

  `syncSpi()`

  This method is invoked with this node locked.

  `String`

  `toString()`

  Returns the absolute path name of this preferences node.

  ### Methods inherited from class java.util.prefs.[Preferences](Preferences.md "class in java.util.prefs")

  `importPreferences, systemNodeForPackage, systemRoot, userNodeForPackage, userRoot`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### newNode

    protected boolean newNode

    This field should be `true` if this node did not exist in the
    backing store prior to the creation of this object. The field
    is initialized to false, but may be set to true by a subclass
    constructor (and should not be modified thereafter). This field
    indicates whether a node change event should be fired when
    creation is complete.
  + ### lock

    protected final [Object](../../../../java.base/java/lang/Object.md "class in java.lang") lock

    An object whose monitor is used to lock this node. This object
    is used in preference to the node itself to reduce the likelihood of
    intentional or unintentional denial of service due to a locked node.
    To avoid deadlock, a node is *never* locked by a thread that
    holds a lock on a descendant of that node.
* ## Constructor Details

  + ### AbstractPreferences

    protected AbstractPreferences([AbstractPreferences](AbstractPreferences.md "class in java.util.prefs") parent,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a preference node with the specified parent and the specified
    name relative to its parent.

    Parameters:
    :   `parent` - the parent of this preference node, or null if this
        is the root.
    :   `name` - the name of this preference node, relative to its parent,
        or `""` if this is the root.

    Throws:
    :   `IllegalArgumentException` - if `name` contains a slash
        (`'/'`), or `parent` is `null` and
        name isn't `""`.
* ## Method Details

  + ### put

    public void put([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Implements the `put` method as per the specification in
    [`Preferences.put(String,String)`](Preferences.md#put(java.lang.String,java.lang.String)).

    This implementation checks that the key and value are legal,
    obtains this preference node's lock, checks that the node
    has not been removed, invokes [`putSpi(String,String)`](#putSpi(java.lang.String,java.lang.String)), and if
    there are any preference change listeners, enqueues a notification
    event for processing by the event dispatch thread.

    Specified by:
    :   `put` in class `Preferences`

    Parameters:
    :   `key` - key with which the specified value is to be associated.
    :   `value` - value to be associated with the specified key.

    Throws:
    :   `NullPointerException` - if key or value is `null`.
    :   `IllegalArgumentException` - if `key.length()` exceeds
        `MAX_KEY_LENGTH` or if `value.length` exceeds
        `MAX_VALUE_LENGTH`.
    :   `IllegalArgumentException` - if either key or value contain
        the null control character, code point U+0000.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
  + ### get

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") get([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") def)

    Implements the `get` method as per the specification in
    [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String)).

    This implementation first checks to see if `key` is
    `null` throwing a `NullPointerException` if this is
    the case. Then it obtains this preference node's lock,
    checks that the node has not been removed, invokes [`getSpi(String)`](#getSpi(java.lang.String)), and returns the result, unless the `getSpi`
    invocation returns `null` or throws an exception, in which case
    this invocation returns `def`.

    Specified by:
    :   `get` in class `Preferences`

    Parameters:
    :   `key` - key whose associated value is to be returned.
    :   `def` - the value to be returned in the event that this
        preference node has no value associated with `key`.

    Returns:
    :   the value associated with `key`, or `def`
        if no value is associated with `key`.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `NullPointerException` - if key is `null`. (A
        `null` default *is* permitted.)
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.
  + ### remove

    public void remove([String](../../../../java.base/java/lang/String.md "class in java.lang") key)

    Implements the `remove(String)` method as per the specification
    in [`Preferences.remove(String)`](Preferences.md#remove(java.lang.String)).

    This implementation obtains this preference node's lock,
    checks that the node has not been removed, invokes
    [`removeSpi(String)`](#removeSpi(java.lang.String)) and if there are any preference
    change listeners, enqueues a notification event for processing by the
    event dispatch thread.

    Specified by:
    :   `remove` in class `Preferences`

    Parameters:
    :   `key` - key whose mapping is to be removed from the preference node.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.
    :   `NullPointerException` - if `key` is `null`.
  + ### clear

    public void clear()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `clear` method as per the specification in
    [`Preferences.clear()`](Preferences.md#clear()).

    This implementation obtains this preference node's lock,
    invokes [`keys()`](#keys()) to obtain an array of keys, and
    iterates over the array invoking [`remove(String)`](#remove(java.lang.String)) on each key.

    Specified by:
    :   `clear` in class `Preferences`

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.removeNode()`](Preferences.md#removeNode())
  + ### putInt

    public void putInt([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    int value)

    Implements the `putInt` method as per the specification in
    [`Preferences.putInt(String,int)`](Preferences.md#putInt(java.lang.String,int)).

    This implementation translates `value` to a string with
    [`Integer.toString(int)`](../../../../java.base/java/lang/Integer.md#toString(int)) and invokes [`put(String,String)`](#put(java.lang.String,java.lang.String))
    on the result.

    Specified by:
    :   `putInt` in class `Preferences`

    Parameters:
    :   `key` - key with which the string form of value is to be associated.
    :   `value` - value whose string form is to be associated with key.

    Throws:
    :   `NullPointerException` - if key is `null`.
    :   `IllegalArgumentException` - if `key.length()` exceeds
        `MAX_KEY_LENGTH`.
    :   `IllegalArgumentException` - if key contains
        the null control character, code point U+0000.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.getInt(String,int)`](Preferences.md#getInt(java.lang.String,int))
  + ### getInt

    public int getInt([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    int def)

    Implements the `getInt` method as per the specification in
    [`Preferences.getInt(String,int)`](Preferences.md#getInt(java.lang.String,int)).

    This implementation invokes [`get(key,
    null)`](#get(java.lang.String,java.lang.String)). If the return value is non-null, the implementation
    attempts to translate it to an `int` with
    [`Integer.parseInt(String)`](../../../../java.base/java/lang/Integer.md#parseInt(java.lang.String)). If the attempt succeeds, the return
    value is returned by this method. Otherwise, `def` is returned.

    Specified by:
    :   `getInt` in class `Preferences`

    Parameters:
    :   `key` - key whose associated value is to be returned as an int.
    :   `def` - the value to be returned in the event that this
        preference node has no value associated with `key`
        or the associated value cannot be interpreted as an int.

    Returns:
    :   the int value represented by the string associated with
        `key` in this preference node, or `def` if the
        associated value does not exist or cannot be interpreted as
        an int.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `NullPointerException` - if `key` is `null`.
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.

    See Also:
    :   - [`Preferences.putInt(String,int)`](Preferences.md#putInt(java.lang.String,int))
        - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
  + ### putLong

    public void putLong([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    long value)

    Implements the `putLong` method as per the specification in
    [`Preferences.putLong(String,long)`](Preferences.md#putLong(java.lang.String,long)).

    This implementation translates `value` to a string with
    [`Long.toString(long)`](../../../../java.base/java/lang/Long.md#toString(long)) and invokes [`put(String,String)`](#put(java.lang.String,java.lang.String))
    on the result.

    Specified by:
    :   `putLong` in class `Preferences`

    Parameters:
    :   `key` - key with which the string form of value is to be associated.
    :   `value` - value whose string form is to be associated with key.

    Throws:
    :   `NullPointerException` - if key is `null`.
    :   `IllegalArgumentException` - if `key.length()` exceeds
        `MAX_KEY_LENGTH`.
    :   `IllegalArgumentException` - if key contains
        the null control character, code point U+0000.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.getLong(String,long)`](Preferences.md#getLong(java.lang.String,long))
  + ### getLong

    public long getLong([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    long def)

    Implements the `getLong` method as per the specification in
    [`Preferences.getLong(String,long)`](Preferences.md#getLong(java.lang.String,long)).

    This implementation invokes [`get(key,
    null)`](#get(java.lang.String,java.lang.String)). If the return value is non-null, the implementation
    attempts to translate it to a `long` with
    [`Long.parseLong(String)`](../../../../java.base/java/lang/Long.md#parseLong(java.lang.String)). If the attempt succeeds, the return
    value is returned by this method. Otherwise, `def` is returned.

    Specified by:
    :   `getLong` in class `Preferences`

    Parameters:
    :   `key` - key whose associated value is to be returned as a long.
    :   `def` - the value to be returned in the event that this
        preference node has no value associated with `key`
        or the associated value cannot be interpreted as a long.

    Returns:
    :   the long value represented by the string associated with
        `key` in this preference node, or `def` if the
        associated value does not exist or cannot be interpreted as
        a long.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `NullPointerException` - if `key` is `null`.
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.

    See Also:
    :   - [`Preferences.putLong(String,long)`](Preferences.md#putLong(java.lang.String,long))
        - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
  + ### putBoolean

    public void putBoolean([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    boolean value)

    Implements the `putBoolean` method as per the specification in
    [`Preferences.putBoolean(String,boolean)`](Preferences.md#putBoolean(java.lang.String,boolean)).

    This implementation translates `value` to a string with
    [`String.valueOf(boolean)`](../../../../java.base/java/lang/String.md#valueOf(boolean)) and invokes [`put(String,String)`](#put(java.lang.String,java.lang.String))
    on the result.

    Specified by:
    :   `putBoolean` in class `Preferences`

    Parameters:
    :   `key` - key with which the string form of value is to be associated.
    :   `value` - value whose string form is to be associated with key.

    Throws:
    :   `NullPointerException` - if key is `null`.
    :   `IllegalArgumentException` - if `key.length()` exceeds
        `MAX_KEY_LENGTH`.
    :   `IllegalArgumentException` - if key contains
        the null control character, code point U+0000.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.getBoolean(String,boolean)`](Preferences.md#getBoolean(java.lang.String,boolean))
        - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
  + ### getBoolean

    public boolean getBoolean([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    boolean def)

    Implements the `getBoolean` method as per the specification in
    [`Preferences.getBoolean(String,boolean)`](Preferences.md#getBoolean(java.lang.String,boolean)).

    This implementation invokes [`get(key,
    null)`](#get(java.lang.String,java.lang.String)). If the return value is non-null, it is compared with
    `"true"` using [`String.equalsIgnoreCase(String)`](../../../../java.base/java/lang/String.md#equalsIgnoreCase(java.lang.String)). If the
    comparison returns `true`, this invocation returns
    `true`. Otherwise, the original return value is compared with
    `"false"`, again using [`String.equalsIgnoreCase(String)`](../../../../java.base/java/lang/String.md#equalsIgnoreCase(java.lang.String)).
    If the comparison returns `true`, this invocation returns
    `false`. Otherwise, this invocation returns `def`.

    Specified by:
    :   `getBoolean` in class `Preferences`

    Parameters:
    :   `key` - key whose associated value is to be returned as a boolean.
    :   `def` - the value to be returned in the event that this
        preference node has no value associated with `key`
        or the associated value cannot be interpreted as a boolean.

    Returns:
    :   the boolean value represented by the string associated with
        `key` in this preference node, or `def` if the
        associated value does not exist or cannot be interpreted as
        a boolean.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `NullPointerException` - if `key` is `null`.
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.

    See Also:
    :   - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
        - [`Preferences.putBoolean(String,boolean)`](Preferences.md#putBoolean(java.lang.String,boolean))
  + ### putFloat

    public void putFloat([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    float value)

    Implements the `putFloat` method as per the specification in
    [`Preferences.putFloat(String,float)`](Preferences.md#putFloat(java.lang.String,float)).

    This implementation translates `value` to a string with
    [`Float.toString(float)`](../../../../java.base/java/lang/Float.md#toString(float)) and invokes [`put(String,String)`](#put(java.lang.String,java.lang.String))
    on the result.

    Specified by:
    :   `putFloat` in class `Preferences`

    Parameters:
    :   `key` - key with which the string form of value is to be associated.
    :   `value` - value whose string form is to be associated with key.

    Throws:
    :   `NullPointerException` - if key is `null`.
    :   `IllegalArgumentException` - if `key.length()` exceeds
        `MAX_KEY_LENGTH`.
    :   `IllegalArgumentException` - if key contains
        the null control character, code point U+0000.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.getFloat(String,float)`](Preferences.md#getFloat(java.lang.String,float))
  + ### getFloat

    public float getFloat([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    float def)

    Implements the `getFloat` method as per the specification in
    [`Preferences.getFloat(String,float)`](Preferences.md#getFloat(java.lang.String,float)).

    This implementation invokes [`get(key,
    null)`](#get(java.lang.String,java.lang.String)). If the return value is non-null, the implementation
    attempts to translate it to an `float` with
    [`Float.parseFloat(String)`](../../../../java.base/java/lang/Float.md#parseFloat(java.lang.String)). If the attempt succeeds, the return
    value is returned by this method. Otherwise, `def` is returned.

    Specified by:
    :   `getFloat` in class `Preferences`

    Parameters:
    :   `key` - key whose associated value is to be returned as a float.
    :   `def` - the value to be returned in the event that this
        preference node has no value associated with `key`
        or the associated value cannot be interpreted as a float.

    Returns:
    :   the float value represented by the string associated with
        `key` in this preference node, or `def` if the
        associated value does not exist or cannot be interpreted as
        a float.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `NullPointerException` - if `key` is `null`.
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.

    See Also:
    :   - [`Preferences.putFloat(String,float)`](Preferences.md#putFloat(java.lang.String,float))
        - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
  + ### putDouble

    public void putDouble([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    double value)

    Implements the `putDouble` method as per the specification in
    [`Preferences.putDouble(String,double)`](Preferences.md#putDouble(java.lang.String,double)).

    This implementation translates `value` to a string with
    [`Double.toString(double)`](../../../../java.base/java/lang/Double.md#toString(double)) and invokes [`put(String,String)`](#put(java.lang.String,java.lang.String))
    on the result.

    Specified by:
    :   `putDouble` in class `Preferences`

    Parameters:
    :   `key` - key with which the string form of value is to be associated.
    :   `value` - value whose string form is to be associated with key.

    Throws:
    :   `NullPointerException` - if key is `null`.
    :   `IllegalArgumentException` - if `key.length()` exceeds
        `MAX_KEY_LENGTH`.
    :   `IllegalArgumentException` - if key contains
        the null control character, code point U+0000.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.getDouble(String,double)`](Preferences.md#getDouble(java.lang.String,double))
  + ### getDouble

    public double getDouble([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    double def)

    Implements the `getDouble` method as per the specification in
    [`Preferences.getDouble(String,double)`](Preferences.md#getDouble(java.lang.String,double)).

    This implementation invokes [`get(key,
    null)`](#get(java.lang.String,java.lang.String)). If the return value is non-null, the implementation
    attempts to translate it to an `double` with
    [`Double.parseDouble(String)`](../../../../java.base/java/lang/Double.md#parseDouble(java.lang.String)). If the attempt succeeds, the return
    value is returned by this method. Otherwise, `def` is returned.

    Specified by:
    :   `getDouble` in class `Preferences`

    Parameters:
    :   `key` - key whose associated value is to be returned as a double.
    :   `def` - the value to be returned in the event that this
        preference node has no value associated with `key`
        or the associated value cannot be interpreted as a double.

    Returns:
    :   the double value represented by the string associated with
        `key` in this preference node, or `def` if the
        associated value does not exist or cannot be interpreted as
        a double.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `NullPointerException` - if `key` is `null`.
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.

    See Also:
    :   - [`Preferences.putDouble(String,double)`](Preferences.md#putDouble(java.lang.String,double))
        - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
  + ### putByteArray

    public void putByteArray([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    byte[] value)

    Implements the `putByteArray` method as per the specification in
    [`Preferences.putByteArray(String,byte[])`](Preferences.md#putByteArray(java.lang.String,byte%5B%5D)).

    Specified by:
    :   `putByteArray` in class `Preferences`

    Parameters:
    :   `key` - key with which the string form of value is to be associated.
    :   `value` - value whose string form is to be associated with key.

    Throws:
    :   `NullPointerException` - if key or value is `null`.
    :   `IllegalArgumentException` - if key.length() exceeds MAX\_KEY\_LENGTH
        or if value.length exceeds MAX\_VALUE\_LENGTH\*3/4.
    :   `IllegalArgumentException` - if key contains
        the null control character, code point U+0000.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.getByteArray(String,byte[])`](Preferences.md#getByteArray(java.lang.String,byte%5B%5D))
        - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
  + ### getByteArray

    public byte[] getByteArray([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    byte[] def)

    Implements the `getByteArray` method as per the specification in
    [`Preferences.getByteArray(String,byte[])`](Preferences.md#getByteArray(java.lang.String,byte%5B%5D)).

    Specified by:
    :   `getByteArray` in class `Preferences`

    Parameters:
    :   `key` - key whose associated value is to be returned as a byte array.
    :   `def` - the value to be returned in the event that this
        preference node has no value associated with `key`
        or the associated value cannot be interpreted as a byte array.

    Returns:
    :   the byte array value represented by the string associated with
        `key` in this preference node, or `def` if the
        associated value does not exist or cannot be interpreted as
        a byte array.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
    :   `NullPointerException` - if `key` is `null`. (A
        `null` value for `def` *is* permitted.)
    :   `IllegalArgumentException` - if key contains the null control
        character, code point U+0000.

    See Also:
    :   - [`Preferences.get(String,String)`](Preferences.md#get(java.lang.String,java.lang.String))
        - [`Preferences.putByteArray(String,byte[])`](Preferences.md#putByteArray(java.lang.String,byte%5B%5D))
  + ### keys

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] keys()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `keys` method as per the specification in
    [`Preferences.keys()`](Preferences.md#keys()).

    This implementation obtains this preference node's lock, checks that
    the node has not been removed and invokes [`keysSpi()`](#keysSpi()).

    Specified by:
    :   `keys` in class `Preferences`

    Returns:
    :   an array of the keys that have an associated value in this
        preference node.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
  + ### childrenNames

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] childrenNames()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `children` method as per the specification in
    [`Preferences.childrenNames()`](Preferences.md#childrenNames()).

    This implementation obtains this preference node's lock, checks that
    the node has not been removed, constructs a `TreeSet` initialized
    to the names of children already cached (the children in this node's
    "child-cache"), invokes [`childrenNamesSpi()`](#childrenNamesSpi()), and adds all of the
    returned child-names into the set. The elements of the tree set are
    dumped into a `String` array using the `toArray` method,
    and this array is returned.

    Specified by:
    :   `childrenNames` in class `Preferences`

    Returns:
    :   the names of the children of this preference node.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`cachedChildren()`](#cachedChildren())
  + ### cachedChildren

    protected final [AbstractPreferences](AbstractPreferences.md "class in java.util.prefs")[] cachedChildren()

    Returns all known unremoved children of this node.

    Returns:
    :   all known unremoved children of this node.
  + ### parent

    public [Preferences](Preferences.md "class in java.util.prefs") parent()

    Implements the `parent` method as per the specification in
    [`Preferences.parent()`](Preferences.md#parent()).

    This implementation obtains this preference node's lock, checks that
    the node has not been removed and returns the parent value that was
    passed to this node's constructor.

    Specified by:
    :   `parent` in class `Preferences`

    Returns:
    :   the parent of this preference node.

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
  + ### node

    public [Preferences](Preferences.md "class in java.util.prefs") node([String](../../../../java.base/java/lang/String.md "class in java.lang") path)

    Implements the `node` method as per the specification in
    [`Preferences.node(String)`](Preferences.md#node(java.lang.String)).

    This implementation obtains this preference node's lock and checks
    that the node has not been removed. If `path` is `""`,
    this node is returned; if `path` is `"/"`, this node's
    root is returned. If the first character in `path` is
    not `'/'`, the implementation breaks `path` into
    tokens and recursively traverses the path from this node to the
    named node, "consuming" a name and a slash from `path` at
    each step of the traversal. At each step, the current node is locked
    and the node's child-cache is checked for the named node. If it is
    not found, the name is checked to make sure its length does not
    exceed `MAX_NAME_LENGTH`. Then the [`childSpi(String)`](#childSpi(java.lang.String))
    method is invoked, and the result stored in this node's child-cache.
    If the newly created `Preferences` object's [`newNode`](#newNode)
    field is `true` and there are any node change listeners,
    a notification event is enqueued for processing by the event dispatch
    thread.

    When there are no more tokens, the last value found in the
    child-cache or returned by `childSpi` is returned by this
    method. If during the traversal, two `"/"` tokens occur
    consecutively, or the final token is `"/"` (rather than a name),
    an appropriate `IllegalArgumentException` is thrown.

    If the first character of `path` is `'/'`
    (indicating an absolute path name) this preference node's
    lock is dropped prior to breaking `path` into tokens, and
    this method recursively traverses the path starting from the root
    (rather than starting from this node). The traversal is otherwise
    identical to the one described for relative path names. Dropping
    the lock on this node prior to commencing the traversal at the root
    node is essential to avoid the possibility of deadlock, as per the
    [`locking invariant`](#lock).

    Specified by:
    :   `node` in class `Preferences`

    Parameters:
    :   `path` - the path name of the preference node to return.

    Returns:
    :   the specified preference node.

    Throws:
    :   `IllegalArgumentException` - if the path name is invalid (i.e.,
        it contains multiple consecutive slash characters, or ends
        with a slash character and is more than one character long).
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`Preferences.flush()`](Preferences.md#flush())
  + ### nodeExists

    public boolean nodeExists([String](../../../../java.base/java/lang/String.md "class in java.lang") path)
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `nodeExists` method as per the specification in
    [`Preferences.nodeExists(String)`](Preferences.md#nodeExists(java.lang.String)).

    This implementation is very similar to [`node(String)`](#node(java.lang.String)),
    except that [`getChild(String)`](#getChild(java.lang.String)) is used instead of [`childSpi(String)`](#childSpi(java.lang.String)).

    Specified by:
    :   `nodeExists` in class `Preferences`

    Parameters:
    :   `path` - the path name of the node whose existence is to be checked.

    Returns:
    :   true if the specified node exists.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
    :   `IllegalArgumentException` - if the path name is invalid (i.e.,
        it contains multiple consecutive slash characters, or ends
        with a slash character and is more than one character long).
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method and
        `pathname` is not the empty string (`""`).
  + ### removeNode

    public void removeNode()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `removeNode()` method as per the specification in
    [`Preferences.removeNode()`](Preferences.md#removeNode()).

    This implementation checks to see that this node is the root; if so,
    it throws an appropriate exception. Then, it locks this node's parent,
    and calls a recursive helper method that traverses the subtree rooted at
    this node. The recursive method locks the node on which it was called,
    checks that it has not already been removed, and then ensures that all
    of its children are cached: The [`childrenNamesSpi()`](#childrenNamesSpi()) method is
    invoked and each returned child name is checked for containment in the
    child-cache. If a child is not already cached, the [`childSpi(String)`](#childSpi(java.lang.String)) method is invoked to create a `Preferences`
    instance for it, and this instance is put into the child-cache. Then
    the helper method calls itself recursively on each node contained in its
    child-cache. Next, it invokes [`removeNodeSpi()`](#removeNodeSpi()), marks itself
    as removed, and removes itself from its parent's child-cache. Finally,
    if there are any node change listeners, it enqueues a notification
    event for processing by the event dispatch thread.

    Note that the helper method is always invoked with all ancestors up
    to the "closest non-removed ancestor" locked.

    Specified by:
    :   `removeNode` in class `Preferences`

    Throws:
    :   `IllegalStateException` - if this node (or an ancestor) has already
        been removed with the [`removeNode()`](#removeNode()) method.
    :   `UnsupportedOperationException` - if this method is invoked on
        the root node.
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.

    See Also:
    :   - [`Preferences.flush()`](Preferences.md#flush())
  + ### name

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") name()

    Implements the `name` method as per the specification in
    [`Preferences.name()`](Preferences.md#name()).

    This implementation merely returns the name that was
    passed to this node's constructor.

    Specified by:
    :   `name` in class `Preferences`

    Returns:
    :   this preference node's name, relative to its parent.
  + ### absolutePath

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") absolutePath()

    Implements the `absolutePath` method as per the specification in
    [`Preferences.absolutePath()`](Preferences.md#absolutePath()).

    This implementation merely returns the absolute path name that
    was computed at the time that this node was constructed (based on
    the name that was passed to this node's constructor, and the names
    that were passed to this node's ancestors' constructors).

    Specified by:
    :   `absolutePath` in class `Preferences`

    Returns:
    :   this preference node's absolute path name.
  + ### isUserNode

    public boolean isUserNode()

    Implements the `isUserNode` method as per the specification in
    [`Preferences.isUserNode()`](Preferences.md#isUserNode()).

    This implementation compares this node's root node (which is stored
    in a private field) with the value returned by
    [`Preferences.userRoot()`](Preferences.md#userRoot()). If the two object references are
    identical, this method returns true.

    Specified by:
    :   `isUserNode` in class `Preferences`

    Returns:
    :   `true` if this preference node is in the user
        preference tree, `false` if it's in the system
        preference tree.
  + ### addPreferenceChangeListener

    public void addPreferenceChangeListener([PreferenceChangeListener](PreferenceChangeListener.md "interface in java.util.prefs") pcl)

    Description copied from class: `Preferences`

    Registers the specified listener to receive *preference change
    events* for this preference node. A preference change event is
    generated when a preference is added to this node, removed from this
    node, or when the value associated with a preference is changed.
    (Preference change events are *not* generated by the [`Preferences.removeNode()`](Preferences.md#removeNode()) method, which generates a *node change event*.
    Preference change events *are* generated by the `clear`
    method.)

    Events are only guaranteed for changes made within the same JVM
    as the registered listener, though some implementations may generate
    events for changes made outside this JVM. Events may be generated
    before the changes have been made persistent. Events are not generated
    when preferences are modified in descendants of this node; a caller
    desiring such events must register with each descendant.

    Specified by:
    :   `addPreferenceChangeListener` in class `Preferences`

    Parameters:
    :   `pcl` - The preference change listener to add.

    See Also:
    :   - [`Preferences.removePreferenceChangeListener(PreferenceChangeListener)`](Preferences.md#removePreferenceChangeListener(java.util.prefs.PreferenceChangeListener))
        - [`Preferences.addNodeChangeListener(NodeChangeListener)`](Preferences.md#addNodeChangeListener(java.util.prefs.NodeChangeListener))
  + ### removePreferenceChangeListener

    public void removePreferenceChangeListener([PreferenceChangeListener](PreferenceChangeListener.md "interface in java.util.prefs") pcl)

    Description copied from class: `Preferences`

    Removes the specified preference change listener, so it no longer
    receives preference change events.

    Specified by:
    :   `removePreferenceChangeListener` in class `Preferences`

    Parameters:
    :   `pcl` - The preference change listener to remove.

    See Also:
    :   - [`Preferences.addPreferenceChangeListener(PreferenceChangeListener)`](Preferences.md#addPreferenceChangeListener(java.util.prefs.PreferenceChangeListener))
  + ### addNodeChangeListener

    public void addNodeChangeListener([NodeChangeListener](NodeChangeListener.md "interface in java.util.prefs") ncl)

    Description copied from class: `Preferences`

    Registers the specified listener to receive *node change events*
    for this node. A node change event is generated when a child node is
    added to or removed from this node. (A single [`Preferences.removeNode()`](Preferences.md#removeNode())
    invocation results in multiple *node change events*, one for every
    node in the subtree rooted at the removed node.)

    Events are only guaranteed for changes made within the same JVM
    as the registered listener, though some implementations may generate
    events for changes made outside this JVM. Events may be generated
    before the changes have become permanent. Events are not generated
    when indirect descendants of this node are added or removed; a
    caller desiring such events must register with each descendant.

    Few guarantees can be made regarding node creation. Because nodes
    are created implicitly upon access, it may not be feasible for an
    implementation to determine whether a child node existed in the backing
    store prior to access (for example, because the backing store is
    unreachable or cached information is out of date). Under these
    circumstances, implementations are neither required to generate node
    change events nor prohibited from doing so.

    Specified by:
    :   `addNodeChangeListener` in class `Preferences`

    Parameters:
    :   `ncl` - The `NodeChangeListener` to add.

    See Also:
    :   - [`Preferences.removeNodeChangeListener(NodeChangeListener)`](Preferences.md#removeNodeChangeListener(java.util.prefs.NodeChangeListener))
        - [`Preferences.addPreferenceChangeListener(PreferenceChangeListener)`](Preferences.md#addPreferenceChangeListener(java.util.prefs.PreferenceChangeListener))
  + ### removeNodeChangeListener

    public void removeNodeChangeListener([NodeChangeListener](NodeChangeListener.md "interface in java.util.prefs") ncl)

    Description copied from class: `Preferences`

    Removes the specified `NodeChangeListener`, so it no longer
    receives change events.

    Specified by:
    :   `removeNodeChangeListener` in class `Preferences`

    Parameters:
    :   `ncl` - The `NodeChangeListener` to remove.

    See Also:
    :   - [`Preferences.addNodeChangeListener(NodeChangeListener)`](Preferences.md#addNodeChangeListener(java.util.prefs.NodeChangeListener))
  + ### putSpi

    protected abstract void putSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Put the given key-value association into this preference node. It is
    guaranteed that `key` and `value` are non-null and of
    legal length. Also, it is guaranteed that this node has not been
    removed. (The implementor needn't check for any of these things.)

    This method is invoked with the lock on this node held.

    Parameters:
    :   `key` - the key
    :   `value` - the value
  + ### getSpi

    protected abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") getSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") key)

    Return the value associated with the specified key at this preference
    node, or `null` if there is no association for this key, or the
    association cannot be determined at this time. It is guaranteed that
    `key` is non-null. Also, it is guaranteed that this node has
    not been removed. (The implementor needn't check for either of these
    things.)

    Generally speaking, this method should not throw an exception
    under any circumstances. If, however, if it does throw an exception,
    the exception will be intercepted and treated as a `null`
    return value.

    This method is invoked with the lock on this node held.

    Parameters:
    :   `key` - the key

    Returns:
    :   the value associated with the specified key at this preference
        node, or `null` if there is no association for this
        key, or the association cannot be determined at this time.
  + ### removeSpi

    protected abstract void removeSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") key)

    Remove the association (if any) for the specified key at this
    preference node. It is guaranteed that `key` is non-null.
    Also, it is guaranteed that this node has not been removed.
    (The implementor needn't check for either of these things.)

    This method is invoked with the lock on this node held.

    Parameters:
    :   `key` - the key
  + ### removeNodeSpi

    protected abstract void removeNodeSpi()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Removes this preference node, invalidating it and any preferences that
    it contains. The named child will have no descendants at the time this
    invocation is made (i.e., the [`Preferences.removeNode()`](Preferences.md#removeNode()) method
    invokes this method repeatedly in a bottom-up fashion, removing each of
    a node's descendants before removing the node itself).

    This method is invoked with the lock held on this node and its
    parent (and all ancestors that are being removed as a
    result of a single invocation to [`Preferences.removeNode()`](Preferences.md#removeNode())).

    The removal of a node needn't become persistent until the
    `flush` method is invoked on this node (or an ancestor).

    If this node throws a `BackingStoreException`, the exception
    will propagate out beyond the enclosing [`removeNode()`](#removeNode())
    invocation.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
  + ### keysSpi

    protected abstract [String](../../../../java.base/java/lang/String.md "class in java.lang")[] keysSpi()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Returns all of the keys that have an associated value in this
    preference node. (The returned array will be of size zero if
    this node has no preferences.) It is guaranteed that this node has not
    been removed.

    This method is invoked with the lock on this node held.

    If this node throws a `BackingStoreException`, the exception
    will propagate out beyond the enclosing [`keys()`](#keys()) invocation.

    Returns:
    :   an array of the keys that have an associated value in this
        preference node.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
  + ### childrenNamesSpi

    protected abstract [String](../../../../java.base/java/lang/String.md "class in java.lang")[] childrenNamesSpi()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Returns the names of the children of this preference node. (The
    returned array will be of size zero if this node has no children.)
    This method need not return the names of any nodes already cached,
    but may do so without harm.

    This method is invoked with the lock on this node held.

    If this node throws a `BackingStoreException`, the exception
    will propagate out beyond the enclosing [`childrenNames()`](#childrenNames())
    invocation.

    Returns:
    :   an array containing the names of the children of this
        preference node.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
  + ### getChild

    protected [AbstractPreferences](AbstractPreferences.md "class in java.util.prefs") getChild([String](../../../../java.base/java/lang/String.md "class in java.lang") nodeName)
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Returns the named child if it exists, or `null` if it does not.
    It is guaranteed that `nodeName` is non-null, non-empty,
    does not contain the slash character ('/'), and is no longer than
    [`Preferences.MAX_NAME_LENGTH`](Preferences.md#MAX_NAME_LENGTH) characters. Also, it is guaranteed
    that this node has not been removed. (The implementor needn't check
    for any of these things if he chooses to override this method.)

    Finally, it is guaranteed that the named node has not been returned
    by a previous invocation of this method or [`childSpi(java.lang.String)`](#childSpi(java.lang.String)) after the
    last time that it was removed. In other words, a cached value will
    always be used in preference to invoking this method. (The implementor
    needn't maintain his own cache of previously returned children if he
    chooses to override this method.)

    This implementation obtains this preference node's lock, invokes
    [`childrenNames()`](#childrenNames()) to get an array of the names of this node's
    children, and iterates over the array comparing the name of each child
    with the specified node name. If a child node has the correct name,
    the [`childSpi(String)`](#childSpi(java.lang.String)) method is invoked and the resulting
    node is returned. If the iteration completes without finding the
    specified name, `null` is returned.

    Parameters:
    :   `nodeName` - name of the child to be searched for.

    Returns:
    :   the named child if it exists, or null if it does not.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
  + ### childSpi

    protected abstract [AbstractPreferences](AbstractPreferences.md "class in java.util.prefs") childSpi([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the named child of this preference node, creating it if it does
    not already exist. It is guaranteed that `name` is non-null,
    non-empty, does not contain the slash character ('/'), and is no longer
    than [`Preferences.MAX_NAME_LENGTH`](Preferences.md#MAX_NAME_LENGTH) characters. Also, it is guaranteed that
    this node has not been removed. (The implementor needn't check for any
    of these things.)

    Finally, it is guaranteed that the named node has not been returned
    by a previous invocation of this method or [`getChild(String)`](#getChild(java.lang.String))
    after the last time that it was removed. In other words, a cached
    value will always be used in preference to invoking this method.
    Subclasses need not maintain their own cache of previously returned
    children.

    The implementer must ensure that the returned node has not been
    removed. If a like-named child of this node was previously removed, the
    implementer must return a newly constructed `AbstractPreferences`
    node; once removed, an `AbstractPreferences` node
    cannot be "resuscitated."

    If this method causes a node to be created, this node is not
    guaranteed to be persistent until the `flush` method is
    invoked on this node or one of its ancestors (or descendants).

    This method is invoked with the lock on this node held.

    Parameters:
    :   `name` - The name of the child node to return, relative to
        this preference node.

    Returns:
    :   The named child node.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the absolute path name of this preferences node.

    Specified by:
    :   `toString` in class `Preferences`

    Returns:
    :   a string representation of the object.
  + ### sync

    public void sync()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `sync` method as per the specification in
    [`Preferences.sync()`](Preferences.md#sync()).

    This implementation calls a recursive helper method that locks this
    node, invokes syncSpi() on it, unlocks this node, and recursively
    invokes this method on each "cached child." A cached child is a child
    of this node that has been created in this VM and not subsequently
    removed. In effect, this method does a depth first traversal of the
    "cached subtree" rooted at this node, calling syncSpi() on each node in
    the subTree while only that node is locked. Note that syncSpi() is
    invoked top-down.

    Specified by:
    :   `sync` in class `Preferences`

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
    :   `IllegalStateException` - if this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.

    See Also:
    :   - [`flush()`](#flush())
  + ### syncSpi

    protected abstract void syncSpi()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    This method is invoked with this node locked. The contract of this
    method is to synchronize any cached preferences stored at this node
    with any stored in the backing store. (It is perfectly possible that
    this node does not exist on the backing store, either because it has
    been deleted by another VM, or because it has not yet been created.)
    Note that this method should *not* synchronize the preferences in
    any subnodes of this node. If the backing store naturally syncs an
    entire subtree at once, the implementer is encouraged to override
    sync(), rather than merely overriding this method.

    If this node throws a `BackingStoreException`, the exception
    will propagate out beyond the enclosing [`sync()`](#sync()) invocation.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
  + ### flush

    public void flush()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `flush` method as per the specification in
    [`Preferences.flush()`](Preferences.md#flush()).

    This implementation calls a recursive helper method that locks this
    node, invokes flushSpi() on it, unlocks this node, and recursively
    invokes this method on each "cached child." A cached child is a child
    of this node that has been created in this VM and not subsequently
    removed. In effect, this method does a depth first traversal of the
    "cached subtree" rooted at this node, calling flushSpi() on each node in
    the subTree while only that node is locked. Note that flushSpi() is
    invoked top-down.

    If this method is invoked on a node that has been removed with
    the [`removeNode()`](#removeNode()) method, flushSpi() is invoked on this node,
    but not on others.

    Specified by:
    :   `flush` in class `Preferences`

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.

    See Also:
    :   - [`flush()`](#flush())
  + ### flushSpi

    protected abstract void flushSpi()
    throws [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    This method is invoked with this node locked. The contract of this
    method is to force any cached changes in the contents of this
    preference node to the backing store, guaranteeing their persistence.
    (It is perfectly possible that this node does not exist on the backing
    store, either because it has been deleted by another VM, or because it
    has not yet been created.) Note that this method should *not*
    flush the preferences in any subnodes of this node. If the backing
    store naturally flushes an entire subtree at once, the implementer is
    encouraged to override flush(), rather than merely overriding this
    method.

    If this node throws a `BackingStoreException`, the exception
    will propagate out beyond the enclosing [`flush()`](#flush()) invocation.

    Throws:
    :   `BackingStoreException` - if this operation cannot be completed
        due to a failure in the backing store, or inability to
        communicate with it.
  + ### isRemoved

    protected boolean isRemoved()

    Returns `true` iff this node (or an ancestor) has been
    removed with the [`removeNode()`](#removeNode()) method. This method
    locks this node prior to returning the contents of the private
    field used to track this state.

    Returns:
    :   `true` iff this node (or an ancestor) has been
        removed with the [`removeNode()`](#removeNode()) method.
  + ### exportNode

    public void exportNode([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") os)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `exportNode` method as per the specification in
    [`Preferences.exportNode(OutputStream)`](Preferences.md#exportNode(java.io.OutputStream)).

    Specified by:
    :   `exportNode` in class `Preferences`

    Parameters:
    :   `os` - the output stream on which to emit the XML document.

    Throws:
    :   `IOException` - if writing to the specified output stream
        results in an `IOException`.
    :   `BackingStoreException` - if preference data cannot be read from
        backing store.

    See Also:
    :   - [`Preferences.importPreferences(InputStream)`](Preferences.md#importPreferences(java.io.InputStream))
  + ### exportSubtree

    public void exportSubtree([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") os)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [BackingStoreException](BackingStoreException.md "class in java.util.prefs")

    Implements the `exportSubtree` method as per the specification in
    [`Preferences.exportSubtree(OutputStream)`](Preferences.md#exportSubtree(java.io.OutputStream)).

    Specified by:
    :   `exportSubtree` in class `Preferences`

    Parameters:
    :   `os` - the output stream on which to emit the XML document.

    Throws:
    :   `IOException` - if writing to the specified output stream
        results in an `IOException`.
    :   `BackingStoreException` - if preference data cannot be read from
        backing store.

    See Also:
    :   - [`Preferences.importPreferences(InputStream)`](Preferences.md#importPreferences(java.io.InputStream))
        - [`Preferences.exportNode(OutputStream)`](Preferences.md#exportNode(java.io.OutputStream))