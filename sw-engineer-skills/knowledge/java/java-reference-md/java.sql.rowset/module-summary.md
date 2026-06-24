# Module java.sql.rowset

---

module java.sql.rowset

Defines the JDBC RowSet API.

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [javax.sql.rowset](javax/sql/rowset/package-summary.md)

  Standard interfaces and base classes for JDBC `RowSet`
  implementations.

  [javax.sql.rowset.serial](javax/sql/rowset/serial/package-summary.md)

  Provides utility classes to allow serializable mappings between SQL types
  and data types in the Java programming language.

  [javax.sql.rowset.spi](javax/sql/rowset/spi/package-summary.md)

  The standard classes and interfaces that a third party vendor has to
  use in its implementation of a synchronization provider.

  Indirect Exports

  From

  Packages

  [java.logging](../java.logging/module-summary.md)

  [java.util.logging](../java.logging/java/util/logging/package-summary.md)

  [java.naming](../java.naming/module-summary.md)

  [javax.naming](../java.naming/javax/naming/package-summary.md) [javax.naming.directory](../java.naming/javax/naming/directory/package-summary.md) [javax.naming.event](../java.naming/javax/naming/event/package-summary.md) [javax.naming.ldap](../java.naming/javax/naming/ldap/package-summary.md) [javax.naming.ldap.spi](../java.naming/javax/naming/ldap/spi/package-summary.md) [javax.naming.spi](../java.naming/javax/naming/spi/package-summary.md)

  [java.sql](../java.sql/module-summary.md)

  [java.sql](../java.sql/java/sql/package-summary.md) [javax.sql](../java.sql/javax/sql/package-summary.md)

  [java.transaction.xa](../java.transaction.xa/module-summary.md)

  [javax.transaction.xa](../java.transaction.xa/javax/transaction/xa/package-summary.md)

  [java.xml](../java.xml/module-summary.md)

  [javax.xml](../java.xml/javax/xml/package-summary.md) [javax.xml.catalog](../java.xml/javax/xml/catalog/package-summary.md) [javax.xml.datatype](../java.xml/javax/xml/datatype/package-summary.md) [javax.xml.namespace](../java.xml/javax/xml/namespace/package-summary.md) [javax.xml.parsers](../java.xml/javax/xml/parsers/package-summary.md) [javax.xml.stream](../java.xml/javax/xml/stream/package-summary.md) [javax.xml.stream.events](../java.xml/javax/xml/stream/events/package-summary.md) [javax.xml.stream.util](../java.xml/javax/xml/stream/util/package-summary.md) [javax.xml.transform](../java.xml/javax/xml/transform/package-summary.md) [javax.xml.transform.dom](../java.xml/javax/xml/transform/dom/package-summary.md) [javax.xml.transform.sax](../java.xml/javax/xml/transform/sax/package-summary.md) [javax.xml.transform.stax](../java.xml/javax/xml/transform/stax/package-summary.md) [javax.xml.transform.stream](../java.xml/javax/xml/transform/stream/package-summary.md) [javax.xml.validation](../java.xml/javax/xml/validation/package-summary.md) [javax.xml.xpath](../java.xml/javax/xml/xpath/package-summary.md) [org.w3c.dom](../java.xml/org/w3c/dom/package-summary.md) [org.w3c.dom.bootstrap](../java.xml/org/w3c/dom/bootstrap/package-summary.md) [org.w3c.dom.events](../java.xml/org/w3c/dom/events/package-summary.md) [org.w3c.dom.ls](../java.xml/org/w3c/dom/ls/package-summary.md) [org.w3c.dom.ranges](../java.xml/org/w3c/dom/ranges/package-summary.md) [org.w3c.dom.traversal](../java.xml/org/w3c/dom/traversal/package-summary.md) [org.w3c.dom.views](../java.xml/org/w3c/dom/views/package-summary.md) [org.xml.sax](../java.xml/org/xml/sax/package-summary.md) [org.xml.sax.ext](../java.xml/org/xml/sax/ext/package-summary.md) [org.xml.sax.helpers](../java.xml/org/xml/sax/helpers/package-summary.md)
* ## Modules

  Requires

  Modifier

  Module

  Description

  transitive

  [java.logging](../java.logging/module-summary.md)

  Defines the Java Logging API.

  transitive

  [java.naming](../java.naming/module-summary.md)

  Defines the Java Naming and Directory Interface (JNDI) API.

  transitive

  [java.sql](../java.sql/module-summary.md)

  Defines the JDBC API.

  Indirect Requires

  Modifier

  Module

  Description

  transitive

  [java.transaction.xa](../java.transaction.xa/module-summary.md)

  Defines an API for supporting distributed transactions in JDBC.

  transitive

  [java.xml](../java.xml/module-summary.md)

  Defines the Java APIs for XML Processing (JAXP).
* ## Services

  Uses

  Type

  Description

  [RowSetFactory](javax/sql/rowset/RowSetFactory.md "interface in javax.sql.rowset")

  An interface that defines the implementation of a factory that is used
  to obtain different types of `RowSet` implementations.