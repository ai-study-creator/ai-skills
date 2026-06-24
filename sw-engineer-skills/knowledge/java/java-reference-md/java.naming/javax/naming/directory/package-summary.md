Module [java.naming](../../../module-summary.md)

# Package javax.naming.directory

---

package javax.naming.directory

* Related Packages

  Package

  Description

  [javax.naming](../package-summary.md)

  [javax.naming.event](../event/package-summary.md)

  [javax.naming.ldap](../ldap/package-summary.md)

  [javax.naming.spi](../spi/package-summary.md)
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [Attribute](Attribute.md "interface in javax.naming.directory")

  This interface represents an attribute associated with a named object.

  [AttributeInUseException](AttributeInUseException.md "class in javax.naming.directory")

  This exception is thrown when an operation attempts
  to add an attribute that already exists.

  [AttributeModificationException](AttributeModificationException.md "class in javax.naming.directory")

  This exception is thrown when an attempt is
  made to add, or remove, or modify an attribute, its identifier,
  or its values that conflicts with the attribute's (schema) definition
  or the attribute's state.

  [Attributes](Attributes.md "interface in javax.naming.directory")

  This interface represents a collection of attributes.

  [BasicAttribute](BasicAttribute.md "class in javax.naming.directory")

  This class provides a basic implementation of the `Attribute` interface.

  [BasicAttributes](BasicAttributes.md "class in javax.naming.directory")

  This class provides a basic implementation
  of the Attributes interface.

  [DirContext](DirContext.md "interface in javax.naming.directory")

  The directory service interface, containing
  methods for examining and updating attributes
  associated with objects, and for searching the directory.

  [InitialDirContext](InitialDirContext.md "class in javax.naming.directory")

  This class is the starting context for performing
  directory operations.

  [InvalidAttributeIdentifierException](InvalidAttributeIdentifierException.md "class in javax.naming.directory")

  This exception is thrown when an attempt is
  made to add to create an attribute with an invalid attribute identifier.

  [InvalidAttributesException](InvalidAttributesException.md "class in javax.naming.directory")

  This exception is thrown when an attempt is
  made to add or modify an attribute set that has been specified
  incompletely or incorrectly.

  [InvalidAttributeValueException](InvalidAttributeValueException.md "class in javax.naming.directory")

  This class is thrown when an attempt is
  made to add to an attribute a value that conflicts with the attribute's
  schema definition.

  [InvalidSearchControlsException](InvalidSearchControlsException.md "class in javax.naming.directory")

  This exception is thrown when the specification of
  the SearchControls for a search operation is invalid.

  [InvalidSearchFilterException](InvalidSearchFilterException.md "class in javax.naming.directory")

  This exception is thrown when the specification of
  a search filter is invalid.

  [ModificationItem](ModificationItem.md "class in javax.naming.directory")

  This class represents a modification item.

  [NoSuchAttributeException](NoSuchAttributeException.md "class in javax.naming.directory")

  This exception is thrown when attempting to access
  an attribute that does not exist.

  [SchemaViolationException](SchemaViolationException.md "class in javax.naming.directory")

  This exception is thrown when a method
  in some ways violates the schema.

  [SearchControls](SearchControls.md "class in javax.naming.directory")

  This class encapsulates
  factors that determine scope of search and what gets returned
  as a result of the search.

  [SearchResult](SearchResult.md "class in javax.naming.directory")

  This class represents an item in the NamingEnumeration returned as a
  result of the DirContext.search() methods.