Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.spi](package-summary.md)

# Interface XmlReader

All Superinterfaces:
:   `RowSetReader`

---

public interface XmlReader
extends [RowSetReader](../../../../../java.sql/javax/sql/RowSetReader.md "interface in javax.sql")

A specialized interface that facilitates an extension of the
`SyncProvider` abstract class for XML orientated
synchronization providers.

`SyncProvider` implementations that supply XML data reader
capabilities such as output XML stream capabilities can implement this
interface to provide standard `XmlReader` objects to
`WebRowSet` implementations.

An `XmlReader` object is registered as the
XML reader for a `WebRowSet` by being assigned to the
rowset's `xmlReader` field. When the `WebRowSet`
object's `readXml` method is invoked, it in turn invokes
its XML reader's `readXML` method.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `readXML(WebRowSet caller,
  Reader reader)`

  Reads and parses the given `WebRowSet` object from the given
  input stream in XML format.

  ### Methods inherited from interface javax.sql.[RowSetReader](../../../../../java.sql/javax/sql/RowSetReader.md "interface in javax.sql")

  `readData`

* ## Method Details

  + ### readXML

    void readXML([WebRowSet](../WebRowSet.md "interface in javax.sql.rowset") caller,
    [Reader](../../../../../java.base/java/io/Reader.md "class in java.io") reader)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Reads and parses the given `WebRowSet` object from the given
    input stream in XML format. The `xmlReader` field of the
    given `WebRowSet` object must contain this
    `XmlReader` object.

    If a parsing error occurs, the exception that is thrown will
    include information about the location of the error in the
    original XML document.

    Parameters:
    :   `caller` - the `WebRowSet` object to be parsed, whose
        `xmlReader` field must contain a reference to
        this `XmlReader` object
    :   `reader` - the `java.io.Reader` object from which
        `caller` will be read

    Throws:
    :   `SQLException` - if a database access error occurs or
        this `XmlReader` object is not the reader
        for the given rowset