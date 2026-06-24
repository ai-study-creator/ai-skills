Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class BeanDescriptor

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.beans.FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

java.beans.BeanDescriptor

---

public class BeanDescriptor
extends [FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

A BeanDescriptor provides global information about a "bean",
including its Java class, its displayName, etc.

This is one of the kinds of descriptor returned by a BeanInfo object,
which also returns descriptors for properties, method, and events.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BeanDescriptor(Class<?> beanClass)`

  Create a BeanDescriptor for a bean that doesn't have a customizer.

  `BeanDescriptor(Class<?> beanClass,
  Class<?> customizerClass)`

  Create a BeanDescriptor for a bean that has a customizer.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Class<?>`

  `getBeanClass()`

  Gets the bean's Class object.

  `Class<?>`

  `getCustomizerClass()`

  Gets the Class object for the bean's customizer.

  ### Methods inherited from class java.beans.[FeatureDescriptor](FeatureDescriptor.md "class in java.beans")

  `attributeNames, getDisplayName, getName, getShortDescription, getValue, isExpert, isHidden, isPreferred, setDisplayName, setExpert, setHidden, setName, setPreferred, setShortDescription, setValue, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BeanDescriptor

    public BeanDescriptor([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass)

    Create a BeanDescriptor for a bean that doesn't have a customizer.

    Parameters:
    :   `beanClass` - The Class object of the Java class that implements
        the bean. For example sun.beans.OurButton.class.
  + ### BeanDescriptor

    public BeanDescriptor([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> beanClass,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> customizerClass)

    Create a BeanDescriptor for a bean that has a customizer.

    Parameters:
    :   `beanClass` - The Class object of the Java class that implements
        the bean. For example sun.beans.OurButton.class.
    :   `customizerClass` - The Class object of the Java class that implements
        the bean's Customizer. For example sun.beans.OurButtonCustomizer.class.
* ## Method Details

  + ### getBeanClass

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getBeanClass()

    Gets the bean's Class object.

    Returns:
    :   The Class object for the bean.
  + ### getCustomizerClass

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getCustomizerClass()

    Gets the Class object for the bean's customizer.

    Returns:
    :   The Class object for the bean's customizer. This may
        be null if the bean doesn't have a customizer.