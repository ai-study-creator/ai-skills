# Hierarchy For Package javax.naming.directory

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.naming.directory.[BasicAttribute](BasicAttribute.md "class in javax.naming.directory") (implements javax.naming.directory.[Attribute](Attribute.md "interface in javax.naming.directory"))
  + javax.naming.directory.[BasicAttributes](BasicAttributes.md "class in javax.naming.directory") (implements javax.naming.directory.[Attributes](Attributes.md "interface in javax.naming.directory"))
  + javax.naming.[InitialContext](../InitialContext.md "class in javax.naming") (implements javax.naming.[Context](../Context.md "interface in javax.naming"))
    - javax.naming.directory.[InitialDirContext](InitialDirContext.md "class in javax.naming.directory") (implements javax.naming.directory.[DirContext](DirContext.md "interface in javax.naming.directory"))
  + javax.naming.directory.[ModificationItem](ModificationItem.md "class in javax.naming.directory") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.naming.[NameClassPair](../NameClassPair.md "class in javax.naming") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.naming.[Binding](../Binding.md "class in javax.naming")
      * javax.naming.directory.[SearchResult](SearchResult.md "class in javax.naming.directory")
  + javax.naming.directory.[SearchControls](SearchControls.md "class in javax.naming.directory") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.naming.[NamingException](../NamingException.md "class in javax.naming")
        + javax.naming.directory.[AttributeInUseException](AttributeInUseException.md "class in javax.naming.directory")
        + javax.naming.directory.[AttributeModificationException](AttributeModificationException.md "class in javax.naming.directory")
        + javax.naming.directory.[InvalidAttributeIdentifierException](InvalidAttributeIdentifierException.md "class in javax.naming.directory")
        + javax.naming.directory.[InvalidAttributesException](InvalidAttributesException.md "class in javax.naming.directory")
        + javax.naming.directory.[InvalidAttributeValueException](InvalidAttributeValueException.md "class in javax.naming.directory")
        + javax.naming.directory.[InvalidSearchControlsException](InvalidSearchControlsException.md "class in javax.naming.directory")
        + javax.naming.directory.[InvalidSearchFilterException](InvalidSearchFilterException.md "class in javax.naming.directory")
        + javax.naming.directory.[NoSuchAttributeException](NoSuchAttributeException.md "class in javax.naming.directory")
        + javax.naming.directory.[SchemaViolationException](SchemaViolationException.md "class in javax.naming.directory")

## Interface Hierarchy

* java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + javax.naming.directory.[Attribute](Attribute.md "interface in javax.naming.directory") (also extends java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.naming.directory.[Attributes](Attributes.md "interface in javax.naming.directory") (also extends java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
* javax.naming.[Context](../Context.md "interface in javax.naming")
  + javax.naming.directory.[DirContext](DirContext.md "interface in javax.naming.directory")
* java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")
  + javax.naming.directory.[Attribute](Attribute.md "interface in javax.naming.directory") (also extends java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
  + javax.naming.directory.[Attributes](Attributes.md "interface in javax.naming.directory") (also extends java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))