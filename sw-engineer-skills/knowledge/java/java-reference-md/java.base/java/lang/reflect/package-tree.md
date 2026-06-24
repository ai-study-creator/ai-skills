# Hierarchy For Package java.lang.reflect

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.reflect.[AccessibleObject](AccessibleObject.md "class in java.lang.reflect") (implements java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect"))
    - java.lang.reflect.[Executable](Executable.md "class in java.lang.reflect") (implements java.lang.reflect.[GenericDeclaration](GenericDeclaration.md "interface in java.lang.reflect"), java.lang.reflect.[Member](Member.md "interface in java.lang.reflect"))
      * java.lang.reflect.[Constructor](Constructor.md "class in java.lang.reflect")<T>
      * java.lang.reflect.[Method](Method.md "class in java.lang.reflect")
    - java.lang.reflect.[Field](Field.md "class in java.lang.reflect") (implements java.lang.reflect.[Member](Member.md "interface in java.lang.reflect"))
  + java.lang.reflect.[Array](Array.md "class in java.lang.reflect")
  + java.lang.reflect.[Modifier](Modifier.md "class in java.lang.reflect")
  + java.lang.reflect.[Parameter](Parameter.md "class in java.lang.reflect") (implements java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect"))
  + java.security.[Permission](../../security/Permission.md "class in java.security") (implements java.security.[Guard](../../security/Guard.md "interface in java.security"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../../security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
      * java.lang.reflect.[ReflectPermission](ReflectPermission.md "class in java.lang.reflect")
  + java.lang.reflect.[Proxy](Proxy.md "class in java.lang.reflect") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
  + java.lang.reflect.[RecordComponent](RecordComponent.md "class in java.lang.reflect") (implements java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect"))
  + java.lang.[Throwable](../Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Error](../Error.md "class in java.lang")
      * java.lang.[LinkageError](../LinkageError.md "class in java.lang")
        + java.lang.[ClassFormatError](../ClassFormatError.md "class in java.lang")
          - java.lang.reflect.[GenericSignatureFormatError](GenericSignatureFormatError.md "class in java.lang.reflect")
    - java.lang.[Exception](../Exception.md "class in java.lang")
      * java.lang.[ReflectiveOperationException](../ReflectiveOperationException.md "class in java.lang")
        + java.lang.reflect.[InvocationTargetException](InvocationTargetException.md "class in java.lang.reflect")
      * java.lang.[RuntimeException](../RuntimeException.md "class in java.lang")
        + java.lang.reflect.[InaccessibleObjectException](InaccessibleObjectException.md "class in java.lang.reflect")
        + java.lang.reflect.[MalformedParameterizedTypeException](MalformedParameterizedTypeException.md "class in java.lang.reflect")
        + java.lang.reflect.[MalformedParametersException](MalformedParametersException.md "class in java.lang.reflect")
        + java.lang.reflect.[UndeclaredThrowableException](UndeclaredThrowableException.md "class in java.lang.reflect")

## Interface Hierarchy

* java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect")
  + java.lang.reflect.[AnnotatedType](AnnotatedType.md "interface in java.lang.reflect")
    - java.lang.reflect.[AnnotatedArrayType](AnnotatedArrayType.md "interface in java.lang.reflect")
    - java.lang.reflect.[AnnotatedParameterizedType](AnnotatedParameterizedType.md "interface in java.lang.reflect")
    - java.lang.reflect.[AnnotatedTypeVariable](AnnotatedTypeVariable.md "interface in java.lang.reflect")
    - java.lang.reflect.[AnnotatedWildcardType](AnnotatedWildcardType.md "interface in java.lang.reflect")
  + java.lang.reflect.[GenericDeclaration](GenericDeclaration.md "interface in java.lang.reflect")
  + java.lang.reflect.[TypeVariable](TypeVariable.md "interface in java.lang.reflect")<D> (also extends java.lang.reflect.[Type](Type.md "interface in java.lang.reflect"))
* java.lang.reflect.[InvocationHandler](InvocationHandler.md "interface in java.lang.reflect")
* java.lang.reflect.[Member](Member.md "interface in java.lang.reflect")
* java.lang.reflect.[Type](Type.md "interface in java.lang.reflect")
  + java.lang.reflect.[GenericArrayType](GenericArrayType.md "interface in java.lang.reflect")
  + java.lang.reflect.[ParameterizedType](ParameterizedType.md "interface in java.lang.reflect")
  + java.lang.reflect.[TypeVariable](TypeVariable.md "interface in java.lang.reflect")<D> (also extends java.lang.reflect.[AnnotatedElement](AnnotatedElement.md "interface in java.lang.reflect"))
  + java.lang.reflect.[WildcardType](WildcardType.md "interface in java.lang.reflect")

## Enum Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.[Enum](../Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.reflect.[AccessFlag](AccessFlag.md "enum class in java.lang.reflect")
    - java.lang.reflect.[AccessFlag.Location](AccessFlag.Location.md "enum class in java.lang.reflect")
    - java.lang.reflect.[ClassFileFormatVersion](ClassFileFormatVersion.md "enum class in java.lang.reflect")