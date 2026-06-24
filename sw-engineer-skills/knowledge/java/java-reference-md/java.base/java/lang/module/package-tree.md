# Hierarchy For Package java.lang.module

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.module.[Configuration](Configuration.md "class in java.lang.module")
  + java.lang.module.[ModuleDescriptor](ModuleDescriptor.md "class in java.lang.module") (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>)
  + java.lang.module.[ModuleDescriptor.Builder](ModuleDescriptor.Builder.md "class in java.lang.module")
  + java.lang.module.[ModuleDescriptor.Exports](ModuleDescriptor.Exports.md "class in java.lang.module") (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>)
  + java.lang.module.[ModuleDescriptor.Opens](ModuleDescriptor.Opens.md "class in java.lang.module") (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>)
  + java.lang.module.[ModuleDescriptor.Provides](ModuleDescriptor.Provides.md "class in java.lang.module") (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>)
  + java.lang.module.[ModuleDescriptor.Requires](ModuleDescriptor.Requires.md "class in java.lang.module") (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>)
  + java.lang.module.[ModuleDescriptor.Version](ModuleDescriptor.Version.md "class in java.lang.module") (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>)
  + java.lang.module.[ModuleReference](ModuleReference.md "class in java.lang.module")
  + java.lang.module.[ResolvedModule](ResolvedModule.md "class in java.lang.module")
  + java.lang.[Throwable](../Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../RuntimeException.md "class in java.lang")
        + java.lang.module.[FindException](FindException.md "class in java.lang.module")
        + java.lang.module.[InvalidModuleDescriptorException](InvalidModuleDescriptorException.md "class in java.lang.module")
        + java.lang.module.[ResolutionException](ResolutionException.md "class in java.lang.module")

## Interface Hierarchy

* java.lang.[AutoCloseable](../AutoCloseable.md "interface in java.lang")
  + java.io.[Closeable](../../io/Closeable.md "interface in java.io")
    - java.lang.module.[ModuleReader](ModuleReader.md "interface in java.lang.module")
* java.lang.module.[ModuleFinder](ModuleFinder.md "interface in java.lang.module")

## Enum Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.[Enum](../Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.module.[ModuleDescriptor.Exports.Modifier](ModuleDescriptor.Exports.Modifier.md "enum class in java.lang.module")
    - java.lang.module.[ModuleDescriptor.Modifier](ModuleDescriptor.Modifier.md "enum class in java.lang.module")
    - java.lang.module.[ModuleDescriptor.Opens.Modifier](ModuleDescriptor.Opens.Modifier.md "enum class in java.lang.module")
    - java.lang.module.[ModuleDescriptor.Requires.Modifier](ModuleDescriptor.Requires.Modifier.md "enum class in java.lang.module")