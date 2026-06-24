# Hierarchy For Package javax.xml.crypto

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.xml.crypto.[KeySelector](KeySelector.md "class in javax.xml.crypto")
  + javax.xml.crypto.[KeySelector.Purpose](KeySelector.Purpose.md "class in javax.xml.crypto")
  + javax.xml.crypto.[OctetStreamData](OctetStreamData.md "class in javax.xml.crypto") (implements javax.xml.crypto.[Data](Data.md "interface in javax.xml.crypto"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.xml.crypto.[KeySelectorException](KeySelectorException.md "class in javax.xml.crypto")
      * javax.xml.crypto.[MarshalException](MarshalException.md "class in javax.xml.crypto")
      * java.lang.[RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + javax.xml.crypto.[NoSuchMechanismException](NoSuchMechanismException.md "class in javax.xml.crypto")
      * javax.xml.crypto.[URIReferenceException](URIReferenceException.md "class in javax.xml.crypto")

## Interface Hierarchy

* javax.xml.crypto.[AlgorithmMethod](AlgorithmMethod.md "interface in javax.xml.crypto")
* javax.xml.crypto.[Data](Data.md "interface in javax.xml.crypto")
  + javax.xml.crypto.[NodeSetData](NodeSetData.md "interface in javax.xml.crypto")<T> (also extends java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")<T>)
* java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")<T>
  + javax.xml.crypto.[NodeSetData](NodeSetData.md "interface in javax.xml.crypto")<T> (also extends javax.xml.crypto.[Data](Data.md "interface in javax.xml.crypto"))
* javax.xml.crypto.[KeySelectorResult](KeySelectorResult.md "interface in javax.xml.crypto")
* javax.xml.crypto.[URIDereferencer](URIDereferencer.md "interface in javax.xml.crypto")
* javax.xml.crypto.[URIReference](URIReference.md "interface in javax.xml.crypto")
* javax.xml.crypto.[XMLCryptoContext](XMLCryptoContext.md "interface in javax.xml.crypto")
* javax.xml.crypto.[XMLStructure](XMLStructure.md "interface in javax.xml.crypto")