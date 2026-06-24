Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContext

All Superinterfaces:
:   `BeanContextChild`, `Collection`, `DesignMode`, `Iterable`, `Visibility`

All Known Subinterfaces:
:   `BeanContextServices`

All Known Implementing Classes:
:   `BeanContextServicesSupport`, `BeanContextSupport`

---

public interface BeanContext
extends [BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext"), [Collection](../../../../java.base/java/util/Collection.md "interface in java.util"), [DesignMode](../DesignMode.md "interface in java.beans"), [Visibility](../Visibility.md "interface in java.beans")

The BeanContext acts a logical hierarchical container for JavaBeans.

Since:
:   1.2

See Also:
:   * [`Beans`](../Beans.md "class in java.beans")
    * [`BeanContextChild`](BeanContextChild.md "interface in java.beans.beancontext")
    * [`BeanContextMembershipListener`](BeanContextMembershipListener.md "interface in java.beans.beancontext")
    * [`PropertyChangeEvent`](../PropertyChangeEvent.md "class in java.beans")
    * [`DesignMode`](../DesignMode.md "interface in java.beans")
    * [`Visibility`](../Visibility.md "interface in java.beans")
    * [`Collection`](../../../../java.base/java/util/Collection.md "interface in java.util")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Object`

  `globalHierarchyLock`

  This global lock is used by both `BeanContext`
  and `BeanContextServices` implementors
  to serialize changes in a `BeanContext`
  hierarchy and any service requests etc.

  ### Fields inherited from interface java.beans.[DesignMode](../DesignMode.md "interface in java.beans")

  `PROPERTYNAME`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addBeanContextMembershipListener(BeanContextMembershipListener bcml)`

  Adds the specified `BeanContextMembershipListener`
  to receive `BeanContextMembershipEvents` from
  this `BeanContext` whenever it adds
  or removes a child `Component`(s).

  `URL`

  `getResource(String name,
  BeanContextChild bcc)`

  Analogous to `java.lang.ClassLoader.getResource()`, this
  method allows a `BeanContext` implementation to interpose
  behavior between the child `Component`
  and underlying `ClassLoader`.

  `InputStream`

  `getResourceAsStream(String name,
  BeanContextChild bcc)`

  Analogous to `java.lang.ClassLoader.getResourceAsStream()`,
  this method allows a `BeanContext` implementation
  to interpose behavior between the child `Component`
  and underlying `ClassLoader`.

  `Object`

  `instantiateChild(String beanName)`

  Instantiate the javaBean named as a
  child of this `BeanContext`.

  `void`

  `removeBeanContextMembershipListener(BeanContextMembershipListener bcml)`

  Removes the specified `BeanContextMembershipListener`
  so that it no longer receives `BeanContextMembershipEvent`s
  when the child `Component`(s) are added or removed.

  ### Methods inherited from interface java.beans.beancontext.[BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext")

  `addPropertyChangeListener, addVetoableChangeListener, getBeanContext, removePropertyChangeListener, removeVetoableChangeListener, setBeanContext`

  ### Methods inherited from interface java.util.[Collection](../../../../java.base/java/util/Collection.md "interface in java.util")

  `add, addAll, clear, contains, containsAll, equals, hashCode, isEmpty, iterator, parallelStream, remove, removeAll, removeIf, retainAll, size, spliterator, stream, toArray, toArray, toArray`

  ### Methods inherited from interface java.beans.[DesignMode](../DesignMode.md "interface in java.beans")

  `isDesignTime, setDesignTime`

  ### Methods inherited from interface java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach`

  ### Methods inherited from interface java.beans.[Visibility](../Visibility.md "interface in java.beans")

  `avoidingGui, dontUseGui, needsGui, okToUseGui`

* ## Field Details

  + ### globalHierarchyLock

    static final [Object](../../../../java.base/java/lang/Object.md "class in java.lang") globalHierarchyLock

    This global lock is used by both `BeanContext`
    and `BeanContextServices` implementors
    to serialize changes in a `BeanContext`
    hierarchy and any service requests etc.
* ## Method Details

  + ### instantiateChild

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") instantiateChild([String](../../../../java.base/java/lang/String.md "class in java.lang") beanName)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Instantiate the javaBean named as a
    child of this `BeanContext`.
    The implementation of the JavaBean is
    derived from the value of the beanName parameter,
    and is defined by the
    `java.beans.Beans.instantiate()` method.

    Parameters:
    :   `beanName` - The name of the JavaBean to instantiate
        as a child of this `BeanContext`

    Returns:
    :   a javaBean named as a child of this
        `BeanContext`

    Throws:
    :   `IOException` - if an IO problem occurs
    :   `ClassNotFoundException` - if the class identified
        by the beanName parameter is not found
  + ### getResourceAsStream

    [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") getResourceAsStream([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext") bcc)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Analogous to `java.lang.ClassLoader.getResourceAsStream()`,
    this method allows a `BeanContext` implementation
    to interpose behavior between the child `Component`
    and underlying `ClassLoader`.

    Parameters:
    :   `name` - the resource name
    :   `bcc` - the specified child

    Returns:
    :   an `InputStream` for reading the resource,
        or `null` if the resource could not
        be found.

    Throws:
    :   `IllegalArgumentException` - if
        the resource is not valid
  + ### getResource

    [URL](../../../../java.base/java/net/URL.md "class in java.net") getResource([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [BeanContextChild](BeanContextChild.md "interface in java.beans.beancontext") bcc)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Analogous to `java.lang.ClassLoader.getResource()`, this
    method allows a `BeanContext` implementation to interpose
    behavior between the child `Component`
    and underlying `ClassLoader`.

    Parameters:
    :   `name` - the resource name
    :   `bcc` - the specified child

    Returns:
    :   a `URL` for the named
        resource for the specified child

    Throws:
    :   `IllegalArgumentException` - if the resource is not valid
  + ### addBeanContextMembershipListener

    void addBeanContextMembershipListener([BeanContextMembershipListener](BeanContextMembershipListener.md "interface in java.beans.beancontext") bcml)

    Adds the specified `BeanContextMembershipListener`
    to receive `BeanContextMembershipEvents` from
    this `BeanContext` whenever it adds
    or removes a child `Component`(s).

    Parameters:
    :   `bcml` - the BeanContextMembershipListener to be added
  + ### removeBeanContextMembershipListener

    void removeBeanContextMembershipListener([BeanContextMembershipListener](BeanContextMembershipListener.md "interface in java.beans.beancontext") bcml)

    Removes the specified `BeanContextMembershipListener`
    so that it no longer receives `BeanContextMembershipEvent`s
    when the child `Component`(s) are added or removed.

    Parameters:
    :   `bcml` - the `BeanContextMembershipListener`
        to be removed