Module [java.base](../../../module-summary.md)

Package [java.util.jar](package-summary.md)

# Class Attributes

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.jar.Attributes

All Implemented Interfaces:
:   `Cloneable`, `Map<Object,Object>`

---

public class Attributes
extends [Object](../../lang/Object.md "class in java.lang")
implements [Map](../Map.md "interface in java.util")<[Object](../../lang/Object.md "class in java.lang"),[Object](../../lang/Object.md "class in java.lang")>, [Cloneable](../../lang/Cloneable.md "interface in java.lang")

The Attributes class maps Manifest attribute names to associated string
values. Valid attribute names are case-insensitive, are restricted to
the ASCII characters in the set [0-9a-zA-Z\_-], and cannot exceed 70
characters in length. There must be a colon and a SPACE after the name;
the combined length will not exceed 72 characters.
Attribute values can contain any characters and
will be UTF8-encoded when written to the output stream. See the
[JAR File Specification](../../../../../specs/jar/jar.md)
for more information about valid attribute names and values.

This map and its views have a predictable iteration order, namely the
order that keys were inserted into the map, as with [`LinkedHashMap`](../LinkedHashMap.md "class in java.util").

Since:
:   1.2

See Also:
:   * [`Manifest`](Manifest.md "class in java.util.jar")

