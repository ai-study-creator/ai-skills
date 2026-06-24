Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextContainerProxy

---

public interface BeanContextContainerProxy

This interface is implemented by BeanContexts' that have an AWT Container
associated with them.

Since:
:   1.2

See Also:
:   * [`BeanContext`](BeanContext.md "interface in java.beans.beancontext")
    * [`BeanContextSupport`](BeanContextSupport.md "class in java.beans.beancontext")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Container`

  `getContainer()`

  Gets the `java.awt.Container` associated
  with this `BeanContext`.

* ## Method Details

  + ### getContainer

    [Container](../../awt/Container.md "class in java.awt") getContainer()

    Gets the `java.awt.Container` associated
    with this `BeanContext`.

    Returns:
    :   the `java.awt.Container` associated
        with this `BeanContext`.