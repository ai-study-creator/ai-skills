Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Interface AppletInitializer

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public interface AppletInitializer

Deprecated, for removal: This API element is subject to removal in a future version.

The Applet API is deprecated. See the
 [java.applet package
documentation](../applet/package-summary.md) for further information.

This interface is designed to work in collusion with java.beans.Beans.instantiate.
The interface is intended to provide mechanism to allow the proper
initialization of JavaBeans that are also Applets, during their
instantiation by java.beans.Beans.instantiate().

Since:
:   1.2

See Also:
:   * [`Beans.instantiate(java.lang.ClassLoader, java.lang.String)`](Beans.md#instantiate(java.lang.ClassLoader,java.lang.String))

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `activate(Applet newApplet)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Activate, and/or mark Applet active.

  `void`

  `initialize(Applet newAppletBean,
  BeanContext bCtxt)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  If passed to the appropriate variant of java.beans.Beans.instantiate
  this method will be called in order to associate the newly instantiated
  Applet (JavaBean) with its AppletContext, AppletStub, and Container.

* ## Method Details

  + ### initialize

    void initialize([Applet](../applet/Applet.md "class in java.applet") newAppletBean,
    [BeanContext](beancontext/BeanContext.md "interface in java.beans.beancontext") bCtxt)

    Deprecated, for removal: This API element is subject to removal in a future version.

    If passed to the appropriate variant of java.beans.Beans.instantiate
    this method will be called in order to associate the newly instantiated
    Applet (JavaBean) with its AppletContext, AppletStub, and Container.

    Conformant implementations shall:
    1. Associate the newly instantiated Applet with the appropriate
       AppletContext.+ Instantiate an AppletStub() and associate that AppletStub with
         the Applet via an invocation of setStub().+ If BeanContext parameter is null, then it shall associate the
           Applet with its appropriate Container by adding that Applet to its
           Container via an invocation of add(). If the BeanContext parameter is
           non-null, then it is the responsibility of the BeanContext to associate
           the Applet with its Container during the subsequent invocation of its
           addChildren() method.

    Parameters:
    :   `newAppletBean` - The newly instantiated JavaBean
    :   `bCtxt` - The BeanContext intended for this Applet, or
        null.
  + ### activate

    void activate([Applet](../applet/Applet.md "class in java.applet") newApplet)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Activate, and/or mark Applet active. Implementors of this interface
    shall mark this Applet as active, and optionally invoke its start()
    method.

    Parameters:
    :   `newApplet` - The newly instantiated JavaBean