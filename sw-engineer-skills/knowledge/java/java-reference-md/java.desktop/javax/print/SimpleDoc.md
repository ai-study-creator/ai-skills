Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class SimpleDoc

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.SimpleDoc

All Implemented Interfaces:
:   `Doc`

---

public final class SimpleDoc
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Doc](Doc.md "interface in javax.print")

This class is an implementation of interface `Doc` that can be used in
many common printing requests. It can handle all of the presently defined
"pre-defined" doc flavors defined as static variables in the
`DocFlavor` class.

In particular this class implements certain required semantics of the
`Doc` specification as follows:

* constructs a stream for the service if requested and appropriate.* ensures the same object is returned for each call on a method.* ensures multiple threads can access the `Doc`* performs some validation of that the data matches the doc flavor.

Clients who want to re-use the doc object in other jobs, or need a
`MultiDoc` will not want to use this class.

If the print data is a stream, or a print job requests data as a stream, then
`SimpleDoc` does not monitor if the service properly closes the stream
after data transfer completion or job termination. Clients may prefer to use
provide their own implementation of doc that adds a listener to monitor job
completion and to validate that resources such as streams are freed (ie
closed).

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SimpleDoc(Object printData,
  DocFlavor flavor,
  DocAttributeSet attributes)`

  Constructs a `SimpleDoc` with the specified print data, doc flavor
  and doc attribute set.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `DocAttributeSet`

  `getAttributes()`

  Obtains the set of printing attributes for this doc object.

  `DocFlavor`

  `getDocFlavor()`

  Determines the doc flavor in which this doc object will supply its piece
  of print data.

  `Object`

  `getPrintData()`

  Obtains the print data representation object that contains this doc
  object's piece of print data in the format corresponding to the supported
  doc flavor.

  `Reader`

  `getReaderForText()`

  Obtains a reader for extracting character print data from this doc.

  `InputStream`

  `getStreamForBytes()`

  Obtains an input stream for extracting byte print data from this doc.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleDoc

    public SimpleDoc([Object](../../../java.base/java/lang/Object.md "class in java.lang") printData,
    [DocFlavor](DocFlavor.md "class in javax.print") flavor,
    [DocAttributeSet](attribute/DocAttributeSet.md "interface in javax.print.attribute") attributes)

    Constructs a `SimpleDoc` with the specified print data, doc flavor
    and doc attribute set.

    Parameters:
    :   `printData` - the print data object
    :   `flavor` - the `DocFlavor` object
    :   `attributes` - a `DocAttributeSet`, which can be `null`

    Throws:
    :   `IllegalArgumentException` - if `flavor` or `printData`
        is `null`, or the `printData` does not correspond to
        the specified doc flavor--for example, the data is not of the
        type specified as the representation in the `DocFlavor`
* ## Method Details

  + ### getDocFlavor

    public [DocFlavor](DocFlavor.md "class in javax.print") getDocFlavor()

    Determines the doc flavor in which this doc object will supply its piece
    of print data.

    Specified by:
    :   `getDocFlavor` in interface `Doc`

    Returns:
    :   doc flavor
  + ### getAttributes

    public [DocAttributeSet](attribute/DocAttributeSet.md "interface in javax.print.attribute") getAttributes()

    Obtains the set of printing attributes for this doc object. If the
    returned attribute set includes an instance of a particular attribute
    *X,* the printer must use that attribute value for this doc,
    overriding any value of attribute *X* in the job's attribute set. If
    the returned attribute set does not include an instance of a particular
    attribute *X* or if `null` is returned, the printer must
    consult the job's attribute set to obtain the value for attribute
    *X,* and if not found there, the printer must use an
    implementation-dependent default value. The returned attribute set is
    unmodifiable.

    Specified by:
    :   `getAttributes` in interface `Doc`

    Returns:
    :   unmodifiable set of printing attributes for this doc, or
        `null` to obtain all attribute values from the job's
        attribute set
  + ### getPrintData

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getPrintData()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Obtains the print data representation object that contains this doc
    object's piece of print data in the format corresponding to the supported
    doc flavor. The `getPrintData()` method returns an instance of the
    representation class whose name is given by [`getDocFlavor()`](#getDocFlavor()).[`getRepresentationClassName()`](DocFlavor.md#getRepresentationClassName()), and the return value can be cast from
    class `Object` to that representation class.

    Specified by:
    :   `getPrintData` in interface `Doc`

    Returns:
    :   print data representation object

    Throws:
    :   `IOException` - if the representation class is a stream and there was
        an I/O error while constructing the stream
  + ### getReaderForText

    public [Reader](../../../java.base/java/io/Reader.md "class in java.io") getReaderForText()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Obtains a reader for extracting character print data from this doc. The
    `Doc` implementation is required to support this method if the
    `DocFlavor` has one of the following print data representation
    classes, and return `null` otherwise:
    - `char[]`- `java.lang.String`- `java.io.Reader`The doc's print data representation object is used to construct and
    return a `Reader` for reading the print data as a stream of
    characters from the print data representation object. However, if the
    print data representation object is itself a `Reader` then the
    print data representation object is simply returned.

    Specified by:
    :   `getReaderForText` in interface `Doc`

    Returns:
    :   a `Reader` for reading the print data characters from this
        doc. If a reader cannot be provided because this doc does not
        meet the criteria stated above, `null` is returned.

    Throws:
    :   `IOException` - if there was an I/O error while creating the reader
  + ### getStreamForBytes

    public [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") getStreamForBytes()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Obtains an input stream for extracting byte print data from this doc. The
    `Doc` implementation is required to support this method if the
    `DocFlavor` has one of the following print data representation
    classes; otherwise this method returns `null`:
    - `byte[]`- `java.io.InputStream`The doc's print data representation object is obtained. Then, an input
    stream for reading the print data from the print data representation
    object as a stream of bytes is created and returned. However, if the
    print data representation object is itself an input stream then the print
    data representation object is simply returned.

    Specified by:
    :   `getStreamForBytes` in interface `Doc`

    Returns:
    :   an `InputStream` for reading the print data bytes from this
        doc. If an input stream cannot be provided because this doc does
        not meet the criteria stated above, `null` is returned.

    Throws:
    :   `IOException` - if there was an I/O error while creating the input
        stream