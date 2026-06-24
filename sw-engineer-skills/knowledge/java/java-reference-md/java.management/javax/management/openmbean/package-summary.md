Module [java.management](../../../module-summary.md)

# Package javax.management.openmbean

---

package javax.management.openmbean

* Related Packages

  Package

  Description

  [javax.management](../package-summary.md)
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [ArrayType](ArrayType.md "class in javax.management.openmbean")<T>

  The `ArrayType` class is the *open type* class whose instances describe
  all *open data* values which are n-dimensional arrays of *open data* values.

  [CompositeData](CompositeData.md "interface in javax.management.openmbean")

  The `CompositeData` interface specifies
  the behavior of a specific type of complex *open data* objects
  which represent *composite data* structures.

  [CompositeDataInvocationHandler](CompositeDataInvocationHandler.md "class in javax.management.openmbean")

  An [`InvocationHandler`](../../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect") that forwards getter methods to a
  [`CompositeData`](CompositeData.md "interface in javax.management.openmbean").

  [CompositeDataSupport](CompositeDataSupport.md "class in javax.management.openmbean")

  The `CompositeDataSupport` class is the *open data* class which
  implements the `CompositeData` interface.

  [CompositeDataView](CompositeDataView.md "interface in javax.management.openmbean")

  A Java class can implement this interface to indicate how it is
  to be converted into a `CompositeData` by the MXBean framework.

  [CompositeType](CompositeType.md "class in javax.management.openmbean")

  The `CompositeType` class is the *open type* class
  whose instances describe the types of [`CompositeData`](CompositeData.md "interface in javax.management.openmbean") values.

  [InvalidKeyException](InvalidKeyException.md "class in javax.management.openmbean")

  This runtime exception is thrown to indicate that a method parameter which was expected to be
  an item name of a *composite data* or a row index of a *tabular data* is not valid.

  [InvalidOpenTypeException](InvalidOpenTypeException.md "class in javax.management.openmbean")

  This runtime exception is thrown to indicate that the *open type* of an *open data* value
  is not the one expected.

  [KeyAlreadyExistsException](KeyAlreadyExistsException.md "class in javax.management.openmbean")

  This runtime exception is thrown to indicate that the index of a row to be added to a *tabular data* instance
  is already used to refer to another row in this *tabular data* instance.

  [OpenDataException](OpenDataException.md "class in javax.management.openmbean")

  This checked exception is thrown when an *open type*, an *open data* or an *open MBean metadata info* instance
  could not be constructed because one or more validity constraints were not met.

  [OpenMBeanAttributeInfo](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean")

  Describes an attribute of an open MBean.

  [OpenMBeanAttributeInfoSupport](OpenMBeanAttributeInfoSupport.md "class in javax.management.openmbean")

  Describes an attribute of an open MBean.

  [OpenMBeanConstructorInfo](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean")

  Describes a constructor of an Open MBean.

  [OpenMBeanConstructorInfoSupport](OpenMBeanConstructorInfoSupport.md "class in javax.management.openmbean")

  Describes a constructor of an Open MBean.

  [OpenMBeanInfo](OpenMBeanInfo.md "interface in javax.management.openmbean")

  Describes an Open MBean: an Open MBean is recognized as such if
  its [`getMBeanInfo()`](../DynamicMBean.md#getMBeanInfo()) method returns an instance of a class which
  implements the [`OpenMBeanInfo`](OpenMBeanInfo.md "interface in javax.management.openmbean") interface, typically [`OpenMBeanInfoSupport`](OpenMBeanInfoSupport.md "class in javax.management.openmbean").

  [OpenMBeanInfoSupport](OpenMBeanInfoSupport.md "class in javax.management.openmbean")

  The `OpenMBeanInfoSupport` class describes the management
  information of an *open MBean*: it is a subclass of [`MBeanInfo`](../MBeanInfo.md "class in javax.management"), and it implements the [`OpenMBeanInfo`](OpenMBeanInfo.md "interface in javax.management.openmbean") interface.

  [OpenMBeanOperationInfo](OpenMBeanOperationInfo.md "interface in javax.management.openmbean")

  Describes an operation of an Open MBean.

  [OpenMBeanOperationInfoSupport](OpenMBeanOperationInfoSupport.md "class in javax.management.openmbean")

  Describes an operation of an Open MBean.

  [OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")

  Describes a parameter used in one or more operations or
  constructors of an open MBean.

  [OpenMBeanParameterInfoSupport](OpenMBeanParameterInfoSupport.md "class in javax.management.openmbean")

  Describes a parameter used in one or more operations or
  constructors of an open MBean.

  [OpenType](OpenType.md "class in javax.management.openmbean")<T>

  The `OpenType` class is the parent abstract class of all classes which describe the actual *open type*
  of open data values.

  [SimpleType](SimpleType.md "class in javax.management.openmbean")<T>

  The `SimpleType` class is the *open type* class whose instances describe
  all *open data* values which are neither arrays,
  nor [`CompositeData`](CompositeData.md "interface in javax.management.openmbean") values,
  nor [`TabularData`](TabularData.md "interface in javax.management.openmbean") values.

  [TabularData](TabularData.md "interface in javax.management.openmbean")

  The `TabularData` interface specifies the behavior of a specific type of complex *open data* objects
  which represent *tabular data* structures.

  [TabularDataSupport](TabularDataSupport.md "class in javax.management.openmbean")

  The `TabularDataSupport` class is the *open data*
  class which implements the `TabularData`
  and the `Map` interfaces, and which is internally based on a hash map data structure.

  [TabularType](TabularType.md "class in javax.management.openmbean")

  The `TabularType` class is the  *open type* class
  whose instances describe the types of [`TabularData`](TabularData.md "interface in javax.management.openmbean") values.