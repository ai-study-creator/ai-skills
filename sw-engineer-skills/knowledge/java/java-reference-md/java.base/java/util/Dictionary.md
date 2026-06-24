Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class Dictionary<K,V>

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.Dictionary<K,V>

Type Parameters:
:   `K` - the type of keys
:   `V` - the type of mapped values

Direct Known Subclasses:
:   `Hashtable`

---

public abstract class Dictionary<K,V>
extends [Object](../lang/Object.md "class in java.lang")

The `Dictionary` class is the abstract parent of any
class, such as `Hashtable`, which maps keys to values.
Every key and every value is an object. In any one `Dictionary`
object, every key is associated with at most one value. Given a
`Dictionary` and a key, the associated element can be looked up.
Any non-`null` object can be used as a key and as a value.

As a rule, the `equals` method should be used by
implementations of this class to decide if two keys are the same.

**NOTE: This class is obsolete. New implementations should
implement the Map interface, rather than extending this class.**

Since:
:   1.0

See Also:
:   * [`Map`](Map.md "interface in java.util")
    * [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
    * [`Object.hashCode()`](../lang/Object.md#hashCode())
    * [`Hashtable`](Hashtable.md "class in java.util")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Dictionary()`

  Sole constructor.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Enumeration<V>`

  `elements()`

  Returns an enumeration of the values in this dictionary.

  `abstract V`

  `get(Object key)`

  Returns the value to which the key is mapped in this dictionary.

  `abstract boolean`

  `isEmpty()`

  Tests if this dictionary maps no keys to value.

  `abstract Enumeration<K>`

  `keys()`

  Returns an enumeration of the keys in this dictionary.

  `abstract V`

  `put(K key,
  V value)`

  Maps the specified `key` to the specified
  `value` in this dictionary.

  `abstract V`

  `remove(Object key)`

  Removes the `key` (and its corresponding
  `value`) from this dictionary.

  `abstract int`

  `size()`

  Returns the number of entries (distinct keys) in this dictionary.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Dictionary

    public Dictionary()

    Sole constructor. (For invocation by subclass constructors, typically
    implicit.)
* ## Method Details

  + ### size

    public abstract int size()

    Returns the number of entries (distinct keys) in this dictionary.

    Returns:
    :   the number of keys in this dictionary.
  + ### isEmpty

    public abstract boolean isEmpty()

    Tests if this dictionary maps no keys to value. The general contract
    for the `isEmpty` method is that the result is true if and only
    if this dictionary contains no entries.

    Returns:
    :   `true` if this dictionary maps no keys to values;
        `false` otherwise.
  + ### keys

    public abstract [Enumeration](Enumeration.md "interface in java.util")<[K](Dictionary.md "type parameter in Dictionary")> keys()

    Returns an enumeration of the keys in this dictionary. The general
    contract for the keys method is that an `Enumeration` object
    is returned that will generate all the keys for which this dictionary
    contains entries.

    Returns:
    :   an enumeration of the keys in this dictionary.

    See Also:
    :   - [`elements()`](#elements())
        - [`Enumeration`](Enumeration.md "interface in java.util")
  + ### elements

    public abstract [Enumeration](Enumeration.md "interface in java.util")<[V](Dictionary.md "type parameter in Dictionary")> elements()

    Returns an enumeration of the values in this dictionary. The general
    contract for the `elements` method is that an
    `Enumeration` is returned that will generate all the elements
    contained in entries in this dictionary.

    Returns:
    :   an enumeration of the values in this dictionary.

    See Also:
    :   - [`keys()`](#keys())
        - [`Enumeration`](Enumeration.md "interface in java.util")
  + ### get

    public abstract [V](Dictionary.md "type parameter in Dictionary") get([Object](../lang/Object.md "class in java.lang") key)

    Returns the value to which the key is mapped in this dictionary.
    The general contract for the `isEmpty` method is that if this
    dictionary contains an entry for the specified key, the associated
    value is returned; otherwise, `null` is returned.

    Parameters:
    :   `key` - a key in this dictionary.
        `null` if the key is not mapped to any value in
        this dictionary.

    Returns:
    :   the value to which the key is mapped in this dictionary;

    Throws:
    :   `NullPointerException` - if the `key` is `null`.

    See Also:
    :   - [`put(java.lang.Object, java.lang.Object)`](#put(K,V))
  + ### put

    public abstract [V](Dictionary.md "type parameter in Dictionary") put([K](Dictionary.md "type parameter in Dictionary") key,
    [V](Dictionary.md "type parameter in Dictionary") value)

    Maps the specified `key` to the specified
    `value` in this dictionary. Neither the key nor the
    value can be `null`.

    If this dictionary already contains an entry for the specified
    `key`, the value already in this dictionary for that
    `key` is returned, after modifying the entry to contain the
    new element.

    If this dictionary does not already have an entry
    for the specified `key`, an entry is created for the
    specified `key` and `value`, and `null` is
    returned.

    The `value` can be retrieved by calling the
    `get` method with a `key` that is equal to
    the original `key`.

    Parameters:
    :   `key` - the hashtable key.
    :   `value` - the value.

    Returns:
    :   the previous value to which the `key` was mapped
        in this dictionary, or `null` if the key did not
        have a previous mapping.

    Throws:
    :   `NullPointerException` - if the `key` or
        `value` is `null`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`get(java.lang.Object)`](#get(java.lang.Object))
  + ### remove

    public abstract [V](Dictionary.md "type parameter in Dictionary") remove([Object](../lang/Object.md "class in java.lang") key)

    Removes the `key` (and its corresponding
    `value`) from this dictionary. This method does nothing
    if the `key` is not in this dictionary.

    Parameters:
    :   `key` - the key that needs to be removed.

    Returns:
    :   the value to which the `key` had been mapped in this
        dictionary, or `null` if the key did not have a
        mapping.

    Throws:
    :   `NullPointerException` - if `key` is `null`.