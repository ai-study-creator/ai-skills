Module [java.sql.rowset](../../../../module-summary.md)

Package [javax.sql.rowset.spi](package-summary.md)

# Interface XmlWriter

All Superinterfaces:
:   `RowSetWriter`

---

public interface XmlWriter
extends [RowSetWriter](../../../../../java.sql/javax/sql/RowSetWriter.md "interface in javax.sql")

A specialized interface that facilitates an extension of the
`SyncProvider` abstract class for XML orientated
synchronization providers.

`SyncProvider` implementations that supply XML data writer
capabilities such as output XML stream capabilities can implement this
interface to provide standard `XmlWriter` objects to
`WebRowSet` implementations.

Writing a `WebRowSet` object includes printing the
rowset's data, metadata, and properties, all with the
appropriate XML tags.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `writeXML(WebRowSet caller,
  Writer writer)`

  Writes the given `WebRowSet` object to the specified
  `java.io.Writer` output stream as an XML document.

  ### Methods inherited from interface javax.sql.[RowSetWriter](../../../../../java.sql/javax/sql/RowSetWriter.md "interface in javax.sql")

  `writeData`

* ## Method Details

  + ### writeXML

    void writeXML([WebRowSet](../WebRowSet.md "interface in javax.sql.rowset") caller,
    [Writer](../../../../../java.base/java/io/Writer.md "class in java.io") writer)
    throws [SQLException](../../../../../java.sql/java/sql/SQLException.md "class in java.sql")

    Writes the given `WebRowSet` object to the specified
    `java.io.Writer` output stream as an XML document.
    This document includes the rowset's data, metadata, and properties
    plus the appropriate XML tags.

    The `caller` parameter must be a `WebRowSet`
    object whose `XmlWriter` field contains a reference to
    this `XmlWriter` object.

    Parameters:
    :   `caller` - the `WebRowSet` instance to be written,
        for which this `XmlWriter` object is the writer
    :   `writer` - the `java.io.Writer` object that serves
        as the output stream for writing `caller` as
        an XML document

    Throws:
    :   `SQLException` - if a database access error occurs or
        this `XmlWriter` object is not the writer
        for the given `WebRowSet` object