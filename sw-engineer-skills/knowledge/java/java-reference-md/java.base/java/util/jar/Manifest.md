Module [java.base](../../../module-summary.md)

Package [java.util.jar](package-summary.md)

# Class Manifest

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.jar.Manifest

All Implemented Interfaces:
:   `Cloneable`

---

public class Manifest
extends [Object](../../lang/Object.md "class in java.lang")
implements [Cloneable](../../lang/Cloneable.md "interface in java.lang")

The Manifest class is used to maintain Manifest entry names and their
associated Attributes. There are main Manifest Attributes as well as
per-entry Attributes. For information on the Manifest format, please
see the
[Manifest format specification](../../../../../specs/jar/jar.md).

Since:
:   1.2

See Also:
:   * [`Attributes`](Attributes.md "class in java.util.jar")

External Specifications
:   * [JAR File Specification](../../../../../specs/jar/jar.md)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Manifest()`

  Constructs a new, empty Manifest.

  `Manifest(InputStream is)`

  Constructs a new Manifest from the specified input stream.

  `Manifest(Manifest man)`

  Constructs a new Manifest that is a copy of the specified Manifest.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `clear()`

  Clears the main Attributes as well as the entries in this Manifest.

  `Object`

  `clone()`

  Returns a shallow copy of this Manifest.

  `boolean`

  `equals(Object o)`

  Returns true if the specified Object is also a Manifest and has
  the same main Attributes and entries.

  `Attributes`

  `getAttributes(String name)`

  Returns the Attributes for the specified entry name.

  `Map<String,Attributes>`

  `getEntries()`

  Returns a Map of the entries contained in this Manifest.

  `Attributes`

  `getMainAttributes()`

  Returns the main Attributes for the Manifest.

  `int`

  `hashCode()`

  Returns the hash code for this Manifest.

  `void`

  `read(InputStream is)`

  Reads the Manifest from the specified InputStream.

  `void`

  `write(OutputStream out)`

  Writes the Manifest to the specified OutputStream.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Manifest

    public Manifest()

    Constructs a new, empty Manifest.
  + ### Manifest

    public Manifest([InputStream](../../io/InputStream.md "class in java.io") is)
    throws [IOException](../../io/IOException.md "class in java.io")

    Constructs a new Manifest from the specified input stream.

    Parameters:
    :   `is` - the input stream containing manifest data

    Throws:
    :   `IOException` - if an I/O error has occurred
  + ### Manifest

    public Manifest([Manifest](Manifest.md "class in java.util.jar") man)

    Constructs a new Manifest that is a copy of the specified Manifest.

    Parameters:
    :   `man` - the Manifest to copy
* ## Method Details

  + ### getMainAttributes

    public [Attributes](Attributes.md "class in java.util.jar") getMainAttributes()

    Returns the main Attributes for the Manifest.

    Returns:
    :   the main Attributes for the Manifest
  + ### getEntries

    public [Map](../Map.md "interface in java.util")<[String](../../lang/String.md "class in java.lang"),[Attributes](Attributes.md "class in java.util.jar")> getEntries()

    Returns a Map of the entries contained in this Manifest. Each entry
    is represented by a String name (key) and associated Attributes (value).
    The Map permits the `null` key, but no entry with a null key is
    created by [`read(java.io.InputStream)`](#read(java.io.InputStream)), nor is such an entry written by using [`write(java.io.OutputStream)`](#write(java.io.OutputStream)).

    Returns:
    :   a Map of the entries contained in this Manifest
  + ### getAttributes

    public [Attributes](Attributes.md "class in java.util.jar") getAttributes([String](../../lang/String.md "class in java.lang") name)

    Returns the Attributes for the specified entry name.
    This method is defined as:

    ```
          return (Attributes)getEntries().get(name)
    ```

    Though `null` is a valid `name`, when
    `getAttributes(null)` is invoked on a `Manifest`
    obtained from a jar file, `null` will be returned. While jar
    files themselves do not allow `null`-named attributes, it is
    possible to invoke [`getEntries()`](#getEntries()) on a `Manifest`, and
    on that result, invoke `put` with a null key and an
    arbitrary value. Subsequent invocations of
    `getAttributes(null)` will return the just-`put`
    value.

    Note that this method does not return the manifest's main attributes;
    see [`getMainAttributes()`](#getMainAttributes()).

    Parameters:
    :   `name` - entry name

    Returns:
    :   the Attributes for the specified entry name
  + ### clear

    public void clear()

    Clears the main Attributes as well as the entries in this Manifest.
  + ### write

    public void write([OutputStream](../../io/OutputStream.md "class in java.io") out)
    throws [IOException](../../io/IOException.md "class in java.io")

    Writes the Manifest to the specified OutputStream.
    Attributes.Name.MANIFEST\_VERSION must be set in
    MainAttributes prior to invoking this method.

    Parameters:
    :   `out` - the output stream

    Throws:
    :   `IOException` - if an I/O error has occurred

    See Also:
    :   - [`getMainAttributes()`](#getMainAttributes())
  + ### read

    public void read([InputStream](../../io/InputStream.md "class in java.io") is)
    throws [IOException](../../io/IOException.md "class in java.io")

    Reads the Manifest from the specified InputStream. The entry
    names and attributes read will be merged in with the current
    manifest entries.

    Parameters:
    :   `is` - the input stream

    Throws:
    :   `IOException` - if an I/O error has occurred
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") o)

    Returns true if the specified Object is also a Manifest and has
    the same main Attributes and entries.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to be compared

    Returns:
    :   true if the specified Object is also a Manifest and has
        the same main Attributes and entries

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code for this Manifest.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../../lang/Object.md "class in java.lang") clone()

    Returns a shallow copy of this Manifest. The shallow copy is
    implemented as follows:

    ```
         public Object clone() { return new Manifest(this); }
    ```

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a shallow copy of this Manifest

    See Also:
    :   - [`Cloneable`](../../lang/Cloneable.md "interface in java.lang")