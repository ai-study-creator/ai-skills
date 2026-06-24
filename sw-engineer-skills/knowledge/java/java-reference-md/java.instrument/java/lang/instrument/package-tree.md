# Hierarchy For Package java.lang.instrument

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.instrument.[ClassDefinition](ClassDefinition.md "class in java.lang.instrument")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.instrument.[IllegalClassFormatException](IllegalClassFormatException.md "class in java.lang.instrument")
      * java.lang.[RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + java.lang.instrument.[UnmodifiableModuleException](UnmodifiableModuleException.md "class in java.lang.instrument")
      * java.lang.instrument.[UnmodifiableClassException](UnmodifiableClassException.md "class in java.lang.instrument")

## Interface Hierarchy

* java.lang.instrument.[ClassFileTransformer](ClassFileTransformer.md "interface in java.lang.instrument")
* java.lang.instrument.[Instrumentation](Instrumentation.md "interface in java.lang.instrument")