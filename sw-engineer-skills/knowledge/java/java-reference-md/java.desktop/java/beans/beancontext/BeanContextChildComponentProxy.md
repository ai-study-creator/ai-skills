Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Interface BeanContextChildComponentProxy

---

public interface BeanContextChildComponentProxy

This interface is implemented by
`BeanContextChildren` that have an AWT `Component`
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

  `Component`

  `getComponent()`

  Gets the `java.awt.Component` associated with
  this `BeanContextChild`.

* ## Method Details

  + ### getComponent

    [Component](../../awt/Component.md "class in java.awt") getComponent()

    Gets the `java.awt.Component` associated with
    this `BeanContextChild`.

    Returns:
    :   the AWT `Component` associated with
        this `BeanContextChild`