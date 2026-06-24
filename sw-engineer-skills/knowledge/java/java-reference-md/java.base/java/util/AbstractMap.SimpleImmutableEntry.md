Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class AbstractMap.SimpleImmutableEntry<K,V>

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.AbstractMap.SimpleImmutableEntry<K,V>

Type Parameters:
:   `K` - the type of the keys
:   `V` - the type of the value

All Implemented Interfaces:
:   `Serializable`, `Map.Entry<K,V>`

Enclosing class:
:   `AbstractMap<K,V>`

---

public static class AbstractMap.SimpleImmutableEntry<K,V>
extends [Object](../lang/Object.md "class in java.lang")
implements [Map.Entry](Map.Entry.md "interface in java.util")<K,V>, [Serializable](../io/Serializable.md "interface in java.io")

An unmodifiable Entry maintaining a key and a value. This class
does not support the `setValue` method. Instances of
this class are not associated with any map nor with any map's
entry-set view.

Since:
:   1.6

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.AbstractMap.SimpleImmutableEntry)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SimpleImmutableEntry(Map.Entry<? extends K,? extends V> entry)`

  Creates an entry representing the same mapping as the
  specified entry.

  `SimpleImmutableEntry(K key,
  V value)`

  Creates an entry representing a mapping from the specified
  key to the specified value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compares the specified object with this entry for equality.

  `K`

  `getKey()`

  Returns the key corresponding to this entry.

  `V`

  `getValue()`

  Returns the value corresponding to this entry.

  `int`

  `hashCode()`

  Returns the hash code value for this map entry.

  `V`

  `setValue(V value)`

  Replaces the value corresponding to this entry with the specified
  value (optional operation).

  `String`

  `toString()`

  Returns a String representation of this map entry.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SimpleImmutableEntry

    public SimpleImmutableEntry([K](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry") key,
    [V](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry") value)

    Creates an entry representing a mapping from the specified
    key to the specified value.

    Parameters:
    :   `key` - the key represented by this entry
    :   `value` - the value represented by this entry
  + ### SimpleImmutableEntry

    public SimpleImmutableEntry([Map.Entry](Map.Entry.md "interface in java.util")<? extends [K](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry"),? extends [V](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry")> entry)

    Creates an entry representing the same mapping as the
    specified entry.

    Parameters:
    :   `entry` - the entry to copy
* ## Method Details

  + ### getKey

    public [K](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry") getKey()

    Returns the key corresponding to this entry.

    Specified by:
    :   `getKey` in interface `Map.Entry<K,V>`

    Returns:
    :   the key corresponding to this entry
  + ### getValue

    public [V](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry") getValue()

    Returns the value corresponding to this entry.

    Specified by:
    :   `getValue` in interface `Map.Entry<K,V>`

    Returns:
    :   the value corresponding to this entry
  + ### setValue

    public [V](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry") setValue([V](AbstractMap.SimpleImmutableEntry.md "type parameter in AbstractMap.SimpleImmutableEntry") value)

    Replaces the value corresponding to this entry with the specified
    value (optional operation). This implementation simply throws
    `UnsupportedOperationException`, as this class implements
    an unmodifiable map entry.

    Specified by:
    :   `setValue` in interface `Map.Entry<K,V>`

    Parameters:
    :   `value` - new value to be stored in this entry

    Returns:
    :   (Does not return)

    Throws:
    :   `UnsupportedOperationException` - always
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") o)

    Compares the specified object with this entry for equality.
    Returns `true` if the given object is also a map entry and
    the two entries represent the same mapping. More formally, two
    entries `e1` and `e2` represent the same mapping
    if

    ```
       (e1.getKey()==null ?
        e2.getKey()==null :
        e1.getKey().equals(e2.getKey()))
       &&
       (e1.getValue()==null ?
        e2.getValue()==null :
        e1.getValue().equals(e2.getValue()))
    ```

    This ensures that the `equals` method works properly across
    different implementations of the `Map.Entry` interface.

    Specified by:
    :   `equals` in interface `Map.Entry<K,V>`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - object to be compared for equality with this map entry

    Returns:
    :   `true` if the specified object is equal to this map
        entry

    See Also:
    :   - [`hashCode()`](#hashCode())
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this map entry. The hash code
    of a map entry `e` is defined to be:

    ```
       (e.getKey()==null   ? 0 : e.getKey().hashCode()) ^
       (e.getValue()==null ? 0 : e.getValue().hashCode())
    ```

    This ensures that `e1.equals(e2)` implies that
    `e1.hashCode()==e2.hashCode()` for any two Entries
    `e1` and `e2`, as required by the general
    contract of [`Object.hashCode()`](../lang/Object.md#hashCode()).

    Specified by:
    :   `hashCode` in interface `Map.Entry<K,V>`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this map entry

    See Also:
    :   - [`equals(java.lang.Object)`](#equals(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a String representation of this map entry. This
    implementation returns the string representation of this
    entry's key followed by the equals character ("`=`")
    followed by the string representation of this entry's value.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a String representation of this map entry