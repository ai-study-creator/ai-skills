Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Class BeanContextServicesSupport.BCSSServiceProvider

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.beancontext.BeanContextServicesSupport.BCSSServiceProvider

All Implemented Interfaces:
:   `Serializable`

Enclosing class:
:   `BeanContextServicesSupport`

---

protected static class BeanContextServicesSupport.BCSSServiceProvider
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

subclasses may subclass this nested class to add behaviors for
each BeanContextServicesProvider.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.beans.beancontext.BeanContextServicesSupport.BCSSServiceProvider)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected BeanContextServiceProvider`

  `serviceProvider`

  The service provider.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected BeanContextServiceProvider`

  `getServiceProvider()`

  Returns the service provider.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### serviceProvider

    protected [BeanContextServiceProvider](BeanContextServiceProvider.md "interface in java.beans.beancontext") serviceProvider

    The service provider.
* ## Method Details

  + ### getServiceProvider

    protected [BeanContextServiceProvider](BeanContextServiceProvider.md "interface in java.beans.beancontext") getServiceProvider()

    Returns the service provider.

    Returns:
    :   the service provider