External Specifications
:   * [JAR File Specification](../../../../../specs/jar/jar.md)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `Attributes.Name`

  The Attributes.Name class represents an attribute name stored in
  this Map.

  ## Nested classes/interfaces inherited from interface java.util.[Map](../Map.md "interface in java.util")

  `Map.Entry<K,V>`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Map<Object,Object>`

  `map`

  The attribute name-value mappings.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Attributes()`

  Constructs a new, empty Attributes object with default size.

  `Attributes(int size)`

  Constructs a new, empty Attributes object with the specified
  initial size.

  `Attributes(Attributes attr)`

  Constructs a new Attributes object with the same attribute name-value
  mappings as in the specified Attributes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `clear()`

  Removes all attributes from this Map.

  `Object`

  `clone()`

  Returns a copy of the Attributes, implemented as follows:

  `boolean`

  `containsKey(Object name)`

  Returns true if this Map contains the specified attribute name (key).

  `boolean`

  `containsValue(Object value)`

  Returns true if this Map maps one or more attribute names (keys)
  to the specified value.

  `Set<Map.Entry<Object,Object>>`

  `entrySet()`

  Returns a Collection view of the attribute name-value mappings
  contained in this Map.

  `boolean`

  `equals(Object o)`

  Compares the specified object to the underlying
  [map](#map) for equality.

  `Object`

  `get(Object name)`

  Returns the value of the specified attribute name, or null if the
  attribute name was not found.

  `String`

  `getValue(String name)`

  Returns the value of the specified attribute name, specified as
  a string, or null if the attribute was not found.

  `String`

  `getValue(Attributes.Name name)`

  Returns the value of the specified Attributes.Name, or null if the
  attribute was not found.

  `int`

  `hashCode()`

  Returns the hash code value for this Map.

  `boolean`

  `isEmpty()`

  Returns true if this Map contains no attributes.

  `Set<Object>`

  `keySet()`

  Returns a Set view of the attribute names (keys) contained in this Map.

  `Object`

  `put(Object name,
  Object value)`

  Associates the specified value with the specified attribute name
  (key) in this Map.

  `void`

  `putAll(Map<?,?> attr)`

  Copies all of the attribute name-value mappings from the specified
  Attributes to this Map.

  `String`

  `putValue(String name,
  String value)`

  Associates the specified value with the specified attribute name,
  specified as a String.

  `Object`

  `remove(Object name)`

  Removes the attribute with the specified name (key) from this Map.

  `int`

  `size()`

  Returns the number of attributes in this Map.

  `Collection<Object>`

  `values()`

  Returns a Collection view of the attribute values contained in this Map.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.[Map](../Map.md "interface in java.util")

  `compute, computeIfAbsent, computeIfPresent, forEach, getOrDefault, merge, putIfAbsent, remove, replace, replace, replaceAll`

* ## Field Details

  + ### map

    protected [Map](../Map.md "interface in java.util")<[Object](../../lang/Object.md "class in java.lang"),[Object](../../lang/Object.md "class in java.lang")> map

    The attribute name-value mappings.
* ## Constructor Details

  + ### Attributes

    public Attributes()

    Constructs a new, empty Attributes object with default size.
  + ### Attributes

    public Attributes(int size)

    Constructs a new, empty Attributes object with the specified
    initial size.

    Parameters:
    :   `size` - the initial number of attributes
  + ### Attributes

    public Attributes([Attributes](Attributes.md "class in java.util.jar") attr)

    Constructs a new Attributes object with the same attribute name-value
    mappings as in the specified Attributes.

    Parameters:
    :   `attr` - the specified Attributes
* ## Method Details

  + ### get

    public [Object](../../lang/Object.md "class in java.lang") get([Object](../../lang/Object.md "class in java.lang") name)

    Returns the value of the specified attribute name, or null if the
    attribute name was not found.

    Specified by:
    :   `get` in interface `Map<Object,Object>`

    Parameters:
    :   `name` - the attribute name

    Returns:
    :   the value of the specified attribute name, or null if
        not found.
  + ### getValue

    public [String](../../lang/String.md "class in java.lang") getValue([String](../../lang/String.md "class in java.lang") name)

    Returns the value of the specified attribute name, specified as
    a string, or null if the attribute was not found. The attribute
    name is case-insensitive.

    This method is defined as:

    ```
          return (String)get(new Attributes.Name((String)name));
    ```

    Parameters:
    :   `name` - the attribute name as a string

    Returns:
    :   the String value of the specified attribute name, or null if
        not found.

    Throws:
    :   `IllegalArgumentException` - if the attribute name is invalid
  + ### getValue

    public [String](../../lang/String.md "class in java.lang") getValue([Attributes.Name](Attributes.Name.md "class in java.util.jar") name)

    Returns the value of the specified Attributes.Name, or null if the
    attribute was not found.

    This method is defined as:

    ```
         return (String)get(name);
    ```

    Parameters:
    :   `name` - the Attributes.Name object

    Returns:
    :   the String value of the specified Attribute.Name, or null if
        not found.
  + ### put

    public [Object](../../lang/Object.md "class in java.lang") put([Object](../../lang/Object.md "class in java.lang") name,
    [Object](../../lang/Object.md "class in java.lang") value)

    Associates the specified value with the specified attribute name
    (key) in this Map. If the Map previously contained a mapping for
    the attribute name, the old value is replaced.

    Specified by:
    :   `put` in interface `Map<Object,Object>`

    Parameters:
    :   `name` - the attribute name
    :   `value` - the attribute value

    Returns:
    :   the previous value of the attribute, or null if none

    Throws:
    :   `ClassCastException` - if the name is not a Attributes.Name
        or the value is not a String
  + ### putValue

    public [String](../../lang/String.md "class in java.lang") putValue([String](../../lang/String.md "class in java.lang") name,
    [String](../../lang/String.md "class in java.lang") value)

    Associates the specified value with the specified attribute name,
    specified as a String. The attributes name is case-insensitive.
    If the Map previously contained a mapping for the attribute name,
    the old value is replaced.

    This method is defined as:

    ```
          return (String)put(new Attributes.Name(name), value);
    ```

    Parameters:
    :   `name` - the attribute name as a string
    :   `value` - the attribute value

    Returns:
    :   the previous value of the attribute, or null if none

    Throws:
    :   `IllegalArgumentException` - if the attribute name is invalid
  + ### remove

    public [Object](../../lang/Object.md "class in java.lang") remove([Object](../../lang/Object.md "class in java.lang") name)

    Removes the attribute with the specified name (key) from this Map.
    Returns the previous attribute value, or null if none.

    Specified by:
    :   `remove` in interface `Map<Object,Object>`

    Parameters:
    :   `name` - attribute name

    Returns:
    :   the previous value of the attribute, or null if none
  + ### containsValue

    public boolean containsValue([Object](../../lang/Object.md "class in java.lang") value)

    Returns true if this Map maps one or more attribute names (keys)
    to the specified value.

    Specified by:
    :   `containsValue` in interface `Map<Object,Object>`

    Parameters:
    :   `value` - the attribute value

    Returns:
    :   true if this Map maps one or more attribute names to
        the specified value
  + ### containsKey

    public boolean containsKey([Object](../../lang/Object.md "class in java.lang") name)

    Returns true if this Map contains the specified attribute name (key).

    Specified by:
    :   `containsKey` in interface `Map<Object,Object>`

    Parameters:
    :   `name` - the attribute name

    Returns:
    :   true if this Map contains the specified attribute name
  + ### putAll

    public void putAll([Map](../Map.md "interface in java.util")<?,?> attr)

    Copies all of the attribute name-value mappings from the specified
    Attributes to this Map. Duplicate mappings will be replaced.

    Specified by:
    :   `putAll` in interface `Map<Object,Object>`

    Parameters:
    :   `attr` - the Attributes to be stored in this map

    Throws:
    :   `ClassCastException` - if attr is not an Attributes
  + ### clear

    public void clear()

    Removes all attributes from this Map.

    Specified by:
    :   `clear` in interface `Map<Object,Object>`
  + ### size

    public int size()

    Returns the number of attributes in this Map.

    Specified by:
    :   `size` in interface `Map<Object,Object>`

    Returns:
    :   the number of key-value mappings in this map
  + ### isEmpty

    public boolean isEmpty()

    Returns true if this Map contains no attributes.

    Specified by:
    :   `isEmpty` in interface `Map<Object,Object>`

    Returns:
    :   `true` if this map contains no key-value mappings
  + ### keySet

    public [Set](../Set.md "interface in java.util")<[Object](../../lang/Object.md "class in java.lang")> keySet()

    Returns a Set view of the attribute names (keys) contained in this Map.

    Specified by:
    :   `keySet` in interface `Map<Object,Object>`

    Returns:
    :   a set view of the keys contained in this map
  + ### values

    public [Collection](../Collection.md "interface in java.util")<[Object](../../lang/Object.md "class in java.lang")> values()

    Returns a Collection view of the attribute values contained in this Map.

    Specified by:
    :   `values` in interface `Map<Object,Object>`

    Returns:
    :   a collection view of the values contained in this map
  + ### entrySet

    public [Set](../Set.md "interface in java.util")<[Map.Entry](../Map.Entry.md "interface in java.util")<[Object](../../lang/Object.md "class in java.lang"),[Object](../../lang/Object.md "class in java.lang")>> entrySet()

    Returns a Collection view of the attribute name-value mappings
    contained in this Map.

    Specified by:
    :   `entrySet` in interface `Map<Object,Object>`

    Returns:
    :   a set view of the mappings contained in this map
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") o)

    Compares the specified object to the underlying
    [map](#map) for equality.
    Returns true if the given object is also a Map
    and the two maps represent the same mappings.

    Specified by:
    :   `equals` in interface `Map<Object,Object>`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the Object to be compared

    Returns:
    :   true if the specified Object is equal to this Map

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this Map.

    Specified by:
    :   `hashCode` in interface `Map<Object,Object>`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a copy of the Attributes, implemented as follows:

    ```
         public Object clone() { return new Attributes(this); }
    ```

    Since the attribute names and values are themselves immutable,
    the Attributes returned can be safely modified without affecting
    the original.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")