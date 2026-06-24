# Hierarchy For Package java.lang.invoke

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.invoke.[CallSite](CallSite.md "class in java.lang.invoke")
    - java.lang.invoke.[ConstantCallSite](ConstantCallSite.md "class in java.lang.invoke")
    - java.lang.invoke.[MutableCallSite](MutableCallSite.md "class in java.lang.invoke")
    - java.lang.invoke.[VolatileCallSite](VolatileCallSite.md "class in java.lang.invoke")
  + java.lang.invoke.[ConstantBootstraps](ConstantBootstraps.md "class in java.lang.invoke")
  + java.lang.constant.[DynamicConstantDesc](../constant/DynamicConstantDesc.md "class in java.lang.constant")<T> (implements java.lang.constant.[ConstantDesc](../constant/ConstantDesc.md "interface in java.lang.constant"))
    - java.lang.invoke.[VarHandle.VarHandleDesc](VarHandle.VarHandleDesc.md "class in java.lang.invoke")
  + java.lang.invoke.[LambdaMetafactory](LambdaMetafactory.md "class in java.lang.invoke")
  + java.lang.invoke.[MethodHandle](MethodHandle.md "class in java.lang.invoke") (implements java.lang.constant.[Constable](../constant/Constable.md "interface in java.lang.constant"))
  + java.lang.invoke.[MethodHandleProxies](MethodHandleProxies.md "class in java.lang.invoke")
  + java.lang.invoke.[MethodHandles](MethodHandles.md "class in java.lang.invoke")
  + java.lang.invoke.[MethodHandles.Lookup](MethodHandles.Lookup.md "class in java.lang.invoke")
  + java.lang.invoke.[MethodType](MethodType.md "class in java.lang.invoke") (implements java.lang.constant.[Constable](../constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"), java.lang.invoke.[TypeDescriptor.OfMethod](TypeDescriptor.OfMethod.md "interface in java.lang.invoke")<F,M>)
  + java.lang.invoke.[SerializedLambda](SerializedLambda.md "class in java.lang.invoke") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
  + java.lang.invoke.[StringConcatFactory](StringConcatFactory.md "class in java.lang.invoke")
  + java.lang.invoke.[SwitchPoint](SwitchPoint.md "class in java.lang.invoke")
  + java.lang.[Throwable](../Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../Exception.md "class in java.lang")
      * java.lang.invoke.[LambdaConversionException](LambdaConversionException.md "class in java.lang.invoke")
      * java.lang.[RuntimeException](../RuntimeException.md "class in java.lang")
        + java.lang.invoke.[WrongMethodTypeException](WrongMethodTypeException.md "class in java.lang.invoke")
      * java.lang.invoke.[StringConcatException](StringConcatException.md "class in java.lang.invoke")
  + java.lang.invoke.[VarHandle](VarHandle.md "class in java.lang.invoke") (implements java.lang.constant.[Constable](../constant/Constable.md "interface in java.lang.constant"))

## Interface Hierarchy

* java.lang.invoke.[MethodHandleInfo](MethodHandleInfo.md "interface in java.lang.invoke")
* java.lang.invoke.[TypeDescriptor](TypeDescriptor.md "interface in java.lang.invoke")
  + java.lang.invoke.[TypeDescriptor.OfField](TypeDescriptor.OfField.md "interface in java.lang.invoke")<F>
  + java.lang.invoke.[TypeDescriptor.OfMethod](TypeDescriptor.OfMethod.md "interface in java.lang.invoke")<F,M>

## Enum Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.[Enum](../Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.invoke.[MethodHandles.Lookup.ClassOption](MethodHandles.Lookup.ClassOption.md "enum class in java.lang.invoke")
    - java.lang.invoke.[VarHandle.AccessMode](VarHandle.AccessMode.md "enum class in java.lang.invoke")