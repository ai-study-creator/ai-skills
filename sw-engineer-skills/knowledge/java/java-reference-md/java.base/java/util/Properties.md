Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class Properties

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.util.Dictionary](Dictionary.md "class in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>

[java.util.Hashtable](Hashtable.md "class in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>

java.util.Properties

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Map<Object,Object>`

Direct Known Subclasses:
:   `Provider`

---

public class Properties
extends [Hashtable](Hashtable.md "class in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>

The `Properties` class represents a persistent set of
properties. The `Properties` can be saved to a stream
or loaded from a stream. Each key and its corresponding value in
the property list is a string.

A property list can contain another property list as its
"defaults"; this second property list is searched if
the property key is not found in the original property list.

Because `Properties` inherits from `Hashtable`, the
`put` and `putAll` methods can be applied to a
`Properties` object. Their use is strongly discouraged as they
allow the caller to insert entries whose keys or values are not
`Strings`. The `setProperty` method should be used
instead. If the `store` or `save` method is called
on a "compromised" `Properties` object that contains a
non-`String` key or value, the call will fail. Similarly,
the call to the `propertyNames` or `list` method
will fail if it is called on a "compromised" `Properties`
object that contains a non-`String` key.

The iterators returned by the `iterator` method of this class's
"collection views" (that is, `entrySet()`, `keySet()`, and
`values()`) may not fail-fast (unlike the Hashtable implementation).
These iterators are guaranteed to traverse elements as they existed upon
construction exactly once, and may (but are not guaranteed to) reflect any
modifications subsequent to construction.

The [`load(Reader)`](#load(java.io.Reader)) `/`
[`store(Writer, String)`](#store(java.io.Writer,java.lang.String))
methods load and store properties from and to a character based stream
in a simple line-oriented format specified below.
The [`load(InputStream)`](#load(java.io.InputStream)) `/`
[`store(OutputStream, String)`](#store(java.io.OutputStream,java.lang.String))
methods work the same way as the load(Reader)/store(Writer, String) pair, except
the input/output stream is encoded in ISO 8859-1 character encoding.
Characters that cannot be directly represented in this encoding can be written using
Unicode escapes as defined in section of
The Java Language Specification;
only a single 'u' character is allowed in an escape
sequence.

The [`loadFromXML(InputStream)`](#loadFromXML(java.io.InputStream)) and [`storeToXML(OutputStream, String, String)`](#storeToXML(java.io.OutputStream,java.lang.String,java.lang.String)) methods load and store properties
in a simple XML format. By default the UTF-8 character encoding is used,
however a specific encoding may be specified if required. Implementations
are required to support UTF-8 and UTF-16 and may support other encodings.
An XML properties document has the following DOCTYPE declaration:

```
 <!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
```

Note that the system URI (http://java.sun.com/dtd/properties.dtd) is
*not* accessed when exporting or importing properties; it merely
serves as a string to uniquely identify the DTD, which is:

```
    <?xml version="1.0" encoding="UTF-8"?>

    <!-- DTD for properties -->

    <!ELEMENT properties ( comment?, entry* ) >

    <!ATTLIST properties version CDATA #FIXED "1.0">

    <!ELEMENT comment (#PCDATA) >

    <!ELEMENT entry (#PCDATA) >

    <!ATTLIST entry key CDATA #REQUIRED>
```

This class is thread-safe: multiple threads can share a single
`Properties` object without the need for external synchronization.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.util.Properties)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Properties`

  `defaults`

  A property list that contains default values for any keys not
  found in this property list.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Properties()`

  Creates an empty property list with no default values.

  `Properties(int initialCapacity)`

  Creates an empty property list with no default values, and with an
  initial size accommodating the specified number of elements without the
  need to dynamically resize.

  `Properties(Properties defaults)`

  Creates an empty property list with the specified defaults.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `clear()`

  Clears this hashtable so that it contains no keys.

  `Object`

  `clone()`

  Creates a shallow copy of this hashtable.

  `Object`

  `compute(Object key,
  BiFunction<? super Object,? super Object,?> remappingFunction)`

  Attempts to compute a mapping for the specified key and its current
  mapped value (or `null` if there is no current mapping).

  `Object`

  `computeIfAbsent(Object key,
  Function<? super Object,?> mappingFunction)`

  If the specified key is not already associated with a value (or is mapped
  to `null`), attempts to compute its value using the given mapping
  function and enters it into this map unless `null`.

  `Object`

  `computeIfPresent(Object key,
  BiFunction<? super Object,? super Object,?> remappingFunction)`

  If the value for the specified key is present and non-null, attempts to
  compute a new mapping given the key and its current mapped value.

  `boolean`

  `contains(Object value)`

  Tests if some key maps into the specified value in this hashtable.

  `boolean`

  `containsKey(Object key)`

  Tests if the specified object is a key in this hashtable.

  `boolean`

  `containsValue(Object value)`

  Returns true if this hashtable maps one or more keys to this value.

  `Enumeration<Object>`

  `elements()`

  Returns an enumeration of the values in this hashtable.

  `Set<Map.Entry<Object,Object>>`

  `entrySet()`

  Returns a [`Set`](Set.md "interface in java.util") view of the mappings contained in this map.

  `boolean`

  `equals(Object o)`

  Compares the specified Object with this Map for equality,
  as per the definition in the Map interface.

  `void`

  `forEach(BiConsumer<? super Object,? super Object> action)`

  Performs the given action for each entry in this map until all entries
  have been processed or the action throws an exception.

  `Object`

  `get(Object key)`

  Returns the value to which the specified key is mapped,
  or `null` if this map contains no mapping for the key.

  `Object`

  `getOrDefault(Object key,
  Object defaultValue)`

  Returns the value to which the specified key is mapped, or
  `defaultValue` if this map contains no mapping for the key.

  `String`

  `getProperty(String key)`

  Searches for the property with the specified key in this property list.

  `String`

  `getProperty(String key,
  String defaultValue)`

  Searches for the property with the specified key in this property list.

  `int`

  `hashCode()`

  Returns the hash code value for this Map as per the definition in the
  Map interface.

  `boolean`

  `isEmpty()`

  Tests if this hashtable maps no keys to values.

  `Enumeration<Object>`

  `keys()`

  Returns an enumeration of the keys in this hashtable.

  `Set<Object>`

  `keySet()`

  Returns a [`Set`](Set.md "interface in java.util") view of the keys contained in this map.

  `void`

  `list(PrintStream out)`

  Prints this property list out to the specified output stream.

  `void`

  `list(PrintWriter out)`

  Prints this property list out to the specified output stream.

  `void`

  `load(InputStream inStream)`

  Reads a property list (key and element pairs) from the input
  byte stream.

  `void`

  `load(Reader reader)`

  Reads a property list (key and element pairs) from the input
  character stream in a simple line-oriented format.

  `void`

  `loadFromXML(InputStream in)`

  Loads all of the properties represented by the XML document on the
  specified input stream into this properties table.

  `Object`

  `merge(Object key,
  Object value,
  BiFunction<? super Object,? super Object,?> remappingFunction)`

  If the specified key is not already associated with a value or is
  associated with null, associates it with the given non-null value.

  `Enumeration<?>`

  `propertyNames()`

  Returns an enumeration of all the keys in this property list,
  including distinct keys in the default property list if a key
  of the same name has not already been found from the main
  properties list.

  `Object`

  `put(Object key,
  Object value)`

  Maps the specified `key` to the specified
  `value` in this hashtable.

  `void`

  `putAll(Map<?,?> t)`

  Copies all of the mappings from the specified map to this hashtable.

  `Object`

  `putIfAbsent(Object key,
  Object value)`

  If the specified key is not already associated with a value (or is mapped
  to `null`) associates it with the given value and returns
  `null`, else returns the current value.

  `protected void`

  `rehash()`

  Increases the capacity of and internally reorganizes this
  hashtable, in order to accommodate and access its entries more
  efficiently.

  `Object`

  `remove(Object key)`

  Removes the key (and its corresponding value) from this
  hashtable.

  `boolean`

  `remove(Object key,
  Object value)`

  Removes the entry for the specified key only if it is currently
  mapped to the specified value.

  `Object`

  `replace(Object key,
  Object value)`

  Replaces the entry for the specified key only if it is
  currently mapped to some value.

  `boolean`

  `replace(Object key,
  Object oldValue,
  Object newValue)`

  Replaces the entry for the specified key only if currently
  mapped to the specified value.

  `void`

  `replaceAll(BiFunction<? super Object,? super Object,?> function)`

  Replaces each entry's value with the result of invoking the given
  function on that entry until all entries have been processed or the
  function throws an exception.

  `void`

  `save(OutputStream out,
  String comments)`

  Deprecated.

  This method does not throw an IOException if an I/O error
  occurs while saving the property list.

  `Object`

  `setProperty(String key,
  String value)`

  Calls the `Hashtable` method `put`.

  `int`

  `size()`

  Returns the number of keys in this hashtable.

  `void`

  `store(OutputStream out,
  String comments)`

  Writes this property list (key and element pairs) in this
  `Properties` table to the output stream in a format suitable
  for loading into a `Properties` table using the
  [`load(InputStream)`](#load(java.io.InputStream)) method.

  `void`

  `store(Writer writer,
  String comments)`

  Writes this property list (key and element pairs) in this
  `Properties` table to the output character stream in a
  format suitable for using the [`load(Reader)`](#load(java.io.Reader))
  method.

  `void`

  `storeToXML(OutputStream os,
  String comment)`

  Emits an XML document representing all of the properties contained
  in this table.

  `void`

  `storeToXML(OutputStream os,
  String comment,
  String encoding)`

  Emits an XML document representing all of the properties contained
  in this table, using the specified encoding.

  `void`

  `storeToXML(OutputStream os,
  String comment,
  Charset charset)`

  Emits an XML document representing all of the properties contained
  in this table, using the specified encoding.

  `Set<String>`

  `stringPropertyNames()`

  Returns an unmodifiable set of keys from this property list
  where the key and its corresponding value are strings,
  including distinct keys in the default property list if a key
  of the same name has not already been found from the main
  properties list.

  `String`

  `toString()`

  Returns a string representation of this `Hashtable` object
  in the form of a set of entries, enclosed in braces and separated
  by the ASCII characters " `,`" (comma and space).

  `Collection<Object>`

  `values()`

  Returns a [`Collection`](Collection.md "interface in java.util") view of the values contained in this map.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### defaults

    protected volatile [Properties](Properties.md "class in java.util") defaults

    A property list that contains default values for any keys not
    found in this property list.
* ## Constructor Details

  + ### Properties

    public Properties()

    Creates an empty property list with no default values.
  + ### Properties

    public Properties(int initialCapacity)

    Creates an empty property list with no default values, and with an
    initial size accommodating the specified number of elements without the
    need to dynamically resize.

    Parameters:
    :   `initialCapacity` - the `Properties` will be sized to
        accommodate this many elements

    Throws:
    :   `IllegalArgumentException` - if the initial capacity is less than
        zero.
  + ### Properties

    public Properties([Properties](Properties.md "class in java.util") defaults)

    Creates an empty property list with the specified defaults.

    Parameters:
    :   `defaults` - the defaults.
* ## Method Details

  + ### setProperty

    public [Object](../lang/Object.md "class in java.lang") setProperty([String](../lang/String.md "class in java.lang") key,
    [String](../lang/String.md "class in java.lang") value)

    Calls the `Hashtable` method `put`. Provided for
    parallelism with the `getProperty` method. Enforces use of
    strings for property keys and values. The value returned is the
    result of the `Hashtable` call to `put`.

    Parameters:
    :   `key` - the key to be placed into this property list.
    :   `value` - the value corresponding to `key`.

    Returns:
    :   the previous value of the specified key in this property
        list, or `null` if it did not have one.

    Since:
    :   1.2

    See Also:
    :   - [`getProperty(java.lang.String)`](#getProperty(java.lang.String))
  + ### load

    public void load([Reader](../io/Reader.md "class in java.io") reader)
    throws [IOException](../io/IOException.md "class in java.io")

    Reads a property list (key and element pairs) from the input
    character stream in a simple line-oriented format.

    Properties are processed in terms of lines. There are two
    kinds of lines, *natural lines* and *logical lines*.
    A natural line is defined as a line of
    characters that is terminated either by a set of line terminator
    characters (`\n` or `\r` or `\r\n`)
    or by the end of the stream. A natural line may be either a blank line,
    a comment line, or hold all or some of a key-element pair. A logical
    line holds all the data of a key-element pair, which may be spread
    out across several adjacent natural lines by escaping
    the line terminator sequence with a backslash character
    `\`. Note that a comment line cannot be extended
    in this manner; every natural line that is a comment must have
    its own comment indicator, as described below. Lines are read from
    input until the end of the stream is reached.

    A natural line that contains only white space characters is
    considered blank and is ignored. A comment line has an ASCII
    `'#'` or `'!'` as its first non-whitespace
    character; comment lines are also ignored and do not
    encode key-element information. In addition to line
    terminators, this format considers the characters space
    (`' '`, `'\u0020'`), tab
    (`'\t'`, `'\u0009'`), and form feed
    (`'\f'`, `'\u000C'`) to be white
    space.

    If a logical line is spread across several natural lines, the
    backslash escaping the line terminator sequence, the line
    terminator sequence, and any white space at the start of the
    following line have no effect on the key or element values.
    The remainder of the discussion of key and element parsing
    (when loading) will assume all the characters constituting
    the key and element appear on a single natural line after
    line continuation characters have been removed. Note that
    it is *not* sufficient to only examine the character
    preceding a line terminator sequence to decide if the line
    terminator is escaped; there must be an odd number of
    contiguous backslashes for the line terminator to be escaped.
    Since the input is processed from left to right, a
    non-zero even number of 2*n* contiguous backslashes
    before a line terminator (or elsewhere) encodes *n*
    backslashes after escape processing.

    The key contains all of the characters in the line starting
    with the first non-whitespace character and up to, but not
    including, the first unescaped `'='`,
    `':'`, or white space character other than a line
    terminator. All of these key termination characters may be
    included in the key by escaping them with a preceding backslash
    character; for example,

    `\:\=`

    would be the two-character key `":="`. Line
    terminator characters can be included using `\r` and
    `\n` escape sequences. Any white space after the
    key is skipped; if the first non-whitespace character after
    the key is `'='` or `':'`, then it is
    ignored and any white space characters after it are also
    skipped. All remaining characters on the line become part of
    the associated element string; if there are no remaining
    characters, the element is the empty string
    `""`. Once the raw character sequences
    constituting the key and element are identified, escape
    processing is performed as described above.

    As an example, each of the following three lines specifies the key
    `"Truth"` and the associated element value
    `"Beauty"`:

    ```
     Truth = Beauty
      Truth:Beauty
     Truth                    :Beauty
    ```

    As another example, the following three lines specify a single
    property:

    ```
     fruits                           apple, banana, pear, \
                                      cantaloupe, watermelon, \
                                      kiwi, mango
    ```

    The key is `"fruits"` and the associated element is:

    ```
    "apple, banana, pear, cantaloupe, watermelon, kiwi, mango"
    ```

    Note that a space appears before each `\` so that a space
    will appear after each comma in the final result; the `\`,
    line terminator, and leading white space on the continuation line are
    merely discarded and are *not* replaced by one or more other
    characters.

    As a third example, the line:

    ```
    cheeses
    ```

    specifies that the key is `"cheeses"` and the associated
    element is the empty string `""`.

    Characters in keys and elements can be represented in escape
    sequences similar to those used for character and string literals
    (see sections and of
    The Java Language Specification).
    The differences from the character escape sequences and Unicode
    escapes used for characters and strings are:
    - Octal escapes are not recognized.- The character sequence `\b` does *not*
        represent a backspace character.- The method does not treat a backslash character,
          `\`, before a non-valid escape character as an
          error; the backslash is silently dropped. For example, in a
          Java string the sequence `"\z"` would cause a
          compile time error. In contrast, this method silently drops
          the backslash. Therefore, this method treats the two character
          sequence `"\b"` as equivalent to the single
          character `'b'`.- Escapes are not necessary for single and double quotes;
            however, by the rule above, single and double quote characters
            preceded by a backslash still yield single and double quote
            characters, respectively.- Only a single 'u' character is allowed in a Unicode escape
              sequence.

    The specified stream remains open after this method returns.

    Parameters:
    :   `reader` - the input character stream.

    Throws:
    :   `IOException` - if an error occurred when reading from the
        input stream.
    :   `IllegalArgumentException` - if a malformed Unicode escape
        appears in the input.
    :   `NullPointerException` - if `reader` is null.

    Since:
    :   1.6
  + ### load

    public void load([InputStream](../io/InputStream.md "class in java.io") inStream)
    throws [IOException](../io/IOException.md "class in java.io")

    Reads a property list (key and element pairs) from the input
    byte stream. The input stream is in a simple line-oriented
    format as specified in
    [`load(Reader)`](#load(java.io.Reader)) and is assumed to use
    the ISO 8859-1 character encoding; that is each byte is one Latin1
    character. Characters not in Latin1, and certain special characters,
    are represented in keys and elements using Unicode escapes as defined in
    section of
    The Java Language Specification.

    The specified stream remains open after this method returns.

    Parameters:
    :   `inStream` - the input stream.

    Throws:
    :   `IOException` - if an error occurred when reading from the
        input stream.
    :   `IllegalArgumentException` - if the input stream contains a
        malformed Unicode escape sequence.
    :   `NullPointerException` - if `inStream` is null.

    Since:
    :   1.2
  + ### save

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public void save([OutputStream](../io/OutputStream.md "class in java.io") out,
    [String](../lang/String.md "class in java.lang") comments)

    Deprecated.

    This method does not throw an IOException if an I/O error
    occurs while saving the property list. The preferred way to save a
    properties list is via the `store(OutputStream out,
    String comments)` method or the
    `storeToXML(OutputStream os, String comment)` method.

    Calls the `store(OutputStream out, String comments)` method
    and suppresses IOExceptions that were thrown.

    Parameters:
    :   `out` - an output stream.
    :   `comments` - a description of the property list.

    Throws:
    :   `ClassCastException` - if this `Properties` object
        contains any keys or values that are not
        `Strings`.
  + ### store

    public void store([Writer](../io/Writer.md "class in java.io") writer,
    [String](../lang/String.md "class in java.lang") comments)
    throws [IOException](../io/IOException.md "class in java.io")

    Writes this property list (key and element pairs) in this
    `Properties` table to the output character stream in a
    format suitable for using the [`load(Reader)`](#load(java.io.Reader))
    method.

    Properties from the defaults table of this `Properties`
    table (if any) are *not* written out by this method.

    If the comments argument is not null, then an ASCII `#`
    character, the comments string, and a line separator are first written
    to the output stream. Thus, the `comments` can serve as an
    identifying comment. Any one of a line feed (`\n`), a carriage
    return (`\r`), or a carriage return followed immediately by a line feed
    (`\r\n`) in comments is replaced by a
    [`line separator`](../lang/System.md#lineSeparator()) and if the next
    character in comments is not character `#` or character `!` then
    an ASCII `#` is written out after that line separator.

    If the `java.properties.date` is set on the command line
    and is non-empty (as determined by [`String.isEmpty`](../lang/String.md#isEmpty())),
    a comment line is written as follows.
    First, a `#` character is written, followed by the contents
    of the property, followed by a line separator. Any line terminator characters
    in the value of the system property are treated the same way as noted above
    for the comments argument.
    If the system property is not set or is empty, a comment line is written
    as follows.
    First, a `#` character is written, followed by the current date and time
    formatted as if by the [`Date.toString`](Date.md#toString()) method,
    followed by a line separator.

    Then every entry in this `Properties` table is
    written out, one per line. For each entry the key string is
    written, then an ASCII `=`, then the associated
    element string. For the key, all space characters are
    written with a preceding `\` character. For the
    element, leading space characters, but not embedded or trailing
    space characters, are written with a preceding `\`
    character. The key and element characters `#`,
    `!`, `=`, and `:` are written
    with a preceding backslash to ensure that they are properly loaded.

    After the entries have been written, the output stream is flushed.
    The output stream remains open after this method returns.

    Parameters:
    :   `writer` - an output character stream writer.
    :   `comments` - a description of the property list.

    Throws:
    :   `IOException` - if writing this property list to the specified
        output stream throws an `IOException`.
    :   `ClassCastException` - if this `Properties` object
        contains any keys or values that are not `Strings`.
    :   `NullPointerException` - if `writer` is null.

    Since:
    :   1.6
  + ### store

    public void store([OutputStream](../io/OutputStream.md "class in java.io") out,
    [String](../lang/String.md "class in java.lang") comments)
    throws [IOException](../io/IOException.md "class in java.io")

    Writes this property list (key and element pairs) in this
    `Properties` table to the output stream in a format suitable
    for loading into a `Properties` table using the
    [`load(InputStream)`](#load(java.io.InputStream)) method.

    Properties from the defaults table of this `Properties`
    table (if any) are *not* written out by this method.

    This method outputs the comments, properties keys and values in
    the same format as specified in
    [`store(Writer)`](#store(java.io.Writer,java.lang.String)),
    with the following differences:
    - The stream is written using the ISO 8859-1 character encoding.- Characters not in Latin-1 in the comments are written as
        `\u`*xxxx* for their appropriate unicode
        hexadecimal value *xxxx*.- Characters less than `\u0020` and characters greater
          than `\u007E` in property keys or values are written
          as `\u`*xxxx* for the appropriate hexadecimal
          value *xxxx*.

    After the entries have been written, the output stream is flushed.
    The output stream remains open after this method returns.

    Parameters:
    :   `out` - an output stream.
    :   `comments` - a description of the property list.

    Throws:
    :   `IOException` - if writing this property list to the specified
        output stream throws an `IOException`.
    :   `ClassCastException` - if this `Properties` object
        contains any keys or values that are not `Strings`.
    :   `NullPointerException` - if `out` is null.

    Since:
    :   1.2
  + ### loadFromXML

    public void loadFromXML([InputStream](../io/InputStream.md "class in java.io") in)
    throws [IOException](../io/IOException.md "class in java.io"),
    [InvalidPropertiesFormatException](InvalidPropertiesFormatException.md "class in java.util")

    Loads all of the properties represented by the XML document on the
    specified input stream into this properties table.

    The XML document must have the following DOCTYPE declaration:

    ```
     <!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
    ```

    Furthermore, the document must satisfy the properties DTD described
    above.

    An implementation is required to read XML documents that use the
    "`UTF-8`" or "`UTF-16`" encoding. An implementation may
    support additional encodings.

    The specified stream is closed after this method returns.

    Parameters:
    :   `in` - the input stream from which to read the XML document.

    Throws:
    :   `IOException` - if reading from the specified input stream
        results in an `IOException`.
    :   `UnsupportedEncodingException` - if the document's encoding
        declaration can be read and it specifies an encoding that is not
        supported
    :   `InvalidPropertiesFormatException` - Data on input stream does not
        constitute a valid XML document with the mandated document type.
    :   `NullPointerException` - if `in` is null.

    Since:
    :   1.5

    See Also:
    :   - [`storeToXML(OutputStream, String, String)`](#storeToXML(java.io.OutputStream,java.lang.String,java.lang.String))
        - [Character
          Encoding in Entities](http://www.w3.org/TR/REC-xml/#charencoding)

    External Specifications
    :   - [Extensible Markup Language (XML) 1.0 (Fifth Edition)](https://www.w3.org/TR/xml)
  + ### storeToXML

    public void storeToXML([OutputStream](../io/OutputStream.md "class in java.io") os,
    [String](../lang/String.md "class in java.lang") comment)
    throws [IOException](../io/IOException.md "class in java.io")

    Emits an XML document representing all of the properties contained
    in this table.

    An invocation of this method of the form `props.storeToXML(os,
    comment)` behaves in exactly the same way as the invocation
    `props.storeToXML(os, comment, "UTF-8");`.

    Parameters:
    :   `os` - the output stream on which to emit the XML document.
    :   `comment` - a description of the property list, or `null`
        if no comment is desired.

    Throws:
    :   `IOException` - if writing to the specified output stream
        results in an `IOException`.
    :   `NullPointerException` - if `os` is null.
    :   `ClassCastException` - if this `Properties` object
        contains any keys or values that are not
        `Strings`.

    Since:
    :   1.5

    See Also:
    :   - [`loadFromXML(InputStream)`](#loadFromXML(java.io.InputStream))
  + ### storeToXML

    public void storeToXML([OutputStream](../io/OutputStream.md "class in java.io") os,
    [String](../lang/String.md "class in java.lang") comment,
    [String](../lang/String.md "class in java.lang") encoding)
    throws [IOException](../io/IOException.md "class in java.io")

    Emits an XML document representing all of the properties contained
    in this table, using the specified encoding.

    The XML document will have the following DOCTYPE declaration:

    ```
     <!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
    ```

    If the specified comment is `null` then no comment
    will be stored in the document.

    An implementation is required to support writing of XML documents
    that use the "`UTF-8`" or "`UTF-16`" encoding. An
    implementation may support additional encodings.

    The specified stream remains open after this method returns.

    This method behaves the same as
    [storeToXML(OutputStream os, String comment, Charset charset)](#storeToXML(java.io.OutputStream,java.lang.String,java.nio.charset.Charset))
    except that it will [look up the charset](../nio/charset/Charset.md#forName(java.lang.String))
    using the given encoding name.

    Parameters:
    :   `os` - the output stream on which to emit the XML document.
    :   `comment` - a description of the property list, or `null`
        if no comment is desired.
    :   `encoding` - the name of a supported
        [character encoding](../lang/package-summary.md#charenc)

    Throws:
    :   `IOException` - if writing to the specified output stream
        results in an `IOException`.
    :   `UnsupportedEncodingException` - if the encoding is not
        supported by the implementation.
    :   `NullPointerException` - if `os` is `null`,
        or if `encoding` is `null`.
    :   `ClassCastException` - if this `Properties` object
        contains any keys or values that are not `Strings`.

    Since:
    :   1.5

    See Also:
    :   - [`loadFromXML(InputStream)`](#loadFromXML(java.io.InputStream))
        - [Character
          Encoding in Entities](http://www.w3.org/TR/REC-xml/#charencoding)

    External Specifications
    :   - [Extensible Markup Language (XML) 1.0 (Fifth Edition)](https://www.w3.org/TR/xml)
  + ### storeToXML

    public void storeToXML([OutputStream](../io/OutputStream.md "class in java.io") os,
    [String](../lang/String.md "class in java.lang") comment,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](../io/IOException.md "class in java.io")

    Emits an XML document representing all of the properties contained
    in this table, using the specified encoding.

    The XML document will have the following DOCTYPE declaration:

    ```
     <!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
    ```

    If the specified comment is `null` then no comment
    will be stored in the document.

    An implementation is required to support writing of XML documents
    that use the "`UTF-8`" or "`UTF-16`" encoding. An
    implementation may support additional encodings.

    Unmappable characters for the specified charset will be encoded as
    numeric character references.

    The specified stream remains open after this method returns.

    Parameters:
    :   `os` - the output stream on which to emit the XML document.
    :   `comment` - a description of the property list, or `null`
        if no comment is desired.
    :   `charset` - the charset

    Throws:
    :   `IOException` - if writing to the specified output stream
        results in an `IOException`.
    :   `NullPointerException` - if `os` or `charset` is `null`.
    :   `ClassCastException` - if this `Properties` object
        contains any keys or values that are not `Strings`.

    Since:
    :   10

    See Also:
    :   - [`loadFromXML(InputStream)`](#loadFromXML(java.io.InputStream))
        - [Character
          Encoding in Entities](http://www.w3.org/TR/REC-xml/#charencoding)

    External Specifications
    :   - [Extensible Markup Language (XML) 1.0 (Fifth Edition)](https://www.w3.org/TR/xml)
  + ### getProperty

    public [String](../lang/String.md "class in java.lang") getProperty([String](../lang/String.md "class in java.lang") key)

    Searches for the property with the specified key in this property list.
    If the key is not found in this property list, the default property list,
    and its defaults, recursively, are then checked. The method returns
    `null` if the property is not found.

    Parameters:
    :   `key` - the property key.

    Returns:
    :   the value in this property list with the specified key value.

    See Also:
    :   - [`setProperty(java.lang.String, java.lang.String)`](#setProperty(java.lang.String,java.lang.String))
        - [`defaults`](#defaults)
  + ### getProperty

    public [String](../lang/String.md "class in java.lang") getProperty([String](../lang/String.md "class in java.lang") key,
    [String](../lang/String.md "class in java.lang") defaultValue)

    Searches for the property with the specified key in this property list.
    If the key is not found in this property list, the default property list,
    and its defaults, recursively, are then checked. The method returns the
    default value argument if the property is not found.

    Parameters:
    :   `key` - the hashtable key.
    :   `defaultValue` - a default value.

    Returns:
    :   the value in this property list with the specified key value.

    See Also:
    :   - [`setProperty(java.lang.String, java.lang.String)`](#setProperty(java.lang.String,java.lang.String))
        - [`defaults`](#defaults)
  + ### propertyNames

    public [Enumeration](Enumeration.md "interface in java.util")<?> propertyNames()

    Returns an enumeration of all the keys in this property list,
    including distinct keys in the default property list if a key
    of the same name has not already been found from the main
    properties list.

    Returns:
    :   an enumeration of all the keys in this property list, including
        the keys in the default property list.

    Throws:
    :   `ClassCastException` - if any key in this property list
        is not a string.

    See Also:
    :   - [`Enumeration`](Enumeration.md "interface in java.util")
        - [`defaults`](#defaults)
        - [`stringPropertyNames()`](#stringPropertyNames())
  + ### stringPropertyNames

    public [Set](Set.md "interface in java.util")<[String](../lang/String.md "class in java.lang")> stringPropertyNames()

    Returns an unmodifiable set of keys from this property list
    where the key and its corresponding value are strings,
    including distinct keys in the default property list if a key
    of the same name has not already been found from the main
    properties list. Properties whose key or value is not
    of type `String` are omitted.

    The returned set is not backed by this `Properties` object.
    Changes to this `Properties` object are not reflected in the
    returned set.

    Returns:
    :   an unmodifiable set of keys in this property list where
        the key and its corresponding value are strings,
        including the keys in the default property list.

    Since:
    :   1.6

    See Also:
    :   - [`defaults`](#defaults)
  + ### list

    public void list([PrintStream](../io/PrintStream.md "class in java.io") out)

    Prints this property list out to the specified output stream.
    This method is useful for debugging.

    Parameters:
    :   `out` - an output stream.

    Throws:
    :   `ClassCastException` - if any key in this property list
        is not a string.
  + ### list

    public void list([PrintWriter](../io/PrintWriter.md "class in java.io") out)

    Prints this property list out to the specified output stream.
    This method is useful for debugging.

    Parameters:
    :   `out` - an output stream.

    Throws:
    :   `ClassCastException` - if any key in this property list
        is not a string.

    Since:
    :   1.1
  + ### size

    public int size()

    Description copied from class: `Hashtable`

    Returns the number of keys in this hashtable.

    Specified by:
    :   `size` in interface `Map<Object,Object>`

    Overrides:
    :   `size` in class `Hashtable<Object,Object>`

    Returns:
    :   the number of keys in this hashtable.
  + ### isEmpty

    public boolean isEmpty()

    Description copied from class: `Hashtable`

    Tests if this hashtable maps no keys to values.

    Specified by:
    :   `isEmpty` in interface `Map<Object,Object>`

    Overrides:
    :   `isEmpty` in class `Hashtable<Object,Object>`

    Returns:
    :   `true` if this hashtable maps no keys to values;
        `false` otherwise.
  + ### keys

    public [Enumeration](Enumeration.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> keys()

    Description copied from class: `Hashtable`

    Returns an enumeration of the keys in this hashtable.
    Use the Enumeration methods on the returned object to fetch the keys
    sequentially. If the hashtable is structurally modified while enumerating
    over the keys then the results of enumerating are undefined.

    Overrides:
    :   `keys` in class `Hashtable<Object,Object>`

    Returns:
    :   an enumeration of the keys in this hashtable.

    See Also:
    :   - [`Enumeration`](Enumeration.md "interface in java.util")
        - [`Hashtable.elements()`](Hashtable.md#elements())
        - [`Hashtable.keySet()`](Hashtable.md#keySet())
        - [`Map`](Map.md "interface in java.util")
  + ### elements

    public [Enumeration](Enumeration.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> elements()

    Description copied from class: `Hashtable`

    Returns an enumeration of the values in this hashtable.
    Use the Enumeration methods on the returned object to fetch the elements
    sequentially. If the hashtable is structurally modified while enumerating
    over the values then the results of enumerating are undefined.

    Overrides:
    :   `elements` in class `Hashtable<Object,Object>`

    Returns:
    :   an enumeration of the values in this hashtable.

    See Also:
    :   - [`Enumeration`](Enumeration.md "interface in java.util")
        - [`Hashtable.keys()`](Hashtable.md#keys())
        - [`Hashtable.values()`](Hashtable.md#values())
        - [`Map`](Map.md "interface in java.util")
  + ### contains

    public boolean contains([Object](../lang/Object.md "class in java.lang") value)

    Description copied from class: `Hashtable`

    Tests if some key maps into the specified value in this hashtable.
    This operation is more expensive than the [`containsKey`](Hashtable.md#containsKey(java.lang.Object)) method.

    Note that this method is identical in functionality to
    [`containsValue`](Hashtable.md#containsValue(java.lang.Object)), (which is part of the
    [`Map`](Map.md "interface in java.util") interface in the collections framework).

    Overrides:
    :   `contains` in class `Hashtable<Object,Object>`

    Parameters:
    :   `value` - a value to search for

    Returns:
    :   `true` if and only if some key maps to the
        `value` argument in this hashtable as
        determined by the `equals` method;
        `false` otherwise.
  + ### containsValue

    public boolean containsValue([Object](../lang/Object.md "class in java.lang") value)

    Description copied from class: `Hashtable`

    Returns true if this hashtable maps one or more keys to this value.

    Note that this method is identical in functionality to [`contains`](Hashtable.md#contains(java.lang.Object)) (which predates the [`Map`](Map.md "interface in java.util") interface).

    Specified by:
    :   `containsValue` in interface `Map<Object,Object>`

    Overrides:
    :   `containsValue` in class `Hashtable<Object,Object>`

    Parameters:
    :   `value` - value whose presence in this hashtable is to be tested

    Returns:
    :   `true` if this map maps one or more keys to the
        specified value
  + ### containsKey

    public boolean containsKey([Object](../lang/Object.md "class in java.lang") key)

    Description copied from class: `Hashtable`

    Tests if the specified object is a key in this hashtable.

    Specified by:
    :   `containsKey` in interface `Map<Object,Object>`

    Overrides:
    :   `containsKey` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - possible key

    Returns:
    :   `true` if and only if the specified object
        is a key in this hashtable, as determined by the
        `equals` method; `false` otherwise.

    See Also:
    :   - [`Hashtable.contains(Object)`](Hashtable.md#contains(java.lang.Object))
  + ### get

    public [Object](../lang/Object.md "class in java.lang") get([Object](../lang/Object.md "class in java.lang") key)

    Description copied from class: `Hashtable`

    Returns the value to which the specified key is mapped,
    or `null` if this map contains no mapping for the key.

    More formally, if this map contains a mapping from a key
    `k` to a value `v` such that `(key.equals(k))`,
    then this method returns `v`; otherwise it returns
    `null`. (There can be at most one such mapping.)

    Specified by:
    :   `get` in interface `Map<Object,Object>`

    Overrides:
    :   `get` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - the key whose associated value is to be returned

    Returns:
    :   the value to which the specified key is mapped, or
        `null` if this map contains no mapping for the key

    See Also:
    :   - [`Hashtable.put(Object, Object)`](Hashtable.md#put(K,V))
  + ### put

    public [Object](../lang/Object.md "class in java.lang") put([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Description copied from class: `Hashtable`

    Maps the specified `key` to the specified
    `value` in this hashtable. Neither the key nor the
    value can be `null`.

    The value can be retrieved by calling the `get` method
    with a key that is equal to the original key.

    Specified by:
    :   `put` in interface `Map<Object,Object>`

    Overrides:
    :   `put` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - the hashtable key
    :   `value` - the value

    Returns:
    :   the previous value of the specified key in this hashtable,
        or `null` if it did not have one

    See Also:
    :   - [`Object.equals(Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`Hashtable.get(Object)`](Hashtable.md#get(java.lang.Object))
  + ### remove

    public [Object](../lang/Object.md "class in java.lang") remove([Object](../lang/Object.md "class in java.lang") key)

    Description copied from class: `Hashtable`

    Removes the key (and its corresponding value) from this
    hashtable. This method does nothing if the key is not in the hashtable.

    Specified by:
    :   `remove` in interface `Map<Object,Object>`

    Overrides:
    :   `remove` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - the key that needs to be removed

    Returns:
    :   the value to which the key had been mapped in this hashtable,
        or `null` if the key did not have a mapping
  + ### putAll

    public void putAll([Map](Map.md "interface in java.util")<?,?> t)

    Description copied from class: `Hashtable`

    Copies all of the mappings from the specified map to this hashtable.
    These mappings will replace any mappings that this hashtable had for any
    of the keys currently in the specified map.

    Specified by:
    :   `putAll` in interface `Map<Object,Object>`

    Overrides:
    :   `putAll` in class `Hashtable<Object,Object>`

    Parameters:
    :   `t` - mappings to be stored in this map
  + ### clear

    public void clear()

    Description copied from class: `Hashtable`

    Clears this hashtable so that it contains no keys.

    Specified by:
    :   `clear` in interface `Map<Object,Object>`

    Overrides:
    :   `clear` in class `Hashtable<Object,Object>`
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Description copied from class: `Hashtable`

    Returns a string representation of this `Hashtable` object
    in the form of a set of entries, enclosed in braces and separated
    by the ASCII characters " `,`" (comma and space). Each
    entry is rendered as the key, an equals sign `=`, and the
    associated element, where the `toString` method is used to
    convert the key and element to strings.

    Overrides:
    :   `toString` in class `Hashtable<Object,Object>`

    Returns:
    :   a string representation of this hashtable
  + ### keySet

    public [Set](Set.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> keySet()

    Description copied from class: `Hashtable`

    Returns a [`Set`](Set.md "interface in java.util") view of the keys contained in this map.
    The set is backed by the map, so changes to the map are
    reflected in the set, and vice-versa. If the map is modified
    while an iteration over the set is in progress (except through
    the iterator's own `remove` operation), the results of
    the iteration are undefined. The set supports element removal,
    which removes the corresponding mapping from the map, via the
    `Iterator.remove`, `Set.remove`,
    `removeAll`, `retainAll`, and `clear`
    operations. It does not support the `add` or `addAll`
    operations.

    Specified by:
    :   `keySet` in interface `Map<Object,Object>`

    Overrides:
    :   `keySet` in class `Hashtable<Object,Object>`

    Returns:
    :   a set view of the keys contained in this map
  + ### values

    public [Collection](Collection.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang")> values()

    Description copied from class: `Hashtable`

    Returns a [`Collection`](Collection.md "interface in java.util") view of the values contained in this map.
    The collection is backed by the map, so changes to the map are
    reflected in the collection, and vice-versa. If the map is
    modified while an iteration over the collection is in progress
    (except through the iterator's own `remove` operation),
    the results of the iteration are undefined. The collection
    supports element removal, which removes the corresponding
    mapping from the map, via the `Iterator.remove`,
    `Collection.remove`, `removeAll`,
    `retainAll` and `clear` operations. It does not
    support the `add` or `addAll` operations.

    Specified by:
    :   `values` in interface `Map<Object,Object>`

    Overrides:
    :   `values` in class `Hashtable<Object,Object>`

    Returns:
    :   a collection view of the values contained in this map
  + ### entrySet

    public [Set](Set.md "interface in java.util")<[Map.Entry](Map.Entry.md "interface in java.util")<[Object](../lang/Object.md "class in java.lang"),[Object](../lang/Object.md "class in java.lang")>> entrySet()

    Description copied from class: `Hashtable`

    Returns a [`Set`](Set.md "interface in java.util") view of the mappings contained in this map.
    The set is backed by the map, so changes to the map are
    reflected in the set, and vice-versa. If the map is modified
    while an iteration over the set is in progress (except through
    the iterator's own `remove` operation, or through the
    `setValue` operation on a map entry returned by the
    iterator) the results of the iteration are undefined. The set
    supports element removal, which removes the corresponding
    mapping from the map, via the `Iterator.remove`,
    `Set.remove`, `removeAll`, `retainAll` and
    `clear` operations. It does not support the
    `add` or `addAll` operations.

    Specified by:
    :   `entrySet` in interface `Map<Object,Object>`

    Overrides:
    :   `entrySet` in class `Hashtable<Object,Object>`

    Returns:
    :   a set view of the mappings contained in this map
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") o)

    Description copied from class: `Hashtable`

    Compares the specified Object with this Map for equality,
    as per the definition in the Map interface.

    Specified by:
    :   `equals` in interface `Map<Object,Object>`

    Overrides:
    :   `equals` in class `Hashtable<Object,Object>`

    Parameters:
    :   `o` - object to be compared for equality with this hashtable

    Returns:
    :   true if the specified Object is equal to this Map

    See Also:
    :   - [`Map.equals(Object)`](Map.md#equals(java.lang.Object))
  + ### hashCode

    public int hashCode()

    Description copied from class: `Hashtable`

    Returns the hash code value for this Map as per the definition in the
    Map interface.

    Specified by:
    :   `hashCode` in interface `Map<Object,Object>`

    Overrides:
    :   `hashCode` in class `Hashtable<Object,Object>`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Map.hashCode()`](Map.md#hashCode())
  + ### getOrDefault

    public [Object](../lang/Object.md "class in java.lang") getOrDefault([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") defaultValue)

    Description copied from interface: `Map`

    Returns the value to which the specified key is mapped, or
    `defaultValue` if this map contains no mapping for the key.

    Specified by:
    :   `getOrDefault` in interface `Map<Object,Object>`

    Overrides:
    :   `getOrDefault` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - the key whose associated value is to be returned
    :   `defaultValue` - the default mapping of the key

    Returns:
    :   the value to which the specified key is mapped, or
        `defaultValue` if this map contains no mapping for the key
  + ### forEach

    public void forEach([BiConsumer](function/BiConsumer.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang")> action)

    Description copied from interface: `Map`

    Performs the given action for each entry in this map until all entries
    have been processed or the action throws an exception. Unless
    otherwise specified by the implementing class, actions are performed in
    the order of entry set iteration (if an iteration order is specified.)
    Exceptions thrown by the action are relayed to the caller.

    Specified by:
    :   `forEach` in interface `Map<Object,Object>`

    Overrides:
    :   `forEach` in class `Hashtable<Object,Object>`

    Parameters:
    :   `action` - The action to be performed for each entry
  + ### replaceAll

    public void replaceAll([BiFunction](function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),?> function)

    Description copied from interface: `Map`

    Replaces each entry's value with the result of invoking the given
    function on that entry until all entries have been processed or the
    function throws an exception. Exceptions thrown by the function are
    relayed to the caller.

    Specified by:
    :   `replaceAll` in interface `Map<Object,Object>`

    Overrides:
    :   `replaceAll` in class `Hashtable<Object,Object>`

    Parameters:
    :   `function` - the function to apply to each entry
  + ### putIfAbsent

    public [Object](../lang/Object.md "class in java.lang") putIfAbsent([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Description copied from interface: `Map`

    If the specified key is not already associated with a value (or is mapped
    to `null`) associates it with the given value and returns
    `null`, else returns the current value.

    Specified by:
    :   `putIfAbsent` in interface `Map<Object,Object>`

    Overrides:
    :   `putIfAbsent` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with the specified key, or
        `null` if there was no mapping for the key.
        (A `null` return can also indicate that the map
        previously associated `null` with the key,
        if the implementation supports null values.)
  + ### remove

    public boolean remove([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Description copied from interface: `Map`

    Removes the entry for the specified key only if it is currently
    mapped to the specified value.

    Specified by:
    :   `remove` in interface `Map<Object,Object>`

    Overrides:
    :   `remove` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `value` - value expected to be associated with the specified key

    Returns:
    :   `true` if the value was removed
  + ### replace

    public boolean replace([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") oldValue,
    [Object](../lang/Object.md "class in java.lang") newValue)

    Description copied from interface: `Map`

    Replaces the entry for the specified key only if currently
    mapped to the specified value.

    Specified by:
    :   `replace` in interface `Map<Object,Object>`

    Overrides:
    :   `replace` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `oldValue` - value expected to be associated with the specified key
    :   `newValue` - value to be associated with the specified key

    Returns:
    :   `true` if the value was replaced
  + ### replace

    public [Object](../lang/Object.md "class in java.lang") replace([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Description copied from interface: `Map`

    Replaces the entry for the specified key only if it is
    currently mapped to some value.

    Specified by:
    :   `replace` in interface `Map<Object,Object>`

    Overrides:
    :   `replace` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with the specified key, or
        `null` if there was no mapping for the key.
        (A `null` return can also indicate that the map
        previously associated `null` with the key,
        if the implementation supports null values.)
  + ### computeIfAbsent

    public [Object](../lang/Object.md "class in java.lang") computeIfAbsent([Object](../lang/Object.md "class in java.lang") key,
    [Function](function/Function.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),?> mappingFunction)

    Description copied from class: `Hashtable`

    If the specified key is not already associated with a value (or is mapped
    to `null`), attempts to compute its value using the given mapping
    function and enters it into this map unless `null`.

    If the mapping function returns `null`, no mapping is recorded.
    If the mapping function itself throws an (unchecked) exception, the
    exception is rethrown, and no mapping is recorded. The most
    common usage is to construct a new object serving as an initial
    mapped value or memoized result, as in:

    ```
     map.computeIfAbsent(key, k -> new Value(f(k)));
    ```

    Or to implement a multi-value map, `Map<K,Collection<V>>`,
    supporting multiple values per key:

    ```
     map.computeIfAbsent(key, k -> new HashSet<V>()).add(v);
    ```

    The mapping function should not modify this map during computation.

    This method will, on a best-effort basis, throw a
    [`ConcurrentModificationException`](ConcurrentModificationException.md "class in java.util") if the mapping
    function modified this map during computation.

    Specified by:
    :   `computeIfAbsent` in interface `Map<Object,Object>`

    Overrides:
    :   `computeIfAbsent` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `mappingFunction` - the mapping function to compute a value

    Returns:
    :   the current (existing or computed) value associated with
        the specified key, or null if the computed value is null
  + ### computeIfPresent

    public [Object](../lang/Object.md "class in java.lang") computeIfPresent([Object](../lang/Object.md "class in java.lang") key,
    [BiFunction](function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),?> remappingFunction)

    Description copied from class: `Hashtable`

    If the value for the specified key is present and non-null, attempts to
    compute a new mapping given the key and its current mapped value.

    If the remapping function returns `null`, the mapping is removed.
    If the remapping function itself throws an (unchecked) exception, the
    exception is rethrown, and the current mapping is left unchanged.

    The remapping function should not modify this map during computation.

    This method will, on a best-effort basis, throw a
    [`ConcurrentModificationException`](ConcurrentModificationException.md "class in java.util") if the remapping
    function modified this map during computation.

    Specified by:
    :   `computeIfPresent` in interface `Map<Object,Object>`

    Overrides:
    :   `computeIfPresent` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `remappingFunction` - the remapping function to compute a value

    Returns:
    :   the new value associated with the specified key, or null if none
  + ### compute

    public [Object](../lang/Object.md "class in java.lang") compute([Object](../lang/Object.md "class in java.lang") key,
    [BiFunction](function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),?> remappingFunction)

    Description copied from class: `Hashtable`

    Attempts to compute a mapping for the specified key and its current
    mapped value (or `null` if there is no current mapping). For
    example, to either create or append a `String` msg to a value
    mapping:

    ```
     map.compute(key, (k, v) -> (v == null) ? msg : v.concat(msg))
    ```

    (Method [`merge()`](Map.md#merge(K,V,java.util.function.BiFunction)) is often simpler to use for such purposes.)

    If the remapping function returns `null`, the mapping is removed
    (or remains absent if initially absent). If the remapping function
    itself throws an (unchecked) exception, the exception is rethrown, and
    the current mapping is left unchanged.

    The remapping function should not modify this map during computation.

    This method will, on a best-effort basis, throw a
    [`ConcurrentModificationException`](ConcurrentModificationException.md "class in java.util") if the remapping
    function modified this map during computation.

    Specified by:
    :   `compute` in interface `Map<Object,Object>`

    Overrides:
    :   `compute` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `remappingFunction` - the remapping function to compute a value

    Returns:
    :   the new value associated with the specified key, or null if none
  + ### merge

    public [Object](../lang/Object.md "class in java.lang") merge([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value,
    [BiFunction](function/BiFunction.md "interface in java.util.function")<? super [Object](../lang/Object.md "class in java.lang"),? super [Object](../lang/Object.md "class in java.lang"),?> remappingFunction)

    Description copied from class: `Hashtable`

    If the specified key is not already associated with a value or is
    associated with null, associates it with the given non-null value.
    Otherwise, replaces the associated value with the results of the given
    remapping function, or removes if the result is `null`. This
    method may be of use when combining multiple mapped values for a key.
    For example, to either create or append a `String msg` to a
    value mapping:

    ```
     map.merge(key, msg, String::concat)
    ```

    If the remapping function returns `null`, the mapping is removed.
    If the remapping function itself throws an (unchecked) exception, the
    exception is rethrown, and the current mapping is left unchanged.

    The remapping function should not modify this map during computation.

    This method will, on a best-effort basis, throw a
    [`ConcurrentModificationException`](ConcurrentModificationException.md "class in java.util") if the remapping
    function modified this map during computation.

    Specified by:
    :   `merge` in interface `Map<Object,Object>`

    Overrides:
    :   `merge` in class `Hashtable<Object,Object>`

    Parameters:
    :   `key` - key with which the resulting value is to be associated
    :   `value` - the non-null value to be merged with the existing value
        associated with the key or, if no existing value or a null value
        is associated with the key, to be associated with the key
    :   `remappingFunction` - the remapping function to recompute a value if
        present

    Returns:
    :   the new value associated with the specified key, or null if no
        value is associated with the key
  + ### rehash

    protected void rehash()

    Description copied from class: `Hashtable`

    Increases the capacity of and internally reorganizes this
    hashtable, in order to accommodate and access its entries more
    efficiently. This method is called automatically when the
    number of keys in the hashtable exceeds this hashtable's capacity
    and load factor.

    Overrides:
    :   `rehash` in class `Hashtable<Object,Object>`
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()

    Description copied from class: `Hashtable`

    Creates a shallow copy of this hashtable. All the structure of the
    hashtable itself is copied, but the keys and values are not cloned.
    This is a relatively expensive operation.

    Overrides:
    :   `clone` in class `Hashtable<Object,Object>`

    Returns:
    :   a clone of the hashtable

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")