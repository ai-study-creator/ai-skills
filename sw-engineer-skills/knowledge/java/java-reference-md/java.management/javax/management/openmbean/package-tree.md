# Hierarchy For Package javax.management.openmbean

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.management.openmbean.[CompositeDataInvocationHandler](CompositeDataInvocationHandler.md "class in javax.management.openmbean") (implements java.lang.reflect.[InvocationHandler](../../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect"))
  + javax.management.openmbean.[CompositeDataSupport](CompositeDataSupport.md "class in javax.management.openmbean") (implements javax.management.openmbean.[CompositeData](CompositeData.md "interface in javax.management.openmbean"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management") (implements javax.management.[DescriptorRead](../DescriptorRead.md "interface in javax.management"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.[MBeanAttributeInfo](../MBeanAttributeInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.openmbean.[OpenMBeanAttributeInfoSupport](OpenMBeanAttributeInfoSupport.md "class in javax.management.openmbean") (implements javax.management.openmbean.[OpenMBeanAttributeInfo](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean"))
    - javax.management.[MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.openmbean.[OpenMBeanConstructorInfoSupport](OpenMBeanConstructorInfoSupport.md "class in javax.management.openmbean") (implements javax.management.openmbean.[OpenMBeanConstructorInfo](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean"))
    - javax.management.[MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.openmbean.[OpenMBeanOperationInfoSupport](OpenMBeanOperationInfoSupport.md "class in javax.management.openmbean") (implements javax.management.openmbean.[OpenMBeanOperationInfo](OpenMBeanOperationInfo.md "interface in javax.management.openmbean"))
    - javax.management.[MBeanParameterInfo](../MBeanParameterInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.openmbean.[OpenMBeanParameterInfoSupport](OpenMBeanParameterInfoSupport.md "class in javax.management.openmbean") (implements javax.management.openmbean.[OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean"))
  + javax.management.[MBeanInfo](../MBeanInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), javax.management.[DescriptorRead](../DescriptorRead.md "interface in javax.management"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.openmbean.[OpenMBeanInfoSupport](OpenMBeanInfoSupport.md "class in javax.management.openmbean") (implements javax.management.openmbean.[OpenMBeanInfo](OpenMBeanInfo.md "interface in javax.management.openmbean"))
  + javax.management.openmbean.[OpenType](OpenType.md "class in javax.management.openmbean")<T> (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.openmbean.[ArrayType](ArrayType.md "class in javax.management.openmbean")<T>
    - javax.management.openmbean.[CompositeType](CompositeType.md "class in javax.management.openmbean")
    - javax.management.openmbean.[SimpleType](SimpleType.md "class in javax.management.openmbean")<T>
    - javax.management.openmbean.[TabularType](TabularType.md "class in javax.management.openmbean")
  + javax.management.openmbean.[TabularDataSupport](TabularDataSupport.md "class in javax.management.openmbean") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.util.[Map](../../../../java.base/java/util/Map.md "interface in java.util")<K,V>, java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), javax.management.openmbean.[TabularData](TabularData.md "interface in javax.management.openmbean"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.management.[JMException](../JMException.md "class in javax.management")
        + javax.management.openmbean.[OpenDataException](OpenDataException.md "class in javax.management.openmbean")
      * java.lang.[RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + java.lang.[IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")
          - javax.management.openmbean.[InvalidKeyException](InvalidKeyException.md "class in javax.management.openmbean")
          - javax.management.openmbean.[InvalidOpenTypeException](InvalidOpenTypeException.md "class in javax.management.openmbean")
          - javax.management.openmbean.[KeyAlreadyExistsException](KeyAlreadyExistsException.md "class in javax.management.openmbean")

## Interface Hierarchy

* javax.management.openmbean.[CompositeData](CompositeData.md "interface in javax.management.openmbean")
* javax.management.openmbean.[CompositeDataView](CompositeDataView.md "interface in javax.management.openmbean")
* javax.management.openmbean.[OpenMBeanConstructorInfo](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean")
* javax.management.openmbean.[OpenMBeanInfo](OpenMBeanInfo.md "interface in javax.management.openmbean")
* javax.management.openmbean.[OpenMBeanOperationInfo](OpenMBeanOperationInfo.md "interface in javax.management.openmbean")
* javax.management.openmbean.[OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")
  + javax.management.openmbean.[OpenMBeanAttributeInfo](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean")
* javax.management.openmbean.[TabularData](TabularData.md "interface in javax.management.openmbean")