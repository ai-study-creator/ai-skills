Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.serial](package-summary.md)

# Class SerialDatalink

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sql.rowset.serial.SerialDatalink

All Implemented Interfaces:
:   `Serializable`, `Cloneable`

---

public class SerialDatalink
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A serialized mapping in the Java programming language of an SQL
`DATALINK` value. A `DATALINK` value
references a file outside of the underlying data source that the
data source manages.

`RowSet` implementations can use the method `RowSet.getURL`
to retrieve a `java.net.URL` object, which can be used
to manipulate the external data.

```
      java.net.URL url = rowset.getURL(1);
```

## Thread safety

A SerialDatalink is not safe for use by multiple concurrent threads. If a
SerialDatalink is to be used by more than one thread then access to the
SerialDatalink should be controlled by appropriate synchronization.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.sql.rowset.serial.SerialDatalink)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SerialDatalink(URL url)`

  Constructs a new `SerialDatalink` object from the given
  `java.net.URL` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a clone of this `SerialDatalink`.

  `boolean`

  `equals(Object obj)`

  Compares this `SerialDatalink` to the specified object.

  `URL`

  `getDatalink()`

  Returns a new URL that is a copy of this `SerialDatalink`
  object.

  `int`

  `hashCode()`

  Returns a hash code for this `SerialDatalink`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SerialDatalink

    public SerialDatalink([URL](../../../../../java.base/java/net/URL.md "class in java.net") url)
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Constructs a new `SerialDatalink` object from the given
    `java.net.URL` object.

    Parameters:
    :   `url` - the `URL` to create the `SerialDataLink` from

    Throws:
    :   `SerialException` - if url parameter is a null
* ## Method Details

  + ### getDatalink

    public [URL](../../../../../java.base/java/net/URL.md "class in java.net") getDatalink()
    throws [SerialException](SerialException.md "class in javax.sql.rowset.serial")

    Returns a new URL that is a copy of this `SerialDatalink`
    object.

    Returns:
    :   a copy of this `SerialDatalink` object as a
        `URL` object in the Java programming language.

    Throws:
    :   `SerialException` - if the `URL` object cannot be de-serialized
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this `SerialDatalink` to the specified object.
    The result is `true` if and only if the argument is not
    `null` and is a `SerialDatalink` object whose URL is
    identical to this object's URL

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - The object to compare this `SerialDatalink` against

    Returns:
    :   `true` if the given object represents a `SerialDatalink`
        equivalent to this SerialDatalink, `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `SerialDatalink`. The hash code for a
    `SerialDatalink` object is taken as the hash code of
    the `URL` it stores

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Returns a clone of this `SerialDatalink`.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this SerialDatalink

    See Also:
    :   - [`Cloneable`](../../../../../java.base/java/lang/Cloneable.md "interface in java.lang")