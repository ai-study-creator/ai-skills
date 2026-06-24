# Hierarchy For Package javax.lang.model.type

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + javax.lang.model.type.[MirroredTypesException](MirroredTypesException.md "class in javax.lang.model.type")
          - javax.lang.model.type.[MirroredTypeException](MirroredTypeException.md "class in javax.lang.model.type")
        + javax.lang.model.[UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")
          - javax.lang.model.type.[UnknownTypeException](UnknownTypeException.md "class in javax.lang.model.type")

## Interface Hierarchy

* javax.lang.model.[AnnotatedConstruct](../AnnotatedConstruct.md "interface in javax.lang.model")
  + javax.lang.model.type.[TypeMirror](TypeMirror.md "interface in javax.lang.model.type")
    - javax.lang.model.type.[ExecutableType](ExecutableType.md "interface in javax.lang.model.type")
    - javax.lang.model.type.[IntersectionType](IntersectionType.md "interface in javax.lang.model.type")
    - javax.lang.model.type.[NoType](NoType.md "interface in javax.lang.model.type")
    - javax.lang.model.type.[PrimitiveType](PrimitiveType.md "interface in javax.lang.model.type")
    - javax.lang.model.type.[ReferenceType](ReferenceType.md "interface in javax.lang.model.type")
      * javax.lang.model.type.[ArrayType](ArrayType.md "interface in javax.lang.model.type")
      * javax.lang.model.type.[DeclaredType](DeclaredType.md "interface in javax.lang.model.type")
        + javax.lang.model.type.[ErrorType](ErrorType.md "interface in javax.lang.model.type")
      * javax.lang.model.type.[NullType](NullType.md "interface in javax.lang.model.type")
      * javax.lang.model.type.[TypeVariable](TypeVariable.md "interface in javax.lang.model.type")
    - javax.lang.model.type.[UnionType](UnionType.md "interface in javax.lang.model.type")
    - javax.lang.model.type.[WildcardType](WildcardType.md "interface in javax.lang.model.type")
* javax.lang.model.type.[TypeVisitor](TypeVisitor.md "interface in javax.lang.model.type")<R,P>

## Enum Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../../../../java.base/java/lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../../../../java.base/java/lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.lang.model.type.[TypeKind](TypeKind.md "enum class in javax.lang.model.type")