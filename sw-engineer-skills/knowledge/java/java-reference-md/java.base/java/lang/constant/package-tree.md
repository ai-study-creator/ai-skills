# Hierarchy For Package java.lang.constant

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.constant.[ConstantDescs](ConstantDescs.md "class in java.lang.constant")
  + java.lang.constant.[DynamicCallSiteDesc](DynamicCallSiteDesc.md "class in java.lang.constant")
  + java.lang.constant.[DynamicConstantDesc](DynamicConstantDesc.md "class in java.lang.constant")<T> (implements java.lang.constant.[ConstantDesc](ConstantDesc.md "interface in java.lang.constant"))

## Interface Hierarchy

* java.lang.constant.[Constable](Constable.md "interface in java.lang.constant")
* java.lang.constant.[ConstantDesc](ConstantDesc.md "interface in java.lang.constant")
  + java.lang.constant.[ClassDesc](ClassDesc.md "interface in java.lang.constant") (also extends java.lang.invoke.[TypeDescriptor.OfField](../invoke/TypeDescriptor.OfField.md "interface in java.lang.invoke")<F>)
  + java.lang.constant.[MethodHandleDesc](MethodHandleDesc.md "interface in java.lang.constant")
    - java.lang.constant.[DirectMethodHandleDesc](DirectMethodHandleDesc.md "interface in java.lang.constant")
  + java.lang.constant.[MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") (also extends java.lang.invoke.[TypeDescriptor.OfMethod](../invoke/TypeDescriptor.OfMethod.md "interface in java.lang.invoke")<F,M>)
* java.lang.constant.[ModuleDesc](ModuleDesc.md "interface in java.lang.constant")
* java.lang.constant.[PackageDesc](PackageDesc.md "interface in java.lang.constant")
* java.lang.invoke.[TypeDescriptor](../invoke/TypeDescriptor.md "interface in java.lang.invoke")
  + java.lang.invoke.[TypeDescriptor.OfField](../invoke/TypeDescriptor.OfField.md "interface in java.lang.invoke")<F>
    - java.lang.constant.[ClassDesc](ClassDesc.md "interface in java.lang.constant") (also extends java.lang.constant.[ConstantDesc](ConstantDesc.md "interface in java.lang.constant"))
  + java.lang.invoke.[TypeDescriptor.OfMethod](../invoke/TypeDescriptor.OfMethod.md "interface in java.lang.invoke")<F,M>
    - java.lang.constant.[MethodTypeDesc](MethodTypeDesc.md "interface in java.lang.constant") (also extends java.lang.constant.[ConstantDesc](ConstantDesc.md "interface in java.lang.constant"))

## Enum Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.[Enum](../Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.constant.[DirectMethodHandleDesc.Kind](DirectMethodHandleDesc.Kind.md "enum class in java.lang.constant")