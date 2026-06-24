Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class PropertyResourceBundle

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.util.ResourceBundle](ResourceBundle.md "class in java.util")

java.util.PropertyResourceBundle

---

public class PropertyResourceBundle
extends [ResourceBundle](ResourceBundle.md "class in java.util")

`PropertyResourceBundle` is a concrete subclass of
`ResourceBundle` that manages resources for a locale
using a set of static strings from a property file. See
[`ResourceBundle`](ResourceBundle.md "class in java.util") for more information about resource
bundles.

Unlike other types of resource bundle, you don't subclass
`PropertyResourceBundle`. Instead, you supply properties
files containing the resource data. `ResourceBundle.getBundle`
will automatically look for the appropriate properties file and create a
`PropertyResourceBundle` that refers to it. See
[`ResourceBundle.getBundle`](ResourceBundle.md#getBundle(java.lang.String,java.util.Locale,java.lang.ClassLoader))
for a complete description of the search and instantiation strategy.

The following example shows a member of a resource
bundle family with the base name "MyResources".
The text defines the bundle "MyResources\_de",
the German member of the bundle family.
This member is based on `PropertyResourceBundle`, and the text
therefore is the content of the file "MyResources\_de.properties"
(a related [example](ListResourceBundle.md#sample) shows
how you can add bundles to this family that are implemented as subclasses
of `ListResourceBundle`).
The keys in this example are of the form "s1" etc. The actual
keys are entirely up to your choice, so long as they are the same as
the keys you use in your program to retrieve the objects from the bundle.
Keys are case-sensitive.

Copy![Copy snippet](../../../copy.svg)

```
    # MessageFormat pattern
    s1=Die Platte \"{1}\" enthält {0}.
    # location of {0} in pattern
    s2=1
    # sample disk name
    s3=Meine Platte
    # first ChoiceFormat choice
    s4=keine Dateien
    # second ChoiceFormat choice
    s5=eine Datei
    # third ChoiceFormat choice
    s6={0,number} Dateien
    # sample date
    s7=3. März 1996
```

Since:
:   1.1

See Also:
:   * [`ResourceBundle`](ResourceBundle.md "class in java.util")
    * [`ListResourceBundle`](ListResourceBundle.md "class in java.util")
    * [`Properties`](Properties.md "class in java.util")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.util.[ResourceBundle](ResourceBundle.md "class in java.util")

  `ResourceBundle.Control`
* ## Field Summary

  ### Fields inherited from class java.util.[ResourceBundle](ResourceBundle.md "class in java.util")

  `parent`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyResourceBundle(InputStream stream)`

  Creates a property resource bundle from an [`InputStream`](../io/InputStream.md "class in java.io").

  `PropertyResourceBundle(Reader reader)`

  Creates a property resource bundle from a [`Reader`](../io/Reader.md "class in java.io").
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Enumeration<String>`

  `getKeys()`

  Returns an `Enumeration` of the keys contained in
  this `ResourceBundle` and its parent bundles.

  `Object`

  `handleGetObject(String key)`

  Gets an object for the given key from this resource bundle.

  `protected Set<String>`

  `handleKeySet()`

  Returns a `Set` of the keys contained
  *only* in this `ResourceBundle`.

  ### Methods inherited from class java.util.[ResourceBundle](ResourceBundle.md "class in java.util")

  `clearCache, clearCache, containsKey, getBaseBundleName, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getBundle, getLocale, getObject, getString, getStringArray, keySet, setParent`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyResourceBundle

    public PropertyResourceBundle([InputStream](../io/InputStream.md "class in java.io") stream)
    throws [IOException](../io/IOException.md "class in java.io")

    Creates a property resource bundle from an [`InputStream`](../io/InputStream.md "class in java.io"). This constructor reads the property file in UTF-8 by default.
    If a [`MalformedInputException`](../nio/charset/MalformedInputException.md "class in java.nio.charset") or an
    [`UnmappableCharacterException`](../nio/charset/UnmappableCharacterException.md "class in java.nio.charset") occurs on reading the
    input stream, then the PropertyResourceBundle instance resets to the state
    before the exception, re-reads the input stream in `ISO-8859-1` and
    continues reading. If the system property
    `java.util.PropertyResourceBundle.encoding` is set to either
    "ISO-8859-1" or "UTF-8", the input stream is solely read in that encoding,
    and throws the exception if it encounters an invalid sequence. Other
    encoding values are ignored for this system property.
    The system property is read and evaluated when initializing this class.
    Changing or removing the property has no effect after the initialization.

    Parameters:
    :   `stream` - an InputStream that represents a property file
        to read from.

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `NullPointerException` - if `stream` is null
    :   `IllegalArgumentException` - if `stream` contains a
        malformed Unicode escape sequence.
    :   `MalformedInputException` - if the system property
        `java.util.PropertyResourceBundle.encoding` is set to "UTF-8"
        and `stream` contains an invalid UTF-8 byte sequence.
    :   `UnmappableCharacterException` - if the system property
        `java.util.PropertyResourceBundle.encoding` is set to "UTF-8"
        and `stream` contains an unmappable UTF-8 byte sequence.
  + ### PropertyResourceBundle

    public PropertyResourceBundle([Reader](../io/Reader.md "class in java.io") reader)
    throws [IOException](../io/IOException.md "class in java.io")

    Creates a property resource bundle from a [`Reader`](../io/Reader.md "class in java.io"). Unlike the constructor
    [`PropertyResourceBundle(InputStream)`](#%3Cinit%3E(java.io.InputStream)),
    there is no limitation as to the encoding of the input property file.

    Parameters:
    :   `reader` - a Reader that represents a property file to
        read from.

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `NullPointerException` - if `reader` is null
    :   `IllegalArgumentException` - if a malformed Unicode escape sequence appears
        from `reader`.

    Since:
    :   1.6
* ## Method Details

  + ### handleGetObject

    public [Object](../lang/Object.md "class in java.lang") handleGetObject([String](../lang/String.md "class in java.lang") key)

    Description copied from class: `ResourceBundle`

    Gets an object for the given key from this resource bundle.
    Returns null if this resource bundle does not contain an
    object for the given key.

    Specified by:
    :   `handleGetObject` in class `ResourceBundle`

    Parameters:
    :   `key` - the key for the desired object

    Returns:
    :   the object for the given key, or null
  + ### getKeys

    public [Enumeration](Enumeration.md "interface in java.util")<[String](../lang/String.md "class in java.lang")> getKeys()

    Returns an `Enumeration` of the keys contained in
    this `ResourceBundle` and its parent bundles.

    Specified by:
    :   `getKeys` in class `ResourceBundle`

    Returns:
    :   an `Enumeration` of the keys contained in
        this `ResourceBundle` and its parent bundles.

    See Also:
    :   - [`ResourceBundle.keySet()`](ResourceBundle.md#keySet())
  + ### handleKeySet

    protected [Set](Set.md "interface in java.util")<[String](../lang/String.md "class in java.lang")> handleKeySet()

    Returns a `Set` of the keys contained
    *only* in this `ResourceBundle`.

    Overrides:
    :   `handleKeySet` in class `ResourceBundle`

    Returns:
    :   a `Set` of the keys contained only in this
        `ResourceBundle`

    Since:
    :   1.6

    See Also:
    :   - [`ResourceBundle.keySet()`](ResourceBundle.md#keySet())